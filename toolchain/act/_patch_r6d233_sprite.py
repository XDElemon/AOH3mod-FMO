#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d233_sprite.py
r6d233 = sprite 直取覆盖：
  转换块之后，若 sprite 可用（>=0）则：
    tgt := sprite 换算回管线空间 (sprite/scale - pos)
    src := tgt 空间内 −60（即屏幕 −60）
  之后 tag=1 记录、step、绘制走原管线（互逆 ⇒ 落回飞机身上）
插入点：方法内 '# r6d221' 注释行之前（唯一）。
"""
import os
import re
import sys

T = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(T, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(T, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

BLOCK = """    # ---- r6d233：sprite 直取覆盖（保证落回飞机身上）----
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1

    if-gez v1, :ovr_skip

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    if-gez v2, :ovr_skip

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v3, :ovr_skip

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v1, v1, v0

    sub-float v1, v1, v4

    float-to-int v6, v1

    int-to-float v2, v2

    div-float v2, v2, v0

    sub-float v2, v2, v5

    float-to-int v7, v2

    add-int/lit8 v8, v6, -0x3c

    add-int/lit8 v9, v7, -0x3c

    :ovr_skip
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

    pat = r'# r6d221：advance'
    c = len(re.findall(pat, sl))
    assert c == 1, ('r6d221 锚点数', c)

    block = BLOCK.rstrip('\n')
    sl = re.sub(pat, block + '\n\n    # r6d221：advance', sl, count=1)
    L[a:b] = sl.split('\n')
    s = '\n'.join(L)
    open(PDA, 'w', encoding='utf-8').write(s)

    s2 = open(DIAG, encoding='utf-8').read()
    c2 = len(re.findall(r'nABOOT v=r6d\d+', s2))
    assert c2 == 1, ('nABOOT 数', c2)
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d233', s2)
    open(DIAG, 'w', encoding='utf-8').write(s2)

    print('PATCH OK: r6d233 sprite 直取覆盖已插入')

if __name__ == '__main__':
    main()