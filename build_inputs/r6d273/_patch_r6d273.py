#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d273 B5c: 科技树顶部栏（TechTopTab）+ 钢四式筛选 + 语言键（双树补丁）
import os, shutil

Q = chr(34)
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE_REL = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TAB_REL  = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
LANG_SRC = '/root/history23_repo/assets_r6t007/game/languages'
STAGE    = '/sdcard/GLG/历史23/build_inputs/r6d273/out/assets/game/languages'
PRE      = '/sdcard/GLG/历史23/build_inputs/r6d273/pre'


def upd(p, pairs):
    s = open(p, encoding='utf-8').read()
    for i, (old, new) in enumerate(pairs):
        c = s.count(old)
        assert c == 1, ('anchor-miss', p, i, c)
        s = s.replace(old, new, 1)
    open(p, 'w', encoding='utf-8').write(s)


def append_methods(p, block):
    s = open(p, encoding='utf-8').read()
    assert block.strip() not in s, ('already-patched', p)
    s = s.rstrip() + '\n\n' + block.strip() + '\n'
    open(p, 'w', encoding='utf-8').write(s)


# ---------- 1) TechTopTab 新类 ----------
TAB_FILE = '''.class public Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TechTopTab.java"

# instance fields
.field public bSelected:Z

.field public iHomeX:I

.field public iHomeY:I

.field public owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;

.field public sTopID:Ljava/lang/String;

# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I

    const/4 v3, 0x0
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z

    move-object v0, p0
    move-object v1, p2
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    const/4 v3, -0x1
    move v4, p3
    move v5, p4
    move v6, p5
    const/4 v7, 0x1
    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

# virtual methods
.method public actionElement()V
    .registers 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyTopFilter(Ljava/lang/String;)V
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v0
    add-int/2addr v0, p2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v1
    add-int/2addr v1, p3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I
    move-result v2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I
    move-result v3

    iget-boolean v5, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    if-nez v5, :db_hover
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const/high16 v7, 0x3e99999a
    const/high16 v8, 0x3f0ccccd
    const/high16 v9, 0x3f4ccccd
    const/high16 v10, 0x3f733333
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V
    goto :db_fill

    :db_hover
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z
    move-result v5
    if-nez v5, :db_norm
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const/high16 v7, 0x3e6147ae
    const/high16 v8, 0x3eae147b
    const/high16 v9, 0x3ee147ae
    const/high16 v10, 0x3f666666
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V
    goto :db_fill

    :db_norm
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;
    const/high16 v7, 0x3e051eb8
    const/high16 v8, 0x3e3851ec
    const/high16 v9, 0x3e75c28f
    const/high16 v10, 0x3f59999a
    invoke-direct {v4, v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :db_fill
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->pix:I
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    move-result-object v6
    move-object v7, p1
    move v8, v0
    move v9, v1
    move v10, v2
    move v11, v3
    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    if-nez v7, :db_b2
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    goto :db_white

    :db_b2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z
    move-result v7
    if-nez v7, :db_white
    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :db_white
    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->bSelected:Z
    return-void
.end method
'''

# ---------- 2) InGame_TechnologyTree 追加方法 ----------
NEW_METHODS = '''# --- B5c (r6d273): top tabs / filter / pin ---

.method private addTopTabs(Ljava/util/List;)V
    .registers 16

    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;
    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lAllLines:Ljava/util/List;

    const-string v0, "all"
    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v0
    div-int/lit8 v0, v0, 0x4
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    mul-int/lit8 v1, v1, 0x2
    sub-int v2, v0, v1
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v6, p0
    const-string v7, "all"
    const-string v8, "TopCategory_All"
    move v9, v1
    move v10, v1
    move v11, v2
    move v12, v4
    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->newTopTab(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 v3, 0x1
    invoke-virtual {v13, v3}, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->setSelected(Z)V

    move-object v6, p0
    const-string v7, "land"
    const-string v8, "TopCategory_Land"
    add-int v9, v1, v0
    move v10, v1
    move v11, v2
    move v12, v4
    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->newTopTab(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, p0
    const-string v7, "air"
    const-string v8, "TopCategory_Air"
    add-int v9, v1, v0
    add-int/2addr v9, v0
    move v10, v1
    move v11, v2
    move v12, v4
    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->newTopTab(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, p0
    const-string v7, "civil"
    const-string v8, "TopCategory_Civil"
    add-int v9, v1, v0
    add-int/2addr v9, v0
    add-int/2addr v9, v0
    move v10, v1
    move v11, v2
    move v12, v4
    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->newTopTab(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dumpTreeGeom()V
    return-void
.end method

.method private static newTopTab(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    .registers 16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;
    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-object v2, p0
    move-object v3, p1
    move-object v4, v0
    move v5, p3
    move v6, p4
    move v7, p5
    move v8, p6
    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;Ljava/lang/String;IIII)V
    return-object v1
.end method

.method private pinTopTabs()V
    .registers 8

    const/4 v0, 0x0

    :loop_pin
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :pin_done

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I
    move-result v4
    iget v5, v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeX:I
    sub-int/2addr v5, v4
    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I
    move-result v4
    iget v5, v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->iHomeY:I
    sub-int/2addr v5, v4
    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    add-int/lit8 v0, v0, 0x1
    goto :loop_pin

    :pin_done
    return-void
.end method

.method public applyTopFilter(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sTopCat:Ljava/lang/String;
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->syncTabSelection(Ljava/lang/String;)V
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->applyNodeVisibility(Ljava/lang/String;)V
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->rebuildLines(Ljava/lang/String;)V
    return-void
.end method

.method private syncTabSelection(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTopTabs:Ljava/util/List;
    const/4 v1, 0x0

    :loop_s
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :s_done

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    iget-object v4, v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->setSelected(Z)V
    add-int/lit8 v1, v1, 0x1
    goto :loop_s

    :s_done
    return-void
.end method

.method private applyNodeVisibility(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :loop_v
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I
    move-result v1
    if-ge v0, v1, :v_done

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    move-result-object v2
    instance-of v3, v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
    if-eqz v3, :next_v
    check-cast v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getCurrent()I
    move-result v3
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;
    move-result-object v4
    invoke-static {v4, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->topVisible(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v5
    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V
    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    :next_v
    add-int/lit8 v0, v0, 0x1
    goto :loop_v

    :v_done
    return-void
.end method

.method private rebuildLines(Ljava/lang/String;)V
    .registers 14

    const-string v0, "all"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :rb_cond

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lAllLines:Ljava/util/List;
    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    iput v3, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I
    goto :rdone

    :rb_cond
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    const/4 v5, 0x0

    :loop_r
    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lAllLines:Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I
    move-result v7
    if-ge v5, v7, :ldone_r

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;
    iget v9, v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->iTechID:I
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTopCategory(I)Ljava/lang/String;
    move-result-object v10
    invoke-static {v10, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->topVisible(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v11
    if-eqz v11, :next_r
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :next_r
    add-int/lit8 v5, v5, 0x1
    goto :loop_r

    :ldone_r
    iput-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v5
    iput v5, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    :rdone
    return-void
.end method

.method public static topVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "all"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :tv_chk
    const/4 v2, 0x1
    return v2

    :tv_chk
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :tv_no
    const/4 v2, 0x1
    return v2

    :tv_no
    const/4 v2, 0x0
    return v2
.end method

.method private dumpTreeGeom()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "nTTG w="
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " h="
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " th="
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    move-result-object v2
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I
    move-result v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " pad="
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    return-void
.end method
'''

# ---------- 3) 打补丁（双树） ----------
for root in TREES:
    tp = os.path.join(root, TREE_REL)
    # 备份
    bak = tp + '.pre_r6d273'
    if not os.path.exists(bak):
        shutil.copy2(tp, bak)
    # E1 字段 + E2 ctor调用 + E3 draw调用
    upd(tp, [
        ('.end field\n\n\n# direct methods',
         '.end field\n\n.field public lTopTabs:Ljava/util/List;\n\n.field public lAllLines:Ljava/util/List;\n\n.field public sTopCat:Ljava/lang/String;\n\n# direct methods'),
        ('invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V',
         'invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V\n\n    invoke-direct {p0, v11}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->addTopTabs(Ljava/util/List;)V'),
        ('    .line 264\n    move-object/from16 v0, p0\n\n    move-object/from16 v1, p1',
         '    .line 264\n    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->pinTopTabs()V\n\n    move-object/from16 v0, p0\n\n    move-object/from16 v1, p1'),
    ])
    append_methods(tp, NEW_METHODS)
    # 新类
    tabp = os.path.join(root, TAB_REL)
    if not os.path.exists(tabp):
        open(tabp, 'w', encoding='utf-8').write(TAB_FILE)
    else:
        cur = open(tabp, encoding='utf-8').read()
        assert cur == TAB_FILE, ('tab-exists-diff', tabp)
    print('PATCHED', tp)

# ---------- 4) 语言键 ----------
KEYS = {
    'Bundle.properties': [('TopCategory_All', ' All'), ('TopCategory_Land', ' Army'), ('TopCategory_Air', ' Air Force'), ('TopCategory_Civil', ' Civilian')],
    'Bundle_cn_sp.properties': [('TopCategory_All', ' 全部'), ('TopCategory_Land', ' 陆军'), ('TopCategory_Air', ' 空军'), ('TopCategory_Civil', ' 民用')],
    'Bundle_cn_tr.properties': [('TopCategory_All', ' 全部'), ('TopCategory_Land', ' 陸軍'), ('TopCategory_Air', ' 空軍'), ('TopCategory_Civil', ' 民用')],
}
os.makedirs(STAGE, exist_ok=True)
os.makedirs(PRE, exist_ok=True)
for fn, pairs in KEYS.items():
    src = os.path.join(LANG_SRC, fn)
    t = open(src, encoding='utf-8').read()
    if not os.path.exists(os.path.join(PRE, fn)):
        shutil.copy2(src, os.path.join(PRE, fn))
    add = []
    for k, v in pairs:
        if (k + ' =') not in t:
            add.append(k + ' =' + v)
    if add:
        t = t.rstrip() + '\n' + '\n'.join(add) + '\n'
        open(src, 'w', encoding='utf-8').write(t)
    open(os.path.join(STAGE, fn), 'w', encoding='utf-8').write(t)
    cnt = sum(1 for k, _ in pairs if (k + ' =') in t)
    print('LANG', fn, 'keys=', cnt)
print('DONE r6d273')