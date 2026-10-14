#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d298：两瑕疵修复
#  E1 static sTopCatLast 字段
#  E2 addTopTabs 默认栏 = 上次选择（无则 land）
#  E3 applyTopFilter 落盘 sTopCatLast
#  E4 relayoutDone 位置钳制（越界回最左）
# 锚点先验=1；双树；备份 .pre_r6d298
import os, shutil, sys

REL_TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
D = 'Laoc/kingdoms/lukasz/'
TREE = D + 'menusInGame/Technology/InGame_TechnologyTree;'
MENU = D + 'menu/Menu;'

A_FIELD = '.field public sTopCat:Ljava/lang/String;\n'
N_FIELD = (A_FIELD + '.field public static sTopCatLast:Ljava/lang/String;\n')

A_DEF = ('    const-string v0, "land"\n'
         '    iput-object v0, p0, ' + TREE + '->sTopCat:Ljava/lang/String;\n')
N_DEF = ('    sget-object v1, ' + TREE + '->sTopCatLast:Ljava/lang/String;\n'
         '    if-eqz v1, :ts_land\n'
         '    iput-object v1, p0, ' + TREE + '->sTopCat:Ljava/lang/String;\n'
         '    goto :ts_done\n'
         '    :ts_land\n'
         '    const-string v1, "land"\n'
         '    iput-object v1, p0, ' + TREE + '->sTopCat:Ljava/lang/String;\n'
         '    :ts_done\n')

A_APPLY = '    iput-object p1, p0, ' + TREE + '->sTopCat:Ljava/lang/String;\n'
N_APPLY = (A_APPLY + '    sput-object p1, ' + TREE + '->sTopCatLast:Ljava/lang/String;\n')

A_SCROLL = '    invoke-virtual {p0}, ' + MENU + '->updateScrollable()V\n'
N_SCROLL = (A_SCROLL +
            '    invoke-virtual {p0}, ' + MENU + '->getMenuPosX()I\n'
            '    move-result v1\n'
            '    invoke-virtual {p0, v1}, ' + MENU + '->setMenuPosX(I)V\n'
            '    invoke-virtual {p0}, ' + MENU + '->getNewMenuPosX()I\n'
            '    move-result v2\n'
            '    if-eq v2, v1, :md_done\n'
            '    invoke-virtual {p0}, ' + MENU + '->getPosX()I\n'
            '    move-result v2\n'
            '    invoke-virtual {p0, v2}, ' + MENU + '->setMenuPosX(I)V\n'
            '    :md_done\n')


def patch_tree(base):
    p = os.path.join(base, REL_TREE)
    t0 = open(p, encoding='utf-8').read()
    if 'sTopCatLast' in t0:
        print('ALREADY PATCHED?', base)
        sys.exit(1)
    checks = [
        ('A_FIELD', t0.count(A_FIELD) == 1),
        ('A_DEF', t0.count(A_DEF) == 1),
        ('A_APPLY', t0.count(A_APPLY) == 1),
        ('A_SCROLL', t0.count(A_SCROLL) == 1),
    ]
    bad = [k for k, ok in checks if not ok]
    if bad:
        print('ANCHOR FAIL', base, bad)
        sys.exit(1)
    b = p + '.pre_r6d298'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    t1 = t0.replace(A_FIELD, N_FIELD, 1)
    t1 = t1.replace(A_DEF, N_DEF, 1)
    t1 = t1.replace(A_APPLY, N_APPLY, 1)
    t1 = t1.replace(A_SCROLL, N_SCROLL, 1)
    open(p, 'w', encoding='utf-8').write(t1)
    print('PATCHED', base)


for b in TREES:
    patch_tree(b)
print('DONE r6d298')