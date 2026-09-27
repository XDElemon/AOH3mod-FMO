#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ============================================================
# check_branch.py —— 条件跳转「语义 + 方向」核对器（本项目翻车最多的一类错）
#
# 用法:
#   python3 check_branch.py <smali文件> [方法名片段]
#   python3 check_branch.py aoc/.../AirMission.smali applyArmyDamage
#
# 作用:
#   1) 把指定方法（或全文件）里所有条件跳转列出来，附【大白话语义】和跳转目标标签
#      —— 供人/agent 对着真值表逐条确认，避免"手感写反"。
#   2) 自动告警两种历史翻车形态：
#      A. 「参考型字段判空」用了 if-nez：紧邻上一行是 iget-object/iget 且目标是"跳过块"时提示
#         （if-nez = 不等于 0 才跳 = 非空才跳；判"为空则跳过"必须用 if-eqz）
#      B. 「探针块里含条件跳转」：探针（AIRDBG 日志）必须无分支，否则极难核对
#
# 退出码：发现问题=1，否则=0
# ============================================================
import re, sys

# 条件跳转语义表（写死，唯一权威）
SEM = {
    'if-eqz':  '等于 0（null / false / 0）才跳',
    'if-nez':  '不等于 0（非空 / true / 非零）才跳   ← 判空跳过必须用 if-eqz！',
    'if-ltz':  '小于 0 才跳',
    'if-gez':  '大于等于 0 才跳',
    'if-gtz':  '大于 0 才跳',
    'if-lez':  '小于等于 0 才跳',
    'if-eq':   '两个寄存器相等才跳',
    'if-ne':   '两个寄存器不相等才跳',
    'if-lt':   'vA < vB 才跳',
    'if-ge':   'vA >= vB 才跳',
    'if-gt':   'vA > vB 才跳',
    'if-le':   'vA <= vB 才跳',
}
PROBE_PREFIX = ('"nA', '"AIRDBG', '"af', '"nT', '"nH', '"nD', '"nR', '"nS', '"nP')

def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    path = sys.argv[1]
    want = sys.argv[2] if len(sys.argv) > 2 else None

    lines = open(path, encoding='utf-8', errors='replace').read().splitlines()

    # 方法边界
    blocks = []
    cur, name, start = [], None, 0
    for i, l in enumerate(lines, 1):
        if l.startswith('.method'):
            m = re.search(r'([^\s(]+)\(', l)
            cur, name, start = [], (m.group(1) if m else '?'), i
        elif l.startswith('.end method'):
            blocks.append((name, start, i, cur))
            cur, name = [], None
        elif name is not None:
            cur.append((i, l))

    hits = invalid = probe_branch = 0
    for name, s, e, body in blocks:
        if want and want not in name:
            continue
        print('== 方法 %s（行 %d-%d）==' % (name, s, e))
        prev_load_ref = False
        in_probe = False
        for ln, l in body:
            st = l.strip()
            # 探针块边界：const-string 里出现探针前缀 -> 进入；调用 dKey -> 结束
            if 'const-string' in st and any(p in st for p in PROBE_PREFIX):
                in_probe = True
            if 'AirDbgLog;->dKey' in st:
                in_probe = False
            m = re.match(r'^(if-[a-z]+)\s+([^,\s]+)(?:,\s*([^,\s]+))?,\s*(:\S+)', st)
            if m:
                op, a, b, tgt = m.group(1), m.group(2), m.group(3), m.group(4)
                hits += 1
                print('  %5d  %-7s %-12s %-14s -> %-18s %s'
                      % (ln, op, a, (b or ''), tgt, SEM.get(op, '?')))
                # 告警 A：判空方向
                if op == 'if-nez' and prev_load_ref and ('skip' in tgt or 'next' in tgt):
                    print('        ⚠️  疑似方向反：上一行刚读了一个引用字段，若意图是「为空则跳过」，必须用 if-eqz')
                    invalid += 1
                if in_probe:
                    print('        ⚠️  探针块里出现条件跳转：探针必须无分支（改用 String.valueOf 等）')
                    probe_branch += 1
            # R5c020b: 仅引用型 iget 才算「判空」；iget-boolean 是布尔位，不适用该告警
            prev_load_ref = bool(re.match(r'^iget-object\s', st))
        print()

    print('条件跳转总数 = %d；方向可疑 = %d；探针内分支 = %d' % (hits, invalid, probe_branch))
    print()
    print('语义表（唯一权威，别再凭手感）：')
    for k, v in SEM.items():
        print('   %-7s %s' % (k, v))
    return 1 if (invalid or probe_branch) else 0

if __name__ == '__main__':
    sys.exit(main())