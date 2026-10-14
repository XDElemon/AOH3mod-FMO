#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d296（v2：寄存器角色表重构版）：方案A 列压缩
# 新增：relayoutNodes / relayoutLines / relayoutDone / cxOf / cyOf / addLineFor
# 角色纪律：对象组(v0,v1,v6,v8,v9,v10,v11) 只装对象；数值组(v2,v3,v4,v5,v7,v12,v13) 只装数值
# 双树；锚点先验=1；备份 .pre_r6d296；全对才写盘

import os, shutil, sys

REL_TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
REL_MENU = 'aoc/kingdoms/lukasz/menu/Menu.smali'
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']

A_FIELD = '.field public sTopCat:Ljava/lang/String;\n'
A_METHODS = '.method public applyTopFilter(Ljava/lang/String;)V'
A_APPLY_BLOCK = (
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyNodeVisibility(Ljava/lang/String;)V\n'
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->rebuildLines(Ljava/lang/String;)V\n'
)
A_APPLY_NEW = (
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyNodeVisibility(Ljava/lang/String;)V\n'
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutNodes(Ljava/lang/String;)V\n'
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutLines(Ljava/lang/String;)V\n'
    '    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutDone()V\n'
    '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->rebuildLines(Ljava/lang/String;)V\n'
)
A_MENU = '.method public final getMinWidth()I'
A_MENU_NEW = (
    '.method public final getMaxSliderX()I\n'
    '    .registers 2\n'
    '\n'
    '    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I\n'
    '\n'
    '    return v0\n'
    '.end method\n'
    '\n'
    + A_MENU
)

NEW_METHODS = '''\
.method private relayoutNodes(Ljava/lang/String;)V
    .registers 16

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :rn_l1
    if-ge v4, v2, :rn_l1e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :rn_l1n

    iget v7, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    if-le v7, v3, :rn_l1n

    move v3, v7

    :rn_l1n
    add-int/lit8 v4, v4, 0x1

    goto :rn_l1

    :rn_l1e
    add-int/lit8 v4, v3, 0x2

    new-array v0, v4, [I

    new-array v6, v4, [I

    const/4 v4, 0x0

    :rn_l2
    if-ge v4, v2, :rn_l2e

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :rn_l2n

    iget v7, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    const/4 v5, 0x1

    aput v5, v0, v7

    :rn_l2n
    add-int/lit8 v4, v4, 0x1

    goto :rn_l2

    :rn_l2e
    const/4 v4, 0x0

    const/4 v5, 0x0

    :rn_l3
    if-gt v4, v3, :rn_l3e

    aput v5, v6, v4

    aget v12, v0, v4

    if-eqz v12, :rn_l3n

    add-int/lit8 v5, v5, 0x1

    :rn_l3n
    add-int/lit8 v4, v4, 0x1

    goto :rn_l3

    :rn_l3e
    iput-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->aColRank:[I

    move v3, v5

    const/4 v4, 0x0

    :rn_l4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v5

    if-ge v4, v5, :rn_l4e

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v8

    instance-of v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;

    if-eqz v12, :rn_empty

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getCurrent()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    const-string v10, "all"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :rn_rank

    sget v12, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    const/16 v13, 0x64

    add-int/2addr v12, v13

    mul-int/2addr v12, v7

    add-int/2addr v12, v13

    goto :rn_set

    :rn_rank
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :rn_park

    iget-object v11, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->aColRank:[I

    aget v13, v11, v7

    sget v12, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    const/16 v7, 0x64

    add-int/2addr v12, v7

    mul-int/2addr v12, v13

    add-int/2addr v12, v7

    goto :rn_set

    :rn_park
    const/16 v12, -0x7d0

    :rn_set
    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    goto :rn_l4n

    :rn_empty
    instance-of v12, v8, Laoc/kingdoms/lukasz/menu_element/Empty;

    if-eqz v12, :rn_l4n

    const-string v10, "all"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :rn_resize

    goto :rn_l4n

    :rn_resize
    sget v12, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    const/16 v13, 0x64

    add-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int/2addr v12, v13

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    :rn_l4n
    add-int/lit8 v4, v4, 0x1

    goto :rn_l4

    :rn_l4e
    return-void
.end method

.method private relayoutLines(Ljava/lang/String;)V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :rl_l
    if-ge v3, v2, :rl_done

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z

    move-result v5

    if-eqz v5, :rl_next

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v7, :rl_skip1

    invoke-direct {p0, p1, v7, v3, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addLineFor(Ljava/lang/String;IILjava/util/List;)V

    :rl_skip1
    iget v7, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v7, :rl_skip2

    invoke-direct {p0, p1, v7, v3, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addLineFor(Ljava/lang/String;IILjava/util/List;)V

    :rl_skip2
    :rl_next
    add-int/lit8 v3, v3, 0x1

    goto :rl_l

    :rl_done
    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lAllLines:Ljava/util/List;

    return-void
.end method

.method private addLineFor(Ljava/lang/String;IILjava/util/List;)V
    .registers 14

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    move-object v1, p0

    move v2, p3

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->cxOf(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->cyOf(I)I

    move-result v4

    invoke-direct {p0, p1, p3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->cxOf(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, p3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->cyOf(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cxOf(Ljava/lang/String;I)I
    .registers 10

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cx_rank

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    const/16 v4, 0x64

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    goto :cx_fin

    :cx_rank
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cx_park

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->aColRank:[I

    aget v3, v3, v1

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    const/16 v4, 0x64

    add-int/2addr v1, v4

    mul-int/2addr v1, v3

    add-int/2addr v1, v4

    move v3, v1

    goto :cx_fin

    :cx_park
    const/16 v3, -0x7d0

    :cx_fin
    sget v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    return v3
.end method

.method private cyOf(I)I
    .registers 8

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    const/16 v3, 0xf

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    return v2
.end method

.method private relayoutDone()V
    .registers 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    const-string v0, "nLAY"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    const-string v0, "nSCR"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMaxSliderX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method

'''


def patch_tree(base):
    tree_p = os.path.join(base, REL_TREE)
    menu_p = os.path.join(base, REL_MENU)
    t0 = open(tree_p, encoding='utf-8').read()
    m0 = open(menu_p, encoding='utf-8').read()
    if 'relayoutNodes' in t0 or 'getMaxSliderX' in m0:
        print('ALREADY PATCHED?', base)
        sys.exit(1)
    checks = [
        ('A_FIELD', t0.count(A_FIELD) == 1),
        ('A_METHODS', t0.count(A_METHODS) == 1),
        ('A_APPLY_BLOCK', t0.count(A_APPLY_BLOCK) == 1),
        ('A_MENU', m0.count(A_MENU) == 1),
    ]
    bad = [k for k, ok in checks if not ok]
    if bad:
        print('ANCHOR FAIL', base, bad)
        sys.exit(1)
    for p in (tree_p, menu_p):
        b = p + '.pre_r6d296'
        if not os.path.exists(b):
            shutil.copy2(p, b)
    t1 = t0.replace(A_FIELD, A_FIELD + '.field public aColRank:[I\n', 1)
    t1 = t1.replace(A_METHODS, NEW_METHODS + A_METHODS, 1)
    t1 = t1.replace(A_APPLY_BLOCK, A_APPLY_NEW, 1)
    m1 = m0.replace(A_MENU, A_MENU_NEW, 1)
    open(tree_p, 'w', encoding='utf-8').write(t1)
    open(menu_p, 'w', encoding='utf-8').write(m1)
    print('PATCHED', base)


for b in TREES:
    patch_tree(b)
print('DONE r6d296 v2')