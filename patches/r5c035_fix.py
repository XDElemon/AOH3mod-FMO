# -*- coding: utf-8 -*-
# r5c035_fix.py —— 审计后的修正批（r5c035a）：
#   ① Airport.p1bPickAffordable 可负担判定极性反写（if-ltz → if-gez）★这是"AI 不造机"的头号嫌疑
#   ② Airport.p1bStat 的 B 标志极性反写（if-nez → if-eqz，使 B=1 表示"在建"）
#   ③ AirDbgLog.p0Tag private → public（p1bStat 在 Airport 里跨类调用它）
#   ④ AFM.updateAIBuildUp 机型选择边界（if-lt → if-le，使空机场也优先造轰炸机）
# 用法: python3 r5c035_fix.py
import io, os, sys

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'
AF = B + '/AirForceManager.smali'
LG = B + '/AirDbgLog.smali'
MARK = 'r5c035a'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def one(text, old, new, tag):
    n = text.count(old)
    assert n == 1, '%s: 锚点不唯一 (count=%d)' % (tag, n)
    print('  [OK] %-46s (1处)' % tag)
    return text.replace(old, new, 1)


def main():
    ap, af, lg = rd(AP), rd(AF), rd(LG)

    print('--- ① p1bPickAffordable 极性 ---')
    if 'if-gez v4, :p1b_p_next' in ap:
        print('  已修正（跳过）')
    else:
        ap = one(ap,
                 '    # v4 < 0 表示 gold < cost ⇒ 买不起 ⇒ 下一候选（if-ltz = 小于0才跳）\n'
                 '    if-ltz v4, :p1b_p_next\n',
                 '    # r5c035a FIX: cmpg-float 结果 <0 ⇒ gold < cost ⇒ 买不起 ⇒ 下一候选\n'
                 '    #   （原写 if-ltz ⇒ 买得起反而跳走、买不起反而返回 ⇒ AI 富有时永不造机）\n'
                 '    if-gez v4, :p1b_p_next\n',
                 '① p1bPickAffordable if-ltz → if-gez')

    print('--- ② p1bStat B 标志极性 ---')
    if 'if-eqz v2, :p1b_st_b0' in ap:
        print('  已修正（跳过）')
    else:
        ap = one(ap,
                 '    if-nez v2, :p1b_st_b0\n',
                 '    # r5c035a FIX: buildingType==null ⇒ 空闲(0)；非 null ⇒ 在建(1)\n'
                 '    if-eqz v2, :p1b_st_b0\n',
                 '② p1bStat B 标志 if-nez → if-eqz')

    print('--- ③ p0Tag 可见性 ---')
    if '.method public static p0Tag(' in lg:
        print('  已修正（跳过）')
    else:
        lg = one(lg,
                 '.method private static p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;',
                 '.method public static p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;',
                 '③ p0Tag private → public')

    print('--- ④ 机型选择边界 ---')
    if 'if-le v4, v5, :p1b_u_bomber' in af:
        print('  已修正（跳过）')
    else:
        af = one(af,
                 '    # bombers*2 < total ⇒ 跳去"选轰炸机"（if-lt = 小于才跳）\n'
                 '    if-lt v4, v5, :p1b_u_bomber\n',
                 '    # r5c035a FIX: bombers*2 <= total ⇒ 跳去"选轰炸机"（含 total=0 的空机场）\n'
                 '    if-le v4, v5, :p1b_u_bomber\n',
                 '④ updateAIBuildUp if-lt → if-le')

    wr(AP, ap)
    wr(AF, af)
    wr(LG, lg)
    print('r5c035a 修正完成')
    return 0


if __name__ == '__main__':
    sys.exit(main())