#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d099b 修正：v17 不能用 const/4 与普通 invoke（限 v0..v15）
→ 改用 const/16 v17 + invoke-static/range {v17 .. v17}。
先把 UI 文件从 .pre_r6d099 复原（去掉刚才那批非法插入），再重做。
"""
import io, shutil, os

UI = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

shutil.copyfile(UI + '.pre_r6d099', UI)          # 复原到本批之前
ui = io.open(UI, encoding='utf-8').read()

SITES = [('airG6_US_FIGHTER', 0), ('airBomber', 3), ('airAttacker', 2), ('airInterceptor', 1)]
for name, idx in SITES:
    old = '    sget v17, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % name
    n = ui.count(old)
    assert n == 1, ('site', name, n)
    new = ('    const/16 v17, 0x%x\n'
           '    invoke-static/range {v17 .. v17}, %s->airImgForTypeP(I)I\n'
           '    move-result v17') % (idx, AFM_CLS)
    ui = ui.replace(old, new, 1)

io.open(UI, 'w', encoding='utf-8').write(ui)
s = io.open(UI, encoding='utf-8').read()
print('OK UI(修正版): 新调=%d 旧sget v17残留=%d'
      % (s.count('->airImgForTypeP(I)I'), s.count('    sget v17, Laoc/kingdoms/lukasz/textures/Images;->air')))