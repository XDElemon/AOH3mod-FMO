#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d166 —— 只把“空军那一列”再往右挪一点

用户反馈（r6d165 复测）：「OK OK，现在会移了，然后空军还得向右移动点」
现状：两类都在 ⇒ 空军 +28（0x1c）/ 陆军 −28（-0x1c），两列中心相距 56px。
本批：**只改空军**：+28 → **+44**（0x2c），陆军保持 −28 ⇒ 两列相距 72px。

两处必须同步改（否则另一条路径会把值写回）：
  A1 `Province.updateArmyPosY` 第二遍（排版主路径）
  A2 `Province.columnShiftFor`（被 `ArmyDivision.defaultShiftX` 使用的第二路径）
"""
import os
import shutil
import sys

PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
BATCH = 'r6d166'

plan = [
    ('A1 排版第二遍：空军 +0x2c', '    const/16 v6, 0x1c\n', '    const/16 v6, 0x2c\n'),
    ('A2 columnShiftFor：空军 +0x2c', '    const/16 v7, 0x1c\n', '    const/16 v7, 0x2c\n'),
]

s = open(PROV, encoding='utf-8').read()
bad = []
sim = s
for tag, old, new in plan:
    c = sim.count(old)
    if c != 1:
        bad.append('%s：命中 %d（应 1）' % (tag, c))
        print('  ✗ %s：命中 %d（应 1）' % (tag, c))
        continue
    sim = sim.replace(old, new, 1)
    print('  ✓ %s' % tag)

# 陆军保持 −0x1c（用于门禁复核）
if sim.count('    const/16 v6, -0x1c\n') != 1 or sim.count('    const/16 v7, -0x1c\n') != 1:
    bad.append('陆军 −0x1c 数量异常')
    print('  ✗ 陆军 −0x1c 数量异常')

if bad:
    print('❌ 未写盘：', bad)
    sys.exit(1)

b = PROV + '.pre_' + BATCH
if not os.path.exists(b):
    shutil.copy2(PROV, b)
    print('  备份 ->', b)
os.makedirs('/tmp/revx', exist_ok=True)
shutil.copy2(PROV, '/tmp/revx/Province.smali.pre_' + BATCH)
open(PROV, 'w', encoding='utf-8').write(sim)
print('✅ r6d166 已落盘：空军 +44（0x2c） / 陆军 −28（-0x1c）')