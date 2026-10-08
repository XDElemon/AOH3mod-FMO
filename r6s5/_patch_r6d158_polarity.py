#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d158 —— 修极性：airImgForKey 的 if-ltz 写反（>=0 被当 <0 处理）⇒ 全部落到 RU 兜底

Dalvik 零比较真值：if-ltz=vA<0 跳；if-gez=vA>=0 跳；if-gtz=vA>0 跳；if-lez=vA<=0 跳
本批：
  G1  重写 airImgForKey：artCiv(if-gez) → getKeyCiv(if-gez) → RU；两级来源都用 if-gez
  G2  artD 的采样闸 0x10 → 0x1（恒真 ⇒ 每次都记录），彻底排除"artD 静默"
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d158'
REVX = '/tmp/revx/'
PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


A_OLD = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I

    const/4 v4, 0x1

    if-ltz v3, :use

    const/4 v4, 0x0

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :use2

    goto :go

    :use2
    move v3, v0

    const/4 v4, 0x2

    goto :use

    :go
    move v3, v1

    :use
    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v2

    invoke-static {p1, v4, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->aif(Ljava/lang/String;IIII)V

    invoke-static {p1, v0, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->artD(Ljava/lang/String;IIII)V

    return v2
.end method'''

A_NEW = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I

    if-gez v3, :src1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :src2

    goto :go

    :src2
    move v3, v0

    const/4 v4, 0x2

    goto :use

    :go
    move v3, v1

    goto :use

    :src1
    const/4 v4, 0x1

    :use
    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v2

    invoke-static {p1, v4, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->aif(Ljava/lang/String;IIII)V

    invoke-static {p1, v0, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->artD(Ljava/lang/String;IIII)V

    return v2
.end method'''

A_ARTD = '''    :c2
    const/16 v0, 0x10

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z'''
N_ARTD = '''    :c2
    const/16 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z'''


def main():
    ch = []
    s = rd(PD)
    if 'if-gez v3, :src1' in s:
        print('  [G1] 已应用')
    else:
        backup(PD)
        n = s.count(A_OLD)
        assert n == 1, 'G1 锚点命中 %d != 1' % n
        s = s.replace(A_OLD, A_NEW)
        wr(PD, s)
        ch.append('G1 ' + PD)
    q = rd(PP)
    if 'const/16 v0, 0x1\n\n    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z' in q:
        print('  [G2] 已应用')
    else:
        backup(PP)
        n = q.count(A_ARTD)
        assert n == 1, 'G2 锚点命中 %d != 1' % n
        q = q.replace(A_ARTD, N_ARTD)
        wr(PP, q)
        ch.append('G2 ' + PP)
    print()
    print('✅ r6d158 补丁落地：')
    for c in ch:
        print('   ', c)


if __name__ == '__main__':
    main()