#!/usr/bin/env python3
# r6d255: A2A (air-to-air) missiles -> pure pursuit + contact damage + dual-mode fallback
#         + speed hook (AirDefense.msSpd) + contact helper (AirMission.msFxContact)
# All new code comments are ASCII on purpose (transfer safety).
import re, sys, os, shutil

W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
NL = chr(10)

def rd(p): return open(p, encoding='utf-8').read()
def bk(p):
    b = p + '.pre_r6d255'
    if not os.path.exists(b):
        shutil.copy2(p, b)

# =====================================================================
# A) AirMission: add field  msFxStepMs:J  (last fx step timestamp)
# =====================================================================
s = rd(PDM)
if '.field public msFxStepMs:J' not in s:
    old_f = ('.field public msFxDbgMs:J' + NL + NL
             + '.field public msFxInit:I')
    c = s.count(old_f)
    assert c == 1, ('A field anchor', c)
    s = s.replace(old_f,
                  '.field public msFxDbgMs:J' + NL + NL
                  + '.field public msFxStepMs:J' + NL + NL
                  + '.field public msFxInit:I', 1)
assert s.count('.field public msFxStepMs:J') == 1
print('A OK: field msFxStepMs:J')

# =====================================================================
# B) AirMission: insert msFxContact(AirMission)V  before pickupAirDivision
# =====================================================================
assert 'msFxContact' not in s
helper = (NL.join([
'.method public static msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V',
'    .registers 13',
'',
'    # r6d255: A2A contact resolution (pure pursuit + contact damage).',
'    # Called from ProvinceDrawArmy.msFxStep when the missile reaches the target.',
'    if-eqz p0, :done',
'',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
'    move-result-object v0',
'    if-eqz v0, :cleanup',
'    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;',
'    if-eqz v0, :cleanup',
'    const/4 v1, 0x0',
'    const/4 v2, 0x0',
'    :loop',
'    invoke-interface {v0}, Ljava/util/List;->size()I',
'    move-result v3',
'    if-ge v1, v3, :found',
'    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;',
'    move-result-object v4',
'    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;',
'    if-eqz v4, :next',
'    iget-wide v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J',
'    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    cmp-long v10, v6, v8',
'    if-nez v10, :next',
'    move-object v2, v4',
'    goto :found',
'    :next',
'    add-int/lit8 v1, v1, 0x1',
'    goto :loop',
'    :found',
'    if-eqz v2, :cleanup',
'    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;',
'    if-eqz v4, :cleanup',
'    invoke-interface {v4}, Ljava/util/List;->size()I',
'    move-result v3',
'    if-lez v3, :cleanup',
'    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;',
'    if-eqz v4, :cleanup',
'    invoke-interface {v4}, Ljava/util/List;->size()I',
'    move-result v3',
'    if-lez v3, :cleanup',
'    const/4 v1, 0x0',
'    const/high16 v5, 0x0',
'    :sum',
'    invoke-interface {v4}, Ljava/util/List;->size()I',
'    move-result v3',
'    if-ge v1, v3, :sum_end',
'    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;',
'    move-result-object v10',
'    check-cast v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;',
'    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F',
'    add-float/2addr v5, v11',
'    add-int/lit8 v1, v1, 0x1',
'    goto :sum',
'    :sum_end',
'    const/high16 v3, 0x0',
'    cmpl-float v6, v5, v3',
'    if-lez v6, :cleanup',
'    const/high16 v3, 0x40000000',
'    mul-float/2addr v5, v3',
'    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F',
'    move-result v3',
'    mul-float/2addr v5, v3',
'    invoke-direct {p0, v2, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V',
'    new-instance v10, Ljava/lang/StringBuilder;',
'    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V',
'    const-string v11, "nMS hit t="',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    const-string v11, " h="',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I',
'    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
'    move-result-object v10',
'    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
'    :cleanup',
'    const/4 v0, 0x0',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F',
'    const-wide/16 v6, 0x0',
'    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    const/4 v0, 0x2',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    :done',
'    return-void',
'.end method']))
anchor = NL + NL + '.method private pickupAirDivision()V'
c = s.count(anchor)
assert c == 1, ('B helper anchor', c)
s = s.replace(anchor, NL + NL + helper + NL + NL + '.method private pickupAirDivision()V', 1)
assert s.count('.method public static msFxContact') == 1
hm = s[s.index('.method public static msFxContact'):]
hm = hm[:hm.index('.end method')]
assert hm.count('"nMS hit t="') == 1 and hm.count('applyAirDamage') == 1
assert hm.count('strikeKind:I') >= 1 and hm.count('msFxInit:I') >= 1
assert hm.index('applyAirDamage') < hm.index('"nMS hit t="') < hm.index('strikeKind:I')
print('B OK: msFxContact inserted (hit-log=1 dmg-call=1 cleanup=ok)')

# =====================================================================
# C) AirMission: replace missileTick in-flight block (strikeKind==1)
# =====================================================================
t0 = s.index('.method private missileTick()V')
t1 = s.index('.end method', t0)
mt = s[t0:t1]
key = 'if-ne v0, v1, :cond_d6'
a = mt.index(key) + len(key)
nl_after = mt.index(NL, a) + 1
label_pos = mt.index(':cond_d6', nl_after)
line_start = mt.rindex(NL, 0, label_pos) + 1
old_mid = mt[nl_after:line_start]
assert 'nMS hit t=' in old_mid and 'nMS miss t=' in old_mid and 'goto_cc' in old_mid, 'C old block markers'
assert 'cond_d6' not in old_mid, 'C old block must not contain cond_d6'
block = (NL.join([
'    # r6d255: in-flight mode -- target-lost cleanup + dual-mode fallback.',
'    # Damage is now resolved on CONTACT (ProvinceDrawArmy.msFxStep -> msFxContact).',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
'    move-result-object v3',
'    if-eqz v3, :msl_lost',
'    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;',
'    if-eqz v4, :msl_lost',
'    const/4 v1, 0x0',
'    const/4 v5, 0x0',
'    :msl_loop',
'    invoke-interface {v4}, Ljava/util/List;->size()I',
'    move-result v6',
'    if-ge v5, v6, :msl_found',
'    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;',
'    move-result-object v6',
'    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;',
'    if-eqz v6, :msl_next',
'    iget-wide v7, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J',
'    iget-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    cmp-long v11, v7, v9',
'    if-nez v11, :msl_next',
'    move-object v1, v6',
'    goto :msl_found',
'    :msl_next',
'    add-int/lit8 v5, v5, 0x1',
'    goto :msl_loop',
'    :msl_found',
'    if-eqz v1, :msl_lost',
'    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;',
'    if-eqz v3, :msl_lost',
'    invoke-interface {v3}, Ljava/util/List;->size()I',
'    move-result v4',
'    if-lez v4, :msl_lost',
'    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I',
'    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I',
'    mul-int/lit8 v0, v0, 0x18',
'    add-int/2addr v0, v2',
'    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I',
'    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I',
'    if-gtz v3, :msl_f1',
'    const/4 v3, 0x2',
'    :msl_f1',
'    add-int/2addr v2, v3',
'    add-int/lit8 v3, v2, 0xc',
'    if-ge v0, v3, :msl_f2',
'    return-void',
'    :msl_f2',
'    add-int/lit8 v3, v2, 0x30',
'    if-ge v0, v3, :msl_fb',
'    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxStepMs:J',
'    const-wide/16 v8, 0x0',
'    cmp-long v10, v6, v8',
'    if-lez v10, :msl_fb',
'    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J',
'    move-result-wide v4',
'    sub-long v4, v4, v6',
'    const-wide/16 v6, 0x2710',
'    cmp-long v8, v4, v6',
'    if-gez v8, :msl_fb',
'    return-void',
'    :msl_fb',
'    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;',
'    if-eqz v3, :msl_clean',
'    const/4 v4, 0x0',
'    const/high16 v5, 0x0',
'    :msl_sum',
'    invoke-interface {v3}, Ljava/util/List;->size()I',
'    move-result v12',
'    if-ge v4, v12, :msl_sum2',
'    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;',
'    move-result-object v13',
'    check-cast v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;',
'    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F',
'    add-float/2addr v5, v13',
'    add-int/lit8 v4, v4, 0x1',
'    goto :msl_sum',
'    :msl_sum2',
'    const/high16 v8, 0x0',
'    cmpl-float v9, v5, v8',
'    if-lez v9, :msl_clean',
'    const/high16 v8, 0x40000000',
'    mul-float/2addr v5, v8',
'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F',
'    move-result v8',
'    mul-float/2addr v5, v8',
'    invoke-direct {p0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V',
'    new-instance v8, Ljava/lang/StringBuilder;',
'    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V',
'    const-string v9, "nMS fb t="',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    const-string v9, " h="',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
'    move-result-object v8',
'    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
'    goto :msl_clean',
'    :msl_lost',
'    new-instance v8, Ljava/lang/StringBuilder;',
'    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V',
'    const-string v9, "nMS lost t="',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    const-string v9, " h="',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
'    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I',
'    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
'    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
'    move-result-object v8',
'    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
'    :msl_clean',
'    const/4 v0, 0x0',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F',
'    const-wide/16 v0, 0x0',
'    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J',
'    const/4 v0, 0x2',
'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    return-void']))
mt2 = mt[:nl_after] + NL + block + NL + NL + mt[line_start:]
assert 'if-ne v0, v1, :cond_d6' in mt2
assert mt2.count('"nMS lost t="') == 1 and mt2.count('"nMS fb t="') == 1
assert mt2.count('"nMS miss t="') == 0 and mt2.count('"nMS hit t="') == 0
# label ref/def sanity for the whole new method text
defs = set(re.findall(r'(?m)^[ \t]*:([A-Za-z0-9_]+)[ \t]*$', mt2))
refs = set(re.findall(r'(?:goto|if-[a-z]+)[^:]*(?::)([A-Za-z0-9_]+)', mt2))
miss = {r for r in refs if r not in defs}
assert not miss, ('C dangling labels', miss)
s = s[:t0] + mt2 + s[t1:]
print('C OK: missileTick in-flight block replaced (lost=1 fb=1 old-hit=0)')

# =====================================================================
# D) ProvinceDrawArmy: replace msFxStep whole method -> pure pursuit + contact
# =====================================================================
d = rd(PDA)
pat = re.compile(r'\.method private static msFxStep\(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII\)V\n.*?\n\.end method\n', re.S)
ms = pat.findall(d)
assert len(ms) == 1, ('D method count', len(ms))
old = ms[0]
for marker in ('msFxSpd', '0x3f666666', 'lastMissileMs', 'msFxTrailAdd'):
    assert marker in old, ('D old marker', marker)
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
'    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    const/4 v1, 0x2',
'    if-ne v0, v1, :msgo',
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
'    const/4 v2, 0x1',
'    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I',
'    if-gtz v3, :hpt_keep',
'    move v2, v3',
'    :hpt_keep',
'    int-to-float v0, v0',
'    int-to-float v1, v2',
'    div-float v0, v0, v1',
'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->msSpd()F',
'    move-result v1',
'    div-float v1, v1, v0',
'    mul-float v1, v1, v8',
'',
'    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F',
'    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F',
'    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    int-to-float v2, p1',
'    int-to-float v3, p2',
'    if-nez v6, :pp_go',
'    move v4, v2',
'    move v5, v3',
'    const/4 v6, 0x1',
'    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I',
'    const/4 v6, 0x0',
'    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I',
'    const/16 v6, 0xf',
'    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I',
'    :pp_go',
'    int-to-float v2, p3',
'    int-to-float v3, p4',
'    sub-float v2, v2, v4',
'    sub-float v3, v3, v5',
'    mul-float v6, v2, v2',
'    mul-float v7, v3, v3',
'    add-float v6, v6, v7',
'    float-to-double v9, v6',
'    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D',
'    move-result-wide v9',
'    double-to-float v6, v9',
'',
'    const/high16 v7, 0x0',
'    cmpl-float v10, v6, v7',
'    if-eqz v10, :msc',
'    move v7, v1',
'    cmpl-float v9, v6, v1',
'    if-gtz v9, :st_ok',
'    move v7, v6',
'    :st_ok',
'    div-float v2, v2, v6',
'    mul-float v2, v2, v7',
'    add-float v4, v4, v2',
'    div-float v3, v3, v6',
'    mul-float v3, v3, v7',
'    add-float v5, v5, v3',
'    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F',
'    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F',
'    invoke-static {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->msFxTrailAdd(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)V',
'    cmpl-float v9, v7, v6',
'    if-eqz v9, :msc',
'    return-void',
'',
'    :msc',
'    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V',
'    return-void',
'.end method']) + NL
d2 = pat.sub(newstep, d, count=1)
seg = d2[d2.index('.method private static msFxStep'):]
seg = seg[:seg.index('.end method')]
assert seg.count('msSpd()F') == 1
assert seg.count('msFxContact') == 1
assert seg.count('if-eqz v10, :msc') == 1 and seg.count('if-eqz v9, :msc') == 1
assert seg.count('msFxStepMs') == 1
assert seg.count('0x3f666666') == 0 and seg.count('msFxSpd') == 0
print('D OK: msFxStep replaced (msspd=1 contact=2 stamp=1 old=0)')

# =====================================================================
# E) AirDefense: append speed getters (TECH-HOOK)
# =====================================================================
e = rd(PAD)
assert 'msSpd' not in e and 'adSpd' not in e
if not e.endswith(NL):
    e += NL
getters = NL.join([
'',
'',
'.method public static msSpd()F',
'    .registers 1',
'',
'    # r6d255 TECH-HOOK: A2A missile base speed (px per gamehour).',
'    # The tech tree update will replace this body (single point of truth).',
'    const v0, 0x42870000',
'',
'    return v0',
'.end method',
'',
'.method public static adSpd()F',
'    .registers 1',
'',
'    # r6d255 TECH-HOOK: AD missile base speed (px per gamehour).',
'    # The tech tree update will replace this body (single point of truth).',
'    const v0, 0x42870000',
'',
'    return v0',
'.end method',
''])
e = e + getters
open(PAD, 'w', encoding='utf-8').write(e)
print('E OK: msSpd/adSpd getters appended')

# =====================================================================
# F) nABOOT bump
# =====================================================================
dd = rd(PDD)
c = dd.count('nABOOT v=r6d254')
assert c == 1, ('F nABOOT', c)
dd = dd.replace('nABOOT v=r6d254', 'nABOOT v=r6d255', 1)
open(PDD, 'w', encoding='utf-8').write(dd)
print('F OK: nABOOT v=r6d255')

# =====================================================================
# write A/B/C/D (AirMission + ProvinceDrawArmy)
# =====================================================================
bk(PDM); bk(PDA)
open(PDM, 'w', encoding='utf-8').write(s)
open(PDA, 'w', encoding='utf-8').write(d2)
print('WROTE: AirMission.smali + ProvinceDrawArmy.smali (+AirDefense, AirDefDiag)')
print('ALL CHECKS PASSED')
