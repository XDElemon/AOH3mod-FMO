#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d286c：精确锚点版（修语法）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB  = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TC = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
CL = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
DBG= 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

for root in TREES:
    # ---------- TAB ----------
    p = os.path.join(root, TAB)
    s = open(p, encoding='utf-8').read()
    a = '    sget v7, %s;->dbgTBG:I\n    if-nez v7, :dbg_go\n' % TC
    b = '    sget v7, %s;->dbgTBG:I\n    const/4 v8, 0x3\n    if-lt v7, v8, :dbg_go\n' % TC
    assert s.count(a) == 1, ('tab-guard', s.count(a))
    s = s.replace(a, b, 1)
    a2 = '    const/4 v7, 0x1\n    sput v7, %s;->dbgTBG:I\n' % TC
    b2 = '    add-int/lit8 v8, v7, 0x1\n    sput v8, %s;->dbgTBG:I\n' % TC
    assert s.count(a2) == 1, ('tab-sput', s.count(a2))
    s = s.replace(a2, b2, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('TAB PATCHED', p)

    # ---------- TREE ----------
    p2 = os.path.join(root, TREE)
    t = open(p2, encoding='utf-8').read()

    assert t.count('.field public static dbgPIN:I') == 1
    t = t.replace('.field public static dbgPIN:I', '.field public dbgPIN:I', 1)
    assert t.count('sget v6, %s;->dbgPIN:I' % CL) == 1
    t = t.replace('sget v6, %s;->dbgPIN:I' % CL, 'iget v6, p0, %s;->dbgPIN:I' % CL, 1)
    assert t.count('sput v6, %s;->dbgPIN:I' % CL) == 1
    t = t.replace('sput v6, %s;->dbgPIN:I' % CL, 'iput v6, p0, %s;->dbgPIN:I' % CL, 1)

    if 'dbgVIS:I' not in t:
        a3 = '.field public dbgPIN:I'
        assert t.count(a3) == 1
        t = t.replace(a3, a3 + '\n\n.field public static dbgVIS:I', 1)

    a4 = '.method private dumpPinGeom()V\n    .registers 9\n'
    b4 = ('.method private dumpPinGeom()V\n    .registers 9\n'
          '    const-string v7, "nTSESS r6d286"\n'
          '    invoke-static {v7}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n')
    assert t.count(a4) == 1, ('dump-head', t.count(a4))
    t = t.replace(a4, b4, 1)

    a5 = '.method private applyNodeVisibility(Ljava/lang/String;)V\n    .registers 8\n'
    b5 = '.method private applyNodeVisibility(Ljava/lang/String;)V\n    .registers 10\n'
    assert t.count(a5) == 1
    t = t.replace(a5, b5, 1)

    a6 = '    const/4 v0, 0x0\n\n    :loop_v\n'
    b6 = '    const/4 v0, 0x0\n    const/4 v6, 0x0\n    const/4 v7, 0x0\n\n    :loop_v\n'
    assert t.count(a6) == 1, ('cnt-init', t.count(a6))
    t = t.replace(a6, b6, 1)

    a7 = ('    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V\n'
          '\n    :next_v\n')
    b7 = ('    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V\n'
          '    if-eqz v5, :cnt_h\n'
          '    add-int/lit8 v7, v7, 0x1\n'
          '    goto :next_v\n'
          '    :cnt_h\n'
          '    add-int/lit8 v6, v6, 0x1\n'
          '\n    :next_v\n')
    assert t.count(a7) == 1, ('vis-cnt', t.count(a7))
    t = t.replace(a7, b7, 1)

    a8 = '    :v_done\n    return-void\n.end method'
    b8_lines = [
        '    :v_done\n',
        '    sget v3, ' + CL + ';->dbgVIS:I\n',
        '    const/4 v4, 0x3\n',
        '    if-lt v3, v4, :vis_skip\n',
        '    add-int/lit8 v4, v3, 0x1\n',
        '    sput v4, ' + CL + ';->dbgVIS:I\n',
        '    const-string v4, "nTTV off"\n',
        '    invoke-static {v4}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n',
        '    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n',
        '    move-result-object v4\n',
        '    invoke-static {v4}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n',
        '    const-string v4, "nTTV vis"\n',
        '    invoke-static {v4}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n',
        '    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n',
        '    move-result-object v4\n',
        '    invoke-static {v4}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n',
        '    :vis_skip\n',
        '    return-void\n.end method',
    ]
    b8 = ''.join(b8_lines)
    assert t.count(a8) == 1, ('v_done', t.count(a8))
    t = t.replace(a8, b8, 1)

    open(p2, 'w', encoding='utf-8').write(t)
    print('TREE PATCHED', p2)
print('DONE r6d286c')