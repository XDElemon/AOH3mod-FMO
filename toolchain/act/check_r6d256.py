#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d256.py -- r6d256 门禁：AD 迷雾兜底（tickHits 复活）+ adFxStep 时间戳/adSpd + 字段 + nABOOT。
S1-S6 语义断言（分支/标签先后关系、禁止形态、顺序断言）+ N1-N3 负样本（突变必须变红）。"""
import re, sys

W = '/tmp/w3a/smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

TICK = '.method public static tickHits()V'

def gi(s, sub):
    return s.index(sub) if sub in s else 10**9

def gate(t_pad, t_pdm, t_pda, t_pdd):
    errs = []
    seg = t_pad[t_pad.index(TICK):]
    seg = seg[:seg.index('.end method')]
    # S1 basics
    if seg.count('.registers 16') != 1: errs.append('S1 registers16')
    if seg.count('return-void') != 1: errs.append('S1 return count')
    if seg.count('"nADK fb=1 dmg="') != 1: errs.append('S1 fb log')
    if 'nADK dmg=' in seg: errs.append('S1 old log remains')
    if seg.count('0x2710') != 1: errs.append('S1 10s const')
    # S2 decision chain (semantic)
    if seg.count('if-lt v0, v8, :next') != 2: errs.append('S2 wait guards (want 2)')
    if seg.count('if-ge v0, v8, :fb') != 1: errs.append('S2 hardcap')
    if seg.count('if-lez v8, :fb') != 1: errs.append('S2 never')
    if seg.count('if-gez v8, :fb') != 1: errs.append('S2 stale')
    if seg.count('if-gez v8, :next') != 0: errs.append('S2 polarity leak')
    if seg.count('if-ge v0, v8, :next') != 0: errs.append('S2 hardcap reversed')
    if seg.count('add-int/lit8 v8, v8, 0x30') != 1: errs.append('S2 hard const')
    if seg.count('add-int/lit8 v8, v8, 0xc') != 1: errs.append('S2 grace const')
    i1 = gi(seg, 'add-int/lit8 v8, v8, 0x30')
    i2 = gi(seg, 'if-ge v0, v8, :fb')
    i3 = gi(seg, 'add-int/lit8 v8, v8, 0xc')
    if not (i1 < i2 < i3): errs.append('S2 order hard/grace')
    if gi(seg, 'sub-long v12, v12, v14') > gi(seg, 'if-gez v8, :fb'): errs.append('S2 delta order')
    # S3 cleanup + settle order
    for f in ['adHitAt:I', 'adHitDmg:F', 'adFlyHours:I', 'adFxInit:I', 'adFxTN:I', 'adFxSrc:I']:
        pat = 'iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->' + f
        if len(re.findall(re.escape(pat), seg)) != 1: errs.append('S3 iput ' + f)
    if seg.count('0xc7c35000') != 1: errs.append('S3 park const')
    if seg.count('goto/16 :next') != 2: errs.append('S3 goto next count')
    if not (gi(seg, 'iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I')
            < gi(seg, 'AirDefense;->applyMdDamage') < gi(seg, 'AirDbgLog;->dWrite')):
        errs.append('S3 settle order')
    # S4 field + hooks
    if t_pdm.count('.field public adFxStepMs:J') != 1: errs.append('S4 field def')
    if (t_pdm.count('adFxStepMs') + t_pad.count('adFxStepMs') + t_pda.count('adFxStepMs')) != 3:
        errs.append('S4 refs =3')
    if t_pda.count('iput-wide v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J') != 1:
        errs.append('S4 stamp iput')
    if t_pda.count('AirDefense;->adSpd()F') != 1: errs.append('S4 adSpd call')
    if '0x42870000' in t_pda: errs.append('S4 const remains')
    # S5 nABOOT
    if t_pdd.count('"nABOOT v=r6d256"') != 1: errs.append('S5 naboot')
    if 'v=r6d255' in t_pdd: errs.append('S5 old naboot')
    # S6 register range (both slices)
    if re.search(r'\bv1[6-9]\b', seg): errs.append('S6 reg>15 tickHits')
    seg2 = t_pda[t_pda.index('.method private static adFxStep('):]
    seg2 = seg2[:seg2.index('.end method')]
    if re.search(r'\bv1[6-9]\b', seg2): errs.append('S6 reg>15 adFxStep')
    return errs

def mutate_seg(t_pad, old, new):
    t0 = t_pad.index(TICK)
    t1 = t_pad.index('.end method', t0)
    seg = t_pad[t0:t1]
    assert seg.count(old) >= 1, ('mutation target missing', old)
    return t_pad[:t0] + seg.replace(old, new, 1) + t_pad[t1:]

t_pad = open(PAD, encoding='utf-8').read()
t_pdm = open(PDM, encoding='utf-8').read()
t_pda = open(PDA, encoding='utf-8').read()
t_pdd = open(PDD, encoding='utf-8').read()

errs = gate(t_pad, t_pdm, t_pda, t_pdd)
if errs:
    print('❌ check_r6d256 正样本失败:')
    for e in errs:
        print('   -', e)
    sys.exit(1)
print('✅ S1-S6 全过')

bad = 0
m1 = mutate_seg(t_pad, 'if-gez v8, :fb', 'if-gez v8, :next')
if gate(m1, t_pdm, t_pda, t_pdd) == []:
    print('❌ N1 not sensitive'); bad += 1
else:
    print('✅ N1 sensitive (stale :fb -> :next)')
m2 = mutate_seg(t_pad, 'add-int/lit8 v8, v8, 0xc', 'add-int/lit8 v8, v8, 0x18')
if gate(m2, t_pdm, t_pda, t_pdd) == []:
    print('❌ N2 not sensitive'); bad += 1
else:
    print('✅ N2 sensitive (grace 0xc -> 0x18)')
m3 = mutate_seg(t_pad, 'iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I', '')
if gate(m3, t_pdm, t_pda, t_pdd) == []:
    print('❌ N3 not sensitive'); bad += 1
else:
    print('✅ N3 sensitive (cleanup row removed)')

if bad:
    print('❌ check_r6d256 未过：%d 项' % bad)
    sys.exit(1)
print('✅ check_r6d256 ALL PASS（S1-S6 + N1-N3）')
sys.exit(0)