# -*- coding: utf-8 -*-
# R4c198：巡炸全路径探针（只加日志，不改逻辑）
# 统一日志：nRT k=<kind> ap=<机场省> in=<附加> cand=<候选数>
# kind: 1=进入  2=mode不对  4=机场数(-1=null)  5=机场非OFFENSIVE  6=无空闲师  7=挑不到目标
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ---------------------------------------------------------------- ① 三个静态字段
rep1('.field public static roveLastHit:Ljava/util/HashMap;\n',
     '.field public static roveLastHit:Ljava/util/HashMap;\n'
     '.field public static rtAp:I\n'
     '.field public static rtIn:I\n'
     '.field public static rtCand:I\n',
     'fields')

# ---------------------------------------------------------------- ② rtLog(I)V
RTLOG = '''.method public static rtLog(I)V
    .registers 6
    # R4c198：统一巡炸探针 nRT k=<p0> ap=<rtAp> in=<rtIn> cand=<rtCand>
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "nRT k="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " ap="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtAp:I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " in="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " cand="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtCand:I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

'''
rep1('.method public static dbgCand(II)V\n', RTLOG + '.method public static dbgCand(II)V\n', 'rtLog')

# ---------------------------------------------------------------- ③ rovePickTarget：计数
rep1('''    .registers 16
    # R4c197：挑"最久没被炸"的目标（afMilReal ∪ cfgPin，排除自己人的省）
''',
     '''    .registers 16
    # R4c197：挑"最久没被炸"的目标（afMilReal ∪ cfgPin，排除自己人的省）
    const/4 v7, 0x0
    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtCand:I
    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
''', 'pick reset')

rep1('''    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    move-result v7
    if-eqz v7, :rp_none
''',
     '''    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    move-result v7
    if-eqz v7, :rp_none
    invoke-interface {v0}, Ljava/util/Set;->size()I
    move-result v7
    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
''', 'pick rtIn')

rep1('''    :rp_civ
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
''',
     '''    :rp_civ
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtCand:I
    add-int/lit8 v7, v7, 0x1
    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtCand:I
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
''', 'pick cand')

# ---------------------------------------------------------------- ④ roveDispatchOnce：两个静默出口
rep1('''    move-result-object v1
    if-nez v1, :rd_false
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePickTarget(Laoc/kingdoms/lukasz/map/battles/Airport;)I
    move-result v10
    if-ltz v10, :rd_false
''',
     '''    move-result-object v1
    if-nez v1, :rd_div_ok
    iget v12, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtAp:I
    const/4 v12, 0x6
    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    const/4 v12, 0x0
    return v12
    :rd_div_ok
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePickTarget(Laoc/kingdoms/lukasz/map/battles/Airport;)I
    move-result v10
    if-ltz v10, :rd_tgt_ok
    iget v12, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtAp:I
    const/4 v12, 0x7
    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    const/4 v12, 0x0
    return v12
    :rd_tgt_ok
''', 'dispatch probes')

# ---------------------------------------------------------------- ⑤ roveTick：入口 / mode / 机场数 / 非OFFENSIVE
rep1('''    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->loadStrikeConfig()V
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I
    const/4 v6, 0x3
    if-ne v5, v6, :rt_ret
''',
     '''    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->loadStrikeConfig()V
    const/4 v4, 0x1
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I
    const/4 v6, 0x3
    if-ne v5, v6, :rt_mode_ok
    const/4 v4, 0x2
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    return-void
    :rt_mode_ok
''', 'tick entry')

rep1('''    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :rt_ret
''',
     '''    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :rt_ap_ok
    const/4 v4, 0x4
    const/4 v5, -0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    return-void
    :rt_ap_ok
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v8
    const/4 v4, 0x4
    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtIn:I
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
''', 'tick airports')

rep1('''    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    if-ne v0, v3, :rt_anext
''',
     '''    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    if-eq v0, v3, :rt_off_ok
    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtAp:I
    const/4 v4, 0x5
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    goto :rt_anext
    :rt_off_ok
''', 'tick offmode')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))