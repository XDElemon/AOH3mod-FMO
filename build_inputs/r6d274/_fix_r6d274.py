#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d274 修复脚本：TechTopTab 两类 VerifyError（构造器参数序号错位 + Images.pix 误当 int）
# 用法：python3 _fix_r6d274.py  （双树，重复运行安全：已修则跳过）
import os

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'

for root in TREES:
    p = os.path.join(root, TAB)
    s = open(p, encoding='utf-8').read()
    changed = False

    # 1) 构造器参数映射（(owner,id,text,x,y,w,h)）
    fixes = [
        ('    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I\n'
         '    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I',
         '    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I\n'
         '    iput p5, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I'),
        ('    move-object v1, p2\n'
         '    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
         '    const/4 v3, -0x1\n'
         '    move v4, p3\n'
         '    move v5, p4\n'
         '    move v6, p5',
         '    move-object v1, p3\n'
         '    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
         '    const/4 v3, -0x1\n'
         '    move v4, p4\n'
         '    move v5, p5\n'
         '    move v6, p6'),
    ]
    for o, n in fixes:
        if s.count(o) == 1:
            s = s.replace(o, n, 1); changed = True

    # 2) pix 对象字段直用
    o2 = ('    sget v5, Laoc/kingdoms/lukasz/textures/Images;->pix:I\n'
          '    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;\n'
          '    move-result-object v6')
    n2 = '    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;'
    if s.count(o2) == 1:
        s = s.replace(o2, n2, 1); changed = True

    if changed:
        open(p, 'w', encoding='utf-8').write(s)
        print('FIXED', p)
    else:
        print('ALREADY-OK', p)
print('DONE r6d274')