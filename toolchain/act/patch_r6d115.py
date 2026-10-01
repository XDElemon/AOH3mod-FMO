#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d115：只把按钮“文字”左移 75px（覆写 drawText，改 iTranslateX）
依据（调研）：
  Button.drawText(SB;IIZ)V 中文字 X = getPosX() + textPosition.getTextPosition() + iTranslateX(p2)
  ⇒ iTextPositionX 不参与绘制（之前改它无效的原因）
做法：在 BtnBuild / BtnSelect 里新增覆写：
  protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
      p2 -= 75
      invoke-super {p0,p1,p2,p3,p4}, Button->drawText(...)V
      return-void
→ 只影响这两种按钮的文字（型号字条），图标与底框不动。
"""
import io, shutil, os

BTN = ['/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild.smali',
       '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect.smali']
BTN_T = 'Laoc/kingdoms/lukasz/menu_element/button/Button;'

M = ('\n.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V\n'
     '    .registers 5\n'
     '    add-int/lit8 p2, p2, -0x4B\n'
     '    invoke-super {p0, p1, p2, p3, p4}, %s->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V\n'
     '    return-void\n'
     '.end method\n') % BTN_T

for p in BTN:
    if not os.path.exists(p + '.pre_r6d115'):
        shutil.copyfile(p, p + '.pre_r6d115')
    s = io.open(p, encoding='utf-8').read()
    assert 'drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V' not in s, p
    s = s.rstrip('\n') + '\n' + M
    io.open(p, 'w', encoding='utf-8').write(s)
    print('%s -> OK' % os.path.basename(p))