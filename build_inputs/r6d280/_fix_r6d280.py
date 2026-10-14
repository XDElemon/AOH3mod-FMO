#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d280：给 TechTopTab.drawButtonBG 加一次性诊断 nTTD（位置/平移/命中区/菜单矩形）
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
CLS = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
BG  = 'Laoc/kingdoms/lukasz/menu_element/MenuElement'
TT  = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
SB  = 'Ljava/lang/StringBuilder;'

PROBE = '''    # --- nTTD one-shot probe ---
    sget v7, %(cls)s;->dbgTBG:I
    if-nez v7, :dbg_go
    goto :dbg_skip

    :dbg_go
    const/4 v7, 0x1
    sput v7, %(cls)s;->dbgTBG:I
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "nTTD id="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    iget-object v8, p0, %(cls)s;->sTopID:Ljava/lang/String;
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    const-string v8, " pos="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    invoke-virtual {p0}, %(bg)s;->getPosX()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, ","
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    invoke-virtual {p0}, %(bg)s;->getPosY()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, " tr="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    move v7, p2
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, ","
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    move v7, p3
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, " scr="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    move v7, v0
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, ","
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    move v7, v1
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, " pick="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    invoke-virtual {p0}, %(bg)s;->getPosX()I
    move-result v7
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getMenuPosX()I
    move-result v9
    add-int/2addr v7, v9
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, ","
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    invoke-virtual {p0}, %(bg)s;->getPosY()I
    move-result v7
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getMenuPosY()I
    move-result v9
    add-int/2addr v7, v9
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, " rect="
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getPosX()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, ","
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getPosY()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, " "
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getWidth()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    const-string v8, "x"
    invoke-virtual {v6, v8}, %(sb)s->append(Ljava/lang/String;)%(sb)s
    move-result-object v6
    iget-object v8, p0, %(cls)s;->owner:%(tt)s;
    invoke-virtual {v8}, %(tt)s;->getHeight()I
    move-result v7
    invoke-virtual {v6, v7}, %(sb)s->append(I)%(sb)s
    move-result-object v6
    invoke-virtual {v6}, %(sb)s->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :dbg_skip
''' % {'cls': CLS, 'bg': BG, 'tt': TT, 'sb': SB}

for root in TREES:
    p = os.path.join(root, TAB)
    if not os.path.exists(p + '.pre_r6d280'):
        shutil.copy2(p, p + '.pre_r6d280')
    s = open(p, encoding='utf-8').read()
    if 'dbgTBG' in s:
        print('ALREADY', p)
        continue
    s = s.replace('.field public sTopID:Ljava/lang/String;',
                  '.field public sTopID:Ljava/lang/String;\n\n.field public static dbgTBG:I', 1)
    anchor = '    iget-boolean v5, p0, ' + CLS + ';->bSelected:Z'
    assert s.count(anchor) == 1, ('anchor', s.count(anchor))
    s = s.replace(anchor, PROBE.rstrip() + '\n\n' + anchor, 1)
    s = s.replace('\nmove-result v2\n', '\n    move-result v2\n', 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('PROBE-ADD', p)
print('DONE r6d280')