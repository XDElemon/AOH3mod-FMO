#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d099：机场/建造界面（InGame_AirForceOptions）4 张图接国别路由
1) AFM 新增 airImgForTypeP(I type)I：组取自“玩家文明”(Game.player.iCivID)，代 3
   —— 界面里没有可靠的“机场主人”引用，先用玩家文明（玩家自己的机场界面=正确）
2) InGame_AirForceOptions：402(临时美式六代)/618/834/1050 四处 sget v17 → const/4 v17,机型; invoke airImgForTypeP; move-result v17
   机型索引：0=FIGHTER 1=INTERCEPTOR 2=ATTACKER 3=BOMBER
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
UI  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

for p in (AFM, UI):
    if not os.path.exists(p + '.pre_r6d099'):
        shutil.copyfile(p, p + '.pre_r6d099')

# ---------- 1) AFM ----------
afm = io.open(AFM, encoding='utf-8').read()
assert 'airImgForTypeP' not in afm
blk = '\n'.join([
    '',
    '.method public static airImgForTypeP(I)I',
    '    .registers 3',
    '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player;',
    '    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player;->iCivID:I',
    '    invoke-static {v0}, %s->artGroupOf(I)I' % AFM_CLS,
    '    move-result v0',
    '    const/4 v1, 0x3',
    '    invoke-static {v1, v0, p0}, %s->pickAirImage(III)I' % AFM_CLS,
    '    move-result v0',
    '    return v0',
    '.end method',
    ''])
afm = afm.rstrip('\n') + '\n' + blk
io.open(AFM, 'w', encoding='utf-8').write(afm)

# ---------- 2) UI 四处 ----------
ui = io.open(UI, encoding='utf-8').read()
SITES = [('airG6_US_FIGHTER', 0), ('airBomber', 3), ('airAttacker', 2), ('airInterceptor', 1)]
for name, idx in SITES:
    old = '    sget v17, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % name
    n = ui.count(old)
    assert n == 1, ('site', name, n)
    new = ('    const/4 v17, 0x%x\n'
           '    invoke-static {v17}, %s->airImgForTypeP(I)I\n'
           '    move-result v17') % (idx, AFM_CLS)
    ui = ui.replace(old, new, 1)
io.open(UI, 'w', encoding='utf-8').write(ui)

s = io.open(UI, encoding='utf-8').read()
print('OK UI: 新调=%d 旧sget v17残留=%d' % (s.count('->airImgForTypeP(I)I'),
      s.count('    sget v17, Laoc/kingdoms/lukasz/textures/Images;->air')))