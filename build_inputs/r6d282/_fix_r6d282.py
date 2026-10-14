#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d282：关键探针组：draw 调用计数 / 元素清单成员 / 过滤命中数
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
CLS = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
TCLS= 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'
BG  = 'Laoc/kingdoms/lukasz/menu_element/MenuElement'

def W4(s):
    return ('    const-string v4, "%s"\n' % s +
            '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)
def WI4(expr):
    return (expr +
            '    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
            '    move-result-object v4\n'
            '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)

# ---- 1) drawButtonBG guard 改为计数（前3次调用都打印） ----
OLD_GUARD = ('    sget v7, %(tcls)s;->dbgTBG:I\n'
             '    if-nez v7, :dbg_go\n'
             '    goto :dbg_skip\n\n'
             '    :dbg_go\n'
             '    const/4 v7, 0x1\n'
             '    sput v7, %(tcls)s;->dbgTBG:I\n') % {'tcls': TCLS}
NEW_GUARD = ('    sget v7, %(tcls)s;->dbgTBG:I\n'
             '    const/4 v8, 0x3\n'
             '    if-ge v7, v8, :dbg_go\n'
             '    goto :dbg_skip\n\n'
             '    :dbg_go\n'
             '    add-int/lit8 v8, v7, 0x1\n'
             '    sput v8, %(tcls)s;->dbgTBG:I\n'
             '    const-string v4, "nTTD call"\n'
             '    invoke-static {v4}, %(dbg)s;->dWrite(Ljava/lang/String;)V\n') % {'tcls': TCLS, 'dbg': DBG}

for root in TREES:
    # --- TAB ---
    p = os.path.join(root, TAB)
    if not os.path.exists(p + '.pre_r6d282'):
        shutil.copy2(p, p + '.pre_r6d282')
    s = open(p, encoding='utf-8').read()
    assert s.count(OLD_GUARD) == 1
    s = s.replace(OLD_GUARD, NEW_GUARD, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('TAB PATCHED', p)

    # --- TREE: dumpPinGeom 里追加 成员/计数；applyNodeVisibility 命中计数 ---
    p2 = os.path.join(root, TREE)
    if not os.path.exists(p2 + '.pre_r6d282'):
        shutil.copy2(p2, p2 + '.pre_r6d282')
    s2 = open(p2, encoding='utf-8').read()

    # a) dumpPinGeom：在 :t_skip 后插入 cnt 与成员扫描
    anchor = '    :t_skip\n    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;'
    assert s2.count(anchor) == 1, ('skip', s2.count(anchor))
    insert = ('    :t_skip\n'
        + W4('nTTG3 cnt') + WI4('    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I\n    move-result v7\n')
        + W4('nTTG3 tab0') + WI4('    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I\n    move-result v7\n')
        # 成员扫描：i=v3；tab0=v5
        + '    const/4 v3, 0x0\n'
        + '    iget-object v5, p0, %s;->lTopTabs:Ljava/util/List;\n' % CLS
        + '    const/4 v2, 0x0\n'
        + '    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
        + '    move-result-object v5\n'
        + '    check-cast v5, %s;\n' % TCLS
        + '    :mem_loop\n'
        + '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I\n'
        + '    move-result v4\n'
        + '    if-ge v3, v4, :mem_end\n'
        + '    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;\n'
        + '    move-result-object v4\n'
        + '    if-ne v4, v5, :mem_found\n'
        + '    add-int/lit8 v3, v3, 0x1\n'
        + '    goto :mem_loop\n'
        + '    :mem_found\n'
        + W4('nTTG3 idx') + WI4('    move v7, v3\n')
        + '    :mem_end\n'
        + '    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;')
    s2 = s2.replace(anchor, insert, 1)

    # b) applyNodeVisibility：首跑统计可见/隐藏数量
    anchor2 = '    :next_v\n    add-int/lit8 v0, v0, 0x1\n    goto :loop_v\n\n    :v_done\n    return-void\n.end method'
    assert s2.count(anchor2) == 1, ('vis', s2.count(anchor2))
    new2 = ('    :next_v\n    add-int/lit8 v0, v0, 0x1\n    goto :loop_v\n\n    :v_done\n'
        + W4('nTTV true') + WI4('    invoke-virtual {p0}, %s;->getNodeVisTrue()I\n    move-result v7\n' % CLS)
        + W4('nTTV false') + WI4('    invoke-virtual {p0}, %s;->getNodeVisFalse()I\n    move-result v7\n' % CLS)
        + '    return-void\n.end method')
    s2 = s2.replace(anchor2, new2, 1)

    open(p2, 'w', encoding='utf-8').write(s2)
    print('TREE PATCHED', p2)
print('DONE r6d282')