#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d277：页签提前到 initMenu 之前（iMenuElementsSize 缓存问题）+ pin 内每帧设宽/位 + nTTG2 诊断
import os, re, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
CLS = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'

INIT = '    invoke-virtual/range {v0 .. v8}, ' + CLS + ';->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V'
CALL = ('    move-object/from16 v0, p0\n'
        '    move-object v1, v11\n'
        '    invoke-direct/range {v0 .. v1}, ' + CLS + ';->addTopTabs(Ljava/util/List;)V')

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
    const-string v7, "all"
    const-string v8, "TopCategory_All"
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/4 v11, 0x40
    const/16 v12, 0x44
    invoke-static/range {v6 .. v12}, %(cls)s;->newTopTab(%(cls)s;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 v3, 0x1
    invoke-virtual {v13, v3}, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->setSelected(Z)V

    move-object v6, p0
    const-string v7, "land"
    const-string v8, "TopCategory_Land"
    const/4 v9, 0x0
    const/4 v10, 0x0
    const/4 v11, 0x40
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
    const/4 v11, 0x40
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
    const/4 v11, 0x40
    const/16 v12, 0x44
    invoke-static/range {v6 .. v12}, %(cls)s;->newTopTab(%(cls)s;Ljava/lang/String;Ljava/lang/String;IIII)Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    move-result-object v13
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
''' % {'cls': CLS}

PINNEW = '''.method private pinTopTabs()V
    .registers 9

    const/4 v0, 0x0

    :loop_pin
    iget-object v1, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge v0, v2, :pin_done

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v6
    div-int/lit8 v6, v6, 0x4
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    mul-int/lit8 v5, v5, 0x2
    sub-int v4, v6, v5
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    mul-int v4, v0, v6
    add-int/2addr v4, v5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I
    move-result v7
    sub-int/2addr v4, v7
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I
    move-result v7
    sub-int/2addr v5, v7
    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    const/4 v7, 0x1
    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V

    add-int/lit8 v0, v0, 0x1
    goto :loop_pin

    :pin_done
    sget v6, %(cls)s;->dbgPIN:I
    if-nez v6, :no_pin_dump
    const/4 v6, 0x1
    sput v6, %(cls)s;->dbgPIN:I
    invoke-direct {p0}, %(cls)s;->dumpPinGeom()V

    :no_pin_dump
    return-void
.end method

.method private dumpPinGeom()V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nTTG2 mp="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ","
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " o="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ","
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " w="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0

    const/4 v3, 0x0

    :n_loop
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I
    move-result v4
    if-ge v3, v4, :n_end
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    move-result-object v5
    instance-of v6, v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
    if-eqz v6, :n_next
    check-cast v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
    const-string v1, " nid="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getCurrent()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " nx="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " ny="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    goto :n_end

    :n_next
    add-int/lit8 v3, v3, 0x1
    goto :n_loop

    :n_end
    iget-object v5, p0, %(cls)s;->lTopTabs:Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I
    move-result v4
    if-lez v4, :t_skip
    const/4 v2, 0x0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;
    const-string v1, " t0="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ","
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " iv="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z
    move-result v2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0

    :t_skip
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    return-void
.end method
''' % {'cls': CLS}


def replace_method(s, marker):
    i = s.find(marker)
    assert i >= 0, ('no-marker', marker)
    j = s.find('.end method', i)
    assert j >= 0, ('no-end', marker)
    return s[:i], s[j + len('.end method'):], i


for root in TREES:
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d277'):
        shutil.copy2(p, p + '.pre_r6d277')
    s = open(p, encoding='utf-8').read()

    # 0) 静态字段 dbgPIN
    a = '.field public static lTime:J'
    assert s.count(a) == 1 and 'dbgPIN:I' not in s
    s = s.replace(a, a + '\n\n.field public static dbgPIN:I', 1)

    # 1) 调用提前：initMenu 之前（参数装配之前，避免踩掉 v0/v1 实参）
    cur = INIT + '\n\n' + CALL
    assert s.count(cur) == 1, ('call-order', s.count(cur))
    s = s.replace(cur, INIT, 1)
    mark = '    const/16 v22, 0x1'
    assert s.count(mark) == 1, ('mark', s.count(mark))
    s = s.replace(mark, CALL + '\n\n' + mark, 1)

    # 2) addTopTabs 重写
    head, tail, i = replace_method(s, '.method private addTopTabs(')
    s = head + ADDNEW.strip() + tail

    # 3) pinTopTabs 重写 + dumpPinGeom 追加
    head, tail, i = replace_method(s, '.method private pinTopTabs(')
    s = head + PINNEW.strip() + tail

    open(p, 'w', encoding='utf-8').write(s)
    print('PATCHED', p)
print('DONE r6d277')