.class public final Laoc/kingdoms/lukasz/map/battles/AirDefense;
.super Ljava/lang/Object;
.source "AirDefense.java"


# static fields
.field public static hitSeen:I

.field private static lastTurn:I

.field private static rnd:Ljava/util/Random;


# direct methods
.method public static adDamagePerHit(II)F
    .registers 4

    const v0, 0x42480000    # 50.0f

    return v0
.end method

.method public static adDistHours(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    if-ltz v0, :cond_39

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_39

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :cond_39

    if-eqz v3, :cond_39

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

    if-gez v8, :cond_2b

    neg-int v8, v8

    :cond_2b
    if-gez v9, :cond_2e

    neg-int v9, v9

    :cond_2e
    add-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    goto :goto_3b

    :cond_39
    const/16 v8, 0x0

    :goto_3b
    return v8
.end method

.method public static adHitChance(II)F
    .registers 4

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public static adSpd()F
    .registers 1

    const v0, 0x42870000    # 67.5f

    return v0
.end method

.method public static airDefenseAt(I)I
    .registers 10

    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    const/4 v1, 0x0

    if-ltz v2, :cond_35

    if-ltz p0, :cond_35

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_35

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_35

    iget-object v0, v3, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_35

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_32

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v8

    if-ne v8, v2, :cond_32

    add-int/lit8 v1, v1, 0x1

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_35
    return v1
.end method

.method public static applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I
    .registers 12

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz v6, :cond_5a

    move v1, p1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_57

    const/4 v9, 0x0

    cmpl-float v9, v1, v9

    if-lez v9, :cond_57

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_54

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_34

    cmpl-float v9, v1, v3

    if-ltz v9, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    move v4, v1

    :goto_28
    sub-float v3, v3, v4

    iput v3, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float v1, v1, v4

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_44

    goto :goto_54

    :cond_34
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_54

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_44
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_54

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_57
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    :cond_5a
    return v0
.end method

.method public static countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I
    .registers 9

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_23

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v5, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v6

    if-eqz v6, :cond_20

    add-int/lit8 v1, v1, 0x1

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_23
    return v1
.end method

.method public static eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v1, p1, :cond_1e

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static fireProvince(III)I
    .registers 15

    if-lez p2, :cond_42

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->countTargets(ILaoc/kingdoms/lukasz/map/province/Province;)I

    move-result v1

    if-lez v1, :cond_42

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, p2, :cond_3e

    rem-int v6, v2, v1

    invoke-static {p0, v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :cond_3b

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adHitChance(II)F

    move-result v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rng()Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v7

    cmpl-float v9, v7, v8

    invoke-static {p1, v8, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logHit(IFFI)V

    if-gtz v9, :cond_3b

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F

    move-result v10

    iput p1, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3e
    invoke-static {p1, p2, v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logAD(IIIII)V

    return v1

    :cond_42
    const/4 v9, 0x0

    return v9
.end method

.method public static inRange(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 16

    if-eqz p0, :cond_4e

    if-eqz p1, :cond_4e

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v2, :cond_4e

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    if-eq v2, v3, :cond_4c

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v4, :cond_4e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4e

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_4e

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

    const/16 v13, 0x64

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v5

    if-nez v5, :cond_46

    :cond_44
    const/16 v13, 0x82

    :cond_46
    invoke-static {v9, v12, v13, v10}, Laoc/kingdoms/lukasz/map/battles/AirLat;->hit(IIII)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    return v0

    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

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

.method public static logHit(IFFI)V
    .registers 9

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string v1, "nADH0 first"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :cond_e
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float v2, p2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    if-gez p3, :cond_1a

    const/4 v3, 0x1

    :cond_1a
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

.method public static missionCount()I
    .registers 8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_29

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :cond_26

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v6, :cond_26

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_26

    add-int/lit8 v1, v1, 0x1

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    return v1
.end method

.method public static msSpd()F
    .registers 1

    const v0, 0x42870000    # 67.5f

    return v0
.end method

.method public static pickTarget(ILaoc/kingdoms/lukasz/map/province/Province;I)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 12

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v3, :cond_27

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_27

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    invoke-static {v6, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->eligible(Laoc/kingdoms/lukasz/map/battles/AirMission;ILaoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v7

    if-eqz v7, :cond_24

    if-eq v1, p2, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_23
    return-object v6

    :cond_24
    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_27
    const/4 v8, 0x0

    return-object v8
.end method

.method public static rng()Ljava/util/Random;
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->rnd:Ljava/util/Random;

    return-object v0
.end method

.method public static scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    .registers 8

    if-eqz p0, :cond_57

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v0, v0, 0x18

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adStartGh:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    if-gtz v2, :cond_2e

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDistHours(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1

    const/16 v2, 0x4

    if-lt v1, v2, :cond_18

    goto :goto_1a

    :cond_18
    const/16 v1, 0x4

    :goto_1a
    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    mul-int/lit8 v2, v1, 0x2

    if-gtz v2, :cond_23

    const/16 v2, 0x2

    :cond_23
    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    :cond_2e
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    add-float v3, v3, p1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

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

    :cond_57
    return-void
.end method

.method public static tick(I)V
    .registers 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v4, :cond_3a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_16
    if-ge v3, v1, :cond_33

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    if-ltz v5, :cond_30

    if-ge v5, v2, :cond_30

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v6

    if-lez v6, :cond_30

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v6

    invoke-static {p0, v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v7

    if-lez v7, :cond_30

    add-int/2addr v10, v7

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_33
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->missionCount()I

    move-result v6

    invoke-static {p0, v8, v9, v10, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logADA(IIIII)V

    :cond_3a
    return-void
.end method

.method public static tickAll()V
    .registers 8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-lez v0, :cond_1e

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->airDefenseAt(I)I

    move-result v3

    if-lez v3, :cond_1b

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(III)I

    move-result v5

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    return-void
.end method

.method public static tickHits()V
    .registers 16

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v0, v0, 0x18

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_8b

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_16
    if-ge v3, v4, :cond_8b

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :cond_87

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-lez v8, :cond_87

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    if-lt v0, v8, :cond_87

    add-int/lit8 v8, v8, 0x30

    if-ge v0, v8, :cond_4b

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    add-int/lit8 v8, v8, 0xc

    if-lt v0, v8, :cond_87

    iget-wide v14, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxStepMs:J

    const-wide/16 v12, 0x0

    cmp-long v8, v14, v12

    if-lez v8, :cond_4b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v14

    const-wide/16 v14, 0x2710

    cmp-long v8, v12, v14

    if-gez v8, :cond_4b

    goto/16 :goto_87

    :cond_4b
    const/4 v8, 0x0

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I

    const/4 v8, -0x1

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    const v8, -0x383cb000    # -100000.0f

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxX:F

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxY:F

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nADK fb=1 dmg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v7, v6, v7

    float-to-int v7, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " k="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    goto/16 :goto_87

    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_8b
    return-void
.end method

.method public static tickSafe(I)V
    .registers 8

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logT(I)V

    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tick(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logX(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tickTurn()V
    .registers 6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    if-eq v0, v1, :cond_f

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->lastTurn:I

    :try_start_8
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickHits()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickAll()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_10

    return-void

    :cond_f
    return-void

    :catch_10
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logX(Ljava/lang/Throwable;)V

    return-void
.end method
