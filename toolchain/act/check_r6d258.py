#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d258.py -- r6d258 收尾批门禁：F1 NaN守卫 / F2 lastMissileMs / F3 COW / F4 adFxSrc守卫 / F5 采样闸 / F6 nABOOT
S1-S8 语义断言 + N1-N4 负样本（突变必须变红）。"""
import re, sys

W = '/tmp/w3a/smali'
PDM = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AFM = W + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
ADL = W + '/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

def gi(s, sub):
    return s.index(sub) if sub in s else 10**9

def gate(d, a, f, g, dd):
    errs = []
    # S1 F1
    if d.count('if-eqz v9, :d0c') != 1: errs.append('S1 guard ref')
    if len(re.findall(r'(?m)^\s*:d0c\s*$', d)) != 1: errs.append('S1 label def')
    mo = re.search(r'(?m)^\s*:d0c\s*$', d)
    if mo is None or gi(d, 'if-nez v9, :pp_done') > mo.start(): errs.append('S1 order (label after pp_done)')
    # S2/S3 F2
    if 'lastMissileMs:J' in a: errs.append('S2 AD write remains')
    if d.count('lastMissileMs') != 2: errs.append('S3 PDM read count!=2')
    # S4 F3
    if f.count('Ljava/util/concurrent/CopyOnWriteArraySet;') != 2: errs.append('S4 COW tokens')
    else:
        i = f.index('Ljava/util/concurrent/CopyOnWriteArraySet;')
        if 'radarProvinces:Ljava/util/Set;' not in f[i:i+400]: errs.append('S4 COW not at radarProvinces')
    # S5 F4
    if d.count('if-ltz v2, :done') != 1: errs.append('S5 guard count')
    else:
        i = d.index('if-ltz v2, :done')
        if '->adFxSrc:I' not in d[max(0,i-400):i]: errs.append('S5 guard pre-context')
        if 'getProvince' not in d[i:i+300]: errs.append('S5 guard next getProvince')
    # S6 F5
    if g.count('smpN') != 5: errs.append('S6 smpN count')
    if g.count('"nMS"') < 1: errs.append('S6 nMS literal')
    if g.count('const/16 v1, 0xff') != 4: errs.append('S6 mask ff x4')
    if g.count('const/16 v1, 0x3f') != 1: errs.append('S6 mask 3f')
    if g.count('and-int/lit8 v0, v0, 0x3f') != 1: errs.append('S6 dWrite mask')
    if g.count('if-nez v1, :r258_pass') != 1: errs.append('S6b nMS gate polarity')
    if g.count('if-eqz v1, :r258_wpass') != 1: errs.append('S6b dWrite last polarity')
    if g.count('if-eqz v1, :r258_t1') != 1: errs.append('S6b key ladder t1')
    if g.count('if-eqz v1, :r258_w1') != 1: errs.append('S6b dw ladder w1')
    if g.count('if-eqz v0, :r258_pass') != 1: errs.append('S6c out gate pass')
    if g.count('if-eqz v0, :r258_wpass') != 1: errs.append('S6c out gate wpass')
    # S7 F6
    if dd.count('"nABOOT v=r6d258"') != 1: errs.append('S7 naboot 258')
    if 'v=r6d257' in dd: errs.append('S7 old naboot')
    # S8 labels
    defs = set(re.findall(r'(?m)^\s*:([a-z0-9_]+)\s*$', g))
    r258 = {x for x in defs if x.startswith('r258_')}
    need = {'r258_t1','r258_t2','r258_t3','r258_t4','r258_noisy','r258_pass',
            'r258_w1','r258_w2','r258_w3','r258_w4','r258_w5','r258_w6','r258_wnoise','r258_wpass'}
    if not need <= r258: errs.append('S8 r258 labels missing: %s' % sorted(need - r258))
    refs = set(re.findall(r'(?:goto(?:/16)?|if-[a-z]+)[^:]*:(r258_[a-z0-9_]+)', g))
    if not refs <= defs: errs.append('S8 dangling refs')
    return errs

d = open(PDM, encoding='utf-8').read()
a = open(PAD, encoding='utf-8').read()
f = open(AFM, encoding='utf-8').read()
g = open(ADL, encoding='utf-8').read()
dd = open(PDD, encoding='utf-8').read()

errs = gate(d, a, f, g, dd)
if errs:
    print('❌ check_r6d258 正样本失败:')
    for e in errs:
        print('   -', e)
    sys.exit(1)
print('✅ S1-S8 全过')

bad = 0
m1 = d.replace('if-eqz v9, :d0c', 'if-nez v9, :d0c', 1)
if gate(m1, a, f, g, dd) == []:
    print('❌ N1 not sensitive'); bad += 1
else:
    print('✅ N1 sensitive (NaN guard polarity)')

m2 = d.replace('    if-ltz v2, :done' + chr(10), '', 1)
if gate(m2, a, f, g, dd) == []:
    print('❌ N2 not sensitive'); bad += 1
else:
    print('✅ N2 sensitive (adFxSrc guard removed)')

m3 = g.replace('const/16 v1, 0xff', 'const/16 v1, 0x7f', 1)
if gate(d, a, f, m3, dd) == []:
    print('❌ N3 not sensitive'); bad += 1
else:
    print('✅ N3 sensitive (mask ff->7f)')

m4 = a + chr(10) + '    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J' + chr(10)
if gate(d, m4, f, g, dd) == []:
    print('❌ N4 not sensitive'); bad += 1
else:
    print('✅ N4 sensitive (lastMissileMs reintroduced)')

if bad:
    print('❌ check_r6d258 未过：%d 项' % bad)
    sys.exit(1)
print('✅ check_r6d258 ALL PASS（S1-S8 + N1-N4）')
sys.exit(0)