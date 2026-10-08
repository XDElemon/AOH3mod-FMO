#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d228_body.py
r6d228 = 抄原版弹头绘制（14x14，civ 双色）+ tag=23 探针
锚点：drawAdMissileFx 内 adFxDrawTrail 调用行之后，插入弹头绘制块。
"""
import os
import re
import sys

T = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(T, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(T, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

BLOCK = """    # ---- r6d228：抄原版弹头绘制（14x14，civ 双色）----
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_ad_body_b

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v1, v2, :cond_ad_body_b

    move-object v4, p0

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_ad_body_fd

    :cond_ad_body_b

    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    :goto_ad_body_fd

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    int-to-float v5, v5

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F

    add-float v0, v0, v4

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x7

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F

    add-float v1, v1, v5

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x7

    iget v6, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F

    float-to-int v6, v6

    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F

    float-to-int v7, v7

    const/16 v8, 0x17

    invoke-static {v8, v0, v1, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v6, p0

    move v7, v0

    move v8, v1

    const/16 v9, 0xe

    const/16 v10, 0xe

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
"""

def main():
    s = open(PDA, encoding='utf-8').read()
    lines = s.split('\n')
    # 锚点先验
    target = ('invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/'
              'ProvinceDrawArmy;->adFxDrawTrail(Lcom/badlogic/gdx/graphics/g2d/'
              'SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V')
    idx = [i for i, l in enumerate(lines) if l.strip() == target]
    assert len(idx) == 1, ('adFxDrawTrail 调用锚点数', len(idx))
    i = idx[0]

    # 统一写盘：先全部校验，再一次性插入
    block_lines = BLOCK.rstrip('\n').split('\n')
    lines[i + 1:i + 1] = [''] + block_lines + ['']

    # 自证串
    s2 = open(DIAG, encoding='utf-8').read()
    c = len(re.findall(r'nABOOT v=r6d\d+', s2))
    assert c == 1, ('nABOOT 数', c)
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d228', s2)

    open(PDA, 'w', encoding='utf-8').write('\n'.join(lines))
    open(DIAG, 'w', encoding='utf-8').write(s2)
    print('PATCH OK: r6d228 弹头绘制(14x14) + tag=23 探针 + 自证串')


if __name__ == '__main__':
    main()
