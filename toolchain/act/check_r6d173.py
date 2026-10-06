#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d173 门禁 · 诊断补全（d=/w=）+ 探针统一判空加固
===================================================
S1 AirDefDiag：isq/nearX 各1；nearX 初值 v10=0、v11=-1
S2 aline：有 "d"/"w" 两列 + rem/div 打包解包；.registers 14；上限判据（r6d170 语义）仍在
S3 nearX 极性：if-gez v11,:cmp173 / if-ge v12,v11,:next173 / if-gt v12,v13,:nw173
                / if-eq v12,v5,:next173 / if-ne v8,v4,:far173
S4 inR 敌我极性：if-eq v12, v6, :cond_next（r6d173 修正）
S5 AirPosProbe：10 个方法 × 对象参数全部有判空
S6 safeUpd 原守卫仍在；无 dKey / java.nio
S7 开火链与诊断注入未被带坏（tickTurn/scanAll 各1；AirMission 里 pap 调用=0）
负样本：N1 删 "d" 列 / N2 nearX 最小距离反转 / N3 inR 敌我反转 / N4 删 fkr 守卫 / N5 同省分支反转
"""
import re
import sys

DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
PRB = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'

GUARDS = [
    ('uaw2', [0]), ('takeoff', [0]), ('adp', [0]), ('pap', [0, 1, 2]), ('fkr', [0]),
    ('tkr', [0, 1, 2]), ('artD', [0]), ('pcg', [1, 3]), ('aif', [0]), ('posD', [4]),
]


def checks(diag, prb, afm, am):
    bad = []
    # S1
    if diag.count('.method private static isq(I)I') != 1:
        bad.append('S1 isq 定义数 ≠ 1')
    if diag.count('.method private static nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I') != 1:
        bad.append('S1 nearX 定义数 ≠ 1')
    nx = diag[diag.index('.method private static nearX('):]
    nx = nx[:nx.index('.end method')]
    if 'const/4 v10, 0x0' not in nx or 'const/4 v11, -0x1' not in nx:
        bad.append('S1 nearX 初值错（应 v10=0 计数、v11=-1 最近距离哨兵）')
    # S2
    al = diag[diag.index('.method private static aline('):]
    al = al[:al.index('.end method')]
    if diag.count('.method private static aline(Laoc/kingdoms/lukasz/map/province/Province;III)V') != 1:
        bad.append('S2 aline 定义数 ≠ 1')
    if '.registers 14' not in al[:120]:
        bad.append('S2 aline .registers 应为 14')
    if al.count('const-string v7, "d"') < 1 or al.count('const-string v7, "w"') < 1:
        bad.append('S2 aline 缺 "d"/"w" 列')
    if 'rem-int v0, v8, v9' not in al or 'div-int v8, v8, v9' not in al:
        bad.append('S2 aline 打包解包缺失（rem-int/div-int）')
    if 'if-lt v0, v1, :cond_write' not in al:
        bad.append('S2 aline 上限判据被破坏（应 if-lt …, :cond_write）')
    # S3
    for need, desc in [('if-gez v11, :cmp173', '哨兵判断（-1 表示未设置才 fall-through）'),
                       ('if-ge v12, v11, :next173', '更近才替换'),
                       ('if-gt v12, v13, :nw173', '宽域 900px 上限'),
                       ('if-eq v12, v5, :next173', '友军跳过（==省主人才跳）'),
                       ('if-ne v8, v4, :far173', '不同省才算距离')]:
        if need not in nx:
            bad.append('S3 nearX 极性缺失：%s（%s）' % (need, desc))
    # S4
    ir = diag[diag.index('.method private static inR('):]
    ir = ir[:ir.index('.end method')]
    if 'if-eq v12, v6, :cond_next' not in ir:
        bad.append('S4 inR 敌我极性错（应 if-eq v12, v6, :cond_next）')
    if 'if-ne v12, v6, :cond_next' in ir:
        bad.append('S4 inR 出现 if-ne 敌我（血案形态）')
    # S5
    for name, ks in GUARDS:
        for k in ks:
            pat = 'if-nez p%d, :g173_%s_%d' % (k, name, k)
            if prb.count(pat) != 1:
                bad.append('S5 探针 %s p%d 守卫缺失/重复（%d）' % (name, k, prb.count(pat)))
    # S6
    if 'if-nez p0, :end' not in prb:
        bad.append('S6 safeUpd 原守卫丢失')
    for f, nm in ((diag, 'AirDefDiag'), (prb, 'AirPosProbe')):
        if 'dKey' in f:
            bad.append('S6 %s 用了 dKey' % nm)
        if 'java/nio/file' in f:
            bad.append('S6 %s 用了 java.nio/file' % nm)
    # S7
    if afm.count('AirDefense;->tickTurn()V') != 1:
        bad.append('S7 开火调用 tickTurn 丢失')
    if afm.count('AirDefDiag;->scanAll()V') != 1:
        bad.append('S7 诊断调用 scanAll 丢失')
    if am.count('AirPosProbe;->pap(') != 0:
        bad.append('S7 AirMission 里 pap 调用被复原（r6d172 白做）')
    return bad


def main():
    d = open(DIAG, encoding='utf-8').read()
    p = open(PRB, encoding='utf-8').read()
    a = open(AFM, encoding='utf-8').read()
    m = open(AM, encoding='utf-8').read()

    if '--selftest' in sys.argv:
        muts = [
            ('N1 删 "d" 列', d.replace('const-string v7, "d"', 'const-string v7, "dx"', 1), p, a, m, 'S2'),
            ('N2 近距替换反转', d.replace('if-ge v12, v11, :next173', 'if-le v12, v11, :next173', 1), p, a, m, 'S3'),
            ('N3 inR 敌我反转', d.replace('if-eq v12, v6, :cond_next', 'if-ne v12, v6, :cond_next', 1), p, a, m, 'S4'),
            ('N4 删 fkr 守卫', d, p.replace('if-nez p0, :g173_fkr_0\n', '', 1), a, m, 'S5'),
            ('N5 同省分支反转', d.replace('if-ne v8, v4, :far173', 'if-eq v8, v4, :far173', 1), p, a, m, 'S3'),
        ]
        ok = True
        print('=== 负样本自检 ===')
        for name, d2, p2, a2, m2, tag in muts:
            hit = any(tag in b for b in checks(d2, p2, a2, m2))
            print('  %s %-24s 被抓=%s（%s）' % ('✅' if hit else '❌', name, hit, tag))
            ok &= hit
        print('=== 自检结果：%s ===' % ('全部被抓 ✅' if ok else '有漏抓 ❌'))
        return 0 if ok else 1

    bad = checks(d, p, a, m)
    print('=== r6d173 门禁 ===')
    if bad:
        for b in bad:
            print('  ❌', b)
        print('结果：FAIL（%d 项）' % len(bad))
        return 1
    print('  ✅ S1..S7 全过')
    print('结果：PASS')
    return 0


if __name__ == '__main__':
    sys.exit(main())