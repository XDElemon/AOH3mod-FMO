#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d280b：把 nTTD 探针改为单值 dWrite（不用 StringBuilder / 不碰 v6）
import os

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
CLS = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
BG  = 'Laoc/kingdoms/lukasz/menu_element/MenuElement'
TT  = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

def W(s):  # dWrite(String in v4)
    return ('    const-string v4, "%s"\n' % s +
            '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)

def WI(expr):
    # expr 执行后结果在 v7(int) -> String.valueOf -> v4 -> dWrite
    return (expr +
            '    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;\n'
            '    move-result-object v4\n'
            '    invoke-static {v4}, %s;->dWrite(Ljava/lang/String;)V\n' % DBG)

PROBE = ('    # --- nTTD one-shot probe ---\n'
    '    sget v7, %(cls)s;->dbgTBG:I\n'
    '    if-nez v7, :dbg_go\n'
    '    goto :dbg_skip\n\n'
    '    :dbg_go\n'
    '    const/4 v7, 0x1\n'
    '    sput v7, %(cls)s;->dbgTBG:I\n'
    + W('nTTD id=')
    + '    iget-object v4, p0, %(cls)s;->sTopID:Ljava/lang/String;\n'
      '    invoke-static {v4}, %(dbg)s;->dWrite(Ljava/lang/String;)V\n'
    + W('nTTD posX') + WI('    invoke-virtual {p0}, %(bg)s;->getPosX()I\n    move-result v7\n')
    + W('nTTD posY') + WI('    invoke-virtual {p0}, %(bg)s;->getPosY()I\n    move-result v7\n')
    + W('nTTD trX')  + '    move v7, p2\n' + WI('')
    + W('nTTD trY')  + '    move v7, p3\n' + WI('')
    + W('nTTD scrX') + '    move v7, v0\n' + WI('')
    + W('nTTD scrY') + '    move v7, v1\n' + WI('')
    + W('nTTD pickX') + WI('    invoke-virtual {p0}, %(bg)s;->getPosX()I\n    move-result v7\n'
                          '    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getMenuPosX()I\n'
                          '    move-result v8\n'
                          '    add-int/2addr v7, v8\n')
    + W('nTTD pickY') + WI('    invoke-virtual {p0}, %(bg)s;->getPosY()I\n    move-result v7\n'
                          '    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getMenuPosY()I\n'
                          '    move-result v8\n'
                          '    add-int/2addr v7, v8\n')
    + W('nTTD rectX') + WI('    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getPosX()I\n    move-result v7\n')
    + W('nTTD rectY') + WI('    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getPosY()I\n    move-result v7\n')
    + W('nTTD rectW') + WI('    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getWidth()I\n    move-result v7\n')
    + W('nTTD rectH') + WI('    iget-object v4, p0, %(cls)s;->owner:%(tt)s;\n'
                          '    invoke-virtual {v4}, %(tt)s;->getHeight()I\n    move-result v7\n')
    + '\n    :dbg_skip\n') % {'cls': CLS, 'bg': BG, 'tt': TT, 'dbg': DBG}

for root in TREES:
    p = os.path.join(root, TAB)
    lines = open(p, encoding='utf-8').read().splitlines()
    i1 = i2 = None
    for k, ln in enumerate(lines):
        if i1 is None and ln.strip() == '# --- nTTD one-shot probe ---':
            i1 = k
        if i1 is not None and ln.strip() == ':dbg_skip':
            i2 = k
            break
    assert i1 is not None and i2 is not None, (root, i1, i2)
    new_lines = lines[:i1] + PROBE.splitlines() + lines[i2 + 1:]
    open(p, 'w', encoding='utf-8').write('\n'.join(new_lines) + '\n')
    print('PROBE2', p)
print('DONE r6d280b')