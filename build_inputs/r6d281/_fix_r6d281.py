#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d281：三态（默认陆军，无"全部"）+ 命中区自适应（吸收绘制平移 tr）
import os, shutil, re

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
CLS = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'

# ---------- 1) pinTopTabs 新实现（带 tr 吸收） ----------
PINNEW = '''.method private pinTopTabs(II)V
    .registers 13

    const/4 v0, 0x0
    move v8, p1
    move v9, p2

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
    move v7, v8
    if-gez v7, :absx_ok
    goto :absx_02
    :absx_02
    if-ltz v7, :absx_skip
    neg-int v7, v7
    :absx_skip
    :absx_ok
    if-gez v8, :addx_go
    goto :addx_skip
    :addx_go
    add-int/2addr v4, v7
    :addx_skip
    if-ltz v8, :addx2_go
    goto :addx2_skip
    :addx2_go
    add-int/2addr v4, v7
    :addx2_skip
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    mul-int v4, v0, v6
    add-int/2addr v4, v5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I
    move-result v7
    sub-int/2addr v4, v7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I
    move-result v7
    add-int/2addr v4, v7
    if-ltz v8, :x_ok
    add-int/2addr v4, v8
    :x_ok
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    move v7, v9
    if-gez v7, :absy_ok
    goto :absy_02
    :absy_02
    if-ltz v7, :absy_skip
    neg-int v7, v7
    :absy_skip
    :absy_ok
    add-int/2addr v4, v7
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    move v4, v5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I
    move-result v7
    sub-int/2addr v4, v7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I
    move-result v7
    add-int/2addr v4, v7
    if-ltz v9, :y_ok
    add-int/2addr v4, v9
    :y_ok
    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    const/4 v7, 0x1
    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V
    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1
    goto :loop_pin

    :pin_done
    sget v6, %(cls)s;->dbgPIN:I
    if-nez v6, :no_pin_dump
    const/4 v6, 0x1
    sput v6, %(cls)s;->dbgPIN:I
    invoke-direct {p0}, %(cls)s;->dumpPinGeom()V
    iget-object v4, p0, %(cls)s;->sTopCat:Ljava/lang/String;
    invoke-virtual {p0, v4}, %(cls)s;->applyTopFilter(Ljava/lang/String;)V

    :no_pin_dump
    return-void
.end method
''' % {'cls': CLS}

# ---------- 2) onTopTabClicked 简化（无切换取消；纯三态） ----------
CLICKNEW = '''.method public onTopTabClicked(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, %(cls)s;->applyTopFilter(Ljava/lang/String;)V
    return-void
.end method
''' % {'cls': CLS}


def replace_method(s, marker, new_block, path_note=''):
    i = s.find(marker)
    assert i >= 0, ('no-marker', marker, path_note)
    j = s.find('.end method', i)
    assert j >= 0, ('no-end', marker, path_note)
    return s[:i] + new_block.strip() + s[j + len('.end method'):]

for root in TREES:
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d281'):
        shutil.copy2(p, p + '.pre_r6d281')
    s = open(p, encoding='utf-8').read()

    # a) pin 方法整体替换（签名改 (II)）
    s = replace_method(s, '.method private pinTopTabs(', PINNEW, p)

    # b) onTopTabClicked 替换
    s = replace_method(s, '.method public onTopTabClicked(', CLICKNEW, p)

    # c) 默认 "land" 且陆军页签默认选中
    assert s.count('const-string v0, "all"\n    iput-object v0, p0, ' + CLS + ';->sTopCat') == 1
    s = s.replace('const-string v0, "all"\n    iput-object v0, p0, ' + CLS + ';->sTopCat',
                  'const-string v0, "land"\n    iput-object v0, p0, ' + CLS + ';->sTopCat', 1)

    # 给"land"页签创建后加 setSelected(true)（第一次出现的 add 之后）
    pat = ('    move-result-object v13\n'
           '    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n'
           '    iget-object v5, p0, ' + CLS + ';->lTopTabs:Ljava/util/List;\n'
           '    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n')
    assert s.count(pat) == 3, ('add-pattern', s.count(pat))
    pat1 = pat + ('\n    const/4 v3, 0x1\n'
                  '    invoke-virtual {v13, v3}, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->setSelected(Z)V\n')
    s = s.replace(pat + '\n', pat1, 1)

    # d) draw 里的调用点：改传 (p2, v16)
    o_call = ('    move-object/from16 v0, p0\n'
              '    invoke-direct/range {v0 .. v0}, ' + CLS + ';->pinTopTabs()V')
    n_call = ('    move-object/from16 v0, p0\n'
              '    move/from16 v1, p2\n'
              '    move/from16 v2, v16\n'
              '    invoke-direct/range {v0 .. v2}, ' + CLS + ';->pinTopTabs(II)V')
    assert s.count(o_call) == 1, ('call', s.count(o_call))
    s = s.replace(o_call, n_call, 1)

    open(p, 'w', encoding='utf-8').write(s)
    print('TREE PATCHED', p)

print('DONE r6d281')