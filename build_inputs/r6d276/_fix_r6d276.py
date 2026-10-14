#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d276 修复：① pinTopTabs 补菜单原点(getPosX/getPosY)；② 合并 B3 名字键（b3/out -> 现行 assets + 暂存）
import os, re, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'

# ---- 1) pinTopTabs 原点修复 ----
for root in TREES:
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d276'):
        shutil.copy2(p, p + '.pre_r6d276')
    s = open(p, encoding='utf-8').read()
    oA = ('    sub-int/2addr v5, v4\n'
          '    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V')
    nA = ('    sub-int/2addr v5, v4\n'
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I\n'
          '    move-result v6\n'
          '    add-int/2addr v5, v6\n'
          '    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V')
    oB = ('    sub-int/2addr v5, v4\n'
          '    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V')
    nB = ('    sub-int/2addr v5, v4\n'
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I\n'
          '    move-result v6\n'
          '    add-int/2addr v5, v6\n'
          '    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V')
    assert s.count(oA) == 1, (p, 'oA', s.count(oA))
    assert s.count(oB) == 1, (p, 'oB', s.count(oB))
    s = s.replace(oA, nA, 1).replace(oB, nB, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('PIN-FIX', p)

# ---- 2) 合并 B3 名字键 ----
SRC = '/sdcard/GLG/历史23/build_inputs/b3/out/assets/game/languages'
CUR = '/root/history23_repo/assets_r6t007/game/languages'
STAGE = '/sdcard/GLG/历史23/build_inputs/r6d276/out/assets/game/languages'
os.makedirs(STAGE, exist_ok=True)
for fn in ['Bundle.properties', 'Bundle_cn_sp.properties', 'Bundle_cn_tr.properties']:
    cur = open(os.path.join(CUR, fn), encoding='utf-8').read()
    src = open(os.path.join(SRC, fn), encoding='utf-8').read()
    have = set(re.findall(r'(?m)^([A-Za-z0-9_]+) =', cur))
    add = []
    for line in src.splitlines():
        m = re.match(r'^([A-Za-z0-9_]+) =', line)
        if m and m.group(1) not in have:
            add.append(line)
            have.add(m.group(1))
    if add:
        cur = cur.rstrip() + '\n' + '\n'.join(add) + '\n'
        open(os.path.join(CUR, fn), 'w', encoding='utf-8').write(cur)
    open(os.path.join(STAGE, fn), 'w', encoding='utf-8').write(cur)
    print('LANG-MERGE', fn, 'added', len(add))

# ---- 3) 抽查 ----
for base in [CUR, STAGE]:
    for fn in ['Bundle_cn_sp.properties', 'Bundle_cn_tr.properties', 'Bundle.properties']:
        t = open(os.path.join(base, fn), encoding='utf-8').read()
        print('CHK', base.split('/')[-3] if 'assets_r6t007' in base else 'stage', fn,
              'T_RU_SU57=', 'T_RU_SU57 =' in t, 'AF3_RU=', 'AF3_RU =' in t)
print('DONE r6d276')