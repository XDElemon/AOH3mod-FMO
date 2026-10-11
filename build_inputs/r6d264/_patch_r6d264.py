# -*- coding: utf-8 -*-
# r6d264 补丁：genOf 由"图号"推导"代"（((img-70)>>4)+3），两棵树，先验后写
import os, shutil

ROOTS = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']

OLD = ('.method public static genOf(I)I\n'
       '    .registers 2\n'
       '    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I\n'
       '    aget v0, v0, p0\n'
       '    and-int/lit16 v0, v0, 0xff\n'
       '    return v0\n'
       '.end method')

NEW = ('.method public static genOf(I)I\n'
       '    .registers 2\n'
       '    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I\n'
       '    aget v0, v0, p0\n'
       '    and-int/lit16 v0, v0, 0xff\n'
       '    # r6d264: 低8位=图号(70..133)，按公式推导代：((img-70)>>4)+3\n'
       '    add-int/lit8 v0, v0, -0x46\n'
       '    ushr-int/lit8 v0, v0, 0x4\n'
       '    add-int/lit8 v0, v0, 0x3\n'
       '    return v0\n'
       '.end method')

ok = True
for r in ROOTS:
    p = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirModelTables.smali')
    s = open(p, encoding='utf-8').read()
    c = s.count(OLD)
    if 'add-int/lit8 v0, v0, -0x46' in s:
        print('SKIP(已打补丁):', p); ok = False
    print('ANCHOR %d  %s' % (c, p))
    if c != 1:
        ok = False
if not ok:
    print('BLOCKED: 前置校验未通过，未写盘')
    raise SystemExit(1)

for r in ROOTS:
    p = os.path.join(r, 'aoc/kingdoms/lukasz/map/battles/AirModelTables.smali')
    if not os.path.exists(p + '.pre_r6d264'):
        shutil.copy2(p, p + '.pre_r6d264')
    s = open(p, encoding='utf-8').read()
    s = s.replace(OLD, NEW, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('PATCHED', p)
print('ALL DONE')