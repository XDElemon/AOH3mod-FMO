#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d296.py — r6d296 门禁（文本层）：列压缩/底板/连线重建/滚动刷新/打点
# 断言 S1..S8 + 负样本 N1..N5（必须变红）

import sys, os

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

    # S1 字段
    chk('S1 field aColRank', '.field public aColRank:[I' in tt)

    # S2 六个方法定义
    for m in ['relayoutNodes(Ljava/lang/String;)V', 'relayoutLines(Ljava/lang/String;)V',
              'relayoutDone()V', 'cxOf(Ljava/lang/String;I)I', 'cyOf(I)I',
              'addLineFor(Ljava/lang/String;IILjava/util/List;)V']:
        chk('S2 def ' + m, ('.method private ' + m) in tt)

    # S3 applyTopFilter 调用序
    ab = body(tt, '.method public applyTopFilter(Ljava/lang/String;)V')
    order_keys = ['applyNodeVisibility', 'relayoutNodes', 'relayoutLines', 'relayoutDone', 'rebuildLines']
    pos = []
    for k in order_keys:
        p = ab.find('->' + k)
        pos.append(p)
    chk('S3 order', all(x >= 0 for x in pos) and pos == sorted(pos))

    # S4 rank 前缀循环（含 maxCol）+ 写 rank
    chk('S4 if-gt inclusive', 'if-gt v4, v3, :rn_l3e' in tt)
    chk('S4 no if-ge form', 'if-ge v4, v3, :rn_l3e' not in tt)
    chk('S4 rank write', 'aput v5, v6, v4' in tt)

    # S5 停靠值出现不少于2处（节点/中心）
    chk('S5 park -0x7d0 x2', tt.count('const/16 v12, -0x7d0') >= 1 and tt.count('const/16 v3, -0x7d0') >= 1)

    # S6 底板：Empty + setWidth + 公式
    chk('S6 empty detect', 'instance-of v12, v8, Laoc/kingdoms/lukasz/menu_element/Empty;' in tt)
    chk('S6 board setWidth', 'invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V' in tt)
    chk('S6 board mul', 'mul-int/2addr v12, v3' in tt)

    # S7 连线重建
    rb = body(tt, '.method private addLineFor(Ljava/lang/String;IILjava/util/List;)V')
    chk('S7 range8', 'invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>' in rb)
    chk('S7 researched', 'getTechResearched(I)Z' in rb)
    rl = body(tt, '.method private relayoutLines(Ljava/lang/String;)V')
    chk('S7 two if-ltz', rl.count('if-ltz v7, :rl_skip') == 2)
    chk('S7 allowed filter', 'isTechAllowedForCiv(II)Z' in rl)

    # S8 Menu getter
    chk('S8 getter def', '.method public final getMaxSliderX()I' in mm)
    chk('S8 getter iget', 'iMaxSliderPositionX:I' in body(mm, '.method public final getMaxSliderX()I'))

    return fails

def main():
    tt = open(TREE, encoding='utf-8').read()
    mm = open(MENU, encoding='utf-8').read()
    fx = run_gate(tt, mm)
    if fx:
        print('GATE FAIL:', fx)
        sys.exit(1)
    print('GATE PASS (S1-S8)')

    # ---------- 负样本 ----------
    negs = []

    m = tt.replace('if-gt v4, v3, :rn_l3e', 'if-ge v4, v3, :rn_l3e', 1)
    negs.append(('N1 if-ge', 'S4 if-gt inclusive', run_gate(m, mm)))

    m = tt.replace('const/16 v12, -0x7d0', 'const/16 v12, -0x3e8', 1)
    negs.append(('N2 park-1000', 'S5 park -0x7d0 x2', run_gate(m, mm)))

    m = tt.replace('mul-int/2addr v12, v3', 'mul-int/2addr v12, v13', 1)
    negs.append(('N3 board mul', 'S6 board mul', run_gate(m, mm)))

    m = tt.replace('const/16 v3, -0x7d0', 'const/16 v3, 0x0', 1)
    negs.append(('N4 cx park=0', 'S5 park -0x7d0 x2', run_gate(m, mm)))

    # N5 顺序打乱：把 relayoutDone 挪到 relayoutNodes 前
    ab_old = ('    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutLines(Ljava/lang/String;)V\n'
              '    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutDone()V\n')
    ab_new = ('    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutDone()V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutNodes(Ljava/lang/String;)V\n'
              '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->relayoutLines(Ljava/lang/String;)V\n')
    m = tt.replace(ab_old, ab_new, 1)
    negs.append(('N5 order', 'S3 order', run_gate(m, mm)))

    bad = []
    for name, key, fx2 in negs:
        if key not in fx2:
            bad.append(name + ' (expected ' + key + ')')
    if bad:
        print('NEGATIVE SAMPLE FAIL:', bad)
        sys.exit(1)
    print('NEGATIVE SAMPLES PASS (N1-N5 all red)')

if __name__ == '__main__':
    main()