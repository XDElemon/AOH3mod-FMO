# -*- coding: utf-8 -*-
# B4 补丁：新增2个类文件 + Civilization.addResearchProgress 完成钩子（两棵树，先全量校验再写盘）
import os, shutil

ROOTS = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
SRC = '/sdcard/GLG/历史23/build_inputs/b4/_b4_files'

NEW_FILES = {
    'aoc/kingdoms/lukasz/events/AirTechEvents.smali': open(os.path.join(SRC, 'AirTechEvents.smali'), encoding='utf-8').read(),
    'aoc/kingdoms/lukasz/events/AirTechEvents$Task.smali': open(os.path.join(SRC, 'AirTechEvents$Task.smali'), encoding='utf-8').read(),
}

INJ_OLD = 'invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V\n\n    .line 2079'
INJ_NEW = 'invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V\n\n    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/events/AirTechEvents;->onTechCompleted(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V\n\n    .line 2079'

# ---- 阶段1：全量校验（不写盘） ----
ok = True
for r in ROOTS:
    for rel in NEW_FILES:
        p = os.path.join(r, rel)
        if os.path.exists(p):
            print('SKIP(已存在):', p); ok = False
    civ = os.path.join(r, 'aoc/kingdoms/lukasz/map/civilization/Civilization.smali')
    s = open(civ, encoding='utf-8').read()
    if 'onTechCompleted' in s:
        print('SKIP(已打补丁):', civ); ok = False
    c = s.count(INJ_OLD)
    print('INJ count=%d  %s' % (c, civ))
    if c != 1:
        ok = False
if not ok:
    print('BLOCKED: 前置校验未通过，未写盘')
    raise SystemExit(1)

# ---- 阶段2：写盘 ----
for r in ROOTS:
    for rel, txt in NEW_FILES.items():
        p = os.path.join(r, rel)
        os.makedirs(os.path.dirname(p), exist_ok=True)
        open(p, 'w', encoding='utf-8').write(txt)
        print('NEW', p)
    civ = os.path.join(r, 'aoc/kingdoms/lukasz/map/civilization/Civilization.smali')
    if not os.path.exists(civ + '.pre_b4'):
        shutil.copy2(civ, civ + '.pre_b4')
    s = open(civ, encoding='utf-8').read()
    s = s.replace(INJ_OLD, INJ_NEW, 1)
    open(civ, 'w', encoding='utf-8').write(s)
    print('PATCHED', civ)
print('ALL DONE')