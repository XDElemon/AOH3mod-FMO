#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ============================================================
# check_zeroclamp.py —— 门禁㉚：零值钳位（zero-clamp）模式检查
#
# 由来（2026-09-25 r5c046e → r5c046f 血案，独立审核发现）：
#   我把 `if-ltz` 误当成 ">=0 才跳"，于是把三处"负值归零"写成了 if-ltz：
#     a1FrqFor:  if-ltz v0, :ff_lo ; const/4 v0, 0x0    （错：负值反而不归零、非负被归零）
#     a1ProbFor: if-ltz v2, :pf_lo ; const/4 v2, 0x0    （同）
#     a1Scan   : if-ltz v8, :p2s_pos ; const/4 v8, 0x0  （同）
#   后果：任何实际对局（difficultyID>=0）恒被归零 ⇒ FRQ≡1、P≡0.165（VeryEasy 档）；
#         score 恒 0 ⇒ "经济+人口排序"退化成纯随机。
#   而 8 件套 / arity / ㉘ / 方向门禁 / ㉙ 全都不会报——因为它语义自洽、类型一致。
#
# 判据（模式匹配，唯一权威语义：if-ltz = "<0 才跳"；if-gez = ">=0 才跳"）：
#   形如  if-ltz vR, :L   <紧接>   const/4 vR, 0x0
#   ⇒ 表示"R<0 时跳到 L（跳过赋 0），R>=0 时赋 0" ＝ 把**非负**归零 ⇒ FAIL
#   形如  if-gez vR, :L   <紧接>   const/4 vR, 0x0
#   ⇒ 表示"R>=0 时跳过赋 0，R<0 时赋 0" ＝ 把**负值**归零 ⇒ OK
# 用法: python3 check_zeroclamp.py <smali文件> [...]
# 退出码: 有 FAIL 时 1
# ============================================================
import re, sys, os

BR = re.compile(r'^\s*(if-ltz|if-gez)\s+(v\d+|p\d+)\s*,\s*(:\S+)')
ZERO = re.compile(r'^\s*const(?:/4)?\s+(v\d+|p\d+)\s*,\s*(?:0x0|0)\s*$')

def main():
    files = sys.argv[1:]
    if not files:
        print('用法: check_zeroclamp.py <smali文件> [...]'); sys.exit(2)
    fails = 0
    for f in files:
        if not os.path.isfile(f):
            print('⚠️  跳过（不是文件）:', f); continue
        lines = open(f, encoding='utf-8', errors='replace').read().splitlines()
        for i, ln in enumerate(lines):
            m = BR.match(ln)
            if not m:
                continue
            op, reg = m.group(1), m.group(2)
            # 往后看 3 行（跳过空行/注释）找同一寄存器的赋 0
            seen = 0
            for j in range(i + 1, min(i + 6, len(lines))):
                s = lines[j].strip()
                if not s or s.startswith('#'):
                    continue
                seen += 1
                z = ZERO.match(lines[j])
                if z and z.group(1) == reg:
                    if op == 'if-ltz':
                        fails += 1
                        print('FAIL %s:%d  形态 if-ltz %s → 赋0 ↓ ⇒ 把【非负】归零（写反）'
                              % (os.path.basename(f), i + 1, reg))
                        print('       %s' % ln.strip())
                        print('       %s' % lines[j].strip())
                    break
                if seen >= 1:      # 只认"紧接"的赋 0（中间插入别的语句就不是这个形态）
                    break
    if fails == 0:
        print('✅ ZERO-CLAMP OK：未发现"把非负归零"的写反形态')
        return 0
    print('❌ 共 %d 处归零钳位写反（历史血案：r5c046e 三处 ⇒ 难度恒 VE 档 / score 恒 0）' % fails)
    return 1

if __name__ == '__main__':
    sys.exit(main())