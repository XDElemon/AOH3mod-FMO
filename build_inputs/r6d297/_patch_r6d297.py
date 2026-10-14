#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d297：国别路由压缩 —— rank/cxOf 全部只按"本国允许"的科技计算
# 编辑点 E1..E5（见 调研_r6d297_r3_定稿.md）；锚点先验=1；双树；备份 .pre_r6d297
import os, shutil, sys

REL_TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
D = 'Laoc/kingdoms/lukasz/'
P = D + 'jakowski/Player/Player;'
G = D + 'jakowski/Game;'
TT = D + 'map/technology/TechnologyTree;'

A_HEAD = '.method private relayoutNodes(Ljava/lang/String;)V\n    .registers 16\n'
N_HEAD = (A_HEAD +
          '\n    sget-object v13, ' + G + '->player:' + P + '\n'
          '\n    iget v13, v13, ' + P + '->iCivID:I\n')

A1 = '    if-eqz v5, :rn_l1n\n'
N1 = (A1 +
      '\n    invoke-static {v4, v13}, ' + TT + '->isTechAllowedForCiv(II)Z\n'
      '\n    move-result v5\n'
      '\n    if-eqz v5, :rn_l1n\n')

A2 = '    if-eqz v5, :rn_l2n\n'
N2 = (A2 +
      '\n    invoke-static {v4, v13}, ' + TT + '->isTechAllowedForCiv(II)Z\n'
      '\n    move-result v5\n'
      '\n    if-eqz v5, :rn_l2n\n')

A4 = '    iget v1, v0, ' + D + 'map/technology/TechnologyTree$Technology;->TreeColumn:I\n'
N4 = (A4 +
      '\n    sget-object v5, ' + G + '->player:' + P + '\n'
      '\n    iget v5, v5, ' + P + '->iCivID:I\n')

A5 = '    :cx_rank\n'
N5 = (A5 +
      '\n    invoke-static {p2, v5}, ' + TT + '->isTechAllowedForCiv(II)Z\n'
      '\n    move-result v6\n'
      '\n    if-eqz v6, :cx_park\n')


def patch_tree(base):
    p = os.path.join(base, REL_TREE)
    t0 = open(p, encoding='utf-8').read()
    if 'sget-object v13, ' + G in t0:
        print('ALREADY PATCHED?', base)
        sys.exit(1)
    checks = [
        ('A_HEAD', t0.count(A_HEAD) == 1),
        ('A1', t0.count(A1) == 1),
        ('A2', t0.count(A2) == 1),
        ('A4', t0.count(A4) == 1),
        ('A5', t0.count(A5) == 1),
    ]
    bad = [k for k, ok in checks if not ok]
    if bad:
        print('ANCHOR FAIL', base, bad)
        sys.exit(1)
    b = p + '.pre_r6d297'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    t1 = t0.replace(A_HEAD, N_HEAD, 1)
    t1 = t1.replace(A1, N1, 1)
    t1 = t1.replace(A2, N2, 1)
    t1 = t1.replace(A4, N4, 1)
    t1 = t1.replace(A5, N5, 1)
    open(p, 'w', encoding='utf-8').write(t1)
    print('PATCHED', base)


for b in TREES:
    patch_tree(b)
print('DONE r6d297')