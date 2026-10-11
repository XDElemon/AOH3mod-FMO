# -*- coding: utf-8 -*-
# r6d263 补丁：pickAirImage 下限钳位极性修复（if-lt→if-ge），两棵树，先验后写
import os, shutil

ROOTS = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']

OLD = '.method public static pickAirImage(III)I\n    .registers 4\n    const/4 v0, 0x3\n    if-lt p0, v0, :gen_lo_ok'
NEW = '.method public static pickAirImage(III)I\n    .registers 4\n    const/4 v0, 0x3\n    if-ge p0, v0, :gen_lo_ok'

ok = True
for r in ROOTS:
    p = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
    s = open(p, encoding='utf-8').read()
    c = s.count(OLD)
    extra = s.count('if-lt p0')  # 应恰为 1（即 OLD 内那处）
    print('ANCHOR %d / if-lt-p0-total %d  %s' % (c, extra, p))
    if c != 1 or extra != 1:
        ok = False
if not ok:
    print('BLOCKED: 前置校验未通过，未写盘')
    raise SystemExit(1)

for r in ROOTS:
    p = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
    if not os.path.exists(p + '.pre_r6d263'):
        shutil.copy2(p, p + '.pre_r6d263')
    s = open(p, encoding='utf-8').read()
    s = s.replace(OLD, NEW, 1)
    assert s.count('if-lt p0') == 0
    open(p, 'w', encoding='utf-8').write(s)
    print('PATCHED', p)
print('ALL DONE')