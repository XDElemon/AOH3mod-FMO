#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d299：修复"内容移动但菜单位置未变 ⇒ isInView 过期 ⇒ 不绘制"
# E1 relayoutDone 的 :md_done 之后调用 updateMenuElements_IsInView()
import os, shutil, sys

REL_TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
MENU = 'Laoc/kingdoms/lukasz/menu/Menu;'

A = '    :md_done\n'
N = (A + '    invoke-virtual {p0}, ' + MENU + '->updateMenuElements_IsInView()V\n')


def patch_tree(base):
    p = os.path.join(base, REL_TREE)
    t0 = open(p, encoding='utf-8').read()
    if 'updateMenuElements_IsInView' in t0:
        print('ALREADY PATCHED?', base)
        sys.exit(1)
    if t0.count(A) != 1:
        print('ANCHOR FAIL', base, t0.count(A))
        sys.exit(1)
    b = p + '.pre_r6d299'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    t1 = t0.replace(A, N, 1)
    open(p, 'w', encoding='utf-8').write(t1)
    print('PATCHED', base)


for b in TREES:
    patch_tree(b)
print('DONE r6d299')