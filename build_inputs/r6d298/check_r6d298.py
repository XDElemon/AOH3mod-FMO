#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d298.py — r6d297 全部断言 + 新增：
# S11 static sTopCatLast（字段/落盘/取用/分支）
# S12 relayoutDone 位置钳制块
# N7 删 sput 必红；N8 删 if-eq 行必红
import sys

TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
MENU = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali'
CLS = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;'

def body(text, decl):
    i = text.find(decl)
    assert i >= 0, ('no-decl', decl)
    j = text.find('.end method', i)
    return text[i:j]

def run_gate(tt, mm):
    fails = []

    def chk(name, ok):
        if not ok:
            fails.append(name)

    # ---- r6d296/297 断言（继承）----
    chk('S1 field aColRank', '.field public aColRank:[I' in tt)
    for m in ['relayoutNodes(Ljava/lang/String;)V', 'relayoutLines(Ljava/lang/String;)V',
              'relayoutDone()V', 'cxOf(Ljava/lang/String;I)I', 'cyOf(I)I',
              'addLineFor(Ljava/lang/String;IILjava/util/List;)V']:
        chk('S2 def ' + m, ('.method private ' + m) in tt)
    ab = body(tt, '.method public applyTopFilter(Ljava/lang/String;)V')
    keys = ['applyNodeVisibility', 'relayoutNodes', 'relayoutLines', 'relayoutDone', 'rebuildLines']
    pos = [ab.find('->' + k) for k in keys]
    chk('S3 order', all(p >= 0 for p in pos) and pos == sorted(pos))
    chk('S4 if-gt inclusive', 'if-gt v4, v3, :rn_l3e' in tt)
    chk('S4 no if-ge form', 'if-ge v4, v3, :rn_l3e' not in tt)
    chk('S4 rank write', 'aput v5, v6, v4' in tt)
    chk('S5 park x2', 'const/16 v12, -0x7d0' in tt and 'const/16 v3, -0x7d0' in tt)
    chk('S6 empty detect', 'instance-of v12, v8, Laoc/kingdoms/lukasz/menu_element/Empty;' in tt)
    chk('S6 board setWidth', 'invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V' in tt)
    chk('S6 board mul', 'mul-int/2addr v12, v3' in tt)
    rb = body(tt, '.method private addLineFor(Ljava/lang/String;IILjava/util/List;)V')
    chk('S7 range8', 'invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>' in rb)
    chk('S7 researched', 'getTechResearched(I)Z' in rb)
    rl = body(tt, '.method private relayoutLines(Ljava/lang/String;)V')
    chk('S7 two if-ltz', rl.count('if-ltz v7, :rl_skip') == 2)
    chk('S7 allowed filter', 'isTechAllowedForCiv(II)Z' in rl)
    chk('S8 getter def', '.method public final getMaxSliderX()I' in mm)
    chk('S8 getter iget', 'iMaxSliderPositionX:I' in body(mm, '.method public final getMaxSliderX()I'))
    rnb = body(tt, '.method private relayoutNodes(Ljava/lang/String;)V')
    chk('S9 relayout allowed x2', rnb.count('isTechAllowedForCiv(II)Z') == 2)
    cxb = body(tt, '.method private cxOf(Ljava/lang/String;I)I')
    chk('S9 cxOf allowed x1', cxb.count('isTechAllowedForCiv(II)Z') == 1)
    ip = cxb.find('Player;->iCivID:I')
    iq = cxb.find('isTechAllowedForCiv(II)Z')
    ir = cxb.find(':cx_park')
    chk('S10 cx order', 0 <= ip < iq < ir)

    # ---- S11 默认栏保持 ----
    chk('S11 field last', '.field public static sTopCatLast:Ljava/lang/String;' in tt)
    tab = body(tt, '.method private addTopTabs(Ljava/util/List;)V')
    chk('S11 addTopTabs uses', ('sget-object v1, ' + CLS + '->sTopCatLast:Ljava/lang/String;') in tab)
    chk('S11 branch', 'if-eqz v1, :ts_land' in tab and ':ts_land' in tab and ':ts_done' in tab)
    chk('S11 apply sput', ('sput-object p1, ' + CLS + '->sTopCatLast:Ljava/lang/String;') in ab)

    # ---- S12 位置钳制块 ----
    rd = body(tt, '.method private relayoutDone()V')
    chk('S12 block', ('getNewMenuPosX' in rd) and (':md_done' in rd) and
        (rd.count('setMenuPosX') == 2) and ('if-eq v2, v1, :md_done' in rd))

    return fails

def main():
    tt = open(TREE, encoding='utf-8').read()
    mm = open(MENU, encoding='utf-8').read()
    fx = run_gate(tt, mm)
    if fx:
        print('GATE FAIL:', fx)
        sys.exit(1)
    print('GATE PASS (S1-S12)')

    negs = []
    m = tt.replace('if-gt v4, v3, :rn_l3e', 'if-ge v4, v3, :rn_l3e', 1)
    negs.append(('N1 if-ge', 'S4 if-gt inclusive', run_gate(m, mm)))
    m = tt.replace('const/16 v12, -0x7d0', 'const/16 v12, -0x3e8', 1)
    negs.append(('N2 park-1000', 'S5 park x2', run_gate(m, mm)))
    m = tt.replace('mul-int/2addr v12, v3', 'mul-int/2addr v12, v13', 1)
    negs.append(('N3 board mul', 'S6 board mul', run_gate(m, mm)))
    m = tt.replace('const/16 v3, -0x7d0', 'const/16 v3, 0x0', 1)
    negs.append(('N4 cx park=0', 'S5 park x2', run_gate(m, mm)))
    ab_old = ('    invoke-direct {p0, p1}, ' + CLS + '->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, ' + CLS + '->relayoutLines(Ljava/lang/String;)V\n'
              '    invoke-direct {p0}, ' + CLS + '->relayoutDone()V\n')
    ab_new = ('    invoke-direct {p0}, ' + CLS + '->relayoutDone()V\n'
              '    invoke-direct {p0, p1}, ' + CLS + '->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, ' + CLS + '->relayoutLines(Ljava/lang/String;)V\n')
    m = tt.replace(ab_old, ab_new, 1)
    negs.append(('N5 order', 'S3 order', run_gate(m, mm)))
    m = tt.replace('invoke-static {v4, v13}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z', '', 1)
    negs.append(('N6 allowed-del', 'S9 relayout allowed x2', run_gate(m, mm)))
    m = tt.replace('    sput-object p1, ' + CLS + '->sTopCatLast:Ljava/lang/String;\n', '', 1)
    negs.append(('N7 sput-del', 'S11 apply sput', run_gate(m, mm)))
    m = tt.replace('    if-eq v2, v1, :md_done\n', '', 1)
    negs.append(('N8 if-eq-del', 'S12 block', run_gate(m, mm)))

    bad = []
    for name, key, fx2 in negs:
        if key not in fx2:
            bad.append(name + ' (expected ' + key + ')')
    if bad:
        print('NEGATIVE SAMPLE FAIL:', bad)
        sys.exit(1)
    print('NEGATIVE SAMPLES PASS (N1-N8 all red)')

if __name__ == '__main__':
    main()