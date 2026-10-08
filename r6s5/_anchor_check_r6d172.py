#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d172 前置核实：AirMission 里 pap 调用现场的锚点唯一性"""
AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
s = open(AM, encoding='utf-8').read()

call = ('    invoke-static {p0, v2, v0, v1, p1}, '
        'Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->pap(Ljava/lang/Object;Ljava/lang/String;'
        'Ljava/lang/Object;II)V')
iget = ('    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->'
        'airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;')
after = '    if-eqz v0, :cond_39'

print('pap 调用行     全文件命中 =', s.count(call))
print('airhqDivision iget 行 命中 =', s.count(iget))
print('if-eqz v0, :cond_39 命中 =', s.count(after))

anchor = iget + '\n\n' + call + '\n\n' + after
print('三行组合锚点 命中 =', s.count(anchor))

# 列出所有 pap 调用（含其它类）
import subprocess
r = subprocess.run(['grep', '-rn', 'AirPosProbe;->pap(', '/tmp/w3a/smali'],
                   capture_output=True, text=True)
print('全树 pap 调用点：')
for l in r.stdout.splitlines():
    print('  ', l.replace('/tmp/w3a/smali/', ''))