#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d095 接线：地图侧真路由
1) AFM 新增静态字段 dgAirGroup:I + 方法 airImgForType(I)I（组取自字段，代固定 3）
2) ProvinceDrawArmy 的 4 个取图点：sget 硬编码图 → const/4 v3,类型; invoke airImgForType; move-result v3
   （只用 v3，零新增寄存器；类型索引 0=FIGHTER 1=INTERCEPTOR 2=ATTACKER 3=BOMBER）
3) 调用方 drawProvinceArmyWithFlag(:5841 前)：v7=Province → getCivID → artGroupOf → sput dgAirGroup
   （插在最后一条 invoke 之前，覆盖 v9 安全）
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PD  = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

for p in (AFM, PD):
    if not os.path.exists(p + '.pre_r6d095'):
        shutil.copyfile(p, p + '.pre_r6d095')

# ---------- 1) AFM：字段 + 方法 ----------
afm = io.open(AFM, encoding='utf-8').read()
assert 'dgAirGroup' not in afm and 'airImgForType' not in afm
add = []
add.append('.field public static dgAirGroup:I')
add.append('')
add.append('.method public static airImgForType(I)I')
add.append('    .registers 2')
add.append('    sget v0, %s->dgAirGroup:I' % AFM_CLS)
add.append('    const/4 v1, 0x3')
add.append('    invoke-static {v1, v0, p0}, %s->pickAirImage(III)I' % AFM_CLS)
add.append('    move-result v0')
add.append('    return v0')
add.append('.end method')
afm = afm.rstrip('\n') + '\n\n' + '\n'.join(add) + '\n'
io.open(AFM, 'w', encoding='utf-8').write(afm)

# ---------- 2) 4 个取图点 ----------
pd = io.open(PD, encoding='utf-8').read()
SITES = [('airBomber', 3), ('airInterceptor', 1), ('airAttacker', 2), ('airG3_US_FIGHTER', 0)]
for name, idx in SITES:
    old = '    sget v3, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % name
    assert pd.count(old) == 1, ('site', name, pd.count(old))
    new = ('    const/4 v3, 0x%x\n'
           '    invoke-static {v3}, %s->airImgForType(I)I\n'
           '    move-result v3') % (idx, AFM_CLS)
    pd = pd.replace(old, new, 1)

# ---------- 3) 调用方设组 ----------
anchor = ('    invoke-static {p0, v0, v6, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;'
          '->drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V')
assert pd.count(anchor) == 1, ('caller', pd.count(anchor))
setter = ('    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I\n'
          '    move-result v9\n'
          '    invoke-static {v9}, %s->artGroupOf(I)I\n'
          '    move-result v9\n'
          '    sput v9, %s->dgAirGroup:I\n' % (AFM_CLS, AFM_CLS))
pd = pd.replace(anchor, setter + anchor, 1)
io.open(PD, 'w', encoding='utf-8').write(pd)

s = io.open(PD, encoding='utf-8').read()
print('OK airImgForType=%d 处，设组=%d 处，旧硬编码残留=%d'
      % (s.count('->airImgForType(I)I'), s.count('->dgAirGroup:I'), s.count('->airG3_US_FIGHTER:I')))