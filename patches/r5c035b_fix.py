# -*- coding: utf-8 -*-
# r5c035b_fix.py —— 回退 r5c035a 的①（可负担极性），其余三项保留
#   事实依据（实装 dex）：
#     move-result v4         # v4 = cost
#     int-to-float v4, v4
#     cmpg-float v4, v2, v4  # v2 = gold ⇒ v4 = sign(gold - cost)
#     if-ltz v4, :next       # v4 < 0（gold < cost，买不起）才换候选  ← 正解
#     return-object v3       # 能走到这里说明买得起 ⇒ 返回该机型
#   r5c035a 误写成 if-gez（买得起反而跳走、买不起反而返回）⇒ 本批回退。
import io, sys

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'


def main():
    ap = io.open(AP, encoding='utf-8').read()
    old = ('    # r5c035a FIX: cmpg-float 结果 <0 ⇒ gold < cost ⇒ 买不起 ⇒ 下一候选\n'
           '    #   （原写 if-ltz ⇒ 买得起反而跳走、买不起反而返回 ⇒ AI 富有时永不造机）\n'
           '    if-gez v4, :p1b_p_next\n')
    new = ('    # r5c035b 修正: cmpg-float v4,v2,v4 ⇒ v4 = sign(gold - cost)\n'
           '    #   买不起 = v4 < 0 ⇒ 换下一候选（if-ltz 正是"<0 才跳"）\n'
           '    if-ltz v4, :p1b_p_next\n')
    if 'if-ltz v4, :p1b_p_next' in ap and 'r5c035b 修正' in ap:
        print('已回退（跳过）')
        return 0
    assert ap.count(old) == 1, '锚点不唯一: %d' % ap.count(old)
    ap = ap.replace(old, new, 1)
    io.open(AP, 'w', encoding='utf-8').write(ap)
    print('  [OK] ① 回退 if-gez → if-ltz（恢复"买不起才换候选"）')
    print('r5c035b 回退完成')
    return 0


if __name__ == '__main__':
    sys.exit(main())