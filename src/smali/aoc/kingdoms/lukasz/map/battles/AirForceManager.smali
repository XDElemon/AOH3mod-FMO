.class public Laoc/kingdoms/lukasz/map/battles/AirForceManager;
.super Ljava/lang/Object;


# static fields
.field public static a1FrqN:I

.field public static a1FrqTurn:I

.field public static a1Gsee:[I

.field public static a1Known:[B

.field public static a1PkApPid:I

.field public static a1PkN:I

.field public static a1PkP:F

.field public static a1PkPid:I

.field public static a1PkScore:I

.field public static a1PkTier:I

.field public static a1bApPid:I

.field public static a1bDay:I

.field public static a1bDivBest:I

.field public static a1bDivNew:I

.field public static a1bHour:I

.field public static a1bNen:I

.field public static a1bNfr:I

.field public static a1bNvis:I

.field public static a1bPkInf:I

.field public static a1bPkN:I

.field public static a1bPkTol:F

.field public static a1bRtInf:I

.field public static a1bRtN:I

.field public static a1bRtTol:F

.field public static a1bTurn:I

.field public static afSuspended:Z
.field public static afMilReal:Ljava/util/HashSet;   # r6c002
.field public static afAirportProv:Ljava/util/HashSet;

.field public static dgInit:I
.field public static dgProb:I
.field public static dgIntel:I
.field public static dgPin:I
.field public static dgDebug:I
.field public static dgAiBuild:I
.field public static dgAiWar:I
.field public static dgAiCap:I
.field public static dgAiType:I
.field public static dgWF:I
.field public static dgWI:I
.field public static dgWA:I
.field public static dgWB:I
.field public static dgRot:I

.field public static aiAirDetSeen:Ljava/util/HashSet;

.field public static aiDetLastMs:J

.field public static aiDspRetryLast:Ljava/util/HashMap;

.field public static aiSvD2:I

.field public static aiSvEff:I

.field public static aiSvSrc:I

.field public static aiSvThr:I

.field public static aiSvbSeen:Ljava/util/HashSet;

.field public static aiVisSeen:Ljava/util/HashSet;

.field public static dedupLastMs:J

.field public static dspCivForce:I

.field public static dspTried:I

.field private static instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;

.field public static nDumpMs:J

.field public static pendingMissionMode:I


# instance fields
.field public activeMissions:Ljava/util/List;

.field public allAirports:Ljava/util/Map;

.field public multiSelectMode:Z

.field public radarProvinces:Ljava/util/Set;

.field public selectedAirportProvinceID:I

.field public selectedAirports:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2
    # r6d012：静态默认值（不依赖任何调用路径）
    const/16 v0, 0x50
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    const/4 v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I
    const/4 v0, -0x1
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I
    const/4 v0, 0x0
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I
    const/4 v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I
    const/4 v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I
    const/4 v0, 0x0
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiType:I
    const/4 v0, 0x5
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    const/4 v0, 0x1
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    const/4 v0, 0x2
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I
    const/4 v0, 0x2
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I
    const/4 v0, 0x4
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirports:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList; # r6d021：线程安全（写时复制）

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    return-void
.end method

.method private static a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z
    .registers 4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_f

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v3, p0, :cond_f

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v3, p1, :cond_f

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v3, v4, :cond_f

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v3, v4, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_32
    return v0
.end method

.method private static a1Dispatch(II)Z
    .registers 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v10, :cond_6a

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_67

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkApPid:I

    if-ne v7, v11, :cond_67

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :goto_67

    :cond_2f
    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_67

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :goto_67

    :cond_45
    invoke-static {v2, p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :cond_67

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v6, :cond_67

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_5a

    const/4 v8, 0x3

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    goto :goto_67

    :cond_5a
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v6, :cond_67

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    const/4 v8, 0x1

    return v8

    :cond_67
    :goto_67
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_6a
    const/4 v8, 0x0

    return v8
.end method

.method private static a1DivCount(I)I
    .registers 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private static a1E(IIIII)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nA1e p0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tgtciv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a1FrqFor()I
    .registers 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    const/4 v1, 0x5

    if-le v0, v1, :cond_9

    move v0, v1

    :cond_9
    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    return v1

    :cond_13
    const/4 v1, 0x3

    return v1
.end method

.method private static a1HasMil(I)Z
    .registers 10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :cond_3b

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    if-eqz v3, :cond_3b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v6, :cond_3b

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v7

    if-ltz v7, :cond_38

    if-ge v7, v8, :cond_38

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    if-eqz v4, :cond_38

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_38

    const/4 v4, 0x1

    return v4

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_3b
    const/4 v4, 0x0

    return v4
.end method

.method private static a1Inflight(I)I
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_f

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v4, p0, :cond_f

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v4, v5, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2a
    return v3
.end method

.method private static a1Log(IIILjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nA1 ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " div="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_28

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_28
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a1ProbFor()F
    .registers 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->air:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Air;

    const v1, 0x3ea8f5c3    # 0.33f

    if-eqz v0, :cond_f

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Air;->AIR_AI_BOMB_CHANCE_AT_WAR:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_f

    move v1, v2

    :cond_f
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    if-gez v2, :cond_14

    const/4 v2, 0x0

    :cond_14
    const/4 v3, 0x5

    if-le v2, v3, :cond_18

    move v2, v3

    :cond_18
    const/4 v3, 0x0

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    const/4 v3, 0x3

    if-eq v2, v3, :cond_36

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3a

    const v3, 0x40000000    # 2.0f

    goto :goto_3d

    :cond_2b
    const v3, 0x3f000000    # 0.5f

    goto :goto_3d

    :cond_2f
    const v3, 0x3f400000    # 0.75f

    goto :goto_3d

    :cond_33
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_36
    const v3, 0x3fa00000    # 1.25f

    goto :goto_3d

    :cond_3a
    const v3, 0x3fc00000    # 1.5f

    :goto_3d
    mul-float v1, v1, v3

    return v1
.end method

.method private static a1Scan(I)V
    .registers 16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :cond_19e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    if-eqz v7, :cond_10

    array-length v13, v7

    if-ne v13, v12, :cond_10

    goto :goto_21

    :cond_10
    new-array v7, v12, [B

    sput-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    new-array v7, v12, [I

    sput-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I

    const/4 v13, 0x0

    :goto_19
    if-ge v13, v12, :cond_21

    const/4 v14, -0x1

    aput v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_21
    :goto_21
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-static {p0, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_32

    const-string v13, "nP2cap"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto/16 :goto_19e

    :cond_32
    sget v13, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqTurn:I

    if-eq v13, v14, :cond_3d

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqTurn:I

    const/4 v14, 0x0

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    :cond_3d
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1ProbFor()F

    move-result v13

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkP:F

    const-string v14, "nP2dif"

    sget v13, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_19e

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19e

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_5f
    if-ge v9, v10, :cond_19e

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_19a

    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkApPid:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z

    move-result v8

    if-eqz v8, :cond_19a

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v14, -0x1

    if-eqz v13, :cond_7f

    iget v14, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v14, v13, :cond_7f

    goto :goto_83

    :cond_7f
    iget-boolean v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    if-nez v4, :cond_19a

    :goto_83
    const/4 v13, -0x1

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    const/4 v14, 0x0

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkP:F

    cmpl-float v13, v13, v14

    if-gez v13, :cond_19a

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_19a

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v14

    const-string v5, "nP2set"

    invoke-static {v5, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_150

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_14e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :cond_14e

    if-ge v11, v12, :cond_14e

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_14e

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v13

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1HasMil(I)Z

    move-result v13

    if-eqz v13, :cond_d4

    const/4 v13, 0x6

    goto :goto_d5

    :cond_d4
    const/4 v13, 0x4

    :goto_d5
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aput-byte v13, v7, v11

    invoke-static {v2, v11, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1VisOk(Laoc/kingdoms/lukasz/map/battles/Airport;II)Z

    move-result v13

    if-eqz v13, :cond_14e

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v13

    if-ltz v13, :cond_14e

    if-eq v13, p0, :cond_14e

    invoke-static {p0, v13}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v14

    if-eqz v14, :cond_14e

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Inflight(I)I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_147

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aget-byte v13, v7, v11

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_fe

    const/4 v13, 0x0

    goto :goto_ff

    :cond_fe
    const/4 v13, 0x1

    :goto_ff
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v8

    const/high16 v14, 0x41200000    # 10.0f

    mul-float v8, v8, v14

    float-to-int v8, v8

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    add-int v8, v8, v14

    if-gez v8, :cond_113

    const/4 v8, 0x0

    :cond_113
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    if-ltz v14, :cond_135

    if-lt v13, v14, :cond_138

    if-eq v13, v14, :cond_11c

    goto :goto_14e

    :cond_11c
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sub-int v14, v8, v14

    if-lez v14, :cond_123

    goto :goto_138

    :cond_123
    if-ltz v14, :cond_14e

    goto :goto_126

    :goto_126
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_138

    goto :goto_14e

    :cond_135
    const/4 v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    :cond_138
    :goto_138
    if-nez v13, :cond_140

    const-string v5, "nP2mil"

    const/4 v14, 0x1

    invoke-static {v5, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_140
    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    goto :goto_14e

    :cond_147
    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const/4 v14, 0x4

    const/4 v5, 0x0

    invoke-static {v13, v11, v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Log(IIILjava/lang/String;)V

    :cond_14e
    :goto_14e
    goto/16 :goto_ac

    :cond_150
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const-string v14, "nP2ap"

    invoke-static {v14, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v14, "nP2pick"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    if-ltz v13, :cond_19a

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqFor()I

    move-result v14

    if-lt v13, v14, :cond_170

    const-string v13, "nP2frq"

    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :goto_19e

    :cond_170
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    invoke-static {v13, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Dispatch(II)Z

    move-result v13

    if-eqz v13, :cond_19a

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    const-string v14, "nP2s pid"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I

    const-string v14, "nP2s tier"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I

    const-string v14, "nP2s score"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1FrqN:I

    const-string v14, "nP2frq"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_19a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5f

    :cond_19e
    :goto_19e
    return-void
.end method

.method private static a1Snap(II)V
    .registers 12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, -0x1

    if-eqz v0, :cond_7

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :cond_7
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    const/4 v5, -0x1

    if-eqz v1, :cond_18

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :cond_18
    const/16 v6, -0x9

    if-ltz p1, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    :cond_26
    const/4 v7, -0x1

    if-eqz v1, :cond_31

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v3, :cond_31

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    :cond_31
    invoke-static {p0, v5, v6, v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1E(IIIII)V

    return-void
.end method

.method private static a1VisOk(Laoc/kingdoms/lukasz/map/battles/Airport;II)Z
    .registers 8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisRadarPass(IIIF)Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {v1, v2, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisAirportPass(IIIF)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1c
    const/4 v4, 0x0

    return v4

    :cond_1e
    const/4 v4, 0x1

    return v4
.end method

.method private static a1bClock()V
    .registers 4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDay:I

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bHour:I

    if-eq v0, v2, :cond_d

    if-ne v1, v3, :cond_d

    goto :goto_17

    :cond_d
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDay:I

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bHour:I

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bTurn:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bTurn:I

    :goto_17
    return-void
.end method

.method private static a1bDiag(I)V
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8b

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_8b

    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const/16 v11, 0x12

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v4

    float-to-int v10, v4

    const/4 v3, 0x0

    invoke-static {v13, v10, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v11, 0x13

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v4

    float-to-int v10, v4

    const/4 v3, 0x0

    invoke-static {v13, v10, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :cond_8b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_8b

    const/4 v9, 0x0

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_48
    if-ge v9, v12, :cond_6d

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v10

    if-eqz v10, :cond_58

    add-int/lit8 v7, v7, 0x1

    :cond_58
    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v10

    if-eqz v10, :cond_6a

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v0, v13, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F

    move-result v4

    cmpl-float v10, v4, v6

    if-gez v10, :cond_6a

    move v6, v4

    move v5, v9

    :cond_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    :cond_6d
    const/4 v3, 0x0

    const/16 v11, 0x16

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    invoke-static {v13, v10, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/4 v3, 0x0

    const/16 v11, 0xf

    invoke-static {v13, v8, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v11, 0x10

    invoke-static {v13, v5, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v11, 0x11

    float-to-int v10, v6

    invoke-static {v13, v10, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v11, 0x14

    invoke-static {v13, v7, v11, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    :cond_8b
    return-void
.end method

.method private static a1bDispatch(II)Z
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_83

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v10, :cond_83

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_80

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bApPid:I

    if-ne v7, v8, :cond_80

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    goto :goto_80

    :cond_2f
    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_80

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const/4 v8, 0x2

    const/4 v11, 0x0

    invoke-static {v7, p0, v8, v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    goto :goto_80

    :cond_45
    const/4 v6, -0x1

    invoke-static {v2, v6, p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy(Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v5

    if-eqz v5, :cond_80

    const/4 v13, 0x0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_5a

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v12

    if-nez v12, :cond_5a

    const/4 v13, 0x1

    :cond_5a
    iput-boolean v13, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z

    const/4 v12, 0x1

    iput-boolean v12, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bAuto:Z

    const/16 v12, 0x2a

    invoke-static {p0, v13, v12, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v6, :cond_80

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_73

    const/4 v8, 0x3

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    goto :goto_80

    :cond_73
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v6, :cond_80

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    invoke-static {v7, p0, v8, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/4 v8, 0x1

    return v8

    :cond_80
    :goto_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_83
    const/4 v8, 0x0

    return v8
.end method

.method private static a1bDivCmp(II)I
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1DivCount(I)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivNew:I

    sub-int v1, v0, p1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    if-eqz v1, :cond_10

    const/4 v0, -0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static a1bInflight(I)I
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v3, :cond_f

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v4, p0, :cond_f

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v4, v5, :cond_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2a
    return v2
.end method

.method private static a1bLog(IIILjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nA1b ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " div="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a1bPick(Laoc/kingdoms/lukasz/map/battles/Airport;I)I
    .registers 16

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v10, :cond_158

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_158

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I

    if-eqz v7, :cond_158

    array-length v10, v7

    if-ne v10, v9, :cond_158

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    mul-int/lit8 v8, v8, 0x18

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v8, v11

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_158

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0, p0, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_158

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const/4 v11, 0x0

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNvis:I

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I

    const/4 v10, -0x1

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I

    const/4 v10, 0x0

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    mul-float v10, v10, v11

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkTol:F

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_4c

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_4c

    if-ge v4, v9, :cond_4c

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-static {p0, v4, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1VisOk(Laoc/kingdoms/lukasz/map/battles/Airport;II)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v10

    if-eqz v10, :cond_89

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNvis:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNvis:I

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v10

    if-eqz v10, :cond_97

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    aput v8, v7, v4

    goto :goto_97

    :cond_89
    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v10

    if-eqz v10, :cond_97

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    aput v8, v7, v4

    :cond_97
    :goto_97
    aget v10, v7, v4

    if-ltz v10, :cond_4c

    if-gt v10, v8, :cond_4c

    sub-int v11, v8, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    mul-int/lit8 v10, v10, 0x6

    if-gt v11, v10, :cond_4c

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I

    move-result v10

    if-lez v10, :cond_b7

    const/4 v12, 0x0

    const/16 v11, 0x4

    invoke-static {v13, v4, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    :cond_b7
    invoke-direct {v0, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I

    invoke-static {v4, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivCmp(II)I

    move-result v12

    if-gez v12, :cond_c4

    goto :goto_4c

    :cond_c4
    if-eqz v12, :cond_cb

    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivNew:I

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDivBest:I

    goto :goto_ff

    :cond_cb
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I

    if-gez v12, :cond_d7

    move v12, v10

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I

    move v6, v11

    const/4 v12, 0x1

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    goto :goto_106

    :cond_d7
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I

    if-lt v10, v12, :cond_ff

    if-gt v10, v12, :cond_4c

    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkTol:F

    sub-float v12, v6, v12

    cmpl-float v12, v11, v12

    if-ltz v12, :cond_ff

    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkTol:F

    add-float v12, v6, v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_ef

    goto/16 :goto_4c

    :cond_ef
    sget v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-nez v10, :cond_106

    goto/16 :goto_4c

    :cond_ff
    :goto_ff
    const/4 v12, 0x1

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    move v12, v10

    sput v12, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkInf:I

    move v6, v11

    :cond_106
    :goto_106
    move v5, v4

    goto/16 :goto_4c

    :cond_109
    const/4 v12, 0x0

    const/16 v11, 0x15

    invoke-static {v13, v8, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v11, 0x1b

    float-to-int v10, v6

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    if-gez v5, :cond_118

    goto :goto_11f

    :cond_118
    aget v10, v7, v5

    const/16 v11, 0x1a

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    :goto_11f
    const/4 v12, 0x0

    move v10, v5

    const/16 v11, 0x9

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v10

    const/16 v11, 0xb

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNvis:I

    const/16 v11, 0xc

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I

    const/16 v11, 0xd

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I

    const/16 v11, 0xe

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/4 v12, 0x0

    const/16 v11, 0x31

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPkN:I

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    if-ltz v5, :cond_157

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I

    move-result v10

    const/16 v11, 0x30

    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    :cond_157
    return v5

    :cond_158
    const/4 v5, -0x1

    const/4 v12, -0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-static {v12, v12, v11, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    return v5
.end method

.method public static a1bRetarget(II)I
    .registers 16

    const/4 v0, -0x1

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I

    if-eqz v9, :cond_d

    if-ltz p0, :cond_d

    array-length v10, v9

    if-ge p0, v10, :cond_d

    const/4 v10, -0x1

    aput v10, v9, p0

    :cond_d
    if-ltz p0, :cond_bc

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v9, :cond_bc

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_bc

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v8

    if-eqz v8, :cond_bc

    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v6

    const v12, 0x3f000000    # 0.5f

    mul-float v6, v6, v12

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    move v4, v12

    const/4 v10, -0x1

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtInf:I

    const/4 v10, 0x0

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    mul-float v10, v10, v11

    const v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtTol:F

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v2, :cond_9c

    if-eq v1, p0, :cond_99

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_99

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I

    move-result v7

    invoke-direct {v8, p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F

    move-result v5

    cmpl-float v10, v5, v6

    if-gtz v10, :cond_99

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtInf:I

    if-gez v10, :cond_6b

    const/4 v10, 0x1

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    goto :goto_94

    :cond_6b
    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtInf:I

    if-lt v7, v10, :cond_91

    if-gt v7, v10, :cond_99

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtTol:F

    sub-float v10, v4, v10

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_91

    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtTol:F

    add-float v10, v4, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_82

    goto :goto_99

    :cond_82
    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-nez v11, :cond_98

    goto :goto_99

    :cond_91
    const/4 v10, 0x1

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    :goto_94
    move v4, v5

    move v10, v7

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtInf:I

    :cond_98
    move v0, v1

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_9c
    float-to-int v10, v6

    const/16 v11, 0x29

    const/4 v12, 0x0

    invoke-static {p0, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v10, 0x28

    const/4 v12, 0x0

    invoke-static {p0, v0, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    const/16 v10, 0x33

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtN:I

    invoke-static {p0, v11, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    if-ltz v0, :cond_bb

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I

    move-result v11

    const/16 v10, 0x32

    invoke-static {p0, v11, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    :cond_bb
    return v0

    :cond_bc
    return v0
.end method

.method private static a1bScan(I)V
    .registers 16

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_69

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Gsee:[I

    if-eqz v7, :cond_69

    array-length v13, v7

    if-ne v13, v12, :cond_69

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_21

    const-string v3, "nP2cap"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto :goto_68

    :cond_21
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDiag(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v10, :cond_68

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_65

    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bApPid:I

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z

    move-result v8

    if-eqz v8, :cond_65

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, -0x1

    if-eqz v13, :cond_57

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v4, v13, :cond_57

    goto :goto_5b

    :cond_57
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    if-nez v3, :cond_65

    :goto_5b
    invoke-static {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bPick(Laoc/kingdoms/lukasz/map/battles/Airport;I)I

    move-result v11

    if-ltz v11, :cond_65

    invoke-static {v11, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bDispatch(II)Z

    move-result v13

    :cond_65
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_68
    :goto_68
    return-void

    :cond_69
    const/4 v12, -0x1

    const/4 v11, 0x7

    const/4 v13, 0x0

    invoke-static {v12, v12, v11, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V

    goto :goto_68
.end method

.method private static aiPickVisibleTarget(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;Ljava/util/Random;)I
    .registers 14
    .param p0, "ap"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .param p2, "rnd"    # Ljava/util/Random;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-direct {v0, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_68

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v2, :cond_50

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_4d

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v7

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisRadarPass(IIIF)Z

    move-result v10

    if-eqz v10, :cond_3e

    const/4 v10, 0x1

    goto :goto_44

    :cond_3e
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisAirportPass(IIIF)Z

    move-result v10

    :goto_44
    if-eqz v10, :cond_4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0V(II)V

    if-eqz v4, :cond_68

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    :cond_68
    const/4 v10, -0x1

    return v10
.end method

.method public static aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z
    .registers 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v4

    const/4 v5, 0x0

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v0, :cond_26

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    invoke-static {v2, v3, p1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisRadarPass(IIIF)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    invoke-static {v2, v3, p1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisAirportPass(IIIF)Z

    move-result v0

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private static aiVisAirportPass(IIIF)Z
    .registers 15

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v1, :cond_74

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v6, :cond_24

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v7, p2, :cond_24

    iget v7, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v8

    sub-int v8, p0, v8

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v9

    sub-int v9, p1, v9

    mul-int v8, v8, v8

    mul-int v9, v9, v9

    add-int v8, v8, v9

    iget v10, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    float-to-int v7, v10

    mul-int v9, v7, v7

    mul-float v10, v10, p3

    float-to-int v10, v10

    mul-int v0, v10, v10

    if-le v8, v0, :cond_69

    if-le v8, v9, :cond_5f

    goto :goto_24

    :cond_5f
    const/4 v0, 0x3

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvThr:I

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvEff:I

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvD2:I

    goto :goto_24

    :cond_69
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvThr:I

    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvEff:I

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvD2:I

    const/4 v0, 0x1

    return v0

    :cond_74
    const/4 v0, 0x0

    return v0
.end method

.method private static aiVisRadarPass(IIIF)Z
    .registers 15

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v5, p2, :cond_e

    const/16 v5, 0x12c

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_34

    const/16 v5, 0x258

    :cond_34
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v5, 0x960

    :cond_3c
    const/16 v7, 0x0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v6, :cond_44

    iget v7, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    :cond_44
    if-lez v7, :cond_48

    div-int v5, v5, v7

    :cond_48
    move v1, v5

    int-to-float v6, v5

    mul-float v6, v6, p3

    float-to-int v5, v6

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v7

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v8

    sub-int v8, p0, v8

    sub-int v9, p1, v6

    invoke-static {v8, v9, v5, v7}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v10

    if-nez v10, :cond_64

    goto :goto_e

    :cond_64
    mul-int v6, v8, v8

    mul-int v7, v9, v9

    add-int v6, v6, v7

    const/4 v7, 0x1

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvThr:I

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvEff:I

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvD2:I

    const/4 v0, 0x1

    return v0

    :cond_75
    const/4 v0, 0x0

    return v0
.end method

.method private airCombatAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 15

    if-eqz p1, :cond_40

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p1, v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_12
    if-ge v0, v4, :cond_22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_1f

    invoke-direct {p0, p1, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airCombatOne(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit;I)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p1, v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_30
    if-ge v0, v4, :cond_40

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_3d

    invoke-direct {p0, p1, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airCombatOne(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit;I)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_40
    return-void
.end method

.method private airCombatOne(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit;I)V
    .registers 15

    return-void

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_96

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_94

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v3, v4, :cond_94

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v3, v4, :cond_94

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v3, :cond_94

    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    if-eqz v5, :cond_94

    invoke-direct {v5, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F

    move-result v6

    iget v7, p2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    cmpl-float v8, v6, v7

    if-gtz v8, :cond_94

    iget-object v9, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v9, :cond_94

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_94

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_94

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v7, :cond_93

    iget v6, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    iget v9, p2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, v5

    sub-float v6, v6, v9

    iput v6, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v5, 0x0

    cmpl-float v8, v5, v6

    if-lez v8, :cond_93

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    iget v6, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v5, 0x0

    cmpl-float v8, v6, v5

    if-lez v8, :cond_93

    iget v6, p2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    iget v9, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v9, v9, v5

    sub-float v6, v6, v9

    iput v6, p2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v5, 0x0

    cmpl-float v8, v5, v6

    if-lez v8, :cond_93

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/battles/Airport;->removeAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordKill()V

    :cond_93
    goto :goto_4f

    :cond_94
    goto/16 :goto_9

    :cond_96
    return-void
.end method

.method private static airhqKey(III)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-le p2, v1, :cond_20

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static airhqKey4(IIII)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1b

    if-ne p3, v1, :cond_1b

    goto :goto_2b

    :cond_1b
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static airhqKeyExists(Ljava/lang/String;)Z
    .registers 4
    .param p0, "sKey"    # Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :cond_21

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_21

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1f

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1f
    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static airhqKeyInMission(Ljava/lang/String;)Z
    .registers 6

    if-eqz p0, :cond_2d

    const/4 v4, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v3, :cond_28

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v3, :cond_28

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v4, 0x1

    goto :goto_2b

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2b
    :goto_2b
    move v0, v4

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public static clearPatrolForAirport(Laoc/kingdoms/lukasz/map/battles/AirForceManager;Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 12
    .param p0, "mgr"    # Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v6, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-ne v4, p1, :cond_36

    iget-object v1, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_30

    const/4 v6, 0x0

    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_30

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    const/4 v8, 0x0

    iput-boolean v8, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;->IDLE:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iput-object v8, v7, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_30
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_39
    return-void
.end method

.method private createMissionForClick(Laoc/kingdoms/lukasz/map/battles/Airport;I)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 11
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "targetProvinceID"    # I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b5

    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pendingMissionMode:I

    const/4 v6, 0x0

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pendingMissionMode:I

    move v0, v5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_b5

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v7, :cond_35

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v7, :cond_35

    invoke-static {v7, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v7, :cond_b5

    const-string v1, "\u548c\u5e73\u65f6\u671f\u4e0d\u80fd\u8f70\u70b8\u654c\u56fd\uff0c\u8bf7\u5148\u5ba3\u6218"

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    goto/16 :goto_b5

    :cond_35
    if-nez v5, :cond_3c

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    return-object v7

    :cond_3c
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_64

    const/4 v5, 0x3

    if-eq v4, v5, :cond_67

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v6, 0x0

    if-ne v4, v6, :cond_4e

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_53

    :cond_4e
    const/4 v6, 0x1

    if-ne v4, v6, :cond_53

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :cond_53
    :goto_53
    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    return-object v7

    :cond_64
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_69

    :cond_67
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :goto_69
    const/4 v1, 0x0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_b5

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    if-eqz v7, :cond_9a

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-ne v1, v7, :cond_9a

    goto :goto_89

    :goto_89
    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    return-object v7

    :cond_9a
    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-eq v5, v6, :cond_af

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    return-object v7

    :cond_af
    const/4 v6, -0x1

    invoke-static {p1, v6, p2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy(Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    return-object v7

    :cond_b5
    :goto_b5
    const/4 v7, 0x0

    return-object v7
.end method

.method public static curAirRealX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 7

    if-eqz p0, :cond_33

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :cond_33

    if-ltz v1, :cond_33

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    sub-int v1, v1, v0

    int-to-float v1, v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v5, v2, :cond_2d

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    :cond_2d
    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v0, v0, v1

    return v0

    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method public static curAirRealY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 7

    if-eqz p0, :cond_33

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :cond_33

    if-ltz v1, :cond_33

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    sub-int v1, v1, v0

    int-to-float v1, v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v5, v2, :cond_2d

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    :cond_2d
    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v0, v0, v1

    return v0

    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method private static dbgAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-eqz v1, :cond_1c

    const/4 v7, 0x1

    :cond_1c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    :cond_2b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v5, :cond_51

    const/4 v4, 0x0

    :goto_31
    const/4 v7, 0x3

    if-ge v4, v7, :cond_51

    if-ge v4, v5, :cond_51

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    if-eqz v8, :cond_4e

    const-string v3, " k"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_51
    const-string v3, " ik="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AIRDBG"

    invoke-static {v10, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dbgDSPTg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nDSPTg id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " civ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dbgDd(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 7

    if-eqz p0, :cond_2

    :cond_2
    return-void
.end method

.method public static dbgSbSkip(Ljava/lang/String;)V
    .registers 4

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|nSB skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dbgStrikeP(IILjava/lang/String;)V
    .registers 10
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {p2, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V

    return-void
.end method

.method public static dedupAirhqDivision(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 11

    if-eqz p0, :cond_97

    sget-wide v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dedupLastMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide/16 v2, 0x3e8

    cmp-long v6, v6, v2

    if-ltz v6, :cond_97

    sput-wide v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dedupLastMs:J

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v7, :cond_97

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v1, :cond_97

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgDd(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_66

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v6, :cond_63

    const/4 v8, 0x0

    :goto_33
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v8, v0, :cond_63

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    if-eqz v9, :cond_60

    iget-object v0, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v0, :cond_60

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-nez v2, :cond_56

    if-nez v3, :cond_52

    move-object v3, v9

    move-object v4, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_52
    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_33

    :cond_56
    if-eq v9, v2, :cond_5c

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_33

    :cond_5c
    move-object v4, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_66
    if-nez v2, :cond_6d

    if-eqz v3, :cond_6d

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-object v2, v3

    :cond_6d
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_97

    const/4 v5, 0x2

    if-eq v3, v5, :cond_97

    const/4 v5, 0x3

    if-eq v3, v5, :cond_97

    if-eqz v2, :cond_97

    if-eqz v4, :cond_97

    iget v0, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-eq v0, v6, :cond_97

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_97

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    :cond_97
    return-void
.end method

.method public static dispatchAutoIntercept(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16

    const/4 v5, 0x0

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspTried:I

    const-string v8, "nDSPTc"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    if-eqz p0, :cond_256

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_256

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_256

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspCivForce:I

    if-lez v6, :cond_1b

    move v4, v6

    goto :goto_21

    :cond_1b
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v6, :cond_256

    iget v4, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :goto_21
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string v8, "nHAC"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    goto/16 :goto_256

    :cond_31
    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspRetryGate(J)Z

    move-result v5

    if-eqz v5, :cond_256

    const/4 v5, 0x1

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspTried:I

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v13, :cond_45

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_45

    goto :goto_49

    :cond_45
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgDSPTg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    return-void

    :goto_49
    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nDSPT0 prov="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspCivForce:I

    if-lez v6, :cond_6d

    move v4, v6

    goto :goto_73

    :cond_6d
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v6, :cond_256

    iget v4, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :goto_73
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_256

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1dd

    const v13, 0x7fffffff

    const/4 v14, 0x0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_87
    :goto_87
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v7, :cond_87

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a8

    const/4 v5, 0x1

    goto :goto_be

    :cond_a8
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b8

    const/4 v5, 0x1

    goto :goto_be

    :cond_b8
    const/4 v5, 0x0

    const-string v8, "nDSPT4"

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :goto_be
    if-eqz v5, :cond_87

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    goto :goto_e5

    :cond_d3
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    :goto_e5
    iget v5, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_87

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v8

    sub-int v8, v3, v8

    mul-int v5, v5, v5

    mul-int v8, v8, v8

    add-int v5, v5, v8

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_108

    goto :goto_110

    :cond_108
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_87

    :goto_110
    if-ge v5, v13, :cond_87

    move v13, v5

    move-object v14, v7

    const-string v8, "nDSPT8"

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V

    goto/16 :goto_87

    :cond_11b
    if-eqz v14, :cond_1dd

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12e

    goto :goto_126

    :goto_126
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_186

    :cond_12e
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-static {v14, v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createIntercept(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/List;Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    if-eqz v7, :cond_247

    iget-object v5, v7, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v5, :cond_24f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_24f

    iput v1, v7, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v8, v7, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v5, :cond_256

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v10, "AIRDBG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nDR_DSPT ok k="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AIRDBG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nDR_AID ok k="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " civ="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_256

    :cond_186
    const-string v10, "AIRDBG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nDSPT2 ap="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " n="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-nez v6, :cond_1a9

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    goto :goto_1aa

    :cond_1a9
    const/4 v5, -0x1

    :goto_1aa
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ik="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fk="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nDSPT2b"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AIRDBG"

    const-string v11, "nDR_DSPT no-divkey"

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    :cond_1dd
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v10

    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nDSPT3 sz="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1f4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_1f5

    :cond_1f4
    const/4 v7, -0x1

    :goto_1f5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v7, :cond_238

    const-string v7, " ap0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " n0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    if-eqz v8, :cond_218

    const/4 v9, -0x1

    goto :goto_21c

    :cond_218
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v9

    :goto_21c
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v9, :cond_233

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    if-eqz v7, :cond_233

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_238

    :cond_233
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_238
    :goto_238
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AIRDBG"

    const-string v11, "nDR_DSPT no-airport"

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    :cond_247
    const-string v10, "AIRDBG"

    const-string v11, "nDR_DSPT create-null"

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    :cond_24f
    const-string v10, "AIRDBG"

    const-string v11, "nDR_DSPT no-aircraft"

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_256
    :goto_256
    return-void
.end method

.method public static dispatchSweep(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16
    .param p0, "strike"    # Laoc/kingdoms/lukasz/map/battles/AirMission;

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v14, 0x0

    if-eqz p0, :cond_19a

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-lez v1, :cond_19a

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-lez v4, :cond_19a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_19a

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_19a

    const/4 v3, 0x0

    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_62

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :cond_5f

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v6, v4, :cond_5f

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v6, v7, :cond_5f

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ne v6, v1, :cond_5f

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v6, v7, :cond_3e

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v6, v7, :cond_5f

    :cond_3e
    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v6, :cond_5f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5f

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nSW skip tgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_62
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_174

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_17c

    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nSW d a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " src="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_8f
    if-ge v3, v11, :cond_f9

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v7, :cond_f6

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a8

    goto :goto_c1

    :cond_a8
    or-int/lit8 v14, v14, 0x1

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c1

    or-int/lit8 v14, v14, 0x4

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_e8

    :cond_c1
    :goto_c1
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_f6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f6

    or-int/lit8 v14, v14, 0x2

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0, v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f6

    or-int/lit8 v14, v14, 0x8

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_e8

    :goto_e8
    iget v5, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F

    move-result v9

    float-to-int v9, v9

    if-gez v12, :cond_f2

    goto :goto_f4

    :cond_f2
    if-ge v9, v12, :cond_f6

    :goto_f4
    move v12, v9

    move-object v13, v7

    :cond_f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :cond_f9
    if-eqz v13, :cond_13c

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10b

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_153

    :cond_10b
    invoke-static {v13, v1, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createSweep(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v7

    if-eqz v7, :cond_16c

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v5, :cond_184

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nSW ok tgt="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ap="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13c
    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nSW d0 av="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :cond_153
    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nSW dk ap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v13, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :cond_16c
    const-string v5, "AIRDBG"

    const-string v7, "nSW dc"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :cond_174
    const-string v5, "AIRDBG"

    const-string v7, "nSW d a=-1"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :cond_17c
    const-string v5, "AIRDBG"

    const-string v7, "nSW d a=0"

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_184

    :cond_184
    :goto_184
    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nSW none tgt="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19a
    return-void
.end method

.method public static dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 5

    if-eqz p1, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AIRDBG"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public static dspRetryGate(J)Z
    .registers 8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiDspRetryLast:Ljava/util/HashMap;

    if-nez v2, :cond_16

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiDspRetryLast:Ljava/util/HashMap;

    :cond_16
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v5, v0, v4

    const/4 v4, 0x4

    if-lt v5, v4, :cond_31

    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    return v5

    :cond_31
    const/4 v5, 0x0

    return v5
.end method

.method private executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 9
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_ad

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isAtWar(I)Z

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-eqz v0, :cond_1e

    if-ne v2, v3, :cond_1e

    return-void

    :cond_1e
    if-eqz v0, :cond_69

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v2, :cond_2a

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v3, v2, :cond_31

    :cond_2a
    const-string v2, "nA2L"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void

    :cond_31
    const-string v3, "nA4d"

    invoke-static {p1, v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0War(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)V

    # r5c046z: 玩家机场的战时轰炸交给 P 线，防双发
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v5, :z_war_go
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    if-ne v6, v4, :z_war_go
    return-void
    :z_war_go
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p1, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiPickVisibleTarget(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;Ljava/util/Random;)I

    move-result v3

    if-ltz v3, :cond_b2

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bc

    invoke-static {p1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v4

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Empty(I)V

    if-nez v5, :cond_b7

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    :cond_68
    :goto_68
    return-void

    :cond_69
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;)I

    move-result v2

    if-gez v2, :cond_91

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_91
    if-ltz v2, :cond_68

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c1

    invoke-static {p1, v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v3

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_ad
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :cond_b2
    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :cond_b7
    const/4 v0, 0x4

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :cond_bc
    const/4 v0, 0x5

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :cond_c1
    const/4 v0, 0x6

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void
.end method

.method public static getActiveDivKey()Ljava/lang/String;
    .registers 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActiveDivRange()F
    .registers 5

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1a

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v0

    return v0

    :cond_1a
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public static getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 5
    .param p0, "sKey"    # Ljava/lang/String;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_2d

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_2d

    return-object v1

    :cond_2d
    goto :goto_c

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAirQuota(I)I
    .registers 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eq p0, v0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    goto :goto_12

    :cond_c
    const/4 v1, 0x4

    goto :goto_12

    :cond_e
    const/16 v1, 0xa

    goto :goto_12

    :cond_11
    const/4 v1, 0x5

    :goto_12
    return v1
.end method

.method private static getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F
    .registers 4
    .param p0, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-nez v0, :cond_7

    const/high16 v0, 0x43960000    # 300.0f

    return v0

    :cond_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_1c

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CombatRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1b

    const/high16 v0, 0x43fa0000    # 500.0f

    :cond_1b
    return v0

    :cond_1c
    const/high16 v0, 0x43960000    # 300.0f

    return v0
.end method

.method private getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/battles/Airport;",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v4, v5, :cond_d

    if-ltz v4, :cond_d

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3d
    return-object v0
.end method

.method public static getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    .registers 6

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    if-nez v0, :cond_b

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->instance:Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    return-object v0
.end method

.method public static getPatrolQuota(I)I
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eq p0, v0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    goto :goto_e

    :cond_b
    const/4 v1, 0x2

    goto :goto_e

    :cond_d
    const/4 v1, 0x4

    :goto_e
    return v1
.end method

.method public static hasActiveChaser(JI)Z
    .registers 12

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3b

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_38

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v5, p2, :cond_38

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v5, v6, :cond_38

    iget-wide v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    cmp-long v8, v6, p0

    if-nez v8, :cond_38

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v5, v6, :cond_36

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v5, v6, :cond_36

    goto :goto_38

    :cond_36
    const/4 v8, 0x1

    return v8

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3b
    const/4 v8, 0x0

    return v8
.end method

.method private hasActivePatrol(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-ne v2, p1, :cond_35

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_35

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_35

    if-eqz p2, :cond_2d

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v2, :cond_35

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v1, 0x1

    return v1

    :cond_2d
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v2, v3, :cond_35

    const/4 v1, 0x1

    return v1

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_38
    const/4 v1, 0x0

    return v1
.end method

.method public static isAirDivisionFlying(Ljava/lang/String;)Z
    .registers 4
    .param p0, "sKey"    # Ljava/lang/String;

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private isAtWar(I)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    if-eq v0, p1, :cond_13

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private isInRange(Laoc/kingdoms/lukasz/map/battles/Airport;I)Z
    .registers 13
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "targetProvinceID"    # I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v2, :cond_7c

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_53

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_65
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v6, :cond_65

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    cmpl-float v7, v6, v1

    if-lez v7, :cond_65

    move v1, v6

    goto :goto_65

    :cond_7b
    goto :goto_89

    :cond_7c
    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivRange()F

    move-result v8

    const/high16 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_89

    move v1, v8

    :cond_89
    :goto_89
    cmpl-float v0, v0, v1

    if-lez v0, :cond_8f

    const/4 v0, 0x0

    return v0

    :cond_8f
    const/4 v0, 0x1

    return v0
.end method

.method private static pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;
    .registers 11

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    :goto_f
    const/16 v4, 0xb

    if-ge v3, v4, :cond_27

    invoke-static {v1, v6, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_24

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v8

    if-nez v8, :cond_24

    return-object v5

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_27
    const/4 v5, 0x0

    return-object v5
.end method

.method private provinceDistance(II)F
    .registers 9
    .param p1, "a"    # I
    .param p2, "b"    # I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-double v1, v1

    mul-double v1, v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double v3, v3, v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static sdPr(IIILjava/lang/String;)V
    .registers 8
    .param p0, "p"    # I
    .param p1, "n"    # I
    .param p2, "o"    # I
    .param p3, "k"    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdP p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static selectAirDivisionAt(Laoc/kingdoms/lukasz/map/battles/Airport;II)V
    .registers 16
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-lez v5, :cond_c7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v7

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v8

    add-int/lit8 v7, v7, -0x2d

    add-int/lit8 v8, v8, -0x2d

    const/4 v9, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v10, :cond_40

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_40

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v11, :cond_40

    iget-object v9, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    :cond_40
    const/4 v11, 0x0

    const/4 p0, 0x0

    const/4 p1, -0x1

    :goto_43
    if-ge v11, v5, :cond_72

    invoke-virtual {v4, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    if-eqz v12, :cond_6f

    iget-object v6, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v6, :cond_6f

    const-string v3, "airhq_"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    sub-int v3, v8, v2

    mul-int/2addr v3, v3

    sub-int v6, v7, v1

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    const/16 v6, 0x1fa4

    if-le v3, v6, :cond_6f

    if-eqz v9, :cond_6d

    iget-object v3, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    move p1, p0

    :cond_6d
    add-int/lit8 p0, p0, 0x1

    :cond_6f
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :cond_72
    if-lez p0, :cond_c7

    add-int/lit8 p1, p1, 0x1

    rem-int p1, p1, p0

    const/4 v11, 0x0

    const/4 p2, 0x0

    :goto_7a
    if-ge v11, v5, :cond_c7

    invoke-virtual {v4, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    if-eqz v12, :cond_9e

    iget-object v6, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v6, :cond_9e

    const-string v3, "airhq_"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    sub-int v3, v8, v2

    mul-int/2addr v3, v3

    sub-int v6, v7, v1

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    const/16 v6, 0x1fa4

    if-le v3, v6, :cond_9e

    if-ne p2, p1, :cond_9c

    goto :goto_a1

    :cond_9c
    add-int/lit8 p2, p2, 0x1

    :cond_9e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    :goto_a1
    iget-object v3, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v3, :cond_c7

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v1, p0, p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->sdPr(IIILjava/lang/String;)V

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_c7

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    iput-object v3, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v6, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    :cond_c7
    return-void
.end method

.method private static strikeTick_A1(I)V
    .registers 4

    const-string v0, "nA5t"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_2b

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p0, v1, :cond_2b

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isAtWar(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v0, "nA5b"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bClock()V

    const/4 v2, -0x1

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Snap(II)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Scan(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bScan(I)V

    :cond_2b
    return-void
.end method

.method public static syncAirDivisionAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 9

    if-eqz p0, :cond_16

    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afSuspended:Z

    if-nez v0, :cond_16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirDivisionForType(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method private static syncAirDivisionForType(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    .registers 16

    if-eqz p0, :cond_98

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v9

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_98

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v0, :cond_98

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    const/4 v13, 0x1

    move v10, v3

    :goto_24
    if-lez v10, :cond_7c

    const/16 v11, 0xa

    if-gt v10, v11, :cond_2b

    move v11, v10

    :cond_2b
    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_53

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    if-eqz v7, :cond_77

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v8, :cond_77

    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v0, :cond_77

    iput v11, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget v12, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    add-int/lit8 v3, v9, 0x7

    if-eq v12, v3, :cond_77

    iput v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    goto :goto_77

    :cond_53
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    add-int/lit8 v12, v9, 0x7

    const/4 v0, 0x0

    invoke-direct {v8, v12, v0}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    iput v11, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v8, v1, v2, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    iput-object v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    move-result-object v12

    :cond_77
    :goto_77
    sub-int v10, v10, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_24

    :cond_7c
    const/16 v0, 0x20

    :goto_7e
    if-lez v0, :cond_98

    invoke-static {v1, v2, v9, v13}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey4(IIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_93

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKeyInMission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_93

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    :cond_93
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_7e

    :cond_98
    return-void
.end method

.method public static syncAllDivisions()V
    .registers 6

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3c

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_2a

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirDivisionAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    goto :goto_2a

    :cond_3c
    return-void
.end method

.method private tryPatrolForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/Random;)V
    .registers 8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_40

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v0, v1, :cond_40

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v0, v1, :cond_40

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_40

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-direct {p0, p1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActivePatrol(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v0

    if-ltz v0, :cond_40

    invoke-static {p1, v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v1

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    return-void
.end method

.method public static trySelectAirUnit(II)V
    .registers 14
    .param p0, "screenX"    # I
    .param p1, "screenY"    # I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v3, :cond_5a

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v8, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    if-lez v8, :cond_22

    iget v8, v7, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    add-int/lit8 v10, v10, -0x2d

    sub-int v10, v10, p0

    sub-int v11, v11, p1

    mul-int/2addr v10, v10

    mul-int/2addr v11, v11

    add-int/2addr v10, v11

    const/16 v11, 0x1fa4

    if-le v10, v11, :cond_50

    goto :goto_22

    :cond_50
    invoke-static {v8, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tsuP(III)V

    iput v8, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    invoke-static {v7, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectAirDivisionAt(Laoc/kingdoms/lukasz/map/battles/Airport;II)V

    goto :goto_59

    :goto_59
    return-void

    :cond_5a
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tsuM(II)V

    return-void

    return-void
.end method

.method public static tsuM(II)V
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tsuM x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static tsuP(III)V
    .registers 6
    .param p0, "p"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tsuP p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateAIAutoIntercept()V
    .registers 12

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiDetLastMs:J

    sub-long v0, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1e3

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiDetLastMs:J

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_1e3

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_1e3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v3, :cond_1e3

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v4, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1e3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :cond_1df

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v6, :cond_1df

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1df

    iget-object v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v6, v7, :cond_43

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v6, v7, :cond_1df

    :cond_43
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v6, :cond_1df

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-lez v6, :cond_1df

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    if-eqz v7, :cond_1df

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-lez v6, :cond_1df

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v6, v7, :cond_1df

    if-eq v6, v3, :cond_1df

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_1df

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiAirDetSeen:Ljava/util/HashSet;

    if-nez v7, :cond_6e

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiAirDetSeen:Ljava/util/HashSet;

    :cond_6e
    iget-wide v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    iget-wide v10, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v10, v11, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z

    move-result v9

    if-eqz v9, :cond_84

    goto/16 :goto_1df

    :cond_84
    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z

    move-result v9

    if-eqz v9, :cond_10b

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspCivForce:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dispatchAutoIntercept(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    sget v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspTried:I

    if-eqz v9, :cond_106

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nAVS seen id="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v0, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v0

    const-string v9, " civ="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " st="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " m="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " src="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " thr="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvThr:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " eff="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvEff:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " d2="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvD2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    const/4 v6, 0x0

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspCivForce:I

    goto/16 :goto_1df

    :cond_10b
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvSrc:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17e

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvbSeen:Ljava/util/HashSet;

    if-nez v0, :cond_11b

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvbSeen:Ljava/util/HashSet;

    :cond_11b
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17e

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nAVS band id="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v0, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v0

    const-string v9, " st="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " m="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " thr="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvThr:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " eff="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvEff:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " d2="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiSvD2:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17e
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisSeen:Ljava/util/HashSet;

    if-nez v10, :cond_189

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sput-object v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisSeen:Ljava/util/HashSet;

    :cond_189
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1df

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nAVS blk id="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v0, " civ="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v0, " prov="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v8

    const-string v0, " st="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v0, " m="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1df

    :cond_1df
    :goto_1df
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_21

    :cond_1e3
    return-void
.end method

.method private updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 12
    # r6d009：AI 造机三闸（开关 / 战时 / 每机场上限）
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I
    if-eqz v8, :aib_off
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I
    if-eqz v8, :aib_ok1
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v8, :aib_off
    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v8, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z
    move-result v8
    if-nez v8, :aib_off
    :aib_ok1
    iget v8, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I
    iget-object v9, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I
    move-result v9
    add-int/2addr v8, v9
    iget-object v9, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eqz v9, :aib_ok2
    add-int/lit8 v8, v8, 0x1
    :aib_ok2
    sget v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I
    if-ge v8, v9, :aib_off   # r6d010：已达/超上限 ⇒ 不造（原跳到 :aib_go = 反）

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_5e

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_5e
    # r6d013：AI 机场状态探针（机队总数 / 在建机型）
    const-string v8, "aiApN"
    iget v9, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I
    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v8, "aiApT"
    iget-object v9, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eqz v9, :apT_none
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v9
    goto :apT_log
    :apT_none
    const/4 v9, -0x1
    :apT_log
    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v8, "p1b"

    invoke-static {p1, v8}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bStat(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-nez v3, :cond_5e

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5e

    # r6d015：选型（ai_type 0=混编 1=战斗机优先 2=轰炸机优先 3=原比例）
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiType:I
    if-eqz v6, :mix_go
    const/4 v3, 0x1
    if-eq v6, v3, :sel_fighter
    const/4 v3, 0x2
    if-eq v6, v3, :sel_bomber
    goto :sel_ratio
    :sel_fighter
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :sel_bomber
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :mix_go
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I
    add-int/2addr v4, v3
    add-int/2addr v5, v4
    add-int/2addr v7, v5
    if-lez v7, :mix_fighter
    # r6d017：用全局轮转计数（与机场容量解耦）
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgRot:I
    rem-int/2addr v6, v7
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgRot:I
    add-int/lit8 v5, v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgRot:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    if-ge v6, v3, :mix_k1   # r6d016：r>=阈值 ⇒ 继续判下一档（原 if-lt 写反）
    :mix_fighter
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :mix_k1
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    add-int/2addr v3, v4
    if-ge v6, v3, :mix_k2   # r6d016：r>=阈值 ⇒ 继续判下一档（原 if-lt 写反）
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :mix_k2
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    add-int/2addr v3, v4
    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I
    add-int/2addr v3, v4
    if-ge v6, v3, :mix_bomber   # r6d016：r>=阈值 ⇒ 继续判下一档（原 if-lt 写反）
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :mix_bomber
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :sel_ratio
    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v4
    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I
    mul-int/lit8 v4, v4, 0x2
    if-le v4, v5, :cond_32
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    goto :goto_34
    :cond_32
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    :goto_34
    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v6

    if-eqz v6, :cond_5e

    const-string v8, "p1bZ"

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-virtual {p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->startBuild(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z

    move-result v7

    const-string v8, "p1bW"

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    if-eqz v7, :cond_5e
    # r6d009 探针：AI 排产成功（机型 ordinal）
    const-string v8, "aiBldS"
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v9
    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v8, "p1bS"

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v8, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    const-string v9, "p1b"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Gold(ILjava/lang/String;)V

    :cond_5e
    return-void
    :aib_off   # r6d010：三闸早退出口
    return-void
.end method


# virtual methods
.method public buildAirport(II)Laoc/kingdoms/lukasz/map/battles/Airport;
    .registers 8
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerAirport(II)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v3, :cond_1d

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v4, p1, :cond_1d

    return-object v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    const/4 v3, 0x0

    return-object v3
.end method

.method public canReach(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)Z
    .registers 12
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .param p3, "targetProvinceID"    # I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v2

    int-to-float v2, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v3, v1

    float-to-double v5, v5

    sub-float v7, v4, v2

    float-to-double v7, v7

    mul-double v5, v5, v5

    mul-double v7, v7, v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_40

    const/4 v5, 0x0

    return v5

    :cond_40
    const/4 v5, 0x1

    return v5
.end method

.method public dumpMissions()V
    .registers 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->nDumpMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_bd

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->nDumpMs:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v4, :cond_bd

    const/4 v5, 0x0

    :goto_15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_bd

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v6, :cond_b9

    const-string v7, "AIRDBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nMD id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " st="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ty="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " at="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " src="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " tgt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rnd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " dst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " civ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " tid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_15

    :cond_bd
    return-void
.end method

.method public executeAIAssignment(I)V
    .registers 7

    const-string v0, "nA2s"

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    const-string v3, "nA2v"

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "nA2t"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "nA2w"

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    if-nez v1, :cond_6c

    const/4 v1, 0x0

    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "nA2x"

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v3, "nA2y"

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    if-ge v1, v2, :cond_6c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    const-string v3, "nA2b"

    const/16 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v3, "nA2u"

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v3, "nA2m"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-eq v3, v4, :cond_66

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, -0x1

    if-eqz v3, :cond_5b

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :cond_5b
    if-gez v4, :cond_5e

    goto :goto_66

    :cond_5e
    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v3, v4, :cond_69

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    if-nez v3, :cond_69

    :cond_66
    :goto_66
    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_6c
    const-string v3, "nA2r"

    const/16 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;
    .registers 7
    .param p1, "provinceID"    # I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v0, p1, :cond_1e

    return-object v4

    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAirportsForCiv(I)Ljava/util/List;
    .registers 4
    .param p1, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/Airport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    return-object v0
.end method

.method public getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;
    .registers 12
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/battles/Airport;",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_62

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_23
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_62

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-double v6, v6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    float-to-double v8, v8

    mul-double v6, v6, v6

    mul-double v8, v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_58

    goto :goto_5f

    :cond_58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_62
    return-object v0
.end method

.method public getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;)I
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v0

    return v0
.end method

.method public getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I
    .registers 10
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v4, v5, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_50
    const/4 v2, -0x1

    return v2
.end method

.method public handleProvinceClick(I)V
    .registers 8
    .param p1, "provinceID"    # I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, "airhq_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v0, :cond_78

    if-eq v0, p1, :cond_78

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v1

    if-eqz v1, :cond_78

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActivePatrol(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78

    invoke-direct {p0, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isInRange(Laoc/kingdoms/lukasz/map/battles/Airport;I)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_78

    :cond_2f
    invoke-direct {p0, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->createMissionForClick(Laoc/kingdoms/lukasz/map/battles/Airport;I)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v3, :cond_78

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v1, :cond_78

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_78

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    iput-object v0, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iput v1, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_6c

    const/4 v0, 0x0

    goto :goto_6e

    :cond_6c
    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    :goto_6e
    iput v0, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    :cond_78
    :goto_78
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v2, :cond_bc

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_bc

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bc

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v1, :cond_bc

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_bc

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_bc

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    iput-object v0, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iput v1, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_b2

    const/4 v0, 0x0

    goto :goto_b4

    :cond_b2
    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    :goto_b4
    iput v0, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    :cond_bc
    return-void
.end method

.method public hasAAABuilding(I)Z
    .registers 6
    .param p1, "provinceID"    # I

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v0, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :cond_26

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    if-ne v3, v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public hasAirportBuilding(I)Z
    .registers 6
    .param p1, "provinceID"    # I

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ltz v0, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :cond_26

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    if-ne v3, v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public hasLongWaveRadarBuilding(I)Z
    .registers 6
    .param p1, "provinceID"    # I

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v0, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :cond_26

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    if-ne v3, v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public hasRadarBuilding(I)Z
    .registers 6
    .param p1, "provinceID"    # I

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v0, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v1, :cond_26

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    if-ne v3, v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public hasStrikeInFlightP(ILaoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z
    .registers 12
    .param p1, "provinceID"
    .param p2, "type"
    # r5c046z: int v0(索引) v2(长度) v4(pid) v7(返回) | obj v1(List) v3(Mission) v5/v6(MissionType)
    const/4 v0, 0x0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    :hsf_loop
    if-ge v0, v2, :hsf_none
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;
    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I
    if-ne v4, p1, :hsf_next
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p2, v5, :hsf_bomb
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    goto :hsf_cmp
    :hsf_bomb
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    :hsf_cmp
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    if-ne v6, v5, :hsf_next
    const/4 v7, 0x1
    return v7
    :hsf_next
    add-int/lit8 v0, v0, 0x1
    goto :hsf_loop
    :hsf_none
    const/4 v7, 0x0
    return v7
.end method

.method public pickStrikeTargetP(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I
    .registers 14
    .param p1, "airport"
    .param p2, "type"
    # r5c046z: int v0(bestPid) v2(ownCiv) v7(pid) v8(temp) | float v3(bestDist) v9(dist)
    #          obj v4(List/Iterator) v5(Integer) v6(Province)
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v4, :pst_none
    iget v8, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    if-ne v8, v7, :pst_none
    const/4 v0, -0x1
    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    # v3 必须由 float 渠道产生（const 的 int 常量不可当 float 用）
    # r5c046z3: +Inf 必须走 float 渠道（POSITIVE_INFINITY 是 static final float，不能当对象读）
    const v10, 0x7f800000
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F
    move-result v3
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;
    move-result-object v4
    if-eqz v4, :pst_none
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v4
    :pst_loop
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    move-result v8
    if-eqz v8, :pst_done
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v7
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    if-eqz v6, :pst_loop
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I
    move-result v8
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z
    move-result v8
    if-eqz v8, :pst_loop
    # 仅攻机走下列两道门（O4：轰炸机不加视野门）
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p2, v8, :pst_noatt
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I
    move-result v8
    if-lez v8, :pst_loop
    # 视野门：getFogDrawArmy()==true 即“可见”（绘制侧铁证）⇒ 仅 0(false) 跳过
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v8
    if-eqz v8, :pst_loop
    :pst_noatt
    # r6d001 DEMO：intel=0 → 关闭情报门（轰炸机可打任意敌省）
    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I
    if-eqz v10, :b1_ik_ok
    # B1：情报门（仅轰炸机）—— 无军事迹象的省不打
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p2, v10, :b1_ik_ok
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v10
    if-eqz v10, :pst_loop
    :b1_ik_ok
    invoke-virtual {p0, v7, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasStrikeInFlightP(ILaoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z
    move-result v8
    if-nez v8, :pst_loop
    # B1：评分（越小越优先）。mode=1 → 轰炸机（三档）；否则 → 纯距离
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p2, v10, :b1_att
    const/4 v10, 0x1
    goto :b1_sc
    :b1_att
    const/4 v10, 0x0
    :b1_sc
    invoke-direct {p0, v7, p1, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F
    
move-result v9
    # r6d001 DEMO：钉住的省（dgPin）最高优先
    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I
    if-ne v7, v10, :dg_nopin
    const v9, 0xbf800000    # -1.0f
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F
    move-result v9
    :dg_nopin
    cmpg-float v8, v9, v3
    if-gez v8, :pst_loop
    move v3, v9
    move v0, v7
    goto :pst_loop
    :pst_done
    if-ltz v0, :pst_none
    return v0
    :pst_none
    const/4 v0, -0x1
    return v0
.end method

.method public registerAirport(II)V
    .registers 9
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/Airport;

    const/4 v3, 0x1

    invoke-direct {v0, p1, p2, v3}, Laoc/kingdoms/lukasz/map/battles/Airport;-><init>(III)V

    .local v0, "airport":Laoc/kingdoms/lukasz/map/battles/Airport;
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "civAirports":Ljava/util/List;
    if-nez v1, :cond_23

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, p2, :cond_62

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_37
    const/4 v5, 0x4

    if-ge v4, v5, :cond_45

    new-instance v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-direct {v5, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_45
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    :goto_50
    const/4 v5, 0x4

    if-ge v4, v5, :cond_5e

    new-instance v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-direct {v5, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5e
    const/16 v5, 0x8

    iput v5, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    :cond_62
    const-string v3, "nA9r"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->load()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->load()V

    return-void
.end method

.method public registerRadar(I)V
    .registers 4
    .param p1, "provinceID"    # I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->markDirty()V

    return-void
.end method

.method public repairAircraft()V
    .registers 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v0, :cond_8e

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v1, :cond_1f

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz v3, :cond_1f

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4b
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v5, :cond_4b

    iget-boolean v7, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-nez v7, :cond_4b

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    iget v9, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    cmpl-float v7, v8, v9

    if-gez v7, :cond_4b

    const v10, 0x3dcccccd    # 0.1f

    mul-float v10, v9, v10

    add-float v10, v8, v10

    cmpl-float v7, v10, v9

    if-lez v7, :cond_71

    move v10, v9

    :cond_71
    iput v10, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_76
    if-lez v6, :cond_8e

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRP n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return-void
.end method

.method public startDivisionPatrol(Ljava/lang/String;I)I
    .registers 10

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v1, v2, :cond_11

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    const/4 v1, -0x4

    return v1

    :cond_11
    const/4 v1, -0x5

    return v1

    :cond_13
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v2, :cond_23

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_31

    :cond_23
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_31

    :cond_29
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_31

    :cond_2f
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :goto_31
    invoke-virtual {p0, v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getRandomBorderProvince(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v3

    if-ltz v3, :cond_4b

    invoke-static {v0, v3, p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v4

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_49
    const/4 v3, -0x3

    return v3

    :cond_4b
    const/4 v3, -0x1

    return v3
.end method

.method public stopAirportPatrols(I)I
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_35

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v3, :cond_35

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v3, p1, :cond_35

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v3, v4, :cond_35

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v3, v4, :cond_35

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v3, v4, :cond_35

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v3, v4, :cond_35

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    add-int/lit8 v0, v0, 0x1

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return v0
.end method

.method public syncAirports()V
    .registers 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAirportBuilding(I)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_32
    return-void
.end method

.method public syncAllFromProvinces()V
    .registers 11

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    :cond_12
    sget v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    sget v9, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SYNC airportID="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, " radarID="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v0, :cond_98

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_95

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v2, :cond_95

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_49
    if-ge v4, v3, :cond_95

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v5, :cond_92

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I

    if-ltz v5, :cond_68

    if-ne v6, v5, :cond_68

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerAirport(II)V

    :cond_68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v5, :cond_92

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v5, :cond_7d

    if-ne v6, v5, :cond_7d

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_7d
    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v5, :cond_86

    if-ne v6, v5, :cond_86

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_86
    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v5, :cond_8f

    if-ne v6, v5, :cond_8f

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->registerRadar(I)V

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_98
    return-void
.end method

.method public syncRadar()V
    .registers 10

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    if-ltz v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/Province;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_36
    sget v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I

    if-ltz v3, :cond_4a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4a
    sget v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I

    if-ltz v3, :cond_5e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5e
    goto :goto_14

    :cond_5f
    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->markDirty()V

    :cond_6a
    return-void
.end method

.method public toggleAirportPatrol(I)I
    .registers 5

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v1, v2, :cond_12

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const/4 p0, 0x0

    return p0

    :cond_12
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public tryStrikeForAirportP(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/Random;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    .registers 14
    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p2, "rnd"    # Ljava/util/Random;
    .param p3, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    # r6d001 DEMO：每次尝试出击前刷新配置（缺文件→默认值）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_51

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v1, v2, :cond_51

    iget-boolean v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v3, :cond_51
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F
    move-result v4   # r6d003：补回被 r6d001 误删的 nextFloat + move-result
    # r6d001 DEMO：出击概率来自配置 dgProb（%），默认 80（原实现实际只有 20%%）
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    int-to-float v5, v5
    const v6, 0x42c80000    # 100.0f
    div-float/2addr v5, v6
    cmpg-float v4, v4, v5
    if-ltz v4, :cond_51

    invoke-static {p1, p3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-direct {p0, p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActivePatrol(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_51

    invoke-virtual {p0, p1, p3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickStrikeTargetP(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v0

    if-ltz v0, :cond_51

    # r5c046z2 白名单：仅 ATTACKER / BOMBER 允许建任务（FIGHTER/INTERCEPTOR 不得被当轰炸机）
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eq p3, v1, :ts_ok
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eq p3, v1, :ts_ok
    goto :cond_51
    :ts_ok
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-ne p3, v1, :cond_35

    const/4 v2, -0x1

    invoke-static {p1, v2, v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createAttackArmy(Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v3

    goto :goto_39

    :cond_35
    invoke-static {p1, v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v3

    :goto_39
    if-eqz v3, :cond_51

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_51

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v9

    const-string v8, "nAS"

    invoke-static {v8, v9, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V

    :cond_51
    return-void
.end method

.method public unregisterAirport(II)V
    .registers 8
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v3, p1, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_28
    return-void
.end method

.method public unregisterRadar(I)V
    .registers 4
    .param p1, "provinceID"    # I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->markDirty()V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(I)V
    .registers 12
    .param p1, "civID"    # I

    const-string v0, "nA1e"

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->updateBuild()V

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    goto :goto_d

    :cond_20
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->updateDeployedCount()V

    goto :goto_28

    :cond_38
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignment(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updatePatrols(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateOffensivesP(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    iget v5, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v5, v4, :cond_49

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_87
    :goto_87
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v9, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    if-eqz v9, :cond_87

    iget-boolean v9, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-nez v9, :cond_87

    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v9, v9, v6

    iput v9, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v6, 0x0

    cmpl-float v9, v9, v6

    if-gtz v9, :cond_87

    const/4 v9, 0x0

    iput-boolean v9, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    goto :goto_87

    :cond_ad
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->strikeTick_A1(I)V

    return-void
.end method

.method public updateAirCombat()V
    .registers 9

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    const/4 v3, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_34

    invoke-direct {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airCombatAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_37
    goto :goto_c

    :cond_38
    return-void
.end method

.method public updateAll()V
    .registers 4
    # r6d012：每回合刷新配置（与玩家是否出击无关）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z

    if-nez v0, :cond_28

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getViewID(Laoc/kingdoms/lukasz/menu/View;)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getViewID()I

    move-result v2

    if-ne v0, v2, :cond_28

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z

    const-string v1, "GATE"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :try_start_21
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAllFromProvinces()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_90

    :try_start_24
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Airforce()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_92

    :cond_28
    :goto_28
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "um_upd:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_41
    :try_start_41
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirports()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_6b

    :goto_44
    :try_start_44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncRadar()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_70

    :goto_47
    :try_start_47
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateMissions()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_75

    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateAirCombat()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_7a

    :goto_4d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_67
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->update(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_7f

    :goto_6a
    goto :goto_57

    :catch_6b
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_70
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_47

    :catch_75
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4a

    :catch_7a
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4d

    :catch_7f
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_84
    :try_start_84
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAllDivisions()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_89

    :catch_88
    move-exception v0

    :goto_89
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->repairAircraft()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V

    return-void

    :catch_90
    move-exception v2

    goto :goto_28

    :catch_92
    move-exception v2

    goto :goto_28
.end method

.method public updateMissions()V
    .registers 9

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateAIAutoIntercept()V

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    :cond_f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_6e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v5

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->update()V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_41

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v2, v3, :cond_41

    goto :goto_6c

    :cond_41
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v4, :cond_59

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    const/4 v6, 0x0

    iput-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    goto :goto_49

    :cond_59
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanesNow()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFullReevalNow()V

    goto/16 :goto_17

    :goto_6c
    goto/16 :goto_17

    :cond_6e
    return-void
.end method

.method public updateOffensivesP(I)V
    .registers 10
    .param p1, "civID"
    # r5c046z: obj v0/v1/v2/v3/v6 | long v4v5 | int v7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v0, :os_ret
    iget v7, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne v7, p1, :os_ret
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    new-instance v3, Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V
    :os_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :os_end
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;
    # 真值表：!=0（关）-> :os_loop；==0（开）-> 落穿
    iget-boolean v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v7, :os_loop
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {p0, v2, v3, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tryStrikeForAirportP(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/Random;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-virtual {p0, v2, v3, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tryStrikeForAirportP(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/Random;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    goto :os_loop
    :os_end
    return-void
    :os_ret
    return-void
.end method

.method public updatePatrols(I)V
    .registers 9

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Airport;

    invoke-direct {p0, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tryPatrolForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/Random;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    return-void
.end method

.method private static isMilIdx(I)Z
    .registers 4
    # 【重建】原件随 r4c177/178 丢失；语义=“军事建筑 id 集合”。
    # 依据：BuildingsManager 里四个军事类建筑 id 常量（默认 -1）+ 设计档“空军基地=军事组 idx34”。
    # 真值表：id<0 → 0；id 命中 AIRPORT/LONGRADAR/RADAR/AAA 任一（且该常量≥0）→ 1；否则 0
    if-ltz p0, :im_true_chk
    const/4 v0, 0x0
    return v0
    :im_true_chk
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I
    if-ltz v0, :im1
    if-eq p0, v0, :im_yes
    :im1
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I
    if-ltz v0, :im2
    if-eq p0, v0, :im_yes
    :im2
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I
    if-ltz v0, :im3
    if-eq p0, v0, :im_yes
    :im3
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I
    if-ltz v0, :im_no
    if-eq p0, v0, :im_yes
    :im_no
    const/4 v0, 0x0
    return v0
    :im_yes
    const/4 v0, 0x1
    return v0
.end method

.method private static milRaw(I)Z
    .registers 8
    # 【重建】原件=早期 hasMilitaryBuilding 扫描体（r4c183 改名时未留档）。
    # 语义：读该省建筑列表，任一建筑命中 isMilIdx → 1；省为空/列表空/数据未装载 → 0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v0
    if-eqz v0, :mr_no
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v1, :mr_no
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 0x0
    :mr_loop
    if-ge v3, v2, :mr_no
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v4, :mr_next
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v5
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isMilIdx(I)Z
    move-result v5
    if-eqz v5, :mr_next
    const/4 v5, 0x1
    return v5
    :mr_next
    add-int/lit8 v3, v3, 0x1
    goto :mr_loop
    :mr_no
    const/4 v5, 0x0
    return v5
.end method

.method private static provinceHasAirport(I)Z
    .registers 8
    # R4c188 机场判据（稳定）：登记表命中 → 1；否则实时扫描 allAirports；实时命中 → 回写登记表（自愈）
    # 真值表：
    #   登记表含 pid                        → return 1
    #   实时扫描命中                        → 记入登记表后 return 1
    #   map/列表空、遍历完、实例为空         → return 0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :ap_live
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :ap_live
    const/4 v2, 0x1
    return v2

    :ap_live
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :ap_none
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;
    if-eqz v0, :ap_none
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v1

    :ap_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :ap_none
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/List;
    if-eqz v2, :ap_loop
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3

    :ap_loop2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :ap_loop
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;
    if-eqz v4, :ap_loop2
    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    if-ne v5, p0, :ap_loop2
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afAirportProv:Ljava/util/HashSet;
    if-eqz v0, :ap_hit
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v2

    :ap_hit
    const/4 v2, 0x1
    return v2

    :ap_none
    const/4 v2, 0x0
    return v2
.end method

.method private static hasMilitaryBuilding(I)Z
    .registers 6
    # R4c185 军事判据（稳定）：登记表命中 → 1；否则 milRaw 命中则“命中即登记”并返回 1；否则查机场表。
    # 真值表：
    #   登记表含 pid            → 跳 :hm_ret_true（return 1）
    #   milRaw(pid)!=0          → 落 :hm_mil_raw_hit（登记后 return 1）
    #   以上都不成立             → :hm_airport（返回 provinceHasAirport 结果）
    # 否证（从登记表移除）只发生在 Province 建筑增删的钩子里 —— 那时列表一定是装载好的。
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v0, :hm_milraw
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :hm_milraw
    const/4 v2, 0x1
    return v2

    :hm_milraw
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->milRaw(I)Z
    move-result v2
    if-eqz v2, :hm_airport
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-eqz v0, :hm_ret_true
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v2

    :hm_ret_true
    const/4 v2, 0x1
    return v2

    :hm_airport
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v2
    return v2
.end method

.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 8
    # R4c185 钩子入口：重算该省的“军事建筑”登记状态（增/删/读档时由 Province 调用）
    # 真值表：列表里任一 building 命中 isMilIdx → 登记(加入)；否则 → 注销(移除)
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    if-nez v0, :nb_init_done
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    :nb_init_done
    if-eqz p0, :nb_ret
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I
    move-result v1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    const/4 v3, 0x0
    if-eqz v2, :nb_apply
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v5
    const/4 v4, 0x0

    :nb_loop
    if-ge v4, v5, :nb_apply
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v6, :nb_next
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v6
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isMilIdx(I)Z
    move-result v6
    if-eqz v6, :nb_next
    const/4 v3, 0x1

    :nb_next
    add-int/lit8 v4, v4, 0x1
    goto :nb_loop

    :nb_apply
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    if-eqz v3, :nb_unset
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    move-result v0
    goto :nb_ret

    :nb_unset
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    move-result v0

    :nb_ret
    return-void
.end method

.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    # r4c193 逐字件（r6d001 复用）：读文本文件，失败→null，不抛异常
    const/4 v1, 0x0
    :ct_try
    const/4 v2, 0x0
    new-array v2, v2, [Ljava/lang/String;
    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    move-result-object v2
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B
    move-result-object v2
    new-instance v1, Ljava/lang/String;
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :ct_end
    return-object v1
    :ct_catch
    const/4 v1, 0x0
    return-object v1
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
.method public static cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    # r4c197 逐字件（r6d001 复用）：读 "键名": 整数，失败返回 p2 默认值
    if-nez p0, :cei_def
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\""
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "\""
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
.method public static demoLoadCfg()V
    .registers 6
    # r6d001 DEMO：读 /storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json
    #   prob  = 出击概率%（0..100，默认 80）
    #   intel = 轰炸机情报门（1=开 0=关，默认 1）
    #   pin   = 钉住省 id（默认 -1 = 无）
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I
    if-nez v5, :dg_have
    const/16 v5, 0x50
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    const/4 v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I
    const/4 v5, -0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I
    const/4 v5, 0x0
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I
    const/4 v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I
    const/4 v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I
    const/4 v5, 0x4
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I
    const/4 v5, 0x0
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiType:I
    const/4 v5, 0x5
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    const/4 v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    const/4 v5, 0x2
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I
    const/4 v5, 0x2
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I
    const/4 v5, 0x1
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I
    :dg_have
    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :dg_end   # r6d010：v0==null 才跳过解析（原写反 ⇒ 读到内容反而跳过）
    # --- prob（变化时写回并打一条日志）---
    const-string v1, "prob"
    const/16 v2, 0x50
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    # r6d010：prob 钳到 [0,100]
    if-ltz v2, :dg_p_lo
    const/4 v2, 0x0
    :dg_p_lo
    const/16 v3, 0x64
    if-le v2, v3, :dg_p_hi
    const/16 v2, 0x64
    :dg_p_hi
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    if-eq v3, v2, :dg_p_same
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    const-string v1, "dcfg p="
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    :dg_p_same
    # --- intel ---
    const-string v1, "intel"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I
    # --- pin ---
    const-string v1, "pin"
    const/4 v2, -0x1
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I
    # --- debug（0=静默，1=开探针）---
    const-string v1, "debug"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I
    const/4 v3, 0x0
    if-eqz v2, :dg_dbg_off
    const/4 v3, 0x1
    :dg_dbg_off
    sput-boolean v3, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z
    # --- AI 造机（r6d009）---
    const-string v1, "ai_build"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I
    const-string v1, "ai_wartime"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I
    const-string v1, "ai_cap"
    const/4 v2, 0x4
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I
    # r6d011 诊断：配置回显（进入解析路径才打）
    const-string v1, "dcfgPB"
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I
    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V
    const-string v1, "dcfgIW"
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I
    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V
    const-string v1, "dcfgPD"
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I
    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5ii(Ljava/lang/String;II)V
    const-string v1, "ai_type"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiType:I
    const-string v1, "ai_w_fighter"
    const/4 v2, 0x5
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I
    const-string v1, "ai_w_inter"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I
    const-string v1, "ai_w_attacker"
    const/4 v2, 0x2
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I
    const-string v1, "ai_w_bomber"
    const/4 v2, 0x2
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I
    move-result v2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I
    :dg_end
    return-void
.end method

.method private strikeScore(ILaoc/kingdoms/lukasz/map/battles/Airport;I)F
    .registers 12
    # r6c002 三档（越小越优先）——次序：先机场(tier1) → 再军事(tier2) → 其余(tier3)
    #   注意：hasMilitaryBuilding 的第三来源是"机场表" ⇒ 若先判军事，机场省会掉进 tier2 ⇒ 必须先判机场
    #   mode != 1（攻机）：纯距离 d
    iget v0, p2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I
    invoke-direct {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F
    move-result v0
    const/4 v7, 0x1
    if-ne p3, v7, :ss_ret_dist
    # 打分距离钳位 1000（保证档间绝对分离：tier1 ≤1100 < tier2 ∈[1e5,1.011e5] < tier3 ∈[2e5,2.011e5]）
    const v3, 0x447a0000    # 1000.0f
    cmpg-float v7, v0, v3
    if-lez v7, :ss_noclamp
    move v0, v3
    :ss_noclamp
    # 抖动系数 f = 0.5 + rnd*0.6（M7 已登记：当前消耗全局随机流）
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F
    move-result v2
    const v3, 0x3f19999a    # 0.6f
    mul-float/2addr v2, v3
    const v3, 0x3f000000    # 0.5f
    add-float/2addr v2, v3
    # r6c004 tier1：该省有机场 → d * f（最优先）
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v1
    if-nez v1, :ss_chk_mil
    mul-float/2addr v0, v2
    return v0
    :ss_chk_mil
    # r6c004 tier2：有军事建筑 → 100000 + d * f
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v1
    if-nez v1, :ss_t3
    mul-float/2addr v0, v2
    const v3, 0x47c35000    # 100000.0f
    add-float/2addr v0, v3
    return v0
    :ss_t3
    # r6c004 tier3：其他 → 200000 + 1000/(1+eco)*f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    const/4 v4, 0x0
    if-eqz v6, :ss_ec1
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F
    move-result v4
    :ss_ec1
    const v3, 0x447a0000    # 1000.0f
    const/high16 v5, 0x3f800000    # 1.0f
    add-float/2addr v5, v4
    div-float/2addr v3, v5
    mul-float/2addr v3, v2
    const v2, 0x47c35000    # 100000.0f
    add-float/2addr v0, v2
    add-float/2addr v0, v2
    add-float/2addr v0, v3
    :ss_ret_dist
    return v0
.end method
