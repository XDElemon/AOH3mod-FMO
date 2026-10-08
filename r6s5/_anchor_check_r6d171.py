#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""核查 updateAll 尾部锚点唯一性（AD-1′ 注入点选在同步之后、return 之前）"""
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = open(AFM, encoding='utf-8').read()

a = '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V'
b = '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->repairAircraft()V'
print('dumpMissions 行（全文件）   =', s.count(a))
print('repairAircraft 行（全文件） =', s.count(b))

i = s.index('.method public updateAll()V')
j = s.index('.end method', i)
blk = s[i:j]
print('区块内 dumpMissions =', blk.count(a), '｜ repairAircraft =', blk.count(b))
print()
print('--- updateAll 尾部 330 字符（repr，看清空行与标签）---')
print(repr(blk[-330:]))
print()
pair = (b + '\n\n' + a + '\n\n' + '    return-void')
print('候选锚点(repair+dump+return) 全文件命中 =', s.count(pair))
print('候选锚点 区块内命中 =', blk.count(pair))
print()
print('候选锚点2（dump+return 两行）全文件命中 =', s.count(a + '\n\n' + '    return-void'))
print('候选锚点2 区块内命中 =', blk.count(a + '\n\n' + '    return-void'))