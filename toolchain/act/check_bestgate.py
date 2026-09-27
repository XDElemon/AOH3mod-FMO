#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ㉛ check_bestgate.py —— "最优键/未设门"极性门禁
# 判据（Dalvik 语义：if-ltz = <0 跳；if-gez = >=0 跳）：
#   ① a1Scan   : `sget v14, ...a1PkTier:I` 后必须 `if-ltz v14, :p2s_first`（best<0=未设才采纳首个候选）
#                若为 if-gez ⇒ 首个候选永不采纳 ⇒ nP2pick 恒 -1（r5c046g 血案）
#   ② a1Scan   : `:p2s_le` 后必须 `if-ltz v14, :sc_in_next`（d<0 丢弃）；若指向 :p2s_eq ⇒ 分数低的反而进随机池
#   ③ a1bPick  : `a1bDivCmp(II)I` 后必须 `if-gez v12, :p2d_ge`（cmp>=0 才继续）；若为 if-ltz ⇒ 全部候选被丢
# 用法：python3 check_bestgate.py <AirForceManager.smali>
import sys, re

def lines(p):
    return [l.rstrip('\n') for l in open(p, encoding='utf-8')]

def nxt_nonempty(ls, i):
    j = i + 1
    while j < len(ls) and not ls[j].strip():
        j += 1
    return noc(ls[j]) if j < len(ls) else ''

def noc(s):
    """去掉行内注释与首尾空白（门禁只判指令本身）"""
    return s.split('#')[0].strip()

def main():
    if len(sys.argv) < 2:
        print('usage: check_bestgate.py <AirForceManager.smali>'); return 2
    ls = lines(sys.argv[1])
    bad = []
    for i, l in enumerate(ls):
        s = l.strip()
        # ① best 未设门
        if re.match(r'^sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I$', s):
            n = nxt_nonempty(ls, i)
            if n != 'if-ltz v14, :p2s_first':
                bad.append((i+1, '① best未设门', s, n))
        # ② 同档分数 d<0 丢弃
        if s == ':p2s_le':
            n = nxt_nonempty(ls, i)
            if n != 'if-ltz v14, :sc_in_next':
                bad.append((i+1, '② 同档分数(d<0丢弃)', s, n))
        # ③ 师数主键 cmp>=0 才继续
        if 'a1bDivCmp(II)I' in s and 'invoke-static' in s:
            n1 = nxt_nonempty(ls, i)
            if n1 != 'move-result v12':
                continue            # 定义点/其它参数形态，不适用本判据
            n = nxt_nonempty(ls, i+1)
            if not re.match(r'^if-gez v12, :p2d_ge', n):
                bad.append((i+1, '③ 师数主键(cmp>=0)', s, n))
    for ln, tag, cur, nxt in bad:
        print('FAIL %s @%d: 下一指令 = %r' % (tag, ln, nxt))
    print('㉛ bestgate: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())