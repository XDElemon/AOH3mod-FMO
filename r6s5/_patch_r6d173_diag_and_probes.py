#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d173 · A 诊断补全（nADA 加 d=/w=）+ B 探针统一判空加固
=========================================================
两阶段：先全量校验（每个锚点命中必须==1）→ 全绿才统一写盘 → 写盘后复核。
"""
import os
import re
import shutil
import sys

BATCH = 'r6d173'
DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
PRB = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
REVX = '/tmp/revx'

ALINE_HDR = ('.method private static aline(Laoc/kingdoms/lukasz/map/province/Province;III)V\n'
             '    .registers 12')
ALINE_HDR_NEW = ('.method private static aline(Laoc/kingdoms/lukasz/map/province/Province;III)V\n'
                 '    .registers 14')

INR_TAIL = ('    const-string v7, "inR"\n'
            '\n'
            '    invoke-static {v6, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->'
            'kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V')
INR_TAIL_NEW = INR_TAIL + '''

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I

    move-result v8

    const v9, 0x186a0

    rem-int v0, v8, v9

    div-int v8, v8, v9

    const-string v7, "d"

    invoke-static {v6, v7, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const-string v7, "w"

    invoke-static {v6, v7, v8}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V'''

NEW_METHODS = '''

# ============================================================================
# r6d173 · 诊断补全：最近距离（打包值 = 宽域计数×100000 + 最近距离）
# ============================================================================
.method private static isq(I)I
    .registers 4

    const/4 v0, 0x0

    :l173
    mul-int v1, v0, v0

    if-ge v1, p0, :d173

    add-int/lit8 v0, v0, 0x1

    goto :l173

    :d173
    return v0
.end method


.method private static nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I
    .registers 16

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :ret173

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :ret173

    const/4 v2, 0x0

    :loop173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :ret173

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v12

    if-eqz v12, :next173

    iget v8, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v8, :next173

    iget v12, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v12, v5, :next173

    if-eq v8, v4, :far173

    const/4 v12, 0x0

    goto :acc173

    :far173
    sget v12, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v8, v12, :next173

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    if-eqz v9, :next173

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v13

    sub-int/2addr v13, v7

    mul-int/2addr v12, v12

    mul-int/2addr v13, v13

    add-int/2addr v12, v13

    :acc173
    const v13, 0xc5c10

    if-gt v12, v13, :nw173

    add-int/lit8 v10, v10, 0x1

    :nw173
    if-nez v11, :setb173

    if-le v12, v11, :next173

    :setb173
    move v11, v12

    :next173
    add-int/lit8 v2, v2, 0x1

    goto :loop173

    :ret173
    const v12, 0x186a0

    mul-int/2addr v10, v12

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->isq(I)I

    move-result v12

    add-int/2addr v10, v12

    return v10
.end method
'''

# (方法签名, 需要判空的对象参数下标)
GUARDS = [
    ('uaw2(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V', [0]),
    ('takeoff(Ljava/lang/String;IIIF)V', [0]),
    ('adp(Ljava/lang/Object;II)V', [0]),
    ('pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V', [0, 1, 2]),
    ('fkr(Ljava/lang/Object;)V', [0]),
    ('tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V', [0, 1, 2]),
    ('artD(Ljava/lang/String;IIII)V', [0]),
    ('pcg(ILjava/lang/Object;ILjava/lang/String;)V', [1, 3]),
    ('aif(Ljava/lang/String;IIII)V', [0]),
    ('posD(IIIILjava/lang/Object;)V', [4]),
]


def fail(m):
    print('❌ 阶段1校验失败：%s' % m)
    print('   ⇒ 未写盘（两阶段纪律）')
    sys.exit(1)


def guard_block(name, ks):
    out = []
    for k in ks:
        out.append('    if-nez p%d, :g173_%s_%d\n' % (k, name, k))
        out.append('    return-void\n')
        out.append('    :g173_%s_%d\n' % (name, k))
    return '\n'.join(x.rstrip('\n') for x in out) + '\n'


def main():
    print('=== 阶段1：全量校验 ===')
    diag = open(DIAG, encoding='utf-8').read()
    prb = open(PRB, encoding='utf-8').read()

    if diag.count(ALINE_HDR) != 1:
        fail('aline 头+registers12 锚点命中 %d ≠ 1' % diag.count(ALINE_HDR))
    if diag.count(INR_TAIL) != 1:
        fail('inR kv 三行锚点命中 %d ≠ 1' % diag.count(INR_TAIL))
    if 'nearX' in diag or 'isq(' in diag:
        fail('AirDefDiag 里已存在 nearX/isq（重复打补丁？）')

    # 探针锚点：每个方法头 + 紧随 .registers
    anchors = {}
    for sig, ks in GUARDS:
        hdr = '.method public static ' + sig
        if prb.count(hdr) != 1:
            fail('探针方法头命中 %d ≠ 1：%s' % (prb.count(hdr), sig))
        i = prb.index(hdr)
        m = re.compile(r'\n    \.registers (\d+)\n').search(prb, i)
        if not m:
            fail('找不到 .registers 行：%s' % sig)
        anchors[sig] = (i, m)
        print('  ✅ 锚点OK %-58s .registers %s' % (sig, m.group(1)))
    print('  ✅ 阶段1 全绿')

    print('=== 阶段2：写盘 ===')
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(DIAG, DIAG + '.pre_' + BATCH)
    shutil.copy2(PRB, PRB + '.pre_' + BATCH)
    shutil.copy2(DIAG, os.path.join(REVX, 'AirDefDiag.smali.pre_' + BATCH))
    shutil.copy2(PRB, os.path.join(REVX, 'AirPosProbe.smali.pre_' + BATCH))

    # --- A ---
    d2 = diag.replace(ALINE_HDR, ALINE_HDR_NEW, 1)
    assert d2.count(ALINE_HDR_NEW) == 1
    d2 = d2.replace(INR_TAIL, INR_TAIL_NEW, 1)
    d3 = d2.rstrip('\n') + '\n' + NEW_METHODS
    open(DIAG, 'w', encoding='utf-8').write(d3)
    print('  ✅ A：AirDefDiag 已加 isq/nearX + aline 两列（%d 行）' % len(d3.splitlines()))

    # --- B：从后往前插，避免位置漂移 ---
    p2 = prb
    inserted = 0
    for sig, ks in sorted(GUARDS, key=lambda x: -anchors[x[0]][1].end()):
        i, m = anchors[sig]
        pos = m.end()          # .registers 行之后
        name = sig.split('(')[0].strip()
        blk = '\n' + guard_block(name, ks)
        p2 = p2[:pos] + blk + p2[pos:]
        inserted += len(ks)
    open(PRB, 'w', encoding='utf-8').write(p2)
    print('  ✅ B：AirPosProbe 已加 %d 处判空（%d 行）' % (inserted, len(p2.splitlines())))

    print('=== 写盘后复核 ===')
    d4 = open(DIAG, encoding='utf-8').read()
    p4 = open(PRB, encoding='utf-8').read()
    ok = True
    checks = [
        ('AirDefDiag isq 定义数', d4.count('.method private static isq(I)I'), 1),
        ('AirDefDiag nearX 定义数', d4.count('.method private static nearX(Laoc/kingdoms/lukasz/map/province/Province;I)I'), 1),
        ('aline .registers 14', d4.count(ALINE_HDR_NEW), 1),
        ('nADA 有 "d" 列', d4.count('const-string v7, "d"'), 1),
        ('nADA 有 "w" 列', d4.count('const-string v7, "w"'), 1),
        ('nearX 宽域常量 0xc5c10', d4.count('const v13, 0xc5c10'), 1),
        ('nearX 打包常量 0x186a0', d4.count('const v12, 0x186a0'), 1),
    ]
    for nsig, ks in GUARDS:
        nm = nsig.split('(')[0].strip()
        for k in ks:
            checks.append(('探针守卫 %s p%d' % (nm, k), p4.count('if-nez p%d, :g173_%s_%d' % (k, nm, k)), 1))
    for name, got, want in checks:
        good = (got == want)
        ok &= good
        print('  %s %-38s = %s（期望 %s）' % ('✅' if good else '❌', name, got, want))
    print('✅ r6d173 补丁完成' if ok else '❌ 复核失败')
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())