#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 · Java 基线（把"逻辑写 Java"从口头纪律变成可执行断言）

为什么有这个闸门（v39/v40 真实教训）：
  `src/java/**/*.java` 是唯一真源 → `bash tools/build_java.sh` → javac → d8 → baksmali → `src/smali`。
  但 v39/v40 的 `map/province/RadarDisc`、`map/province/RadarOverlay` 是**手写 smali**：
  PairIP 桩（`tools/gen_java_stubs.py`）把 libgdx 等树外类型统一退化成 `Object`，
  `pm.fillRectangle(...)` / `fb.begin()` 在 javac 阶段就不成立 ⇒ 这是**合理例外**。
  此前没有任何机制阻止"以后有人把复杂逻辑也写成 smali"——本闸门就是那道机制。

判定（按顺序，第一条命中的生效）：
  1. 编译产物：`src/java/**` 下有同名 `.java`（包路径 + 类名，忽略 `$` 内部类后缀）⇒ ✅
  2. 生成产物：文件头带 `# 由 tools/… 生成` 标记（生成器产物：改生成器，别手改 smali）⇒ ✅
  3. 声明例外：`baseline/smali_exceptions.txt` 登记 + 理由非空 + 文件内至少一个
     `Lcom/badlogic/gdx/` 类型引用 ⇒ ✅（没有 libgdx 引用的"例外"不成立，判红）
  4. 原版游戏类的钩子注入：文件属于**原始游戏树**（root commit 的 `src/smali`），且本批
     没有新增 `.method`、没有分支/算术/数组数据/寄存器声明（只允许 invoke/字段读写/常量这类
     接线级指令）、新增行 ≤ `--hook-max-lines`（默认 40）⇒ ✅（警告：钩子只许接线）
  其余（= 我们自己新增/改写的类，却不满足 1/2/3）⇒ ❌，文案必须点明「应写成 Java」。
  另外：例外清单的**过期条目**（smali 已不存在 / 本批无改动）⇒ ⚠️ warning，不影响退出码。

为什么用"root commit 里有这个文件"来区分"原版游戏类"：
  原版 5563 个 smali 类在仓库第一个提交里全部存在且名字是混淆的；我们自己新增的类
  （AirRadar / RadarDisc / RadarOverlay / AirModelStats …）一个都不在里面。
  用这个集合判定，就不会出现"新增的类因为'以前就有'而被当成钩子放行"的漏洞
  （v40 的 RadarOverlay 就是这样被抓住的）。

用法:
  python3 tools/gates/gate_java_first.py                      # base 默认 HEAD~1
  python3 tools/gates/gate_java_first.py --base HEAD~3
  python3 tools/gates/gate_java_first.py --include-worktree   # 连未提交/未跟踪的改动一起查
  python3 tools/gates/gate_java_first.py --root /tmp/tmprepo  # 在临时仓库里演练
退出码: 0 通过 / 1 失败（含 git 调用失败、例外清单格式错误）
"""
import argparse
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULT_ROOT = os.path.dirname(os.path.dirname(HERE))
SMALI_PREFIX = 'src/smali/'
LIBGDX = 'Lcom/badlogic/gdx/'
GEN_MARK = re.compile(r'^#.*由\s*tools/.*生成')

# 钩子允许出现的指令前缀（接线级：调用、字段读写、常量、移动、返回、类型检查）
HOOK_OPS = ('invoke-', 'sget', 'sput', 'iget', 'iput', 'const', 'move', 'return', 'nop',
            'check-cast', 'instance-of', 'monitor-enter', 'monitor-exit', 'throw')
# 行级指令（不是机器指令，改动无害）
SKIP_DIRECTIVES = ('.line', '.local', '.end local', '.param', '.prologue', '.restart',
                   '.source', '.class', '.super', '.implements', '.annotation',
                   '.end annotation')


def git(root, *args):
    """跑 git；失败不吞异常，直接抛带命令与 stderr 的 RuntimeError。"""
    cmd = ['git', '-C', root] + list(args)
    p = subprocess.run(cmd, capture_output=True, text=True)
    if p.returncode != 0:
        raise RuntimeError('git 失败(%s): %s\n%s' % (p.returncode, ' '.join(cmd), p.stderr.strip()))
    return p.stdout


def batch_changes(root, base, include_worktree):
    """返回 {相对仓库根的 smali 路径: 状态(A/M)}。删除的文件不进表。"""
    changes = {}

    out = git(root, 'diff', '--name-status', '-M', '%s..HEAD' % base, '--', 'src/smali')
    for line in out.splitlines():
        if not line.strip():
            continue
        parts = line.split('\t')
        st = parts[0].strip()
        if st.startswith('R') and len(parts) >= 3:
            # 改名：新路径按"新增"处理（旧路径消失不需要判定）
            changes[parts[2].strip()] = 'A'
        elif len(parts) >= 2:
            if st.startswith('D'):
                changes.pop(parts[1].strip(), None)
            elif st.startswith('A'):
                changes[parts[1].strip()] = 'A'
            else:
                changes[parts[1].strip()] = 'M'

    if include_worktree:
        out = git(root, 'status', '--porcelain', '--', 'src/smali')
        for line in out.splitlines():
            if len(line) < 4:
                continue
            st, path = line[:2], line[3:].strip()
            if ' -> ' in path:  # 工作区改名
                path = path.split(' -> ')[-1]
            if not path.endswith('.smali'):
                continue
            if st == '??':
                changes[path] = 'A'
            elif 'D' in st:
                changes.pop(path, None)
            elif path not in changes:
                # 已提交的新增文件仍是 A，不要被工作区状态降级成 M
                changes[path] = 'M'
    return {k: v for k, v in changes.items() if k.endswith('.smali')}


def read_text(path):
    with open(path, encoding='utf-8', errors='replace') as f:
        return f.read()


def class_rel(path):
    """src/smali/aoc/x/Y.smali -> aoc/x/Y（相对 src/smali，无扩展名，/ 分隔）"""
    rel = path[len(SMALI_PREFIX):] if path.startswith(SMALI_PREFIX) else path
    if rel.endswith('.smali'):
        rel = rel[:-len('.smali')]
    return rel


def class_desc(rel):
    """aoc/x/Y -> aoc.x.Y（条目匹配用；$ 内部类保留）"""
    return rel.replace('/', '.')


def java_twin(root, rel):
    """按"包路径 + 类名"找 Java 真源；忽略 $ 内部类后缀。返回相对路径或 None。"""
    pkg, _, name = rel.rpartition('/')
    base = name.split('$')[0]
    cand = os.path.join(root, 'src', 'java', pkg.replace('/', os.sep), base + '.java')
    return 'src/java/%s/%s.java' % (pkg, base) if os.path.isfile(cand) else None


def is_generated(path):
    try:
        head = ''.join(read_text(path).splitlines(True)[:6])
    except OSError:
        return False
    return bool(GEN_MARK.search(head))


def orig_game_classes(root, base):
    """原始游戏树（批量导入的那次提交）里的 smali 路径集合；+ 是否浅克隆降级。

    注意：本仓的 **root commit 不是原版树**（它只有 772 个非 smali 文件，src/smali 为空），
    原版 smali 是后来一次性导入的（`src: 加入完整 smali 源码树…`）。早先这套判定只在
    浅克隆（root == HEAD ⇒ 退回 base）下"碰巧"成立；全量克隆时 orig 变成空集，于是
    任何对原版游戏类的接线级钩子都会被误判成"我们自己新增的类 ⇒ 应写成 Java"。
    修法：root 里 smali 不足 1000 个时，沿 `git log --reverse -- src/smali` 找第一个
    文件数 ≥1000 的提交，拿它的 src/smali 树当"原版树"。
    """
    head = git(root, 'rev-parse', 'HEAD').strip()
    roots = git(root, 'rev-list', '--max-parents=0', 'HEAD').split()
    root_commit = roots[0] if roots else ''
    shallow = (root_commit == head)
    ref = base if shallow else root_commit
    paths = set(git(root, 'ls-tree', '-r', '--name-only', ref, '--', 'src/smali').splitlines())
    if not shallow and len(paths) < 1000:
        for c in git(root, 'log', '--reverse', '--format=%H', '--', 'src/smali').split()[:20]:
            cand = set(git(root, 'ls-tree', '-r', '--name-only', c, '--', 'src/smali').splitlines())
            if len(cand) >= 1000:
                paths = cand
                break
    return {p for p in paths if p.endswith('.smali')}, shallow


def parse_exceptions(path):
    """返回 (entries, bad)。entry = dict(key, norm, reason, line)。"""
    entries, bad = [], []
    if not os.path.isfile(path):
        return entries, bad
    for i, raw in enumerate(read_text(path).splitlines(), 1):
        s = raw.strip()
        if not s or s.startswith('#'):
            continue
        if '|' not in s:
            bad.append((i, raw, '缺 "类路径 | 理由" 分隔符'))
            continue
        key, reason = [x.strip() for x in s.split('|', 1)]
        if not key:
            bad.append((i, raw, '类路径为空'))
            continue
        if not reason:
            bad.append((i, raw, '理由为空（登记例外必须写清楚为什么 Java 编不过）'))
            continue
        norm = key
        if norm.startswith(SMALI_PREFIX):
            norm = norm[len(SMALI_PREFIX):]
        if norm.endswith('.smali'):
            norm = norm[:-len('.smali')]
        norm = norm.replace('/', '.')
        entries.append({'key': key, 'norm': norm, 'reason': reason, 'line': i})
    return entries, bad


def entry_hit(entry_norm, desc):
    """条目匹配：完整包路径或包路径后缀（例：map/province/RadarDisc）。"""
    return desc == entry_norm or desc.endswith('.' + entry_norm)


def added_lines_of(root, base, path, status):
    """本批新增的行（不含 +++ 头）。status=A（新增文件）按整文件算。"""
    if status == 'A':
        return read_text(os.path.join(root, path)).splitlines()
    # base 直接对比工作区：已提交的与本批未提交的改动都算进来（出包前就该被查）
    diff = git(root, 'diff', '--unified=0', base, '--', path)
    return [ln[1:] for ln in diff.splitlines()
            if ln.startswith('+') and not ln.startswith('+++')]


def inspect_hook(lines):
    """把新增行分成 (新增方法, 新增字段数, 违规指令行)。"""
    methods, fields, bad_ops = [], 0, []
    for raw in lines:
        s = raw.strip()
        if not s or s.startswith('#') or s.startswith(':'):
            continue
        if s.startswith('.method'):
            methods.append(s)
            continue
        if s.startswith('.field'):
            fields += 1
            continue
        if s.startswith('.array-data') or s.startswith('.packed-switch-data'):
            bad_ops.append(s)
            continue
        if s.startswith(SKIP_DIRECTIVES):
            continue
        if s.startswith('.'):
            # 其它指令（.registers/.locals/.catch/.packed-switch 等）：钩子不许动
            bad_ops.append(s)
            continue
        op = s.split()[0]
        if not op.startswith(HOOK_OPS):
            bad_ops.append(s)
    return methods, fields, bad_ops


def main():
    ap = argparse.ArgumentParser(description='门禁 · Java 基线（新增/修改的 smali 必须能归入合法类别）')
    ap.add_argument('--base', default='HEAD~1', help='对比基线（默认 HEAD~1）')
    ap.add_argument('--root', default=DEFAULT_ROOT, help='仓库根（默认脚本所在仓库）')
    ap.add_argument('--include-worktree', action='store_true',
                    help='连工作区未提交/未跟踪的 smali 一起查（出包前用这个）')
    ap.add_argument('--exceptions', default='baseline/smali_exceptions.txt',
                    help='例外清单路径（相对仓库根）')
    ap.add_argument('--hook-max-lines', type=int, default=40,
                    help='原版游戏类钩子允许的最大新增行数（默认 40）')
    ap.add_argument('--quiet', action='store_true', help='只打失败与汇总')
    args = ap.parse_args()

    root = os.path.abspath(args.root)
    if not os.path.isdir(root):
        print('❌ 仓库根不存在: %s' % root)
        return 1

    try:
        git(root, 'rev-parse', '--verify', '%s^{commit}' % args.base)
        changes = batch_changes(root, args.base, args.include_worktree)
        orig, shallow = orig_game_classes(root, args.base)
    except RuntimeError as e:
        print('❌ 基线不可用（--base %s）：%s' % (args.base, e))
        return 1

    exc_path = os.path.join(root, args.exceptions)
    entries, bad = parse_exceptions(exc_path)

    fails, warns, oks = [], [], []
    used = set()   # 本批命中过的条目下标（用于过期判定）

    if not args.quiet:
        mode = '含工作区（--include-worktree）' if args.include_worktree else '仅已提交'
        print('== Java 基线闸门（base=%s，%s，smali 改动 %d 个）==' % (args.base, mode, len(changes)))
        if shallow:
            print('  ⚠️  仓库历史只有 1 个提交（浅克隆），"原版游戏类"退化为按 base 树判定；'
                  '钩子仍受 .method/分支/算术红线约束')

    for path in sorted(changes):
        status = changes[path]
        rel = class_rel(path)
        desc = class_desc(rel)
        full = os.path.join(root, path)
        if not os.path.isfile(full):
            continue

        matched = [(idx, e) for idx, e in enumerate(entries) if entry_hit(e['norm'], desc)]
        for idx, _ in matched:
            # 只要本批改到了这个类，条目就算"有改动"（哪怕最终判定走的是 Java 真源）
            used.add(idx)

        twin = java_twin(root, rel)
        if twin:
            oks.append('[编译产物] %s  ← %s' % (rel, twin))
            continue

        if is_generated(full):
            oks.append('[生成产物] %s  ← 生成器标记（改 tools/ 里的生成器，不要手改）' % rel)
            continue

        text = read_text(full)
        if matched:
            idx, e = matched[0]
            refs = text.count(LIBGDX)
            if refs == 0:
                fails.append(
                    '[例外不成立] %s：已在例外清单第 %d 行登记（%s），但文件里没有任何 '
                    'Lcom/badlogic/gdx/ 类型引用 ⇒ 这不是"libgdx 退化成 Object"的例外，**应写成 Java**'
                    '（src/java/%s.java + bash tools/build_java.sh）'
                    % (rel, e['line'], e['reason'], rel))
            else:
                oks.append('[声明例外] %s  ← 清单第 %d 行（libgdx 引用 %d 处）' % (rel, e['line'], refs))
            continue

        if path in orig:
            lines = added_lines_of(root, args.base, path, status)
            methods, fields, bad_ops = inspect_hook(lines)
            if methods:
                fails.append(
                    '[应写成 Java] %s：在原版游戏类里新增了方法定义（%s…）⇒ 类级新逻辑不许手写 smali，'
                    '**应写成 Java**（新类走 src/java + bash tools/build_java.sh；'
                    '确实只能注入的钩子只改既有方法体）' % (rel, ', '.join(methods[:3])))
            elif bad_ops:
                fails.append(
                    '[钩子越界] %s：钩子里出现非接线级指令（%s）⇒ 分支/算术/数组/寄存器声明属于逻辑，'
                    '**应写成 Java**（钩子只允许 invoke/字段读写/常量）'
                    % (rel, ' / '.join(x[:60] for x in bad_ops[:3])))
            elif len(lines) > args.hook_max_lines:
                fails.append(
                    '[钩子过大] %s：本批新增 %d 行 > --hook-max-lines(%d) ⇒ 这不叫钩子，**应写成 Java**'
                    '（钩子只允许一条 invoke 级接线；逻辑放 src/java/…）'
                    % (rel, len(lines), args.hook_max_lines))
            else:
                warns.append('[钩子注入] %s：原版游戏类 +%d 行、无新增方法%s（≤%d）⇒ 放行，'
                             '但钩子只允许接线，逻辑请走 Java'
                             % (rel, len(lines), ('、+%d 字段' % fields) if fields else '',
                                args.hook_max_lines))
                oks.append('[钩子注入] %s（+%d 行）' % (rel, len(lines)))
            continue

        fails.append(
            '[未登记] %s：这是我们自己新增/改写的 smali 类，既没有 src/java/%s.java 真源，'
            '也不在 %s ⇒ **应写成 Java**（写 src/java/… 后跑 bash tools/build_java.sh；'
            '确属 libgdx/GL 绘图原语的，在例外清单登记"类路径 | 理由"）'
            % (rel, rel, args.exceptions))

    # 例外清单：格式错误 + 过期条目
    for lineno, raw, why in bad:
        fails.append('[清单格式] 第 %d 行「%s」：%s' % (lineno, raw.strip(), why))

    all_smali = []
    smali_root = os.path.join(root, 'src', 'smali')
    for dirpath, _, files in os.walk(smali_root):
        for fn in files:
            if fn.endswith('.smali'):
                all_smali.append(os.path.relpath(os.path.join(dirpath, fn), root).replace(os.sep, '/'))

    for idx, e in enumerate(entries):
        if not any(entry_hit(e['norm'], class_desc(class_rel(p))) for p in all_smali):
            warns.append('[过期条目] 第 %d 行「%s」：对应 smali 已不存在，请清理例外清单'
                         % (e['line'], e['key']))
        elif idx not in used:
            warns.append('[无改动条目] 第 %d 行「%s」：本批没有改动这个类（条目保留，不是错误）'
                         % (e['line'], e['key']))

    if not args.quiet:
        for line in oks:
            print('  ✅ ' + line)
    for line in warns:
        if not args.quiet:
            print('  ⚠️  ' + line)
    for line in fails:
        print('  ❌ ' + line)

    print('-' * 78)
    if fails:
        print('❌ Java 基线闸门：通过 %d 项，失败 %d 项，警告 %d 项' % (len(oks), len(fails), len(warns)))
        print('   判定口子只有三个：写成 Java（首选）、生成器产物、或在 %s 登记'
              '"类路径 | 理由"并让文件里出现 libgdx 类型；原版游戏类只接受接线级钩子。'
              % args.exceptions)
        return 1
    print('✅ Java 基线闸门通过：%d 项，警告 %d 项' % (len(oks), len(warns)))
    return 0


if __name__ == '__main__':
    try:
        sys.exit(main())
    except RuntimeError as e:
        print('❌ %s' % e)
        sys.exit(1)
