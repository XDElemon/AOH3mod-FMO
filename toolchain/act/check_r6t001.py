#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6t001 门禁：结构 + 方向（7图注册 / 7字段 / 探针 / 寄存器纪律 / 插入方位）
   + 4 个负样本（变异必须变红）。
   说明：本批为直线式注册（无判定分支）⇒ 以结构性断言 + 变异负样本替代行为模拟器。
"""
import sys, re

IG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/InitGame.smali'
IM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/textures/Images.smali'

REG = [
    ('ui/tno/tno_frame.png', 'tnoFrame'),
    ('ui/tno/tno_pic1.png', 'tnoPic1'),
    ('ui/tno/tno_pic2.png', 'tnoPic2'),
    ('ui/tno/tno_pic3.png', 'tnoPic3'),
    ('ui/tno/button_edge.png', 'tnoButtonEdge'),
    ('ui/tno/button_h_edge.png', 'tnoButtonHEdge'),
    ('ui/tno/tv_button_edge.png', 'tnoTvButtonEdge'),
]
PROBE = '"nTNO1 v=r6t001 assets=7"'


def rd(p):
    with open(p, encoding='utf-8') as f:
        return f.read()


def run_checks(ig, im):
    F = []
    # S1 七个路径唯一且按序
    pos = []
    for path, fld in REG:
        c = ig.count('"' + path + '"')
        if c != 1:
            F.append('S1 路径 %s 出现 %d 次' % (path, c))
        pos.append(ig.find('"' + path + '"'))
    if pos != sorted(pos):
        F.append('S1 注册顺序错乱')
    # S2 sput 总数
    if ig.count('Images;->tno') != 7:
        F.append('S2 tno sput 总数 != 7')
    # S3 探针（唯一 + 紧跟 dWrite）
    if ig.count(PROBE) != 1:
        F.append('S3 探针串 != 1')
    ip = ig.find(PROBE)
    iw = ig.find('AirDbgLog;->dWrite(Ljava/lang/String;)V')
    if not (0 <= ip < iw and iw - ip < 300):
        F.append('S3 dWrite 未紧跟探针串')
    if ig.count('AirDbgLog;->dWrite') != 1:
        F.append('S3 dWrite 调用数 != 1')
    # S4 字段
    if im.count('.field public static tno') != 7:
        F.append('S4 tno 字段总数 != 7')
    for path, fld in REG:
        if im.count('.field public static %s:I' % fld) != 1:
            F.append('S4 字段 %s != 1' % fld)
    # S5 块内寄存器纪律（只用 v0）
    a = ig.find('# r6t001: TNO UI assets')
    b = ig.find('dWrite(Ljava/lang/String;)V', a)
    if a < 0 or b < 0:
        F.append('S5 找不到块区间')
    else:
        seg = ig[a:b]
        bad = re.findall(r'\bv[1-9]\d*\b', seg)
        badp = re.findall(r'\bp[0-9]+\b', seg)
        if bad:
            F.append('S5 块内用了非常规寄存器: %s' % bad[:5])
        if badp:
            F.append('S5 块内用了参数寄存器: %s' % badp[:5])
        if seg.count('move-result v0') != 7:
            F.append('S5 move-result v0 数 != 7')
        if seg.count('const-string v0') != 8:
            F.append('S5 const-string v0 数 != 8')
        if seg.count('invoke-static {v0}') != 8:
            F.append('S5 invoke-static {v0} 数 != 8')
    # S6 插入方位：radarFill < tno_frame < ringSel
    i_ref = ig.find('sput v0, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I')
    i_tno = ig.find('"ui/tno/tno_frame.png"')
    i_ring = ig.find('"ui/graph/ringSel.png"')
    if not (0 <= i_ref < i_tno < i_ring):
        F.append('S6 插入位置不在 radarFill 与 ringSel 之间')
    return F


def main():
    ig = rd(IG)
    im = rd(IM)
    F = run_checks(ig, im)
    print('== 正式树 ==')
    if F:
        for e in F:
            print('❌', e)
        print('❌ r6t001 门禁未过')
        sys.exit(1)
    for s in ('S1 7路径/顺序', 'S2 sput', 'S3 探针', 'S4 字段', 'S5 寄存器纪律', 'S6 插入方位'):
        print('✅', s)
    # 负样本（必须变红）
    muts = [
        ('N1 改图路径', ig.replace('tno_pic3.png', 'tno_picX.png'), im),
        ('N2 删字段', ig, im.replace('.field public static tnoPic2:I\n\n', '')),
        ('N3 改探针串', ig.replace('nTNO1 v=r6t001 assets=7', 'nTNO1 v=0'), im),
        ('N4 换注册顺序', ig.replace('tno_pic1.png', '@@TMP@@').replace('tno_pic2.png', 'tno_pic1.png').replace('@@TMP@@', 'tno_pic2.png'), im),
    ]
    okN = True
    for name, ig2, im2 in muts:
        F2 = run_checks(ig2, im2)
        if F2:
            print('✅ %s 被捕获: %s' % (name, F2[0]))
        else:
            print('❌ %s 未被捕获（门禁失效）' % name)
            okN = False
    if okN:
        print('✅ r6t001 门禁全过（含负样本回放）')
        sys.exit(0)
    print('❌ 负样本自检失败')
    sys.exit(4)


if __name__ == '__main__':
    main()
