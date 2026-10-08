.class public final Laoc/kingdoms/lukasz/map/battles/AirDefense;
.super Ljava/lang/Object;
.source "AirDefense.java"


# ============================================================================
# AD-1 防空阵地自动开火（v6 重写版，r6d141）
# 规格：r6s5/定稿_AD1_防空阵地自动开火_v6_重写版.md
# 仿真：r6s5/ad_sim_v6.py（14 组用例全过，逻辑以它为准）
#
# 与游戏对齐的三条硬口径：
#   ① 击落 = hp<=0 ⇒ target.recordLoss(unit)（出 aliveAircraft / 进 lostAircraft / 出机场）
#   ② 不写 isAlive / isShotDown / isInFlight（游戏战斗全程不碰）
#   ③ 伤害按游戏 applyAirDamage 的"池倾泻"模型：从 aliveAircraft[0] 起扣，溢出打下一架
# 探针：全部走 dWrite（aircfg_diag.txt，免 debug 闸、免 500ms 节流）
# ============================================================================

.field private static rnd:Ljava/util/Random;

# r6d171：每回合只结算一次（updateAll 每回合被调用 2 次）
.field private static lastTurn:I

.field public static hitSeen:I


# ---------------------------------------------------------------------------
# 空位：命中率（将来接科技/代差：defGen / tgtGen）
# ---------------------------------------------------------------------------
.method public static adHitChance(II)F
    .registers 4

    # r6d208：命中率（addmg.expected 行2）
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method


# ---------------------------------------------------------------------------
# 空位：每发伤害（将来接科技/代差）
# ---------------------------------------------------------------------------
.method public static adDamagePerHit(II)F
    .registers 4

    # r6d208：单发伤害（addmg.expected 行1）
    const v0, 0x42480000    # 50.0f

    return v0
.end method


# ---------------------------------------------------------------------------
# 懒初始化的随机源（不每发 new Random）
# ---------------------------------------------------------------------------
.method public static rng()Ljava/util/Random;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    if-nez v0, :have

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    :have

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    return-object v0
.end method


# ---------------------------------------------------------------------------
# 探针：nADT c=<civID>
# ---------------------------------------------------------------------------
.method private static logT(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADT c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


# ---------------------------------------------------------------------------
# 探针：nADX <异常>
# ---------------------------------------------------------------------------
.method private static logX(Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


# ---------------------------------------------------------------------------
# 探针：nAD p=<pid> n=<nad> t=<k> s=<nad> h=<hits> k=<kills>
# ---------------------------------------------------------------------------
.method private static logAD(IIIII)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nAD p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


# ---------------------------------------------------------------------------
# 本省反导阵地数量（= 本回合发射次数）
# 守卫：AAA id < 0 / pid < 0 / pid >= lProvinces.size() / 空列表
# ---------------------------------------------------------------------------
.method public static airDefenseAt(I)I
    .registers 10

    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    const/4 v1, 0x0

    if-ltz v2, :ret

    if-ltz p0, :ret

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v0, :ret

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :ret

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :ret

    iget-object v0, v3, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v0, :ret

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :loop

    if-ge v6, v5, :ret

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :next

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v8

    if-ne v8, v2, :next

    add-int/lit8 v1, v1, 0x1

    :next

    add-int/lit8 v6, v6, 0x1

    goto :loop

    :ret

    return v1
.end method


# ---------------------------------------------------------------------------
# 目标是否在射程内（同省必中；否则省中心距 <= 300px，含等号）
# a < 0 ⇒ 未部署（字段初值 -1）
# ---------------------------------------------------------------------------
.method public static inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 16

    if-eqz p0, :no

    if-eqz p1, :no

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v2, :no

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :yes

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v4, :no

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :no

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :no

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v7

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v8

    sub-int v9, v7, v8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v10

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v11

    sub-int v12, v10, v11

    # --- r6d182 D2 同省"阵地+雷达" ⇒ R 300→450（不叠加、不设上限）；D3 判定走 AirLat 同口径 ---
    # v3 = p1.getProvinceID()（274 行已算，278 行后未再用）；v4/v5 在 288 行后已死 ⇒ 复用为 temp
    const/16 v13, 0x64    # 100（base）

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v5

    if-eqz v5, :d2_add
    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v5

    if-nez v5, :d2_done
    :d2_add
    const/16 v13, 0x82    # 130（base ×1.30，与判定同源）

    :d2_done
    # dx=v9  dy=v12  R=v13  y=v10（开火省中心 Y，与渲染同口径）
    invoke-static {v9, v12, v13, v10}, Laoc/kingdoms/lukasz/map/battles/AirLat;->hit(IIII)Z

    move-result v0

    if-eqz v0, :no

    :yes

    const/4 v0, 0x1

    return v0

    :no

    const/4 v0, 0x0

    return v0
.end method


# ---------------------------------------------------------------------------
# 可打目标：非空 / 敌方 / 还有活飞机 / 在射程内
# ---------------------------------------------------------------------------
.method public static eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 9    # r6d199：交战门需要 1 个临时寄存器（原 8 已用满，按需上调）

    const/4 v0, 0x0

    if-eqz p0, :no

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v1, p1, :no

    # r6d199：★交战门——只有"开火方 civ(p1) 与目标 civ(v1) 处于战争状态"才允许开火
    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :no

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :no

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :no

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v4

    if-eqz v4, :no

    const/4 v0, 0x1

    :no

    return v0
.end method


# ---------------------------------------------------------------------------
# 本省射程内的合格敌任务数
# ---------------------------------------------------------------------------
.method public static countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I
    .registers 9

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :ret

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :ret

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :loop

    if-ge v4, v3, :ret

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v5, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v6

    if-eqz v6, :next

    add-int/lit8 v1, v1, 0x1

    :next

    add-int/lit8 v4, v4, 0x1

    goto :loop

    :ret

    return v1
.end method


# ---------------------------------------------------------------------------
# 取第 idx 个合格敌任务（idx 由调用方轮转：s % k）
# ---------------------------------------------------------------------------
.method public static pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 12

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :none

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v3, :none

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :loop

    if-ge v5, v4, :none

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v6, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v7

    if-eqz v7, :next

    if-eq v1, p2, :found

    add-int/lit8 v1, v1, 0x1

    goto :next

    :found

    return-object v6

    :next

    add-int/lit8 v5, v5, 0x1

    goto :loop

    :none

    const/4 v8, 0x0

    return-object v8
.end method


# ---------------------------------------------------------------------------
# 伤害池倾泻（复刻 AirMission.applyAirDamage 的口径）
#   - hp<=0 收尸（recordLoss）不吃伤害
#   - 溢出伤害转移到下一架
#   - 每次 recordLoss 后列表若没变短 ⇒ i++ 防死循环
# 返回：本次造成击落数
# ---------------------------------------------------------------------------
.method public static applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I
    .registers 12

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz v6, :ret

    move v1, p1

    const/4 v2, 0x0

    :loop

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :end

    const/4 v9, 0x0

    cmpl-float v9, v1, v9

    if-lez v9, :end

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :next

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :dead

    cmpl-float v9, v1, v3

    if-ltz v9, :smaller

    move v4, v3

    goto :apply

    :smaller

    move v4, v1

    :apply

    sub-float v3, v3, v4

    iput v3, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float v1, v1, v4

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :kill

    goto :next

    :dead

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :next

    add-int/lit8 v0, v0, 0x1

    goto :loop

    :kill

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :next

    add-int/lit8 v0, v0, 0x1

    goto :loop

    :next

    add-int/lit8 v2, v2, 0x1

    goto :loop

    :end

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    :ret

    return v0
.end method


# ---------------------------------------------------------------------------
# 单省开火：发射次数 = 本省阵地数；靶位轮转（s % k）
# ---------------------------------------------------------------------------
.method public static fireProvince(III)I
    .registers 15

    if-lez p2, :zero

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :zero

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I

    move-result v1

    if-lez v1, :zero

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :sloop

    if-ge v2, p2, :done

    rem-int v6, v2, v1

    invoke-static {p0, v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :snext

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adHitChance(II)F

    move-result v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rng()Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v7

    cmpl-float v9, v7, v8

    invoke-static {p1, v8, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logHit(IFFI)V

    # r6d210：极性修正 —— roll<chance 才命中（原来写反，实际只剩 1-chance）
    if-gtz v9, :snext

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F

    move-result v10

    # r6d203：不再立即结算 —— 登记为"在途弹"，到期由 tickHits() 结算（镜像飞机导弹）

    # r6d206：记录发射阵地省（p1 = 省 id），供弹迹取源坐标
    iput p1, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V

    :snext

    add-int/lit8 v2, v2, 0x1

    goto :sloop

    :done

    invoke-static {p1, p2, v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logAD(IIIII)V

    return v1

    :zero

    const/4 v9, 0x0

    return v9
.end method


# ---------------------------------------------------------------------------
# 每回合遍历本国各省
# ---------------------------------------------------------------------------
.method public static tick(I)V
    .registers 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :ret

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v4, :ret

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :loop

    if-ge v3, v1, :done

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    if-ltz v5, :next

    if-ge v5, v2, :next

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v6

    if-lez v6, :next

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v6

    invoke-static {p0, v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v7

    if-lez v7, :next

    add-int/2addr v10, v7

    :next

    add-int/lit8 v3, v3, 0x1

    goto :loop

    :done

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->missionCount()I

    move-result v6

    invoke-static {p0, v8, v9, v10, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logADA(IIIII)V

    :ret

    return-void
.end method


# ---------------------------------------------------------------------------
# 每回合入口（自证 + 兜底：任何 Throwable 都被吃掉并写日志，绝不打断外层回合处理）
# ---------------------------------------------------------------------------
.method public static missionCount()I
    .registers 8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :ret

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :ret

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :loop

    if-ge v4, v3, :ret

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :next

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v6, :next

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :next

    add-int/lit8 v1, v1, 0x1

    :next

    add-int/lit8 v4, v4, 0x1

    goto :loop

    :ret

    return v1
.end method


# 探针：nADA c=<civ> pa=<有阵地的省数> ad=<阵地总数> tg=<射程内目标数合计> ms=<有活飞机的任务数> aid=<AAA 建筑 id>
.method private static logADA(IIIII)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nADA c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


.method public static tickSafe(I)V
    .registers 8

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logT(I)V

    :try_start_ad

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tick(I)V

    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_ad

    return-void

    :catch_ad

    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logX(Ljava/lang/Throwable;)V

    return-void
.end method


# ============================================================================
# r6d171 · AD-1′ 新增：每回合只结算一次的全局入口
#   tickTurn()：TURN_ID 守卫（updateAll 实测每回合被调用 2 次）+ Throwable 兜底
#   tickAll() ：遍历【所有】省份（不再按国家 ⇒ 没机场的国家也能开火）
# ============================================================================
# ============================================================
# r6d203：防空导弹"在途"登记（镜像飞机导弹 AirMission.missileTick 的口径）
#   now = Game_Calendar.TURN_ID + Game_Calendar.HOUR
#   adHitAt = now + (flyTurns>0 ? Game.HOURS_PER_TURN : 0)   ← 有飞行时间 ⇒ 下一回合到
#   adHitDmg += dmg                                          ← 同任务多发累加
# ============================================================
.method public static adDistHours(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    if-ltz v0, :fixed

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :fixed

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :fixed

    if-eqz v3, :fixed

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int v8, v4, v6

    sub-int v9, v5, v7

    if-gez v8, :ax

    neg-int v8, v8

    :ax
    if-gez v9, :ay

    neg-int v9, v9

    :ay
    add-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    # r6d251: flightH = euclid px * 0.8 (~75 px/s at speed5)

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    goto :ret

    :fixed
    const/16 v8, 0x0    # 兜底：固定 0 小时（addmg.expected 行3）

    :ret
    return v8
.end method

.method public static scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    .registers 8

    if-eqz p0, :done

    # now = TURN_ID + HOUR
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v0, v0, 0x18

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    # r6d243：记录发射时刻（游戏钟）
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I

    # r6d208：已有在途弹（adHitAt > now）⇒ 保留最早到达时刻，不得每发都顺延
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    if-gtz v2, :dmg

    # 无在途弹 ⇒ 排定到达：now + 延迟小时（addmg.expected 行3）
    # r6d227：按距离折算飞行时间（adDistHours：曼哈顿×3/4 ≈ 欧氏 ÷ 速度）
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDistHours(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1
    # r6d245：延迟下限 1 小时（回退；视觉减速改由配速 K 承担）
    const/16 v2, 0x4

    if-lt v1, v2, :dl_min
    goto :dl_ok
    :dl_min

    const/16 v1, 0x4
    :dl_ok

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I
    # r6d236：开窗启动弹迹（时间基准=发射瞬间；adFlyHours=2*距离小时，供 adFxStep 的 /2，clamp>=2）
    mul-int/lit8 v2, v1, 0x2
    if-gtz v2, :fh_ok
    const/16 v2, 0x2
    :fh_ok
    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I
    const/4 v2, 0x0
    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    :dmg
    # 累加伤害（同任务的多次命中合并成一次结算）
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    add-float v3, v3, p1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    # r6d236：弹迹启动已挪到“开窗”处（原来每发重置已删除）

    # 日志：nADF at=… dmg=…
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nADF at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dmg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v5, p1, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method


# ============================================================
# r6d203/r6d256: tickHits -- fog-fallback gate for AD in-flight hits (called once per turn before tickAll).
# ============================================================
.method public static tickHits()V
    .registers 16

    # r6d256: fog-fallback gate for AD in-flight hits (mirrors A2A missileTick r6d255).
    # In-flight = adHitDmg>0; contact resolves when the trail is stepping (fog-visible).
    # Fallback: [due+12h,+48h) never/stale -> settle, recent-step -> wait; >=due+48h -> forced settle.
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    mul-int/lit8 v0, v0, 0x18
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    add-int/2addr v0, v1
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v1
    if-eqz v1, :done
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v2, :done
    const/4 v3, 0x0
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v4
    :loop
    if-ge v3, v4, :done
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v5, :next
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F
    const/4 v7, 0x0
    cmpg-float v8, v6, v7
    if-lez v8, :next
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I
    if-lt v0, v8, :next
    # hard cap: now >= due+48h -> fallback (forced, even if stepping)
    add-int/lit8 v8, v8, 0x30
    if-ge v0, v8, :fb
    # grace: now < due+12h -> wait (chance to become visible again)
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I
    add-int/lit8 v8, v8, 0xc
    if-lt v0, v8, :next
    # never stepped -> fallback
    iget-wide v14, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J
    const-wide/16 v12, 0x0
    cmp-long v8, v14, v12
    if-lez v8, :fb
    # stepped recently (<10s) -> wait for contact; stale -> fallback
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
    sub-long v12, v12, v14
    const-wide/16 v14, 0x2710
    cmp-long v8, v12, v14
    if-gez v8, :fb
    goto/16 :next
    :fb
    # fallback settle: same cleanup as contact + applyMdDamage + nADK log
    const/4 v8, 0x0
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I
    const/4 v8, -0x1
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I
    const v8, 0xc7c35000
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F
    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F
    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I
    move-result v9
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "nADK fb=1 dmg="
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/high16 v7, 0x447a0000
    mul-float v7, v6, v7
    float-to-int v7, v7
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, " k="
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    goto/16 :next
    :next
    add-int/lit8 v3, v3, 0x1
    goto/16 :loop
    :done
    return-void
.end method



.method public static tickTurn()V
    .registers 6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    if-eq v0, v1, :same

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    :try_start_g
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickHits()V


    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickAll()V
    :try_end_g
    .catch Ljava/lang/Throwable; {:try_start_g .. :try_end_g} :catch_g

    return-void

    :same
    return-void

    :catch_g
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logX(Ljava/lang/Throwable;)V

    return-void
.end method


.method public static tickAll()V
    .registers 8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-lez v0, :end

    const/4 v1, 0x0

    :loop
    if-ge v1, v0, :end

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :next

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v3

    if-lez v3, :next

    # --- r6d182 D1 开火许可＝本省有 AAA 防空阵地（原设计"雷达＝许可"已废止） ---
    # 实测该存档：rad=0（整局 49 回合没有任何短程雷达）、aaa=5 / pAAA=5。
    # 若把开火绑在雷达上，5 座 AAA 阵地的开火会被全掐死 —— 即 r6d181 实测到的回归。
    # 许可语义由上一行 `if-lez v3, :next` 承担：airDefenseAt() 内部读的就是
    # BuildingsManager->AAA_BUILDING_ID 并数省内该建筑个数（AirDefense.smali:190-232），
    # 故此处不再重复查询，仅留语义说明。
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    # --- r6d182 D5：发射次数＝本省阵地数（**不加任何覆盖**，第三参仍为 v3） ---
    # 血案（审查 B/C 各自独立抓到）：本批一度插入 `const/4 v3, 0x1`，把"每阵地 1 发"压成"每省 1 发"。
    # 反证：fireProvince:648 的原有注释就写着「单省开火：发射次数 = 本省阵地数」；
    #       675 `if-ge v2, p2, :done` 的循环上界就是 p2；727 `logAD(...,p2,...)` 把 p2 记进探针 n=。
    #       ⇒ p2＝发射次数；旧版传 airDefenseAt(v1)（阵地个数）本来就等于"每阵地 1 发"。
    invoke-static {v4, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v5

    :next
    add-int/lit8 v1, v1, 0x1

    goto :loop

    :end
    return-void
.end method

# ---------------------------------------------------------------------------
# 探针（r6d178）：每发命中判定的原始值
#   nADH p=<省> c=<chance×1000> r=<rng×1000> h=<1命中/0未中>
# ---------------------------------------------------------------------------
.method public static logHit(IFFI)V
    .registers 9

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I

    const/4 v1, 0x1

    if-ne v0, v1, :seen_last

    const-string v1, "nADH0 first"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :seen_last
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float v2, p2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    if-gez p3, :miss

    const/4 v3, 0x1

    :miss
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nADH p="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, " c="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, " r="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, " h="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method


.method public static msSpd()F
    .registers 1

    # r6d255 TECH-HOOK: A2A missile base speed (px per gamehour).
    # The tech tree update will replace this body (single point of truth).
    const v0, 0x42870000

    return v0
.end method

.method public static adSpd()F
    .registers 1

    # r6d255 TECH-HOOK: AD missile base speed (px per gamehour).
    # The tech tree update will replace this body (single point of truth).
    const v0, 0x42870000

    return v0
.end method
