#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d297.py — r6d297 门禁：在 r6d296 基础上新增
# S9 allowed 判定调用数（relayoutNodes=2 / cxOf=1）
# S10 cxOf 顺序 civID → allowed → :cx_park
# N6 删除一处 allowed 调用必红
import sys

TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
MENU = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menu/Menu.smali'

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

    # S1..S8（继承 r6d296）
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

    # S9 allowed 调用数
    rnb = body(tt, '.method private relayoutNodes(Ljava/lang/String;)V')
    chk('S9 relayout allowed x2', rnb.count('isTechAllowedForCiv(II)Z') == 2)
    cxb = body(tt, '.method private cxOf(Ljava/lang/String;I)I')
    chk('S9 cxOf allowed x1', cxb.count('isTechAllowedForCiv(II)Z') == 1)

    # S10 cxOf 顺序
    ip = cxb.find('Player;->iCivID:I')
    iq = cxb.find('isTechAllowedForCiv(II)Z')
    ir = cxb.find(':cx_park')
    chk('S10 cx order', 0 <= ip < iq < ir)

    return fails

def main():
    tt = open(TREE, encoding='utf-8').read()
    mm = open(MENU, encoding='utf-8').read()
    fx = run_gate(tt, mm)
    if fx:
        print('GATE FAIL:', fx)
        sys.exit(1)
    print('GATE PASS (S1-S10)')

    negs = []
    m = tt.replace('if-gt v4, v3, :rn_l3e', 'if-ge v4, v3, :rn_l3e', 1)
    negs.append(('N1 if-ge', 'S4 if-gt inclusive', run_gate(m, mm)))
    m = tt.replace('const/16 v12, -0x7d0', 'const/16 v12, -0x3e8', 1)
    negs.append(('N2 park-1000', 'S5 park x2', run_gate(m, mm)))
    m = tt.replace('mul-int/2addr v12, v3', 'mul-int/2addr v12, v13', 1)
    negs.append(('N3 board mul', 'S6 board mul', run_gate(m, mm)))
    m = tt.replace('const/16 v3, -0x7d0', 'const/16 v3, 0x0', 1)
    negs.append(('N4 cx park=0', 'S5 park x2', run_gate(m, mm)))
    ab_old = ('    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutLines(Ljava/lang/String;)V\n'
              '    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutDone()V\n')
    ab_new = ('    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutDone()V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutLines(Ljava/lang/String;)V\n')
    m = tt.replace(ab_old, ab_new, 1)
    negs.append(('N5 order', 'S3 order', run_gate(m, mm)))
    m = tt.replace('invoke-static {v4, v13}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z', '', 1)
    negs.append(('N6 allowed-del', 'S9 relayout allowed x2', run_gate(m, mm)))

    bad = []
    for name, key, fx2 in negs:
        if key not in fx2:
            bad.append(name + ' (expected ' + key + ')')
    if bad:
        print('NEGATIVE SAMPLE FAIL:', bad)
        sys.exit(1)
    print('NEGATIVE SAMPLES PASS (N1-N6 all red)')

if __name__ == '__main__':
    main()