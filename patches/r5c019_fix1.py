# -*- coding: utf-8 -*-
# R5c019 修一处方向写反：重瞄侧“未初始化”判断应为 if-ltz（v13<0 才走 rt_first）
import io
F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
t = io.open(F, encoding='utf-8').read()
old = '    if-gez v13, :rt_first\n'
assert t.count(old) == 1, 'count=%d' % t.count(old)
t = t.replace(old, '    if-ltz v13, :rt_first\n')
io.open(F, 'w', encoding='utf-8').write(t)
print('OK: rt_first 方向已修（if-gez -> if-ltz）')