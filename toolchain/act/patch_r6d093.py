#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B3d：① 新增 AirForceManager.pickAirImage(III)I（gen/组/机型 → Images 字段值）
        ② 地图侧 ProvinceDrawArmy:962 点灯 → airG3_US_FIGHTER（验证地图链）
类型索引约定：0=FIGHTER 1=INTERCEPTOR 2=ATTACKER 3=BOMBER
组索引约定  ：0=CN 1=EU 2=RU 3=US     代：3/4/5/6（夹取）
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PD  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
GENS   = [3, 4, 5, 6]
GROUPS = ['CN', 'EU', 'RU', 'US']
TYPES  = ['FIGHTER', 'INTERCEPTOR', 'ATTACKER', 'BOMBER']

# ---------- ① 生成方法 ----------
L = []
L.append('.method public static pickAirImage(III)I')
L.append('    .registers 4')
# 夹取 gen -> 3..6
L.append('    const/4 v0, 0x3')
L.append('    if-lt p0, v0, :gen_lo_ok')
L.append('    const/4 p0, 0x3')
L.append(':gen_lo_ok')
L.append('    const/4 v0, 0x6')
L.append('    if-le p0, v0, :gen_hi_ok')
L.append('    const/4 p0, 0x6')
L.append(':gen_hi_ok')
# 夹取 group -> 0..3
L.append('    const/4 v0, 0x0')
L.append('    if-ge p1, v0, :grp_lo_ok')
L.append('    const/4 p1, 0x0')
L.append(':grp_lo_ok')
L.append('    const/4 v0, 0x3')
L.append('    if-le p1, v0, :grp_hi_ok')
L.append('    const/4 p1, 0x3')
L.append(':grp_hi_ok')
# 夹取 type -> 0..3
L.append('    const/4 v0, 0x0')
L.append('    if-ge p2, v0, :typ_lo_ok')
L.append('    const/4 p2, 0x0')
L.append(':typ_lo_ok')
L.append('    const/4 v0, 0x3')
L.append('    if-le p2, v0, :typ_hi_ok')
L.append('    const/4 p2, 0x3')
L.append(':typ_hi_ok')
# 代 分派
for i, g in enumerate(GENS[:-1]):
    L.append('    const/4 v0, 0x%d' % g)
    L.append('    if-eq p0, v0, :A_G%d' % g)
L.append('    goto :A_G%d' % GENS[-1])
# 每代：组分派 + 机型叶子
for g in GENS:
    L.append(':A_G%d' % g)
    for i, grp in enumerate(GROUPS[:-1]):
        L.append('    const/4 v0, 0x%x' % i)
        L.append('    if-eq p1, v0, :A_G%d_%s' % (g, grp))
    L.append('    goto :A_G%d_%s' % (g, GROUPS[-1]))
    for gi, grp in enumerate(GROUPS):
        L.append(':A_G%d_%s' % (g, grp))
        for ti, t in enumerate(TYPES[:-1]):
            L.append('    const/4 v0, 0x%x' % ti)
            L.append('    if-eq p2, v0, :A_G%d_%s_%s' % (g, grp, t))
        L.append('    goto :A_G%d_%s_%s' % (g, grp, TYPES[-1]))
        for t in TYPES:
            L.append(':A_G%d_%s_%s' % (g, grp, t))
            L.append('    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airG%d_%s_%s:I' % (g, grp, t))
            L.append('    return v0')
L.append('.end method')
METHOD = '\n'.join(L) + '\n'

if not os.path.exists(AFM + '.pre_r6d093'):
    shutil.copyfile(AFM, AFM + '.pre_r6d093')
if not os.path.exists(PD + '.pre_r6d093'):
    shutil.copyfile(PD, PD + '.pre_r6d093')

afm = io.open(AFM, encoding='utf-8').read()
assert 'pickAirImage' not in afm, '已存在 pickAirImage'
afm = afm.rstrip('\n') + '\n\n' + METHOD
io.open(AFM, 'w', encoding='utf-8').write(afm)

# ---------- ② 地图点灯 ----------
pd = io.open(PD, encoding='utf-8').read()
a = '    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airFighter:I'
b = '    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airG3_US_FIGHTER:I'
assert pd.count(a) == 1, ('anchor', pd.count(a))
pd = pd.replace(a, b, 1)
io.open(PD, 'w', encoding='utf-8').write(pd)

s = io.open(AFM, encoding='utf-8').read()
print('OK pickAirImage 行数=%d，return 数=%d' % (METHOD.count('\n'), METHOD.count('return v0')))
print('PD: 新=%d 旧=%d' % (io.open(PD, encoding='utf-8').read().count(b), io.open(PD, encoding='utf-8').read().count(a)))