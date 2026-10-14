#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d288：过滤采样(nTTVC/T/V) + actionElementPPM探针(nTTAP) + MenuManager.actionUp探针(nMMU)
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
MN   = 'aoc/kingdoms/lukasz/menu/MenuManager.smali'
CL = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
DBG= 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

for root in TREES:
    p = os.path.join(root, TREE)
    t = open(p, encoding='utf-8').read()

    # 0) dbgMM 字段
    if 'dbgMM:I' not in t:
        a0 = '.field public static dbgAE:I'
        assert t.count(a0) == 1
        t = t.replace(a0, a0 + '\n\n.field public static dbgMM:I', 1)

    # 1) applyNodeVisibility: registers10→12；插入采样（放在 setClickable 之后）
    a1 = '.method private applyNodeVisibility(Ljava/lang/String;)V\n    .registers 10\n'
    b1 = '.method private applyNodeVisibility(Ljava/lang/String;)V\n    .registers 12\n'
    assert t.count(a1) == 1, ('regs', t.count(a1))
    t = t.replace(a1, b1, 1)

    a2 = ('    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V\n'
          '    if-eqz v5, :cnt_h\n')
    b2 = ('    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V\n'
          '    const/16 v9, 0x6\n'
          '    if-ge v0, v9, :sm_skip\n'
          '    const-string v8, "nTTVC"\n'
          '    invoke-static {v8}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v8\n'
          '    invoke-static {v8}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    const-string v8, "nTTVT"\n'
          '    invoke-static {v8}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    invoke-static {v4}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    const-string v8, "nTTVV"\n'
          '    invoke-static {v8}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v8\n'
          '    invoke-static {v8}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    :sm_skip\n'
          '    if-eqz v5, :cnt_h\n')
    assert t.count(a2) == 1, ('sample', t.count(a2))
    t = t.replace(a2, b2, 1)

    # 2) actionElementPPM(I) 覆盖（nTTAP）
    if 'nTTAP' not in t:
        PPM = ('.method public actionElementPPM(I)V\n'
               '    .registers 6\n\n'
               '    sget v0, ' + CL + ';->dbgMM:I\n'
               '    const/16 v1, 0x10\n'
               '    if-ge v0, v1, :ppm_skip\n\n'
               '    add-int/lit8 v1, v0, 0x1\n'
               '    sput v1, ' + CL + ';->dbgMM:I\n'
               '    const-string v0, "nTTAP i="\n'
               '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
               '    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
               '    move-result-object v0\n'
               '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n\n'
               '    :ppm_skip\n'
               '    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElementPPM(I)V\n'
               '    return-void\n'
               '.end method\n')
        a3 = '.method public applyTopFilter(Ljava/lang/String;)V'
        assert t.count(a3) == 1
        t = t.replace(a3, PPM + '\n' + a3, 1)

    open(p, 'w', encoding='utf-8').write(t)
    print('TREE PATCHED', p)

    # ---------- MenuManager ----------
    p2 = os.path.join(root, MN)
    s = open(p2, encoding='utf-8').read()

    a4 = '.method public final actionUp(IIII)Z\n    .registers 11\n'
    b4 = ('.method public final actionUp(IIII)Z\n    .registers 11\n'
          '    sget v0, ' + CL + ';->dbgMM:I\n'
          '    const/16 v1, 0x18\n'
          '    if-ge v0, v1, :mm_skip\n'
          '    add-int/lit8 v1, v0, 0x1\n'
          '    sput v1, ' + CL + ';->dbgMM:I\n'
          '    const-string v0, "nMMU x"\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    const-string v0, "nMMU y"\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    const-string v0, "nMMU id"\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeMenuElementID:I\n'
          '    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, ' + DBG + ';->dWrite(Ljava/lang/String;)V\n'
          '    :mm_skip\n')
    assert s.count(a4) == 1, ('mm-head', s.count(a4))
    s = s.replace(a4, b4, 1)
    open(p2, 'w', encoding='utf-8').write(s)
    print('MN PATCHED', p2)
print('DONE r6d288')