.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;
.super Ljava/lang/Object;
.source "AirProjectileCore.java"


# static fields
.field private static final DEDUPE_NS:J = 0x3d0900L

.field public static final MAX:I = 0x200

.field private static final MAX_DT_MS:J = 0x78L

.field private static final SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

.field public static dbgExpired:I

.field public static dbgFuse:I

.field public static dbgHit:I

.field public static dbgLost:I

.field public static dbgNogo:I

.field public static dbgSpawn:I

.field private static lastTickMs:J

.field private static lastTickNs:J

.field private static logBudget:I

.field private static used:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    .line 38
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 41
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 42
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 43
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 44
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 46
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 50
    const/16 v0, 0xf0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 53
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static ageOf(I)F
    .registers 1

    .line 341
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 342
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    :goto_a
    return p0
.end method

.method public static aliveCount()I
    .registers 3

    .line 307
    nop

    .line 308
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v0, v2, :cond_1a

    .line 309
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v2, :cond_17

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 308
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    :cond_1a
    return v1
.end method

.method public static clear()V
    .registers 4

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v2, :cond_e

    .line 353
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    :cond_e
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 356
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 357
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 358
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 359
    return-void
.end method

.method public static get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 2

    .line 317
    if-ltz p0, :cond_b

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge p0, v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object p0, v0, p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 394
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 395
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 396
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_a
    goto :goto_c

    .line 398
    :catchall_b
    move-exception v0

    .line 400
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 404
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    if-gtz v0, :cond_5

    .line 405
    return-void

    .line 407
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 409
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 411
    goto :goto_10

    .line 410
    :catchall_f
    move-exception p0

    .line 412
    :goto_10
    return-void
.end method

.method public static mapScale()F
    .registers 1

    .line 381
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v0, :cond_10

    .line 382
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_11

    int-to-float v0, v0

    return v0

    .line 385
    :cond_10
    goto :goto_12

    .line 384
    :catchall_11
    move-exception v0

    .line 386
    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 364
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 365
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    return p0

    .line 367
    :cond_18
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 368
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    return p0

    .line 371
    :cond_2f
    goto :goto_31

    .line 370
    :catchall_30
    move-exception p0

    .line 372
    :goto_31
    return v0
.end method

.method public static resultOf(I)I
    .registers 1

    .line 336
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 337
    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    :goto_a
    return p0
.end method

.method private static round2(F)F
    .registers 2

    .line 415
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static slotCount()I
    .registers 1

    .line 302
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    return v0
.end method

.method public static spawn(IIJIFFFF)I
    .registers 21

    .line 68
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v11}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I

    move-result v0

    return v0
.end method

.method public static spawnEx(IIJIFFFFFFF)I
    .registers 26

    .line 79
    move v0, p0

    const/4 v1, -0x1

    if-ltz v0, :cond_d8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_d8

    .line 82
    :cond_c
    nop

    .line 83
    const/4 v2, 0x0

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v2, v3, :cond_26

    .line 84
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_21

    goto :goto_24

    .line 83
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 85
    :cond_24
    :goto_24
    nop

    .line 86
    goto :goto_27

    .line 83
    :cond_26
    move v2, v1

    .line 89
    :goto_27
    if-gez v2, :cond_38

    .line 90
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_30

    .line 91
    return v1

    .line 93
    :cond_30
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    move v13, v2

    goto :goto_39

    .line 89
    :cond_38
    move v13, v2

    .line 95
    :goto_39
    sub-float v1, p8, p6

    float-to-double v1, v1

    sub-float v3, p7, p5

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v4, v1

    .line 96
    move v0, p0

    move v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->create(IIFFFJIFFFFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aput-object v0, v1, v13

    .line 99
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAP spawn t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->idOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " civ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " life="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 102
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fuse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 104
    return v13

    .line 80
    :cond_d8
    :goto_d8
    return v1
.end method

.method public static spawnFromMission(Ljava/lang/Object;)V
    .registers 18

    .line 113
    move-object/from16 v0, p0

    :try_start_2
    instance-of v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v1, :cond_7

    .line 114
    return-void

    .line 116
    :cond_7
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 117
    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 118
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_12

    .line 119
    return-void

    .line 121
    :cond_12
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 122
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    .line 123
    iget v5, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F

    .line 124
    iget-wide v6, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2e

    .line 125
    aget v2, v1, v7

    .line 126
    aget v5, v1, v8

    move v6, v2

    move v9, v5

    goto :goto_30

    .line 124
    :cond_2e
    move v6, v2

    move v9, v5

    .line 128
    :goto_30
    nop

    .line 129
    nop

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 131
    aget v2, v1, v7

    .line 132
    aget v1, v1, v8

    move v11, v1

    move v10, v2

    goto :goto_45

    .line 130
    :cond_43
    move v10, v6

    move v11, v9

    .line 134
    :goto_45
    const-string v1, "AAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 135
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 136
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v5

    .line 137
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v2

    .line 138
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v7

    .line 139
    int-to-float v12, v2

    mul-float/2addr v12, v7

    .line 140
    sub-float v13, v10, v6

    mul-float/2addr v13, v13

    sub-float v14, v11, v9

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 141
    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-lez v15, :cond_a5

    cmpl-float v16, v13, v12

    if-lez v16, :cond_a5

    .line 142
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v0, v8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nAP nogo t="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-float/2addr v13, v7

    float-to-int v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 144
    return-void

    .line 146
    :cond_a5
    cmpg-float v2, v5, v14

    if-gtz v2, :cond_af

    .line 147
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v2

    move v13, v2

    goto :goto_b0

    .line 146
    :cond_af
    move v13, v5

    .line 150
    :goto_b0
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v2

    .line 151
    cmpl-float v5, v13, v14

    if-lez v5, :cond_c4

    if-lez v15, :cond_c4

    .line 152
    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v12, v5

    div-float/2addr v12, v13

    .line 153
    cmpl-float v5, v12, v2

    if-lez v5, :cond_c4

    .line 154
    goto :goto_c5

    .line 157
    :cond_c4
    move v12, v2

    :goto_c5
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    const/4 v5, -0x1

    const/4 v0, 0x0

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v13

    move v11, v12

    move v12, v0

    invoke-static/range {v1 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I
    :try_end_d2
    .catchall {:try_start_2 .. :try_end_d2} :catchall_d3

    .line 160
    goto :goto_d4

    .line 158
    :catchall_d3
    move-exception v0

    .line 161
    :goto_d4
    return-void
.end method

.method public static spawnSam(Ljava/lang/Object;I)V
    .registers 15

    .line 171
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 172
    return-void

    .line 174
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 175
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 176
    if-nez p1, :cond_e

    .line 177
    return-void

    .line 179
    :cond_e
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 180
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 182
    nop

    .line 183
    nop

    .line 184
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 185
    aget v1, v0, v2

    .line 186
    const/4 v3, 0x1

    aget v0, v0, v3

    move v9, v0

    move v8, v1

    goto :goto_3e

    .line 184
    :cond_3c
    move v8, v6

    move v9, v7

    .line 188
    :goto_3e
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_85

    .line 189
    nop

    .line 191
    :try_start_45
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4b

    .line 193
    move v2, p1

    goto :goto_4c

    .line 192
    :catchall_4b
    move-exception p1

    .line 195
    :goto_4c
    :try_start_4c
    const-string p1, "aaa"

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 196
    const/4 v0, 0x0

    if-ltz p1, :cond_5b

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->speedOf(I)F

    move-result v3

    move v10, v3

    goto :goto_5c

    :cond_5b
    move v10, v0

    .line 197
    :goto_5c
    nop

    .line 198
    cmpl-float v3, v10, v0

    if-lez v3, :cond_7c

    if-ltz p1, :cond_7c

    .line 199
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v3

    mul-float/2addr p1, v3

    .line 200
    const v3, 0x3f933333    # 1.15f

    mul-float/2addr p1, v3

    div-float/2addr p1, v10

    .line 201
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_7c

    .line 202
    move v11, p1

    goto :goto_7d

    .line 205
    :cond_7c
    move v11, v0

    :goto_7d
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    const/4 v5, -0x1

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I
    :try_end_84
    .catchall {:try_start_4c .. :try_end_84} :catchall_85

    .line 208
    goto :goto_86

    .line 206
    :catchall_85
    move-exception p0

    .line 209
    :goto_86
    return-void
.end method

.method public static stepAll(FJ)V
    .registers 15

    .line 249
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-eqz v0, :cond_123

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    goto/16 :goto_123

    .line 252
    :cond_b
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 253
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v4, v5, :cond_122

    .line 254
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v5, v5, v4

    .line 255
    if-eqz v5, :cond_11e

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v6, :cond_20

    .line 256
    goto/16 :goto_11e

    .line 258
    :cond_20
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 259
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 260
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->isHoming()Z

    move-result v8

    const-string v9, "nAP exp t="

    const-string v10, " n="

    const/4 v11, 0x1

    if-eqz v8, :cond_7a

    .line 261
    iget-wide v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v6, v7, p1, p2, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 262
    aget v6, v2, v3

    .line 263
    aget v7, v2, v11

    goto :goto_9a

    .line 266
    :cond_3c
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v6, p0

    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 267
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_11e

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_11e

    .line 268
    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 269
    iput v1, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 270
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto/16 :goto_11e

    .line 275
    :cond_7a
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    if-ltz v8, :cond_9a

    .line 276
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 277
    if-eqz v8, :cond_9a

    .line 278
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v6

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 279
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v7

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 282
    :cond_9a
    :goto_9a
    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->step(FFF)I

    move-result v6

    .line 283
    if-ne v6, v11, :cond_ee

    .line 284
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 285
    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v6, :cond_ae

    .line 286
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 288
    :cond_ae
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAP hit t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v7, :cond_c6

    const-string v7, " fuse=1"

    goto :goto_c8

    :cond_c6
    const-string v7, " fuse=0"

    :goto_c8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " age="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 289
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_11e

    .line 290
    :cond_ee
    if-ne v6, v1, :cond_116

    .line 291
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_11e

    .line 293
    :cond_116
    const/4 v5, 0x3

    if-ne v6, v5, :cond_11e

    .line 294
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    add-int/2addr v5, v11

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 253
    :cond_11e
    :goto_11e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 297
    :cond_122
    return-void

    .line 250
    :cond_123
    :goto_123
    return-void
.end method

.method public static targetMissionOf(I)J
    .registers 3

    .line 346
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 347
    if-nez p0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    :goto_b
    return-wide v0
.end method

.method public static tick()V
    .registers 7

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 218
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3d0900

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 219
    return-void

    .line 221
    :cond_10
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 222
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 225
    return-void

    .line 227
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 228
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x10

    goto :goto_32

    :cond_2e
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    sub-long v2, v0, v2

    .line 229
    :goto_32
    cmp-long v6, v2, v4

    if-gez v6, :cond_37

    .line 230
    goto :goto_3f

    .line 231
    :cond_37
    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    .line 232
    goto :goto_3f

    .line 231
    :cond_3e
    move-wide v4, v2

    .line 234
    :goto_3f
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 235
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v2

    .line 236
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4c

    .line 237
    const/high16 v2, 0x43960000    # 300.0f

    .line 239
    :cond_4c
    long-to-float v3, v4

    div-float/2addr v3, v2

    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->stepAll(FJ)V

    .line 240
    return-void
.end method

.method public static typeOf(I)I
    .registers 1

    .line 331
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 332
    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    :goto_a
    return p0
.end method

.method public static xOf(I)F
    .registers 1

    .line 321
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 322
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    :goto_a
    return p0
.end method

.method public static yOf(I)F
    .registers 1

    .line 326
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 327
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    :goto_a
    return p0
.end method
