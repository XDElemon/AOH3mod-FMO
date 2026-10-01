#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d097：接“第二条地图绘制路径”（v0 四型）＋ airUnit 通用图标（v7）
1) AFM 新增 airImgForUnit()I（读静态组，代 3，机型=FIGHTER(0)）
2) ProvinceDrawArmy 第二条路：sget v0,airXXX → const/4 v0,机型; invoke airImgForType; move-result v0
   该路机型映射：v10==0→INTERCEPTOR(1) 1→FIGHTER(0) 2→ATTACKER(2) else→BOMBER(3)
3) ProvinceDrawArmy:1491 airUnit(v7) → invoke airImgForUnit; move-result v7
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PD  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

for p in (AFM, PD):
    if not os.path.exists(p + '.pre_r6d097'):
        shutil.copyfile(p, p + '.pre_r6d097')

# ---------- 1) AFM: airImgForUnit ----------
afm = io.open(AFM, encoding='utf-8').read()
assert 'airImgForUnit' not in afm
blk = '\n'.join([
    '',
    '.method public static airImgForUnit()I',
    '    .registers 3',
    '    sget v0, %s->dgAirGroup:I' % AFM_CLS,
    '    const/4 v1, 0x3',
    '    const/4 v2, 0x0',
    '    invoke-static {v1, v0, v2}, %s->pickAirImage(III)I' % AFM_CLS,
    '    move-result v0',
    '    return v0',
    '.end method',
    ''])
afm = afm.rstrip('\n') + '\n' + blk
io.open(AFM, 'w', encoding='utf-8').write(afm)

# ---------- 2) 第二条路 ----------
pd = io.open(PD, encoding='utf-8').read()
# 顺序调整（先长后短不冲突）：attacker/interceptor/fighter/bomber
SITES = [('airAttacker', 2), ('airInterceptor', 1), ('airFighter', 0), ('airBomber', 3)]
for name, idx in SITES:
    old = '    sget v0, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % name
    cnt = pd.count(old)
    assert cnt >= 1, ('site', name, cnt)
    new = ('    const/4 v0, 0x%x\n'
           '    invoke-static {v0}, %s->airImgForType(I)I\n'
           '    move-result v0') % (idx, AFM_CLS)
    pd = pd.replace(old, new, 1)          # 只替换第一处（第二条路在 1312 一带，先于 3729）

# ---------- 3) airUnit(v7) ----------
a = '    sget v7, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I'
assert pd.count(a) == 1, ('airUnit v7', pd.count(a))
b = ('    invoke-static {}, %s->airImgForUnit()I\n'
     '    move-result v7') % AFM_CLS
pd = pd.replace(a, b, 1)
io.open(PD, 'w', encoding='utf-8').write(pd)

s = io.open(PD, encoding='utf-8').read()
print('OK 第二条路 v0残留=%d 新调=%d ; airUnit(v7)残留=%d 新调=%d'
      % (s.count('    sget v0, Laoc/kingdoms/lukasz/textures/Images;->air'),
         s.count('->airImgForType(I)I'),
         s.count('    sget v7, Laoc/kingdoms/lukasz/textures/Images;->airUnit:I'),
         s.count('->airImgForUnit()I')))