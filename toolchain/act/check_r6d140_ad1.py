#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d140 门禁：AD-1 + tickSafe 兜底/自证
import io, os, sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DEX = '/tmp/r6d140_classes.dex'

fails = []
def ok(c, m):
    print(('  PASS  ' if c else '  FAIL  ') + m)
    if not c:
        fails.append(m)

t_ad = io.open(AD, encoding='utf-8').read()
t_af = io.open(AF, encoding='utf-8').read()

print('== r6d140 门禁 ==')
need = ['adHitChance', 'adDamagePerHit', 'airDefenseAt', 'fireProvince',
        'fireAtMission', 'inRange', 'pickAlive', 'tick', 'tickSafe']
ok(all(('.method public static %s' % m) in t_ad for m in need), 'S1 AirDefense 9 个方法齐全')
ok(t_af.count('AirDefense;->tickSafe(I)V') == 1, 'S2 update(I)V 调用 tickSafe 恰好 1 次')
ok('AirDefense;->tick(I)V' not in t_af, 'S3 已无裸 tick 调用（全部走兜底）')
ok('.catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ad} :catch_ad' in t_ad, 'S4 tickSafe 含 try/catch')
ok(('ADT' in t_ad) and ('ADX' in t_ad), 'S5 自证探针 ADT / 异常探针 ADX 齐备')
ok('->hasAAABuilding(I)Z' not in t_af, 'S6 旧 AAA 段已删')
ok(('RADAR_BUILDING_ID' not in t_ad) and ('LONGRADAR_BUILDING_ID' not in t_ad), 'S7 雷达/中导雷达不参与')
ok('0x3f000000' in t_ad and '0x40400000' in t_ad, 'S8 空位常量 0.5f/3.0f')
if os.path.exists(DEX):
    ok(b'AirDefense' in open(DEX, 'rb').read(), 'S9 dex 内含 AirDefense')

POL = [
    ('P1 airDefenseAt id<0 早退',     'AAA_BUILDING_ID:I\n\n    if-ltz v2, :ret', 'AAA_BUILDING_ID:I\n\n    if-gez v2, :ret'),
    ('P2 fireProvince 炮数<=0 早退',   '    if-lez v0, :ret',   '    if-gtz v0, :ret'),
    ('P3 tick 省id<0 跳过',           '    if-ltz v3, :next',  '    if-gez v3, :next'),
    ('P4 命中口径 rnd>=chance 跳过',   '    if-gez v7, :snext', '    if-ltz v7, :snext'),
    ('P5 hp<=0 才击落',               '    if-lez v10, :kill', '    if-gtz v10, :kill'),
    ('P6 日志：命中0 才跳过',         '    :done\n\n    if-lez v3, :ret', ':done\n\n    if-gtz v3, :ret'),
    ('P7 inRange 位置<0 => false',    '    if-ltz v0, :no',    '    if-gez v0, :no'),
    ('P8 inRange 同省 => true',       '    if-eq v0, v2, :hit', '    if-ne v0, v2, :hit'),
    ('P9 inRange d²>300² => false',   '    if-gt v4, v5, :no', '    if-le v4, v5, :no'),
    ('P10 pickAlive size<=0 => null', '    if-lez v2, :null',  '    if-gtz v2, :null'),
]
for n, g, b in POL:
    ok((g in t_ad) and (b not in t_ad), n)

ok('maxHp' not in t_ad, 'N1 未用百分比伤害')
ok('Airport;->aircraft' not in t_ad, 'N2 未遍历机场停放飞机')
i0 = t_af.find('.method public update(I)V'); i1 = t_af.find('.end method', i0)
ok('0x3f800000' not in t_af[i0:i1], 'N3 update(I)V 内无旧 −1hp 常量')

print()
if fails:
    print('❌ 门禁未通过：%d' % len(fails))
    for f in fails: print('   - ' + f)
    sys.exit(1)
print('✅ 门禁全部通过')