#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 125 · r6d088：AI 拦截判据——防御者按"敌机当前所在省"判定
用法: python3 check_r6d088_aiintercept.py [smali树根]
"""
import io, os, sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
P = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
M = '.method public static updateAIAutoIntercept()V'
DEF_READ = 'iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I'


def body(s):
    i = s.find(M)
    return s[i:s.find('.end method', i)] if i >= 0 else ''


def checks(s):
    ok, bad = [], []
    b = body(s)
    if b.count(DEF_READ) >= 2:
        ok.append('A1 防御者取自 airDivisionAtProvinceID（>=2 处读取）')
    else:
        bad.append('A1 防御者判据不对（可能退回 targetProvinceID）')
    if 'targetProvinceID:I' not in b:
        ok.append('A2 该方法内已不用 targetProvinceID 判定')
    else:
        bad.append('A2 仍在用 targetProvinceID')
    need = ['DiplomacyManager;->isAtWar(II)Z',
            'AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z',
            'AirForceManager;->hasActiveChaser(JI)Z']
    miss = [n for n in need if n not in b]
    if not miss:
        ok.append('A3 交战/视野/去重三判据齐备')
    else:
        bad.append('A3 判据缺失 %s' % miss)
    if 'const-string v15,' not in b and 'const-string v12, "aiv"' not in b:
        ok.append('A4 无内联探针（不违反世界书）')
    else:
        bad.append('A4 检测到内联探针写法')
    return ok, bad


def mut_in_method(s, old, new):
    i = s.find(M)
    j = s.find('.end method', i)
    return s[:i] + s[i:j].replace(old, new, 1) + s[j:]


def main():
    s = io.open(P, encoding='utf-8').read()
    ok, bad = checks(s)
    for x in ok:
        print('  PASS', x)
    for x in bad:
        print('  FAIL', x)
    negs = [
        ('N1 防御者退回 targetProvinceID', lambda t: mut_in_method(t, DEF_READ, DEF_READ.replace('airDivisionAtProvinceID', 'targetProvinceID'))),
        ('N2 删掉视野判据', lambda t: mut_in_method(t, 'AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z', 'AirForceManager;->aiRadarVisionXX(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z')),
        ('N3 塞入内联探针', lambda t: mut_in_method(t, 'iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;', 'const-string v15, "aiv"\n\n    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;')),
    ]
    caught = 0
    for n, f in negs:
        _, b2 = checks(f(s))
        hit = len(b2) > 0
        caught += 1 if hit else 0
        print('  %s %s' % ('CAUGHT' if hit else 'MISSED', n))
    print('断言 %d/4 ；负样本 %d/3' % (len(ok), caught))
    rc = 0 if len(ok) == 4 and caught == 3 else 1
    print('门禁 125 %s' % ('PASS' if rc == 0 else 'FAIL'))
    return rc


sys.exit(main())