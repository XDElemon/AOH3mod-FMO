#!/usr/bin/env python3
# r6d256: AD fog-fallback gate -- revive tickHits (stub+deadcode -> gate),
#         stamp adFxStepMs in adFxStep, hook adSpd() speed constant, bump nABOOT.
# All new code comments are ASCII on purpose (transfer safety).
# NOTE r6d257: stamp lines corrected v11 -> v9 (p0 alias crash fix).
import re, sys, os, shutil

W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
NL = chr(10)

def rd(p): return open(p, encoding='utf-8').read()
def bk(p):
    b = p + '.pre_r6d256'
    if not os.path.exists(b):
        shutil.copy2(p, b)

# =====================================================================
# A) AirMission: add field adFxStepMs:J (between adFxY:F and adStartGh:I)
# =====================================================================
s = rd(PDM)
assert '.field public adFxStepMs:J' not in s, 'A already patched'
old_f = '.field public adFxY:F' + NL + NL + '.field public adStartGh:I'
c = s.count(old_f)
assert c == 1, ('A field anchor', c)
s = s.replace(old_f,
              '.field public adFxY:F' + NL + NL
              + '.field public adFxStepMs:J' + NL + NL
              + '.field public adStartGh:I', 1)
assert s.count('.field public adFxStepMs:J') == 1
print('A OK: field adFxStepMs:J')

# =====================================================================
# B) AirDefense: replace tickHits whole method (stub+deadcode -> fog gate)
# =====================================================================
a = rd(PAD)
t0 = a.index('.method public static tickHits()V')
t1 = a.index('.end method', t0) + len('.end method')
old_m = a[t0:t1]
for mk in ('return-void', 'nADK dmg=', '0xc7c35000', 'applyMdDamage', 'goto/16 :loop'):
    assert mk in old_m, ('B old marker', mk)
assert 'nADK fb=' not in old_m, 'B already patched'
new_m = NL.join([
'.method public static tickHits()V',
'    .registers 16',
'',
'    # r6d256: fog-fallback gate for AD in-flight hits (mirrors A2A missileTick r6d255).',
'    # In-flight = adHitDmg>0; contact resolves when the trail is stepping (fog-visible).',
'    # Fallback: [due+12h,+48h) never/stale -> settle, recent-step -> wait; >=due+48h -> forced settle.',
'    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I',
'    mul-int/lit8 v0, v0, 0x18',
'    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I',
'    add-int/2addr v0, v1',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
'    move-result-object v1',
'    if-eqz v1, :done',
'    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;',
'    if-eqz v2, :done',
'    const/4 v3, 0x0',
'    invoke-interface {v2}, Ljava/util/List;->size()I',
'    move-result v4',
'    :loop',
'    if-ge v3, v4, :done',
'    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;',
'    move-result-object v5',
'    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;',
'    if-eqz v5, :next',
'    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F',
'    const/4 v7, 0x0',
'    cmpg-float v8, v6, v7',
'    if-lez v8, :next',
'    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I',
'    if-lt v0, v8, :next',
'    # hard cap: now >= due+48h -> fallback (forced, even if stepping)',
'    add-int/lit8 v8, v8, 0x30',
'    if-ge v0, v8, :fb',
'    # grace: now < due+12h -> wait (chance to become visible again)',
'    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I',
'    add-int/lit8 v8, v8, 0xc',
'    if-lt v0, v8, :next',
'    # never stepped -> fallback',
'    iget-wide v14, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J',
'    const-wide/16 v12, 0x0',
'    cmp-long v8, v14, v12',
'    if-lez v8, :fb',
'    # stepped recently (<10s) -> wait for contact; stale -> fallback',
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J',
'    move-result-wide v12',
'    sub-long v12, v12, v14',
'    const-wide/16 v14, 0x2710',
'    cmp-long v8, v12, v14',
'    if-gez v8, :fb',
'    goto/16 :next',
'    :fb',
'    # fallback settle: same cleanup as contact + applyMdDamage + nADK log',
'    const/4 v8, 0x0',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I',
'    const/4 v8, -0x1',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I',
'    const v8, 0xc7c35000',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F',
'    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F',
'    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I',
'    move-result v9',
'    new-instance v10, Ljava/lang/StringBuilder;',
'    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V',
'    const-string v11, "nADK fb=1 dmg="',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    const/high16 v7, 0x447a0000',
'    mul-float v7, v6, v7',
'    float-to-int v7, v7',
'    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    const-string v11, " k="',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
'    move-result-object v11',
'    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
'    goto/16 :next',
'    :next',
'    add-int/lit8 v3, v3, 0x1',
'    goto/16 :loop',
'    :done',
'    return-void',
'.end method'])
a2 = a[:t0] + new_m + a[t1:]
# head comment line (row-start anchored; indented r6d203 comments are untouched)
c0 = len(re.findall(r'(?m)^# r6d203.*tickHits.*$', a2))
assert c0 == 1, ('B head comment count', c0)
a2 = re.sub(r'(?m)^# r6d203.*tickHits.*$',
            '# r6d203/r6d256: tickHits -- fog-fallback gate for AD in-flight hits (called once per turn before tickAll).',
            a2, count=1)
# sanity on the new method
seg = a2[a2.index('.method public static tickHits()V'):]
seg = seg[:seg.index('.end method')]
assert seg.count('.registers 16') == 1, 'B registers'
assert seg.count('return-void') == 1, 'B return count'
assert seg.count('"nADK fb=1 dmg="') == 1, 'B log'
assert seg.count('if-lt v0, v8, :next') == 2, 'B if-lt count'
assert seg.count('if-ge v0, v8, :fb') == 1, 'B hardcap'
assert seg.count('if-lez v8, :fb') == 1, 'B never'
assert seg.count('if-gez v8, :fb') == 1, 'B stale'
assert seg.count('if-gez v8, :next') == 0, 'B polarity leak'
assert seg.count('0x2710') == 1, 'B 10s const'
assert seg.index('add-int/lit8 v8, v8, 0x30') < seg.index('if-ge v0, v8, :fb') < seg.index('add-int/lit8 v8, v8, 0xc'), 'B order'
assert seg.index('sub-long v12, v12, v14') < seg.index('if-gez v8, :fb'), 'B delta order'
assert seg.index('->adHitAt:I') < seg.index('applyMdDamage') < seg.index('dWrite'), 'B settle order'
defs = set(re.findall(r'(?m)^[ \t]*:([A-Za-z0-9_]+)[ \t]*$', new_m))
refs = set(re.findall(r'(?:goto(?:/16)?|if-[a-z]+)[^:]*:([A-Za-z0-9_]+)', new_m))
assert refs <= defs, ('B dangling labels', refs - defs)
print('B OK: tickHits replaced (gate: 2xwait + hardcap + never + stale + settle)')

# =====================================================================
# C1) ProvinceDrawArmy: stamp adFxStepMs inside adFxStep
# =====================================================================
d = rd(PDA)
anchor1 = '    # r6d254: pure pursuit (V0=67.5 px/gamehour -> ~3000 px/s at speed5)'
c = d.count(anchor1)
assert c == 1, ('C1 anchor', c)
ins1 = ('    # r6d256: stamp last step time (fog-fallback gate: recent-step => keep chasing)' + NL
        + '    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J' + NL
        + '    move-result-wide v9' + NL
        + '    iput-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J' + NL + NL)
d = d.replace(anchor1, ins1 + anchor1, 1)
assert d.count('iput-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J') == 1, 'C1 inserted count'

# =====================================================================
# C2) ProvinceDrawArmy: speed constant -> adSpd()
# =====================================================================
anchor2 = '    const v1, 0x42870000'
c = d.count(anchor2)
assert c == 1, ('C2 anchor', c)
d = d.replace(anchor2,
              '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adSpd()F' + NL
              + '    move-result v1', 1)
assert d.count('0x42870000') == 0, 'C2 const remains'
assert d.count('AirDefense;->adSpd()F') == 1, 'C2 hook count'
print('C OK: adFxStep stamp + adSpd hook')

# =====================================================================
# D) AirDefDiag: nABOOT bump
# =====================================================================
dd = rd(PDD)
c = dd.count('"nABOOT v=r6d255"')
assert c == 1, ('D nABOOT', c)
dd = dd.replace('"nABOOT v=r6d255"', '"nABOOT v=r6d256"', 1)
print('D OK: nABOOT v=r6d256')

# =====================================================================
# write all (after every check passed)
# =====================================================================
bk(PDM); bk(PAD); bk(PDA); bk(PDD)
open(PDM, 'w', encoding='utf-8').write(s)
open(PAD, 'w', encoding='utf-8').write(a2)
open(PDA, 'w', encoding='utf-8').write(d)
open(PDD, 'w', encoding='utf-8').write(dd)
print('WROTE: AirMission + AirDefense + ProvinceDrawArmy + AirDefDiag')
print('ALL CHECKS PASSED')
