#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AD-R0 锚点核实（只读，不写盘）：确认注入点逐字命中数、方法域、真实字节形态。"""
import sys

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = open(AFM, encoding='utf-8').read()

print('=== [1] 候选锚点逐字命中数（全文件）===')
cands = [
    '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V',
    '    .registers 4\n\n    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V',
    '.method public updateAll()V',
]
for c in cands:
    print('  %-72s -> %d' % (repr(c)[:72], s.count(c)))

print()
print('=== [2] updateAll 方法域内统计 ===')
i = s.index('.method public updateAll()V')
j = s.index('.end method', i)
blk = s[i:j]
print('  区块长度(字符) =', j - i)
print('  demoLoadCfg()V 在区块内出现 =', blk.count('demoLoadCfg()V'))
print('  区块内是否已有 AirDefDiag  =', blk.count('AirDefDiag'))

print()
print('=== [3] updateAll 开头原始字节（repr，前 220 字符）===')
print(repr(s[i:i + 220]))

print()
print('=== [4] 关键：把锚点行作为插入基准，检查其是否方法域内唯一 ===')
anchor = '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V'
print('  全文件命中 =', s.count(anchor), '｜ 区块内命中 =', blk.count(anchor))

print()
print('=== [5] 现有相关类是否已在树内 ===')
import os
for p in ['/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefence.smali',
          '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali',
          '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali']:
    print('  %-70s exists=%s' % (p, os.path.exists(p)))

print()
print('=== [6] AirDefDiag 名字冲突检查（全树）===')
import subprocess
r = subprocess.run(['grep', '-rl', 'AirDefDiag', '/tmp/w3a/smali'], capture_output=True, text=True)
print('  引用 AirDefDiag 的文件数 =', len([x for x in r.stdout.split() if x]))

print()
print('OK anchor check done')
