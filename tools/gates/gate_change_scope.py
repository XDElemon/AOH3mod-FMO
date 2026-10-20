#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 · 变更范围（语义级 v2）

原理：把两个包/两个 dex 都反汇编，再比对两棵 smali 树。
两边都出自 baksmali，格式化噪声（方法顺序/注释/goto 宽度/寄存器命名）自然抵消，
剩下的差异就是真实改动。

用法:
  python3 tools/gates/gate_change_scope.py --base a.apk --new b.dex \
      --allow 'Laoc/.../AirMission;->unitGenOf(Laoc/.../AirUnit;)I'
"""
import argparse, hashlib, os, re, shutil, subprocess, sys, tempfile, zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))
CP_FILE = '/tmp/smali_cp.txt'


def dex_of(path, tmpdir):
    if path.endswith('.dex'):
        return path
    out = os.path.join(tmpdir, 'classes_%s.dex' % hashlib.md5(path.encode()).hexdigest()[:6])
    with zipfile.ZipFile(path) as z:
        open(out, 'wb').write(z.read('classes.dex'))
    return out


def disassemble(dex, outdir):
    cp = open(CP_FILE).read().strip() if os.path.exists(CP_FILE) else ''
    if not cp:
        raise SystemExit('缺 %s（先跑 baseline/setup_toolchain.sh）' % CP_FILE)
    subprocess.run(['java', '-Xmx4g', '-cp', cp, 'org.jf.baksmali.Main', 'disassemble', dex, '-o', outdir],
                   check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


def parse_methods(path):
    out, cur, buf = {}, None, []
    for line in open(path, encoding='utf-8', errors='replace'):
        s = line.strip()
        if s.startswith('.method'):
            m = re.search(r'([\w$<>]+\([^)]*\)\S+)$', s)
            cur = m.group(1) if m else s
            buf = []
        elif s.startswith('.end method'):
            if cur is not None:
                out[cur] = buf
            cur = None
        elif cur is not None and s and not s.startswith('.') and not s.startswith('#') and not s.startswith(':'):
            buf.append(s)
    return out


def parse_fields(path):
    return {l.strip() for l in open(path, encoding='utf-8', errors='replace') if l.strip().startswith('.field')}


def class_of(rel):
    return 'L' + rel[:-len('.smali')] + ';'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--base', required=True)
    ap.add_argument('--new', required=True)
    ap.add_argument('--allow', action='append', default=[])
    ap.add_argument('--allow-file')
    ap.add_argument('--quiet', action='store_true')
    a = ap.parse_args()

    allow = set(a.allow)
    if a.allow_file:
        allow |= {l.strip() for l in open(a.allow_file, encoding='utf-8')
                  if l.strip() and not l.startswith('#')}
    if not allow:
        print('❌ 必须给 --allow（空白名单 = 不允许任何变化）')
        return 1

    tmp = tempfile.mkdtemp(prefix='gate_')
    try:
        tb, tn = os.path.join(tmp, 'b'), os.path.join(tmp, 'n')
        disassemble(dex_of(a.base, tmp), tb)
        disassemble(dex_of(a.new, tmp), tn)

        changed, fchanged = [], []
        # 两侧取并集：只走 base 树会漏掉"新增的类"（新类不在 base 里，等于凭空出现却没人管）
        rels = set()
        for tree in (tb, tn):
            for root, _, files in os.walk(tree):
                for f in files:
                    if f.endswith('.smali'):
                        rels.add(os.path.relpath(os.path.join(root, f), tree))
        for rel in sorted(rels):
            if True:
                pb, pn = os.path.join(tb, rel), os.path.join(tn, rel)
                if not os.path.exists(pb):
                    changed.append('%s->(新增类)' % class_of(rel)); continue
                if not os.path.exists(pn):
                    changed.append('%s->(整类缺失)' % class_of(rel)); continue
                mb, mn = parse_methods(pb), parse_methods(pn)
                for k in set(mb) | set(mn):
                    if mb.get(k) != mn.get(k):
                        changed.append('%s->%s' % (class_of(rel), k))
                if parse_fields(pb) != parse_fields(pn):
                    fchanged.append(rel)

        hit = [m for m in changed if m in allow]
        extra = [m for m in changed if m not in allow]
        if not a.quiet:
            print('变更方法 %d（白名单内 %d）｜字段有变化的类 %d' % (len(changed), len(hit), len(fchanged)))
            for m in sorted(changed):
                print('  %s %s' % ('✅' if m in allow else '❌', m))
            for f in fchanged:
                print('  ℹ️  字段变化: %s' % f)
        if extra:
            print('\n❌ 白名单外的方法变化: %d' % len(extra))
            return 1
        if not changed:
            print('\n⚠️ 没有任何方法变化（改动没生效？）')
            return 1
        print('\n✅ 变更范围通过：%d 个方法，全部在白名单内' % len(changed))
        return 0
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == '__main__':
    sys.exit(main())
