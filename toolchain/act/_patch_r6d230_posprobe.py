#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d230_posprobe.py
r6d230 = 弹头绘制处补两条读数探针（不改行为）：
  tag=24: posX, posY, scale*1000, (int)adFxSpd
  tag=26: getAirSpriteX, getAirSpriteY, adFlyHours, adFxSrc（sprite 参照）
插入点：r6d228 弹头块内、tag=23 探针之后、Images.pix 绘制之前。
"""
import os
import re
import sys

T = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(T, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(T, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

BLOCK = """    # ---- r6d230 探针 tag=24：posX/posY/scale*1000/adFxSpd ----
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v6

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v7

    const/16 v8, 0x18

    const v9, 0x447a0000    # 1000.0f

    mul-float v9, v3, v9

    float-to-int v9, v9

    iget v10, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSpd:F

    float-to-int v10, v10

    invoke-static {v8, v6, v7, v9, v10}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V

    # ---- r6d230 探针 tag=26：sprite 参照 ----
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v6

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    iget v10, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    const/16 v8, 0x1a

    invoke-static {v8, v6, v7, v10, v10}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V
"""

def main():
    s = open(PDA, encoding='utf-8').read()
    L = s.split('\n')

    # 定位方法 drawAdMissileFx 切片
    a = None
    for i, l in enumerate(L):
        if l.startswith('.method') and 'drawAdMissileFx(' in l:
            a = i
            break
    assert a is not None, '方法未找到'
    b = a
    while not L[b].startswith('.end method'):
        b += 1
    sl = '\n'.join(L[a:b])

    # 锚点：sprite=sget-object v5, Images->pix（唯一）
    pat = r'sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;'
    c = len(re.findall(pat, sl))
    assert c == 1, ('pix 锚点数', c)

    block = BLOCK.rstrip('\n')
    sl = re.sub(pat, block + '\n\n    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;', sl, count=1)
    L[a:b] = sl.split('\n')
    s = '\n'.join(L)
    open(PDA, 'w', encoding='utf-8').write(s)

    # 自证串
    s2 = open(DIAG, encoding='utf-8').read()
    c2 = len(re.findall(r'nABOOT v=r6d\d+', s2))
    assert c2 == 1, ('nABOOT 数', c2)
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d230', s2)
    open(DIAG, 'w', encoding='utf-8').write(s2)

    print('PATCH OK: r6d230 探针 tag=24/26 已插入')

if __name__ == '__main__':
    main()