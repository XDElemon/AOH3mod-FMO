#!/usr/bin/env python3
# r6d252 v2: pure pursuit. Fixed variable flow (A writes PDA; B/C on PAD).
import sys, re
W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
NL = chr(10)

# ---------- A) adFxStep body -> pure pursuit (PDA) ----------
sP = open(PDA, encoding='utf-8').read()
i0 = sP.index('.method private static adFxStep')
i1 = sP.index('.end method', i0)
seg = sP[i0:i1]
k = seg.index('r6d248')
ls = seg.rfind(NL, 0, k) + 1
engine = (
"    # r6d252: pure pursuit (V0=1.6875 px/gamehour -> ~75 px/s at speed5)" + NL
+ "    const/16 v0, 0x12c" + NL
+ "    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;" + NL
+ "    if-eqz v6, :mph_keep" + NL
+ "    iget v0, v6, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I" + NL
+ "    if-gtz v0, :mph_keep" + NL
+ "    const/16 v0, 0x12c" + NL
+ "    :mph_keep" + NL
+ "    const/4 v2, 0x1" + NL
+ "    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I" + NL
+ "    if-gtz v3, :hpt_keep" + NL
+ "    move v2, v3" + NL
+ "    :hpt_keep" + NL
+ "    int-to-float v0, v0" + NL
+ "    int-to-float v1, v2" + NL
+ "    div-float v0, v0, v1" + NL
+ "    const v1, 0x3fd80000" + NL
+ "    div-float v1, v1, v0" + NL
+ "    mul-float v1, v1, v8" + NL
+ "    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F" + NL
+ "    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F" + NL
+ "    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I" + NL
+ "    int-to-float v2, p1" + NL
+ "    int-to-float v3, p2" + NL
+ "    if-nez v6, :pp_go" + NL
+ "    move v4, v2" + NL
+ "    move v5, v3" + NL
+ "    const/4 v6, 0x1" + NL
+ "    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I" + NL
+ "    const/4 v6, 0x0" + NL
+ "    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I" + NL
+ "    const/16 v6, 0xf" + NL
+ "    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTH:I" + NL
+ "    :pp_go" + NL
+ "    int-to-float v2, p3" + NL
+ "    int-to-float v3, p4" + NL
+ "    sub-float v2, v2, v4" + NL
+ "    sub-float v3, v3, v5" + NL
+ "    mul-float v6, v2, v2" + NL
+ "    mul-float v7, v3, v3" + NL
+ "    add-float v6, v6, v7" + NL
+ "    float-to-double v9, v6" + NL
+ "    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D" + NL
+ "    move-result-wide v9" + NL
+ "    double-to-float v6, v9" + NL
+ "    move v7, v1" + NL
+ "    cmpl-float v9, v6, v1" + NL
+ "    if-gtz v9, :st_ok" + NL
+ "    move v7, v6" + NL
+ "    :st_ok" + NL
+ "    div-float v2, v2, v6" + NL
+ "    mul-float v2, v2, v7" + NL
+ "    add-float v4, v4, v2" + NL
+ "    div-float v3, v3, v6" + NL
+ "    mul-float v3, v3, v7" + NL
+ "    add-float v5, v5, v3" + NL
+ "    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F" + NL
+ "    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F" + NL
+ "    invoke-static {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V" + NL
+ "    cmpl-float v9, v7, v6" + NL
+ "    if-nez v9, :pp_done" + NL
+ "    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F" + NL
+ "    invoke-static {p0, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I" + NL
+ "    move-result v9" + NL
+ "    const/4 v9, 0x0" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I" + NL
+ "    const v9, 0xc7c35000" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F" + NL
+ "    const/4 v9, 0x0" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F" + NL
+ "    const/4 v9, -0x1" + NL
+ "    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I" + NL
+ "    :pp_done" + NL
+ "    return-void" + NL
)
seg = seg[:ls] + engine
sP = sP[:i0] + seg + sP[i1:]
open(PDA, 'w', encoding='utf-8').write(sP)
print('A done: pursuit engine written')

# ---------- B/C on PAD ----------
s = open(PAD, encoding='utf-8').read()
old_b = ("    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I" + NL + NL
         + "    if-gt v2, v0, :dmg" + NL)
c = s.count(old_b)
print('gate sites:', c)
assert c == 1, c
new_b = ("    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I" + NL + NL
         + "    if-gtz v2, :dmg" + NL)
s = s.replace(old_b, new_b, 1)

t = s.index('.method public static tickHits')
j = s.index('.registers', t)
k2 = s.index(NL, j)
s = s[:k2] + NL + NL + "    return-void" + s[k2:]
open(PAD, 'w', encoding='utf-8').write(s)
print('B/C done')

# ---------- D) nABOOT ----------
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d[0-9]+', 'nABOOT v=r6d252', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print('D done: nABOOT r6d252')

# ---------- verify ----------
s2 = open(PDA, encoding='utf-8').read()
print('PCC r6d252:', s2.count('r6d252'), '| r6d248:', s2.count('r6d248'))
s3 = open(PAD, encoding='utf-8').read()
print('gate new:', s3.count('if-gtz v2, :dmg'), '| old:', s3.count('if-gt v2, v0, :dmg'))
t2 = s3.index('.method public static tickHits')
print('tickHits has return:', 'return-void' in s3[t2:t2+120])