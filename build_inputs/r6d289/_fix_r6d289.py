#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d289：修 topVisible（双 if-nez→if-eqz）+ 点击链打满探针（nTTVB/nTTCNT/nTTIX/nMMU扩展/nMMD/nMMA/nMMB）
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
MN   = 'aoc/kingdoms/lukasz/menu/MenuManager.smali'
MENU = 'aoc/kingdoms/lukasz/menu/Menu.smali'
CL  = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

def blk(cnt_field, cap, skip_label, lines):
    head = ('    sget v0, %s;->%s:I\n' % (CL, cnt_field) +
            '    const/16 v1, 0x%x\n' % cap +
            '    if-ge v0, v1, :%s\n' % skip_label +
            '    add-int/lit8 v1, v0, 0x1\n' +
            '    sput v1, %s;->%s:I\n' % (CL, cnt_field))
    return head + ''.join(lines) + '    :%s\n' % skip_label

def dw(s):
    return ('    const-string v0, "%s"\n' % s +
            '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)

def val(reg):
    return ('    invoke-static {%s}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n' % reg +
            '    move-result-object v0\n'
            '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)

for root in TREES:
    # ================= TREE =================
    p = os.path.join(root, TREE)
    if not os.path.exists(p + '.pre_r6d289'):
        shutil.copy2(p, p + '.pre_r6d289')
    t = open(p, encoding='utf-8').read()

    # 新字段
    for f in ['dbgTVB:I', 'dbgMD:I', 'dbgMA:I', 'dbgMB:I']:
        if f not in t:
            a = '.field public static dbgMM:I'
            assert t.count(a) == 1, ('field-anchor', f)
            t = t.replace(a, a + '\n\n.field public static ' + f, 1)

    # 1) topVisible 修复（两处 if-nez→if-eqz）
    a1 = '    if-nez v1, :tv_chk'
    a2 = '    if-nez v1, :tv_no'
    assert t.count(a1) == 1 and t.count(a2) == 1, ('tv-fix', t.count(a1), t.count(a2))
    t = t.replace(a1, '    if-eqz v1, :tv_chk', 1)
    t = t.replace(a2, '    if-eqz v1, :tv_no', 1)

    # 2) topVisible 入口探针
    a3 = '.method public static topVisible(Ljava/lang/String;Ljava/lang/String;)Z\n    .registers 5\n'
    b3 = (a3 + blk('dbgTVB', 0x20, 'tv_skip',
          [dw('nTTVB top'), '    invoke-static {p0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG,
           dw('nTTVS sel'), '    invoke-static {p1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG]))
    assert t.count(a3) == 1, ('tv-probe', t.count(a3))
    t = t.replace(a3, b3, 1)

    # 3) applyTopFilter：registers4→6 + nTTCNT
    a4 = '.method public applyTopFilter(Ljava/lang/String;)V\n    .registers 4\n'
    b4 = '.method public applyTopFilter(Ljava/lang/String;)V\n    .registers 6\n'
    assert t.count(a4) == 1
    t = t.replace(a4, b4, 1)
    a5 = ('    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n\n' % DBG +
          '    iput-object p1, p0, %s;->sTopCat:Ljava/lang/String;\n' % CL)
    b5 = ('    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I\n'
          '    move-result v0\n'
          '    const-string v1, "nTTCNT"\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v1\n'
          '    invoke-static {v1}, %s;->dWrite(Ljava/lang/String;)V\n\n' % DBG +
          '    iput-object p1, p0, %s;->sTopCat:Ljava/lang/String;\n' % CL)
    assert t.count(a5) == 1, ('cnt', t.count(a5))
    t = t.replace(a5, b5, 1)

    # 4) addTopTabs：三个 add 后补 nTTIX（菜单列表下标）
    a6 = '    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z\n'
    b6 = (a6 +
          '    const-string v14, "nTTIX"\n'
          '    invoke-static {v14}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-interface {p1}, Ljava/util/List;->size()I\n'
          '    move-result v5\n'
          '    add-int/lit8 v5, v5, -0x1\n'
          '    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v14\n'
          '    invoke-static {v14}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)
    c6 = t.count(a6)
    assert c6 == 3, ('adds', c6)
    t = t.replace(a6, b6, 3)

    open(p, 'w', encoding='utf-8').write(t)
    print('TREE PATCHED', p)

    # ================= MENUMANAGER =================
    p2 = os.path.join(root, MN)
    if not os.path.exists(p2 + '.pre_r6d289'):
        shutil.copy2(p2, p2 + '.pre_r6d289')
    s = open(p2, encoding='utf-8').read()

    # 5) actionUp：在 id 之后追加选中元素几何（nMMU px/py/w/h）
    a7 = ('    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeMenuElementID:I\n'
          '    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    :mm_skip\n')
    b7 = ('    iget v1, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->activeMenuElementID:I\n'
          '    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenuElement()Laoc/kingdoms/lukasz/menu_element/MenuElement;\n'
          '    move-result-object v1\n'
          '    if-eqz v1, :mm2_skip\n'
          '    const-string v0, "nMMU px"\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I\n'
          '    move-result v2\n'
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v0, "nMMU py"\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I\n'
          '    move-result v2\n'
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v0, "nMMU w"\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I\n'
          '    move-result v2\n'
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    const-string v0, "nMMU h"\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I\n'
          '    move-result v2\n'
          '    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
          '    move-result-object v0\n'
          '    invoke-static {v0}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG +
          '    :mm2_skip\n'
          '    :mm_skip\n')
    assert s.count(a7) == 1, ('mmup', s.count(a7))
    s = s.replace(a7, b7, 1)

    # 6) actionDown 入口探针
    a8 = '.method public final actionDown(II)Z\n    .registers 10\n'
    b8 = (a8 + blk('dbgMD', 0x20, 'md_skip',
          [dw('nMMD x'), val('p1'), dw('nMMD y'), val('p2')]))
    assert s.count(a8) == 1, ('mdown', s.count(a8))
    s = s.replace(a8, b8, 1)

    # 7) actionElement(IIZ) 入口探针
    a9 = '.method protected final actionElement(IIZ)V\n    .registers 5\n'
    b9 = (a9 + blk('dbgMA', 0x20, 'ma_skip',
          [dw('nMMA m'), val('p1'), dw('nMMA i'), val('p2'), dw('nMMA p'), val('p3')]))
    assert s.count(a9) == 1, ('mae', s.count(a9))
    s = s.replace(a9, b9, 1)

    open(p2, 'w', encoding='utf-8').write(s)
    print('MN PATCHED', p2)

    # ================= MENU =================
    p3 = os.path.join(root, MENU)
    if not os.path.exists(p3 + '.pre_r6d289'):
        shutil.copy2(p3, p3 + '.pre_r6d289')
    m = open(p3, encoding='utf-8').read()
    a10 = '.method public actionElement(I)V\n    .registers 3\n'
    b10 = ('.method public actionElement(I)V\n    .registers 4\n' +
           blk('dbgMB', 0x20, 'mb_skip', [dw('nMMB i'), val('p1')]))
    assert m.count(a10) == 1, ('menu-ae', m.count(a10))
    m = m.replace(a10, b10, 1)
    open(p3, 'w', encoding='utf-8').write(m)
    print('MENU PATCHED', p3)
print('DONE r6d289')