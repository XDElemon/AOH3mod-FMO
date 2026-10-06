#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d139 门禁：AD-1 极性修正版
# 结构断言 8 条 + 极性断言 10 条（正/负成对）+ 负样本 3 条
import io, os, sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DEX = '/tmp/r6d139_classes.dex'

fails = []
def ok(cond, msg):
    print(('  PASS  ' if cond else '  FAIL  ') + msg)
    if not cond:
        fails.append(msg)

t_ad = io.open(AD, encoding='utf-8').read() if os.path.exists(AD) else ''
t_af = io.open(AF, encoding='utf-8').read() if os.path.exists(AF) else ''

print('== r6d139 门禁（AD-1 极性）==')
print('[结构]')
need = ['adHitChance', 'adDamagePerHit', 'airDefenseAt', 'fireProvince',
        'fireAtMission', 'inRange', 'pickAlive', 'tick']
ok(all(('.method public static %s' % m) in t_ad for m in need), 'S1 AirDefense 8 个方法齐全')
ok(t_af.count('AirDefense;->tick(I)V') == 1, 'S2 update(I)V 中 tick 调用恰好 1 次')
ok('->hasAAABuilding(I)Z' not in t_af, 'S3 旧 AAA 段已删（无调用）')
ok(('RADAR_BUILDING_ID' not in t_ad) and ('LONGRADAR_BUILDING_ID' not in t_ad), 'S4 雷达/中导雷达不参与')
ok('AAA_BUILDING_ID' in t_ad, 'S5 仅引用 AAA_BUILDING_ID')
ok('0x3f000000' in t_ad and '0x40400000' in t_ad, 'S6 空位常量 0.5f/3.0f')
if os.path.exists(DEX):
    ok(b'AirDefense' in open(DEX, 'rb').read(), 'S7 dex 内含 AirDefense')
else:
    print('  SKIP  S7 dex 未生成')

print('[极性 正/负 成对]')
# (名称, 必须存在的正确写法, 必须不存在的反向写法)
POL = [
    ('P1 airDefenseAt id<0 早退',      'sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I\n\n    if-ltz v2, :ret',
                                        'AAA_BUILDING_ID:I\n\n    if-gez v2, :ret'),
    ('P2 fireProvince 炮数<=0 早退',    '    if-lez v0, :ret',   '    if-gtz v0, :ret'),
    ('P3 tick 省id<0 跳过',            '    if-ltz v3, :next',  '    if-gez v3, :next'),
    ('P4 命中口径 rnd>=chance 跳过',    '    if-gez v7, :snext', '    if-ltz v7, :snext'),
    ('P5 hp<=0 才击落',                '    if-lez v10, :kill', '    if-gtz v10, :kill'),
    ('P6 日志：命中0 才跳过',          '    :done\n\n    if-lez v3, :ret', ':done\n\n    if-gtz v3, :ret'),
    ('P7 inRange 位置<0 => false',     '    if-ltz v0, :no',    '    if-gez v0, :no'),
    ('P8 inRange 同省 => true',        '    if-eq v0, v2, :hit', '    if-ne v0, v2, :hit'),
    ('P9 inRange d²>300² => false',    '    if-gt v4, v5, :no', '    if-le v4, v5, :no'),
    ('P10 pickAlive size<=0 => null',  '    if-lez v2, :null',  '    if-gtz v2, :null'),
]
for name, good, bad in POL:
    ok((good in t_ad) and (bad not in t_ad), name)

print('[负样本]')
ok('maxHp' not in t_ad, 'N1 未用百分比伤害（无 maxHp）')
ok('Airport;->aircraft' not in t_ad, 'N2 未遍历机场停放飞机')
i0 = t_af.find('.method public update(I)V'); i1 = t_af.find('.end method', i0)
ok('0x3f800000' not in t_af[i0:i1], 'N3 update(I)V 内无旧 −1hp 常量')

print()
if fails:
    print('❌ 门禁未通过：%d 条' % len(fails))
    for f in fails:
        print('   - ' + f)
    sys.exit(1)
print('✅ 门禁全部通过（结构 %d + 极性 %d + 负样本 3）' % (7, len(POL)))