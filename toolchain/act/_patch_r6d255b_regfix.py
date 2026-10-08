#!/usr/bin/env python3
# r6d255b: register hygiene fixes -- keep object-holding registers free of numeric writes
#          (removes obj->num-across-merge hazards flagged by check_regtype)
#   A) msFxStep   : v6 = object-only (gameThread); init -> v7; dist -> v8
#   B) adFxStep   : v6 = object-only (gameThread); init -> v7; dist -> v8
#   C) msFxContact: cleanup consts moved off v0 (v0 stays object-only)
import re, sys
W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
NL = chr(10)

# =====================================================================
# A) msFxStep corrected (v6 object-only)
# =====================================================================
d = open(PDA, encoding='utf-8').read()
pat = re.compile(r'\.method private static msFxStep\(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII\)V\n.*?\n\.end method\n', re.S)
ms = pat.findall(d)
assert len(ms) == 1, len(ms)
old = ms[0]
assert 'msFxStepMs' in old and 'msSpd()F' in old and 'if-eqz v10, :msc' in old, 'A markers'
newstep = NL.join([
'.method private static msFxStep(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII)V',
'    .registers 16',
'',
'    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;',
'    if-eqz v0, :cond_12',
'    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z',
'    if-eqz v0, :cond_12',
'    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;',
'    if-eqz v0, :cond_13',
'    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z',
'    move-result v0',
'    if-eqz v0, :cond_13',
'    :cond_12',
'    return-void',
'',
'    :cond_13',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDt()V',
'    sget-wide v9, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxFrameDtMs:J',
'    long-to-float v8, v9',
'',
'    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    const/4 v0, 0x2',
'    if-ne v7, v0, :msgo',
'    return-void',
'',
'    :msgo',
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J',
'    move-result-wide v9',
'    iput-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxStepMs:J',
'',
'    # r6d255: pure pursuit step = msSpd() / (playSpeedTIME/HOURS_PER_TURN) * dt',
'    const/16 v0, 0x12c',
'    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;',
'    if-eqz v6, :mph_keep',
'    iget v0, v6, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I',
'    if-gtz v0, :mph_keep',
'    const/16 v0, 0x12c',
'    :mph_keep',
'    const/4 v1, 0x1',
'    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I',
'    if-gtz v2, :hpt_keep',
'    move v1, v2',
'    :hpt_keep',
'    int-to-float v0, v0',
'    int-to-float v1, v1',
'    div-float v0, v0, v1',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->msSpd()F',
'    move-result v1',
'    div-float v1, v1, v0',
'    mul-float v1, v1, v8',
'',
'    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F',
'    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F',
'    int-to-float v2, p1',
'    int-to-float v3, p2',
'    if-nez v7, :pp_go',
'    move v4, v2',
'    move v5, v3',
'    const/4 v7, 0x1',
'    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    const/4 v7, 0x0',
'    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I',
'    const/16 v7, 0xf',
'    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I',
'    :pp_go',
'    int-to-float v2, p3',
'    int-to-float v3, p4',
'    sub-float v2, v2, v4',
'    sub-float v3, v3, v5',
'    mul-float v8, v2, v2',
'    mul-float v7, v3, v3',
'    add-float v8, v8, v7',
'    float-to-double v9, v8',
'    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D',
'    move-result-wide v9',
'    double-to-float v8, v9',
'',
'    const/high16 v7, 0x0',
'    cmpl-float v10, v8, v7',
'    if-eqz v10, :msc',
'    move v7, v1',
'    cmpl-float v9, v8, v1',
'    if-gtz v9, :st_ok',
'    move v7, v8',
'    :st_ok',
'    div-float v2, v2, v8',
'    mul-float v2, v2, v7',
'    add-float v4, v4, v2',
'    div-float v3, v3, v8',
'    mul-float v3, v3, v7',
'    add-float v5, v5, v3',
'    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F',
'    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F',
'    invoke-static {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V',
'    cmpl-float v9, v7, v8',
'    if-eqz v9, :msc',
'    return-void',
'',
'    :msc',
'    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V',
'    return-void',
'.end method']) + NL
d = pat.sub(newstep, d, count=1)
seg = d[d.index('.method private static msFxStep'):]
seg = seg[:seg.index('.end method')]
assert len(re.findall(r'\bv6\b', seg)) == 3, ('A v6 refs', re.findall(r'\bv6\b', seg))
assert seg.count('msFxContact') == 1
print('A OK: msFxStep register-hygiene (v6 object-only)')

# =====================================================================
# B) adFxStep register moves
# =====================================================================
i0 = d.index('.method private static adFxStep')
i1 = d.index('.end method', i0)
seg = d[i0:i1]
repls = [
 ('    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I',
  '    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I'),
 ('    if-nez v6, :pp_go', '    if-nez v7, :pp_go'),
 ('    const/4 v6, 0x1' + NL + '    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I',
  '    const/4 v7, 0x1' + NL + '    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I'),
 ('    const/4 v6, 0x0' + NL + '    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I',
  '    const/4 v7, 0x0' + NL + '    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I'),
 ('    const/16 v6, 0xf' + NL + '    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTH:I',
  '    const/16 v7, 0xf' + NL + '    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTH:I'),
 ('    mul-float v6, v2, v2', '    mul-float v8, v2, v2'),
 ('    add-float v6, v6, v7', '    add-float v8, v8, v7'),
 ('    float-to-double v9, v6', '    float-to-double v9, v8'),
 ('    double-to-float v6, v9', '    double-to-float v8, v9'),
 ('    cmpl-float v9, v6, v1', '    cmpl-float v9, v8, v1'),
 ('    move v7, v6', '    move v7, v8'),
 ('    div-float v2, v2, v6', '    div-float v2, v2, v8'),
 ('    div-float v3, v3, v6', '    div-float v3, v3, v8'),
 ('    cmpl-float v9, v7, v6', '    cmpl-float v9, v7, v8'),
]
for a, b in repls:
    c = seg.count(a)
    assert c == 1, ('B', a[:50], c)
    seg = seg.replace(a, b, 1)
left = len(re.findall(r'\bv6\b', seg))
assert left == 3, ('B v6 leftover', left)
d = d[:i0] + seg + d[i1:]
print('B OK: adFxStep v6 object-only')

open(PDA, 'w', encoding='utf-8').write(d)

# =====================================================================
# C) msFxContact cleanup uses v1 (v0 object-only)
# =====================================================================
s = open(PDM, encoding='utf-8').read()
oldc = NL.join([
'    :cleanup',
'    const/4 v0, 0x0',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F',
'    const-wide/16 v6, 0x0',
'    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    const/4 v0, 0x2',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I'])
newc = NL.join([
'    :cleanup',
'    const/4 v1, 0x0',
'    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I',
'    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F',
'    const-wide/16 v6, 0x0',
'    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    const/4 v1, 0x2',
'    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I'])
c = s.count(oldc)
assert c == 1, ('C cleanup anchor', c)
s = s.replace(oldc, newc, 1)
hm = s[s.index('.method public static msFxContact'):]
hm = hm[:hm.index('.end method')]
assert 'iput v0' not in hm and 'const/4 v0' not in hm, 'C v0 numeric leftover'
open(PDM, 'w', encoding='utf-8').write(s)
print('C OK: msFxContact cleanup off v0')
print('RG FIX ALL OK')