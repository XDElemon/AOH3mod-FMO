#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d290：E2/E4 配额重置 + nTTP + nTTD w/h + E3 高度接线 + nMMU 提额
import os, shutil
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
TAB  = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
MN   = 'aoc/kingdoms/lukasz/menu/MenuManager.smali'
CL  = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
TC  = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

RESETS = (''.join('    sput v0, %s;->%s:I\n' % (CL, f) for f in
                  ['dbgTVB', 'dbgVIS', 'dbgMD', 'dbgMA', 'dbgMB', 'dbgMM', 'dbgAE', 'dbgTP']) +
          ''.join('    sput v0, %s;->%s:I\n' % (TC, f) for f in ['dbgTBG', 'dbgDRW']))

for root in TREES:
    # ---------- TREE ----------
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d290'):
        shutil.copy2(p, p + '.pre_r6d290')
    t = open(p, encoding='utf-8').read()

    # 字段 dbgTP
    if 'dbgTP:I' not in t:
        a = '.field public static dbgMB:I'
        assert t.count(a) == 1
        t = t.replace(a, a + '\n\n.field public static dbgTP:I', 1)

    # A) addTopTabs 头部：每次开面板重置全部探针计数
    a1 = '.method private addTopTabs(Ljava/util/List;)V\n    .registers 16\n'
    b1 = (a1 + '    const/4 v0, 0x0\n' + RESETS)
    assert t.count(a1) == 1, ('addtabs', t.count(a1))
    t = t.replace(a1, b1, 1)

    # B) pinTopTabs：nTTP 记录入参（前8次/每次打开）
    a2 = '    move v9, p2\n\n    :loop_pin\n'
    b2 = ('    move v9, p2\n'
          '    sget v2, %s;->dbgTP:I\n' % CL +
          '    const/16 v3, 0x8\n'
          '    if-ge v2, v3, :tp_skip\n'
          '    add-int/lit8 v3, v2, 0x1\n'
          '    sput v3, %s;->dbgTP:I\n' % CL +
          '    const-string v1, "nTTP tx"\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v1\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v1, "nTTP ty"\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v1\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    :tp_skip\n\n'
          '    :loop_pin\n')
    assert t.count(a2) == 1, ('pintp', t.count(a2))
    t = t.replace(a2, b2, 1)

    open(p, 'w', encoding='utf-8').write(t)
    print('TREE PATCHED', p)

    # ---------- TAB ----------
    p2 = os.path.join(root, TAB)
    if not os.path.exists(p2 + '.pre_r6d290'):
        shutil.copy2(p2, p2 + '.pre_r6d290')
    s = open(p2, encoding='utf-8').read()

    # C) nTTD 增加 w/h（读 v2/v3，不写）
    a3 = '    const-string v4, "nTTD trX"\n'
    b3 = ('    const-string v4, "nTTD w"\n'
          '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v4\n'
          '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v4, "nTTD h"\n'
          '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v4\n'
          '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v4, "nTTD trX"\n')
    assert s.count(a3) == 1, ('nttd-wh', s.count(a3))
    s = s.replace(a3, b3, 1)

    # D) E3：构造器把 p7 接到高度
    a4 = '    iput p5, p0, %s;->iHomeY:I\n' % TC
    b4 = (a4 +
          '    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V\n')
    assert s.count(a4) == 1, ('ctor-h', s.count(a4))
    s = s.replace(a4, b4, 1)

    open(p2, 'w', encoding='utf-8').write(s)
    print('TAB PATCHED', p2)

    # ---------- MenuManager：nMMU 提额 0x18→0x30 ----------
    p3 = os.path.join(root, MN)
    if not os.path.exists(p3 + '.pre_r6d290'):
        shutil.copy2(p3, p3 + '.pre_r6d290')
    m = open(p3, encoding='utf-8').read()
    a5 = '    const/16 v1, 0x18\n'
    assert m.count(a5) == 1, ('mm-cap', m.count(a5))
    m = m.replace(a5, '    const/16 v1, 0x30\n', 1)
    open(p3, 'w', encoding='utf-8').write(m)
    print('MN PATCHED', p3)
print('DONE r6d290')