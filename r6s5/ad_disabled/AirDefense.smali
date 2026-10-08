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


# ---------------------------------------------------------------------------
# 空位：命中率（将来接科技/代差：defGen / tgtGen）
# ---------------------------------------------------------------------------
.method public static adHitChance(II)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method


# ---------------------------------------------------------------------------
# 空位：每发伤害（将来接科技/代差）
# ---------------------------------------------------------------------------
.method public static adDamagePerHit(II)F
    .registers 4

    const/high16 v0, 0x40400000    # 3.0f

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

    if-ne v2, v3, :yes

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

    mul-int v9, v9, v9

    mul-int v12, v12, v12

    add-int v9, v9, v12

    const v13, 0x15f90    # 90000 = 300 * 300

    if-le v9, v13, :no

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
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :no

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v1, p1, :no

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

    if-ne v1, p2, :found

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

    if-gez v9, :snext

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F

    move-result v10

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I

    move-result v9

    add-int/2addr v4, v9

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