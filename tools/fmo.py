#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""FMO 交付编排器（本批只做四件事：preflight / verify / build / gate）

把 v35..v40 反复踩过的坑固化进命令里（详见 baseline/待办_机场归属与代差_v1.md 第三十九节）：
  * 模板 APK 必须**显式**给（`--template` 必填）—— v39 用错模板直接版本漂移；
  * 素材暂存目录空着就打包 → `zip error: Nothing to do` —— preflight 直接拦住，
    `--ensure-stage` 可从模板里原样抽一份未改的 `numOfImages.txt` 占位；
  * 打包必须前台跑（nohup 会被杀）—— 本脚本自己就是前台进程，不 fork 到后台；
  * 判据不是 md5 而是结构指纹 —— verify 会跑 dex_fingerprint.py 打类/方法/字段数；
  * 每个构建写一份批次 JSON 台账（时间戳 / git HEAD / 模板 / 产物 / md5 / 包内 dex md5）。

子命令:
  preflight --template <apk> [--stage <dir>] [--ensure-stage]
  verify    --apk <apk> [--dex <dex>]
  build     --template <apk> --dex <dex> --stage <dir> --out <apk>
  gate      [--batch <name>]

纯标准库；所有外部命令走 subprocess.run，失败时打最后 20 行输出，异常不吞。
"""
import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
import tempfile
import time
import zipfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BATCH_DIR = os.path.join(ROOT, 'baseline', 'batches')
MIN_FREE_GB = 5.0
DISK_TARGETS = ['/sdcard', '/tmp']
DEPS = ['/tmp/smali_cp.txt', '/tmp/r8_8.3.37.jar', '/tmp/debug.keystore']
PLACEHOLDER = 'assets/game/units/unitsImages/numOfImages.txt'
TAIL = 20


# ---------------------------------------------------------------- 小工具
def md5_file(path):
    h = hashlib.md5()
    with open(path, 'rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''):
            h.update(chunk)
    return h.hexdigest()


def apk_member_md5(apk, name):
    """包内条目 md5；条目不存在返回 None。"""
    with zipfile.ZipFile(apk) as z:
        try:
            data = z.read(name)
        except KeyError:
            return None
    return hashlib.md5(data).hexdigest()


def apk_member_bytes(apk, name):
    with zipfile.ZipFile(apk) as z:
        try:
            return z.read(name)
        except KeyError:
            return None


def free_gb(path):
    st = os.statvfs(path)
    return st.f_bavail * st.f_frsize / float(1 << 30)


def count_files(path):
    n = 0
    for _, _, files in os.walk(path):
        n += len(files)
    return n


def tree_bytes(path):
    total = 0
    for dirpath, _, files in os.walk(path):
        for fn in files:
            total += os.path.getsize(os.path.join(dirpath, fn))
    return total


def run(cmd, cwd=ROOT, quiet=False, tail=TAIL):
    """前台跑子进程。失败时把最后 tail 行输出打出来（不吞异常：traceback 照常抛）。"""
    if not quiet:
        print('   $ ' + ' '.join(cmd))
    p = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True)
    out = (p.stdout or '') + (p.stderr or '')
    if p.returncode != 0:
        lines = out.rstrip().splitlines()[-tail:]
        print('   ❌ 退出码 %d，最后 %d 行输出：' % (p.returncode, len(lines)))
        for ln in lines:
            print('      ' + ln)
    return p, out


def last_line(text):
    lines = [l for l in (text or '').strip().splitlines() if l.strip()]
    return lines[-1].strip() if lines else ''


def parse_fingerprint(text):
    """解析 dex_fingerprint.py 的表格式输出（表头 + 数据行）。"""
    header, row = None, None
    for line in (text or '').splitlines():
        parts = line.split()
        if not parts:
            continue
        if parts[0] == 'dex' and 'classes' in parts:
            header = parts
        elif header and len(parts) == len(header) and parts[1].isdigit():
            row = parts
            break
    if not header or not row:
        return {}
    return dict(zip(header, row))


def aapt_badging(apk):
    p = subprocess.run(['aapt', 'dump', 'badging', apk], capture_output=True, text=True)
    first = (p.stdout or '').splitlines()[0] if (p.stdout or '').strip() else ''
    info = {}
    if p.returncode == 0 and first.startswith('package:'):
        for field in first[len('package:'):].split():
            if '=' in field:
                k, v = field.split('=', 1)
                info[k] = v.strip("'")
    return p.returncode, first, info


def git_head():
    try:
        head = subprocess.run(['git', '-C', ROOT, 'rev-parse', 'HEAD'],
                              capture_output=True, text=True, check=True).stdout.strip()
        st = subprocess.run(['git', '-C', ROOT, 'status', '--porcelain'],
                            capture_output=True, text=True, check=True).stdout.strip()
        return head, bool(st)
    except subprocess.CalledProcessError:
        return '', False


def ok(msg):
    print('  ✅ ' + msg)
    return True


def bad(msg):
    print('  ❌ ' + msg)
    return False


def warn(msg):
    print('  ⚠️  ' + msg)


# ---------------------------------------------------------------- preflight
def ensure_stage(stage, template):
    """往空暂存目录放一份"未改"的占位文件：优先从模板包里原样抽出。"""
    dst = os.path.join(stage, PLACEHOLDER.replace('/', os.sep))
    data = apk_member_bytes(template, PLACEHOLDER)
    if data is None:
        print('  ❌ --ensure-stage 失败：模板包里没有 %s，无法"原样"抽占位。' % PLACEHOLDER)
        print('     凭空造一个数不对的 numOfImages.txt 会让图标错位；请手动放本批素材。')
        return False
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    with open(dst, 'wb') as f:
        f.write(data)
    print('  ✅ --ensure-stage：已从模板原样抽出 %s（%d B）' % (PLACEHOLDER, len(data)))
    return True


def do_preflight(template, stage, ensure, quiet=False):
    """返回 (ok, info)。info 供 build 台账复用。"""
    fails = 0
    info = {'template': {'path': template}, 'stage': None}

    if not quiet:
        print('== preflight ==')
    # 1) 模板 APK 显式给出、存在、可读、非空
    if not template:
        fails += 1 if not bad('未指定模板 APK（--template 必填，禁止用"默认上一版"猜测）') else 0
    elif not os.path.isfile(template):
        fails += 1 if not bad('模板 APK 不存在: %s' % template) else 0
    elif not os.access(template, os.R_OK):
        fails += 1 if not bad('模板 APK 不可读: %s' % template) else 0
    elif os.path.getsize(template) == 0:
        fails += 1 if not bad('模板 APK 是空文件: %s' % template) else 0
    else:
        size = os.path.getsize(template)
        digest = md5_file(template)
        info['template'].update({'size': size, 'md5': digest})
        vn = ''
        if os.path.isfile(template) and template.lower().endswith('.apk'):
            rc, first, pkg = aapt_badging(template)
            if rc == 0:
                info['template']['package'] = pkg.get('name', '')
                info['template']['versionName'] = pkg.get('versionName', '')
                vn = ' %s %s' % (pkg.get('name', ''), pkg.get('versionName', ''))
            else:
                warn('aapt 读不出模板 badging（不是致命项，verify 会再查）')
        ok('模板 %s（%d B，md5 %s%s）' % (template, size, digest, vn))
        if not quiet:
            print('     ↑ 用错模板会版本漂移；台账里会记这个 md5，出包后拿它对照')

    # 2) 磁盘剩余 ≥ 5G（/sdcard 与 /tmp）
    for d in DISK_TARGETS:
        if not os.path.isdir(d):
            fails += 1 if not bad('%s 不存在（磁盘检查跳过不了：素材与中间产物都在这）' % d) else 0
            continue
        gb = free_gb(d)
        if gb < MIN_FREE_GB:
            fails += 1 if not bad('%s 剩余 %.1fG < %.0fG（满盘会被误报成"装机失败/会话异常"）'
                                  % (d, gb, MIN_FREE_GB)) else 0
        else:
            ok('%s 剩余 %.1fG ≥ %.0fG' % (d, gb, MIN_FREE_GB))

    # 3) 工具链就位
    for f in DEPS:
        if not os.path.isfile(f) or os.path.getsize(f) == 0:
            fails += 1 if not bad('缺 %s（跑 baseline/setup_toolchain.sh 或在技能第二节重装）' % f) else 0
        else:
            ok('工具链 %s（%d B）' % (f, os.path.getsize(f)))

    # 4) 素材暂存目录
    if stage is None:
        if not quiet:
            warn('未给 --stage：跳过素材目录检查（build 时必须给）')
    elif not os.path.isdir(stage):
        fails += 1 if not bad('素材暂存目录不存在: %s' % stage) else 0
    else:
        n = count_files(stage)
        if n == 0 and ensure:
            if template and os.path.isfile(template):
                if ensure_stage(stage, template):
                    n = count_files(stage)
            else:
                bad('--ensure-stage 需要有效的 --template APK（占位文件从模板里原样抽）')
        if n == 0:
            fails += 1 if not bad(
                '素材暂存目录是空的: %s ⇒ build_candidate.sh 注入素材时 zip 无事可做，'
                'v39 就报过 `zip error: Nothing to do` 导致打包中断。'
                '放进本批素材，或加 --ensure-stage 自动放一份未改的占位 %s'
                % (stage, PLACEHOLDER)) else 0
        else:
            info['stage'] = {'path': stage, 'files': n, 'bytes': tree_bytes(stage)}
            ok('素材暂存目录 %s（%d 个文件，%.1f MB）' % (stage, n, tree_bytes(stage) / 1e6))

    print('-' * 78)
    if fails:
        print('❌ preflight 未通过（%d 项失败）' % fails)
        return False, info
    print('✅ preflight 通过')
    return True, info


def cmd_preflight(args):
    good, _ = do_preflight(args.template, args.stage, args.ensure_stage)
    return 0 if good else 1


# ---------------------------------------------------------------- verify
def cmd_verify(args):
    apk = args.apk
    fails = 0
    info = {}
    print('== verify: %s ==' % apk)
    if not os.path.isfile(apk):
        bad('APK 不存在: %s' % apk)
        print('-' * 78)
        print('❌ verify 未通过（1 项失败）')
        return 1

    # 1) 包内 classes.dex md5（与 --dex 对比）
    in_dex = apk_member_md5(apk, 'classes.dex')
    info['in_apk_dex_md5'] = in_dex
    if in_dex is None:
        fails += 1 if not bad('包内没有 classes.dex') else 0
    elif args.dex:
        if not os.path.isfile(args.dex):
            fails += 1 if not bad('--dex 不存在: %s' % args.dex) else 0
        else:
            local = md5_file(args.dex)
            info['dex_md5'] = local
            if local == in_dex:
                ok('包内 classes.dex md5 = 本地 dex（%s）' % in_dex)
            else:
                fails += 1 if not bad('包内 dex md5 不符：包内 %s ≠ 本地 %s' % (in_dex, local)) else 0
    else:
        warn('未给 --dex：只打印包内 dex md5（%s），不做对比' % in_dex)

    # 2) aapt dump badging
    rc, first, pkg = aapt_badging(apk)
    if rc == 0 and first.startswith('package:'):
        info['package'] = pkg.get('name', '')
        info['versionName'] = pkg.get('versionName', '')
        ok('aapt badging: %s %s' % (pkg.get('name', '?'), pkg.get('versionName', '?')))
    else:
        fails += 1 if not bad('aapt dump badging 失败（manifest 解析不了，这包装不上）') else 0

    # 3) apksigner verify
    p, out = run(['apksigner', 'verify', '--verbose', apk], quiet=True)
    if p.returncode == 0:
        ok('apksigner verify 通过（%s）' % ', '.join(
            l.strip() for l in out.splitlines() if 'Verified using' in l))
    else:
        fails += 1 if not bad('apksigner verify 失败（未签名/签名坏了）') else 0

    # 4) 结构指纹（类/方法/字段数）—— 判据是结构，不是 md5
    tmp = tempfile.mkdtemp(prefix='fmo_verify_')
    try:
        dex_path = os.path.join(tmp, 'classes.dex')
        data = apk_member_bytes(apk, 'classes.dex')
        if data is None:
            fails += 1 if not bad('dex_fingerprint：包内没有 classes.dex') else 0
        else:
            with open(dex_path, 'wb') as f:
                f.write(data)
            p, out = run(['python3', os.path.join(ROOT, 'tools', 'dex_fingerprint.py'), dex_path],
                         quiet=True)
            if p.returncode == 0:
                counts = parse_fingerprint(out)
                info['fingerprint'] = counts
                if counts:
                    ok('结构指纹：类 %s / 方法 %s / 字段 %s / 签名指纹 %s / 方法体指纹 %s'
                       % (counts.get('classes', '?'), counts.get('methods', '?'),
                          counts.get('fields', '?'), counts.get('FINGERPRINT', '?'),
                          counts.get('BODY-FP', '?')))
                else:
                    fails += 1 if not bad('dex_fingerprint.py 输出无法解析：%s' % last_line(out)) else 0
            else:
                fails += 1 if not bad('dex_fingerprint.py 失败') else 0
    finally:
        shutil.rmtree(tmp, ignore_errors=True)

    # 5) zipalign -c 4
    p, out = run(['zipalign', '-c', '4', apk], quiet=True)
    if p.returncode == 0:
        ok('zipalign -c 4 通过（4 字节对齐）')
    else:
        fails += 1 if not bad('zipalign -c 4 失败（未对齐，部分机型装不上）') else 0

    # 6) manifest md5（打印；缺 manifest 才算失败）
    man = apk_member_md5(apk, 'AndroidManifest.xml')
    info['manifest_md5'] = man
    if man is None:
        fails += 1 if not bad('包内没有 AndroidManifest.xml') else 0
    else:
        ok('AndroidManifest.xml md5 = %s（本批不许改 manifest，出包前后必须一致）' % man)

    info['apk_md5'] = md5_file(apk)
    info['apk_size'] = os.path.getsize(apk)
    print('  APK = %s（%d B，md5 %s）' % (apk, info['apk_size'], info['apk_md5']))
    print('-' * 78)
    if fails:
        print('❌ verify 未通过（%d 项失败）' % fails)
        return 1
    print('✅ verify 通过（6 项）')
    return 0


# ---------------------------------------------------------------- build
def cmd_build(args):
    print('== build ==')
    good, info = do_preflight(args.template, args.stage, False, quiet=True)
    if not good:
        print('❌ preflight 未过 ⇒ 不出包（不沿用旧产物）')
        return 1
    if not os.path.isfile(args.dex):
        bad('--dex 不存在: %s' % args.dex)
        return 1
    outdir = os.path.dirname(os.path.abspath(args.out))
    if outdir:
        os.makedirs(outdir, exist_ok=True)

    p, out = run(['bash', os.path.join(ROOT, 'baseline', 'build_candidate.sh'),
                  args.template, args.dex, args.stage, args.out])
    print(out.rstrip())
    if p.returncode != 0 or not os.path.isfile(args.out):
        print('❌ build_candidate.sh 失败 / 产物缺失 ⇒ 不出包')
        return 1

    rc = cmd_verify(argparse.Namespace(apk=args.out, dex=args.dex))

    head, dirty = git_head()
    stem = os.path.splitext(os.path.basename(args.out))[0]
    record = {
        'batch': stem,
        'time': time.strftime('%Y-%m-%dT%H:%M:%S%z'),
        'git_head': head,
        'git_dirty': dirty,
        'template': info.get('template', {}),
        'stage': info.get('stage'),
        'dex': {'path': args.dex, 'md5': md5_file(args.dex)},
        'apk': {
            'path': os.path.abspath(args.out),
            'size': os.path.getsize(args.out),
            'md5': md5_file(args.out),
            'in_apk_dex_md5': apk_member_md5(args.out, 'classes.dex'),
            'manifest_md5': apk_member_md5(args.out, 'AndroidManifest.xml'),
        },
        'verify_ok': rc == 0,
    }
    os.makedirs(BATCH_DIR, exist_ok=True)
    jpath = os.path.join(BATCH_DIR, stem + '.json')
    with open(jpath, 'w', encoding='utf-8') as f:
        json.dump(record, f, ensure_ascii=False, indent=2, sort_keys=True)
        f.write('\n')
    print('  📝 批次台账: %s' % jpath)
    return 0 if rc == 0 else 1


# ---------------------------------------------------------------- gate
def cmd_gate(args):
    steps = [
        ('行为闸门 gate_behavior', ['python3', os.path.join(ROOT, 'tools', 'gate_behavior.py')]),
        ('校验器闸门 lint_verifier', ['python3', os.path.join(ROOT, 'tools', 'lint_verifier.py')]),
        # 出包前查的是"当前要打的这批"：工作区未提交/未跟踪的 smali 也要算进来
        ('Java 基线闸门 gate_java_first',
         ['python3', os.path.join(ROOT, 'tools', 'gates', 'gate_java_first.py'),
          '--include-worktree']),
        ('数据层自检 selftest', ['bash', os.path.join(ROOT, 'tools', 'selftest.sh')]),
    ]
    if args.batch:
        print('批次标签: %s' % args.batch)
        jpath = os.path.join(BATCH_DIR, args.batch + '.json')
        if args.batch.endswith('.json'):
            jpath = os.path.join(BATCH_DIR, args.batch)
        if os.path.isfile(jpath):
            with open(jpath, encoding='utf-8') as f:
                rec = json.load(f)
            print('  台账 %s：模板 %s（md5 %s）→ 产物 %s（md5 %s）'
                  % (jpath, rec.get('template', {}).get('path', '?'),
                     rec.get('template', {}).get('md5', '?'),
                     rec.get('apk', {}).get('path', '?'), rec.get('apk', {}).get('md5', '?')))
        else:
            print('  无台账 %s（仅作日志标签，不影响判定）' % jpath)

    results = []
    for i, (name, cmd) in enumerate(steps, 1):
        print('== [%d/%d] %s ==' % (i, len(steps), name))
        if not os.path.isfile(cmd[1]):
            results.append((name, False, '脚本不存在: %s' % cmd[1]))
            print('  ❌ 脚本不存在: %s' % cmd[1])
            continue
        t0 = time.time()
        p, out = run(cmd)
        dur = time.time() - t0
        good = (p.returncode == 0)
        tail = last_line(out)
        print('  %s（%.1fs）%s' % ('✅ 通过' if good else '❌ 失败', dur, ('：' + tail) if tail else ''))
        results.append((name, good, tail))

    print('-' * 78)
    print('== 汇总 ==')
    for name, good, tail in results:
        print('  %s %s' % ('✅' if good else '❌', name))
    worst = 0 if all(g for _, g, _ in results) else 1
    print('✅ 全部闸门通过' if worst == 0 else '❌ 有闸门失败（退出码取最差 = 1）')
    return worst


# ---------------------------------------------------------------- main
def main():
    ap = argparse.ArgumentParser(description='FMO 交付编排器（preflight / verify / build / gate）')
    sub = ap.add_subparsers(dest='cmd', required=True)

    p1 = sub.add_parser('preflight', help='出包前置检查（模板/磁盘/工具链/素材目录）')
    p1.add_argument('--template', help='模板 APK（必填：上一个真机验证过的包）')
    p1.add_argument('--stage', help='素材暂存目录（非空，否则 build 会 zip error: Nothing to do）')
    p1.add_argument('--ensure-stage', action='store_true',
                    help='暂存目录为空时，从模板原样抽一份未改的 %s 占位' % PLACEHOLDER)
    p1.set_defaults(func=cmd_preflight)

    p2 = sub.add_parser('verify', help='产物自检（dex md5/badging/签名/指纹/对齐/manifest）')
    p2.add_argument('--apk', required=True, help='待验 APK')
    p2.add_argument('--dex', help='本地 classes.dex（给了就对比包内 md5）')
    p2.set_defaults(func=cmd_verify)

    p3 = sub.add_parser('build', help='preflight → build_candidate.sh → verify → 写批次 JSON')
    p3.add_argument('--template', required=True, help='模板 APK')
    p3.add_argument('--dex', required=True, help='新 classes.dex')
    p3.add_argument('--stage', required=True, help='素材暂存目录')
    p3.add_argument('--out', required=True, help='输出 APK')
    p3.set_defaults(func=cmd_build)

    p4 = sub.add_parser('gate', help='依次跑行为/校验器/Java 基线/selftest 并汇总')
    p4.add_argument('--batch', help='批次标签（可给台账名，如 fmo_v40_air）')
    p4.set_defaults(func=cmd_gate)

    args = ap.parse_args()
    return args.func(args)


if __name__ == '__main__':
    sys.exit(main())
