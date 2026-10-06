#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d138 门禁：AD-1 防空阵地自动开火
# 断言 >=4 条；负样本 3 条（负样本必须能让门禁变红）
import io, os, sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DEX = '/tmp/r6d138_classes.dex'

fails = []

def ok(cond, msg):
    print(('  PASS  ' if cond else '  FAIL  ') + msg)
    if not cond:
        fails.append(msg)

print('== r6d138 门禁（AD-1）==')
print('[断言组]')
txt_ad = io.open(AD, encoding='utf-8').read() if os.path.exists(AD) else ''
txt_af = io.open(AF, encoding='utf-8').read() if os.path.exists(AF) else ''

# A1 新类存在且 8 个方法齐全
need = ['adHitChance', 'adDamagePerHit', 'airDefenseAt', 'fireProvince',
        'fireAtMission', 'inRange', 'pickAlive', 'tick']
ok(all(('.method public static %s' % m) in txt_ad for m in need),
   'A1 AirDefense 含全部 8 个方法')

# A2 update(I)V 里有且仅有一次 AirDefense.tick 调用
ok(txt_af.count('AirDefense;->tick(I)V') == 1, 'A2 update(I)V 中 AirDefense.tick 调用恰好 1 次')

# A3 旧 AAA 逻辑已移除（update 内不再 hasAAABuilding 调用）
print('        (已知：hasAAABuilding 方法定义保留、仅不再被调用)')
ok('hasAAABuilding(I)Z' in txt_af and '->hasAAABuilding(I)Z' not in txt_af,
   'A3 旧 AAA 段已删除（无 hasAAABuilding 调用）')

# A4 只用 AAA：新类不得引用雷达/中层反导雷达
ok(('RADAR_BUILDING_ID' not in txt_ad) and ('LONGRADAR_BUILDING_ID' not in txt_ad),
   'A4 新类只引用 AAA_BUILDING_ID（雷达/中层反导雷达不参与）')
ok('AAA_BUILDING_ID' in txt_ad, 'A5 新类引用 AAA_BUILDING_ID')

# A6 空位方法返回常量（0.5f / 3.0f）
ok('0x3f000000' in txt_ad and '0x40400000' in txt_ad, 'A6 空位返回常量 0.5f / 3.0f')

# A7 dex 里含新类
if os.path.exists(DEX):
    raw = open(DEX, 'rb').read()
    ok(b'AirDefense' in raw, 'A7 dex 内含 AirDefense 类')
else:
    print('  SKIP  A7 dex 不存在（尚未汇编）')

print('[负样本组]（若被触发⇒必须变红）')
# N1 不得引用 maxHp（防止退回"百分比伤害"）
bad1 = 'maxHp' in txt_ad
ok(not bad1, 'N1 正常：新类未引用 maxHp（不是百分比伤害）')

# N2 不得引用 Airport.aircraft（防止打停放飞机）
bad2 = 'Airport;->aircraft' in txt_ad
ok(not bad2, 'N2 正常：新类未遍历机场停放飞机')

# N3 update(I)V 内不得再出现"−1hp"常量 0x3f800000 的旧剔除写法
seg = txt_af
i0 = seg.find('.method public update(I)V')
i1 = seg.find('.end method', i0)
upd = seg[i0:i1]
bad3 = '0x3f800000' in upd
ok(not bad3, 'N3 正常：update(I)V 内已无旧 −1hp 常量')

print()
if fails:
    print('❌ 门禁未通过：%d 条' % len(fails))
    for f in fails:
        print('   - ' + f)
    sys.exit(1)
print('✅ 门禁全部通过')