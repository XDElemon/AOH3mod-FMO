# -*- coding: utf-8 -*-
# R4c197：巡炸模式（mode=rove）+ 记忆系统修复（会话重置 / 起步预热扫描 / 越界脏pid剔除）
import io, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ---------------------------------------------------------------- ① 新字段
F_OLD = '.field public static cfgTick:I\n'
F_NEW = ('.field public static cfgTick:I\n'
         '.field public static roveTurn:I\n'
         '.field public static roveWarmLeft:I\n'
         '.field public static roveSession:I\n'
         '.field public static roveEvery:I\n'
         '.field public static rovePerAirport:I\n'
         '.field public static roveWarmTurns:I\n'
         '.field public static roveLastHit:Ljava/util/HashMap;\n')
rep1(F_OLD, F_NEW, 'fields')

# ---------------------------------------------------------------- ② cfgExtractInt
CFG_INT = '''.method public static cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    # R4c197：读 "键名": 整数（失败返回 p2 默认值）
    # 引用池 v0..v5 / 整数池 v6..v10
    if-nez p0, :cei_def
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v2
    if-gez v2, :cei_def
    const-string v1, ":"
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    move-result v3
    if-gez v3, :cei_def
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    move-result v4
    add-int/lit8 v5, v3, 0x1
    :cei_ws
    if-ge v5, v4, :cei_num
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x20
    if-ne v6, v7, :cei_tab
    add-int/lit8 v5, v5, 0x1
    goto :cei_ws
    :cei_tab
    const/16 v7, 0x9
    if-ne v6, v7, :cei_num
    add-int/lit8 v5, v5, 0x1
    goto :cei_ws
    :cei_num
    const/4 v8, 0x0
    const/4 v9, 0x0
    const/4 v10, 0x0
    if-ge v5, v4, :cei_end
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x2d
    if-ne v6, v7, :cei_loop
    const/4 v8, 0x1
    add-int/lit8 v5, v5, 0x1
    :cei_loop
    if-ge v5, v4, :cei_end
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
    move-result v6
    const/16 v7, 0x30
    if-lt v6, v7, :cei_end
    const/16 v7, 0x39
    if-gt v6, v7, :cei_end
    mul-int/lit8 v9, v9, 0xa
    add-int/lit8 v6, v6, -0x30
    add-int/2addr v9, v6
    add-int/lit8 v10, v10, 0x1
    add-int/lit8 v5, v5, 0x1
    goto :cei_loop
    :cei_end
    if-eqz v10, :cei_def
    if-nez v8, :cei_ret
    neg-int v9, v9
    :cei_ret
    return v9
    :cei_def
    return p2
.end method
'''
rep1('.method public static cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;\n',
     CFG_INT + '.method public static cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;\n',
     'cfgExtractInt')

# ---------------------------------------------------------------- ③ 巡炸四件套
ROVE = '''.method public static roveReset()V
    .registers 4
    # R4c197：会话切换 → 清空自建记忆 + 重开预热
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v0, :rr_a
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :rr_a
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;
    if-eqz v0, :rr_b
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :rr_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :rr_c
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :rr_c
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilKnown:Ljava/util/HashSet;
    if-eqz v0, :rr_d
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :rr_d
    new-instance v0, Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveLastHit:Ljava/util/HashMap;
    const/4 v0, 0x0
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveTurn:I
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmTurns:I
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmLeft:I
    return-void
.end method

.method public static roveWarmScan()V
    .registers 14
    # R4c197：会话起步兜底扫描（只加不减）+ 剔除越界脏 pid
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-nez v11, :rws_have
    new-instance v11, Ljava/util/HashSet;
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V
    sput-object v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    :rws_have
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    if-eqz v0, :rws_ret
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v1
    const/4 v2, 0x0
    :rws_loop
    if-ge v2, v1, :rws_prune
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;
    if-eqz v3, :rws_next
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v4, :rws_next
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v5
    const/4 v6, 0x0
    :rws_bloop
    if-ge v6, v5, :rws_next
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v7, :rws_bnext
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v8
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isMilIdx(I)Z
    move-result v9
    if-eqz v9, :rws_bnext
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I
    move-result v10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v12
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    goto :rws_next
    :rws_bnext
    add-int/lit8 v6, v6, 0x1
    goto :rws_bloop
    :rws_next
    add-int/lit8 v2, v2, 0x1
    goto :rws_loop
    :rws_prune
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    move-result-object v13
    :rws_ploop
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    move-result v9
    if-eqz v9, :rws_ret
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    move-result v8
    if-ltz v8, :rws_p_hi
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V
    goto :rws_ploop
    :rws_p_hi
    if-ge v8, v1, :rws_ploop
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V
    goto :rws_ploop
    :rws_ret
    return-void
.end method

.method private rovePickTarget(Laoc/kingdoms/lukasz/map/battles/Airport;)I
    .registers 16
    # R4c197：挑"最久没被炸"的目标（afMilReal ∪ cfgPin，排除自己人的省）
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {p0, p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;
    move-result-object v0
    if-nez v0, :rp_none
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    move-result v7
    if-eqz v7, :rp_none
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-nez v6, :rp_none
    iget v11, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v1
    const/4 v12, -0x1
    const v13, 0x7fffffff
    :rp_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :rp_end
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    move-result v9
    if-ltz v9, :rp_next
    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    if-ne v9, v7, :rp_next
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v3, :rp_pin
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :rp_civ
    :rp_pin
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;
    if-eqz v3, :rp_next
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :rp_next
    :rp_civ
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v4
    if-eqz v4, :rp_next
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I
    move-result v7
    if-ne v7, v11, :rp_next
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveLastHit:Ljava/util/HashMap;
    const/4 v7, -0x1
    if-eqz v5, :rp_cmp
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :rp_cmp
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Ljava/lang/Integer;
    if-eqz v8, :rp_cmp
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    move-result v7
    :rp_cmp
    if-ge v7, v13, :rp_loop
    move v13, v7
    move v12, v9
    goto :rp_loop
    :rp_next
    goto :rp_loop
    :rp_end
    return v12
    :rp_none
    const/4 v12, -0x1
    return v12
.end method

.method private roveDispatchOnce(Laoc/kingdoms/lukasz/map/battles/Airport;)Z
    .registers 16
    # R4c197：对一个机场做一次巡炸派发（true=已派）
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :rd_false
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePickTarget(Laoc/kingdoms/lukasz/map/battles/Airport;)I
    move-result v10
    if-ltz v10, :rd_false
    invoke-static {p1, v10, v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    move-result-object v2
    if-eqz v2, :rd_false
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;
    if-eqz v3, :rd_false
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    move-result v11
    if-eqz v11, :rd_skip
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    if-eqz v4, :rd_skip
    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v5, :rd_skip
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveLastHit:Ljava/util/HashMap;
    if-eqz v4, :rd_ok
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveTurn:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v7
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :rd_ok
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "nRV ap="
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v11, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " tgt="
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " ok"
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    const-string v0, "AIRDBG"
    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v11, 0x1
    return v11
    :rd_skip
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "nRV ap="
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v11, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " tgt="
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v0, " skip=no-aircraft"
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    const-string v0, "AIRDBG"
    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v11, 0x0
    return v11
    :rd_false
    const/4 v11, 0x0
    return v11
.end method

.method private roveTick(I)V
    .registers 13
    # R4c197：巡炸主入口（每回合；仅玩家文明；仅 mode=rove）
    :rt_start
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v3, :rt_ret
    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne v4, p1, :rt_ret
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->loadStrikeConfig()V
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I
    const/4 v6, 0x3
    if-ne v5, v6, :rt_ret
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    if-eqz v0, :rt_ret
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v5
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveSession:I
    if-ne v5, v6, :rt_sess
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveSession:I
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveReset()V
    :rt_sess
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmLeft:I
    if-lez v5, :rt_nwarm
    add-int/lit8 v5, v5, -0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmLeft:I
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmScan()V
    :rt_nwarm
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveTurn:I
    add-int/lit8 v5, v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveTurn:I
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveEvery:I
    if-lez v6, :rt_ev
    const/4 v6, 0x1
    :rt_ev
    rem-int v7, v5, v6
    if-nez v7, :rt_ret
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :rt_ret
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v8
    const/4 v9, 0x0
    :rt_aloop
    if-ge v9, v8, :rt_ret
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v2, :rt_anext
    iget-object v0, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;
    if-ne v0, v3, :rt_anext
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePerAirport:I
    const/4 v6, 0x0
    :rt_rloop
    if-ge v6, v7, :rt_anext
    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveDispatchOnce(Laoc/kingdoms/lukasz/map/battles/Airport;)Z
    move-result v5
    if-eqz v5, :rt_anext
    add-int/lit8 v6, v6, 0x1
    goto :rt_rloop
    :rt_anext
    add-int/lit8 v9, v9, 0x1
    goto :rt_aloop
    :rt_end
    :rt_ret
    return-void
    :rt_catch
    move-exception v10
    goto :rt_ret
    .catch Ljava/lang/Throwable; {:rt_start .. :rt_end} :rt_catch
.end method

'''
rep1('.method public static dbgCand(II)V\n', ROVE + '.method public static dbgCand(II)V\n', 'rove methods')

# ---------------------------------------------------------------- ④ 配置：mode=rove
rep1('    const-string v12, "list_only"\n',
     '    const-string v12, "rove"\n'
     '    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z\n'
     '    move-result v6\n'
     '    if-eqz v6, :lc_rvs\n'
     '    const/4 v6, 0x3\n'
     '    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I\n'
     '    goto :lc_lists\n'
     '    :lc_rvs\n'
     '    const-string v12, "list_only"\n',
     'cfg mode rove')

# ---------------------------------------------------------------- ⑤ 配置：三个整数
rep1('    :lc_done\n',
     '    const-string v12, "rove_every"\n'
     '    const/4 v13, 0x1\n'
     '    invoke-static {v11, v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
     '    move-result v6\n'
     '    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveEvery:I\n'
     '    const-string v12, "rove_per_airport"\n'
     '    const/4 v13, 0x1\n'
     '    invoke-static {v11, v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
     '    move-result v6\n'
     '    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePerAirport:I\n'
     '    const-string v12, "warm_turns"\n'
     '    const/4 v13, 0x3\n'
     '    invoke-static {v11, v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
     '    move-result v6\n'
     '    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmTurns:I\n'
     '    const-string v12, "AIRDBG"\n'
     '    new-instance v10, Ljava/lang/StringBuilder;\n'
     '    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V\n'
     '    const-string v13, "nRVC ev="\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveEvery:I\n'
     '    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v13, " pa="\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rovePerAirport:I\n'
     '    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    const-string v13, " wm="\n'
     '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
     '    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveWarmTurns:I\n'
     '    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
     '    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
     '    move-result-object v13\n'
     '    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgDummyUnused()V\n'
     '    :lc_done\n',
     'cfg ints')

# 上面误写了 dbgDummyUnused，改回 dKey（避免锚点重复，单独替换）
src = src.replace('    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgDummyUnused()V\n',
                  '    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n', 1)
print('OK cfg log')

# ---------------------------------------------------------------- ⑥ 挂钩 updateOffensives
lines = src.split('\n')
s = None
for i, L in enumerate(lines):
    if L.strip() == '.method public updateOffensives(I)V':
        s = i
        break
assert s is not None, 'updateOffensives not found'
e = None
for j in range(s + 1, len(lines)):
    if lines[j].strip() == '.end method':
        e = j
        break
assert e is not None
rv = None
for j in range(e - 1, s, -1):
    if lines[j].strip() == 'return-void':
        rv = j
        break
assert rv is not None
lines.insert(rv, '    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->roveTick(I)V')
src = '\n'.join(lines)
print('OK hook updateOffensives (line %d)' % (rv + 1))

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))
