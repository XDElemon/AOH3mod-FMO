#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d279：三页签（砍掉"全部"；点已选栏=取消筛选）+ 点击探针（nTTCLICK / nTTAF）+ pin 补 setClickable
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TAB  = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
CLS  = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'

ADDNEW = '''.method private addTopTabs(Ljava/util/List;)V
    .registers 16

    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, %(cls)s;->lTopTabs:Ljava/util/List;

    iget-object v0, p0, %(cls)s;->lines:Ljava/util/List;
    iput-object v0, p0, %(cls)s;->lAllLines:Ljava/util/List;

    const-string v0, "all"
    iput-object v0, p0, %(cls)s;->sTopCat:Ljava/lang/String;

    move-object v6, p0
    const-string v7, "land"
    const-string v8, "TopCategory_Land"
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/16 v11, 0x40
    const/16 v12, 0x44
    invoke-static/range {v6 .. v12}, %(cls)s;->newTopTab(%(cls)s;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, p0
    const-string v7, "air"
    const-string v8, "TopCategory_Air"
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/16 v11, 0x40
    const/16 v12, 0x44
    invoke-static/range {v6 .. v12}, %(cls)s;->newTopTab(%(cls)s;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, p0
    const-string v7, "civil"
    const-string v8, "TopCategory_Civil"
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/16 v11, 0x40
    const/16 v12, 0x44
    invoke-static/range {v6 .. v12}, %(cls)s;->newTopTab(%(cls)s;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
''' % {'cls': CLS}

AFNEW = '''.method public applyTopFilter(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nTTAF "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    iput-object p1, p0, %(cls)s;->sTopCat:Ljava/lang/String;
    invoke-direct {p0, p1}, %(cls)s;->syncTabSelection(Ljava/lang/String;)V
    invoke-direct {p0, p1}, %(cls)s;->applyNodeVisibility(Ljava/lang/String;)V
    invoke-direct {p0, p1}, %(cls)s;->rebuildLines(Ljava/lang/String;)V
    return-void
.end method
''' % {'cls': CLS}

CLICKNEW = '''.method public onTopTabClicked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, %(cls)s;->sTopCat:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :tt_sel
    const-string v0, "all"
    invoke-virtual {p0, v0}, %(cls)s;->applyTopFilter(Ljava/lang/String;)V
    goto :tt_done

    :tt_sel
    invoke-virtual {p0, p1}, %(cls)s;->applyTopFilter(Ljava/lang/String;)V

    :tt_done
    return-void
.end method

''' % {'cls': CLS}

ACTNEW = '''.method public actionElement()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nTTCLICK "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " @"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ","
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->owner:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->sTopID:Ljava/lang/String;
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->onTopTabClicked(Ljava/lang/String;)V
    return-void
.end method
'''


def replace_method(s, marker, path_note=''):
    i = s.find(marker)
    assert i >= 0, ('no-marker', marker, path_note)
    j = s.find('.end method', i)
    assert j >= 0, ('no-end', marker, path_note)
    return s[:i], s[j + len('.end method'):]


for root in TREES:
    # ---- tree ----
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d279'):
        shutil.copy2(p, p + '.pre_r6d279')
    s = open(p, encoding='utf-8').read()

    head, tail = replace_method(s, '.method private addTopTabs(')
    s = head + ADDNEW.strip() + tail

    head, tail = replace_method(s, '.method public applyTopFilter(')
    s = head + AFNEW.strip() + tail

    # 插入 onTopTabClicked（放在 dumpPinGeom 之前）
    mk = '.method private dumpPinGeom('
    i = s.find(mk)
    assert i >= 0
    s = s[:i] + CLICKNEW + s[i:]

    # pin 里补 setClickable(true)
    o2 = ('    const/4 v7, 0x1\n'
          '    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V')
    n2 = ('    const/4 v7, 0x1\n'
          '    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V\n'
          '    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V')
    assert s.count(o2) == 1, ('pin-o2', s.count(o2))
    s = s.replace(o2, n2, 1)

    open(p, 'w', encoding='utf-8').write(s)
    print('TREE PATCHED', p)

    # ---- tab class ----
    p2 = os.path.join(root, TAB)
    if not os.path.exists(p2 + '.pre_r6d279'):
        shutil.copy2(p2, p2 + '.pre_r6d279')
    s2 = open(p2, encoding='utf-8').read()
    head, tail = replace_method(s2, '.method public actionElement()', p2)
    s2 = head + ACTNEW.strip() + tail
    open(p2, 'w', encoding='utf-8').write(s2)
    print('TAB PATCHED', p2)
print('DONE r6d279')