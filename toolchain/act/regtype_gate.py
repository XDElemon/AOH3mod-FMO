#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
regtype_gate.py —— check_regtype 的**增量门禁**

背景：check_regtype.py 对"大文件（如 Province.smali）"会报出大量**既有噪声**
（游戏自身反编译代码里合法但被启发式误判的寄存器复用；实测本批前后都是 22 处）。
但它在探针/小文件上抓到过真血案（a1Scan v3/v7 ⇒ ART VerifyError）。

规则（增量门禁）：
  记录每个文件的历史计数（regtype_baseline.tsv：<path>\t<count>）。
  - 本次计数 > 基线 ⇒ 失败（新引入了高危）
  - 本次计数 <= 基线 ⇒ 通过，并把基线更新为本次值（允许逐步收敛）
  - 首次见到该文件 ⇒ 以本次值为基线并提示

用法：python3 regtype_gate.py <file.smali> [...]
"""
import os
import subprocess
import sys

ACT = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.join(ACT, 'regtype_baseline.tsv')


def count_of(f):
    r = subprocess.run(['python3', os.path.join(ACT, 'check_regtype.py'), f],
                       capture_output=True, text=True)
    out = (r.stdout or '') + (r.stderr or '')
    if 'REGTYPE OK' in out:
        return 0
    import re
    m = re.search(r'共\s*(\d+)\s*处高危', out)
    return int(m.group(1)) if m else 0


def load():
    d = {}
    if os.path.exists(BASE):
        for ln in open(BASE, encoding='utf-8'):
            ln = ln.strip()
            if '\t' in ln:
                k, v = ln.rsplit('\t', 1)
                try:
                    d[k] = int(v)
                except Exception:
                    pass
    return d


def main():
    files = sys.argv[1:]
    if not files:
        print('用法：regtype_gate.py <file.smali> [...]')
        return 2
    base = load()
    bad = []
    for f in files:
        c = count_of(f)
        b = base.get(f)
        if b is None:
            print('  ℹ️ %s：首次记录基线 = %d' % (os.path.basename(f), c))
            base[f] = c
            continue
        if c > b:
            print('  ❌ %s：高危 %d 处 > 本批前 %d 处（新增了寄存器类型高危）' % (os.path.basename(f), c, b))
            bad.append(f)
        else:
            tag = '✅' if c == b else '✅（较前减少）'
            print('  %s %s：高危 %d 处（本批前 %d）' % (tag, os.path.basename(f), c, b))
            base[f] = c
    with open(BASE, 'w', encoding='utf-8') as fp:
        for k in sorted(base):
            fp.write('%s\t%d\n' % (k, base[k]))
    if bad:
        print('❌ regtype 增量门禁未过：%s' % ', '.join(os.path.basename(x) for x in bad))
        return 1
    print('✅ regtype 增量门禁通过（无新增）')
    return 0


if __name__ == '__main__':
    sys.exit(main())