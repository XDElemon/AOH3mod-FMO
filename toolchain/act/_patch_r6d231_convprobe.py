#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d231_convprobe.py
r6d231 = 转换块入口补两条读数（不改行为）：
  tag=27: 转换时刻 posX / posY / scale*1000
  tag=28: 转换时刻 spriteX / spriteY
插入点：+20 块之前（add-int/lit8 v8, v8, 0x14 之前），方法域内唯一。
"""
import os
import re
import sys

T = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(T, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(T, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

BLOCK = """    # ---- r6d231 探针 tag=27：转换时刻 pos/scale ----
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-nez v10, :skip27

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v11

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v12

    const/16 v13, 0x1b

    const v3, 0x447a0000    # 1000.0f

    mul-float v3, v0, v3

    float-to-int v3, v3

    invoke-static {v13, v11, v12, v3, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V

    :skip27

    # ---- r6d231 探针 tag=28：转换时刻 sprite ----
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v11

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v12

    const/16 v13, 0x1c

    invoke-static {v13, v11, v12, v13, v13}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V
"""

def main():
    s = open(PDA, encoding='utf-8').read()
    L = s.split('\n')

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

    pat = (r'add-int/lit8 v8, v8, 0x14\s+add-int/lit8 v9, v9, 0x14')
    c = len(re.findall(pat, sl))
    assert c == 1, ('+20 锚点数', c)

    block = BLOCK.rstrip('\n')
    rep = block + '\n\n    add-int/lit8 v8, v8, 0x14\n\n    add-int/lit8 v9, v9, 0x14'
    sl = re.sub(pat, rep, sl, count=1)
    L[a:b] = sl.split('\n')
    s = '\n'.join(L)
    open(PDA, 'w', encoding='utf-8').write(s)

    s2 = open(DIAG, encoding='utf-8').read()
    c2 = len(re.findall(r'nABOOT v=r6d\d+', s2))
    assert c2 == 1, ('nABOOT 数', c2)
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d231', s2)
    open(DIAG, 'w', encoding='utf-8').write(s2)

    print('PATCH OK: r6d231 探针 tag=27/28 已插入')

if __name__ == '__main__':
    main()