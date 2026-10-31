.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;
.super Ljava/lang/Object;
.source "AirProjectileCore.java"


# static fields
.field private static final DEDUPE_NS:J = 0x3d0900L

.field public static final MAX:I = 0x200

.field private static final MAX_DT_MS:J = 0x78L

.field public static final SAM_RANGE_REAL_FALLBACK:F = 100.0f

.field public static final SAM_SPD_FALLBACK:F = 180.0f

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

.field private static samLogBudget:I

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
    const/16 v0, 0x28

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 58
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static ageOf(I)F
    .registers 1

    .line 465
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 466
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

    .line 431
    nop

    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v0, v2, :cond_1a

    .line 433
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v2, :cond_17

    .line 434
    add-int/lit8 v1, v1, 0x1

    .line 432
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 437
    :cond_1a
    return v1
.end method

.method public static clear()V
    .registers 4

    .line 476
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v2, :cond_e

    .line 477
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 479
    :cond_e
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 480
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 481
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 482
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 483
    const/16 v0, 0x28

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 484
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->clear()V

    .line 485
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->clear()V

    .line 486
    return-void
.end method

.method public static get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 2

    .line 441
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

    .line 521
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 522
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 523
    const/4 v0, 0x1

    return v0

    .line 526
    :cond_a
    goto :goto_c

    .line 525
    :catchall_b
    move-exception v0

    .line 527
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method static leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F
    .registers 16

    .line 308
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    .line 309
    const/4 v4, 0x0

    cmpg-float v5, p5, v4

    if-lez v5, :cond_4f

    if-nez p0, :cond_11

    goto :goto_4f

    .line 312
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->speedOf(Ljava/lang/Object;)F

    move-result v5

    .line 313
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldHeadingOf(Ljava/lang/Object;)F

    move-result p0

    .line 314
    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1e

    .line 315
    return-object v1

    .line 317
    :cond_1e
    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 318
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p0, v8

    mul-float/2addr p0, v5

    .line 319
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 320
    move v5, v2

    :goto_30
    if-ge v5, v0, :cond_4e

    .line 321
    aget v6, v1, v2

    sub-float/2addr v6, p1

    .line 322
    aget v7, v1, v3

    sub-float/2addr v7, p2

    .line 323
    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 324
    div-float/2addr v6, p5

    .line 325
    mul-float v7, p0, v6

    add-float/2addr v7, p3

    aput v7, v1, v2

    .line 326
    mul-float/2addr v6, v4

    add-float/2addr v6, p4

    aput v6, v1, v3

    .line 320
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 328
    :cond_4e
    return-object v1

    .line 310
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 531
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    if-gtz v0, :cond_5

    .line 532
    return-void

    .line 534
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 536
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 538
    goto :goto_10

    .line 537
    :catchall_f
    move-exception p0

    .line 539
    :goto_10
    return-void
.end method

.method public static mapScale()F
    .registers 1

    .line 508
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v0, :cond_10

    .line 509
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_11

    int-to-float v0, v0

    return v0

    .line 512
    :cond_10
    goto :goto_12

    .line 511
    :catchall_11
    move-exception v0

    .line 513
    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 491
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 492
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    return p0

    .line 494
    :cond_18
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 495
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    return p0

    .line 498
    :cond_2f
    goto :goto_31

    .line 497
    :catchall_30
    move-exception p0

    .line 499
    :goto_31
    return v0
.end method

.method public static resultOf(I)I
    .registers 1

    .line 460
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 461
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

    .line 557
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private static samLog(Ljava/lang/String;)V
    .registers 2

    .line 546
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    if-gtz v0, :cond_5

    .line 547
    return-void

    .line 549
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 551
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 553
    goto :goto_10

    .line 552
    :catchall_f
    move-exception p0

    .line 554
    :goto_10
    return-void
.end method

.method public static slotCount()I
    .registers 1

    .line 426
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    return v0
.end method

.method public static spawn(IIJIFFFF)I
    .registers 21

    .line 73
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

    .line 84
    move v0, p0

    const/4 v1, -0x1

    if-ltz v0, :cond_d8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_d8

    .line 87
    :cond_c
    nop

    .line 88
    const/4 v2, 0x0

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v2, v3, :cond_26

    .line 89
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_21

    goto :goto_24

    .line 88
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 90
    :cond_24
    :goto_24
    nop

    .line 91
    goto :goto_27

    .line 88
    :cond_26
    move v2, v1

    .line 94
    :goto_27
    if-gez v2, :cond_38

    .line 95
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_30

    .line 96
    return v1

    .line 98
    :cond_30
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    move v13, v2

    goto :goto_39

    .line 94
    :cond_38
    move v13, v2

    .line 100
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

    .line 101
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

    .line 103
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aput-object v0, v1, v13

    .line 104
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 105
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

    .line 107
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

    .line 105
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 109
    return v13

    .line 85
    :cond_d8
    :goto_d8
    return v1
.end method

.method public static spawnFromMission(Ljava/lang/Object;)V
    .registers 18

    .line 119
    move-object/from16 v0, p0

    :try_start_2
    instance-of v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v1, :cond_7

    .line 120
    return-void

    .line 122
    :cond_7
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 123
    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 124
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_12

    .line 125
    return-void

    .line 127
    :cond_12
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 129
    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2

    const/4 v7, 0x1

    if-nez v2, :cond_40

    .line 130
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v1, v7

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAP nopos s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 132
    return-void

    .line 134
    :cond_40
    const/4 v2, 0x0

    aget v8, v1, v2

    .line 135
    aget v9, v1, v7

    .line 136
    nop

    .line 137
    nop

    .line 138
    invoke-static {v3, v4, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 139
    aget v2, v1, v2

    .line 140
    aget v1, v1, v7

    move v11, v1

    move v10, v2

    goto :goto_56

    .line 138
    :cond_54
    move v10, v8

    move v11, v9

    .line 142
    :goto_56
    const-string v1, "AAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 144
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v5

    .line 145
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v2

    .line 146
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v6

    .line 147
    int-to-float v12, v2

    mul-float/2addr v12, v6

    .line 148
    sub-float v13, v10, v8

    mul-float/2addr v13, v13

    sub-float v14, v11, v9

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 149
    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-lez v15, :cond_b6

    cmpl-float v16, v13, v12

    if-lez v16, :cond_b6

    .line 150
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v0, v7

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 151
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

    div-float/2addr v13, v6

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

    .line 152
    return-void

    .line 154
    :cond_b6
    cmpg-float v2, v5, v14

    if-gtz v2, :cond_c0

    .line 155
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v2

    move v13, v2

    goto :goto_c1

    .line 154
    :cond_c0
    move v13, v5

    .line 158
    :goto_c1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v2

    .line 159
    cmpl-float v5, v13, v14

    if-lez v5, :cond_d5

    if-lez v15, :cond_d5

    .line 160
    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v12, v5

    div-float/2addr v12, v13

    .line 161
    cmpl-float v5, v12, v2

    if-lez v5, :cond_d5

    .line 162
    goto :goto_d6

    .line 165
    :cond_d5
    move v12, v2

    :goto_d6
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    const/4 v5, -0x1

    const/4 v14, 0x0

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v13

    move v11, v12

    move v12, v14

    invoke-static/range {v1 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I

    move-result v1

    .line 166
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_ef

    .line 168
    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J
    :try_end_ef
    .catchall {:try_start_2 .. :try_end_ef} :catchall_f0

    .line 172
    :cond_ef
    goto :goto_f1

    .line 170
    :catchall_f0
    move-exception v0

    .line 173
    :goto_f1
    return-void
.end method

.method public static spawnSam(Ljava/lang/Object;I)V
    .registers 24

    .line 182
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 184
    :try_start_4
    instance-of v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_c

    .line 185
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_24a

    move-object v8, v0

    goto :goto_e

    .line 184
    :cond_c
    const/4 v0, 0x0

    move-object v8, v0

    .line 190
    :goto_e
    nop

    .line 191
    if-nez v8, :cond_17

    .line 192
    const-string v0, "nSP skip notmission"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 193
    return-void

    .line 197
    :cond_17
    nop

    .line 199
    :try_start_18
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_231

    .line 203
    nop

    .line 204
    if-nez v2, :cond_36

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSP skip nosite p="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 206
    return-void

    .line 208
    :cond_36
    nop

    .line 209
    nop

    .line 211
    :try_start_38
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v14, v0

    .line 212
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v3
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_219

    add-int/2addr v0, v3

    int-to-float v15, v0

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 220
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    :try_start_52
    new-array v0, v10, [F

    .line 221
    iget-wide v3, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 222
    aget v3, v0, v11
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_6c

    .line 223
    :try_start_62
    aget v0, v0, v9
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_65

    goto :goto_69

    .line 225
    :catchall_65
    move-exception v0

    goto :goto_6e

    .line 221
    :cond_67
    move v3, v14

    move v0, v15

    .line 227
    :goto_69
    move v12, v0

    move v13, v3

    goto :goto_86

    .line 225
    :catchall_6c
    move-exception v0

    move v3, v14

    .line 226
    :goto_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nSP ERR pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    move v13, v3

    move v12, v15

    .line 228
    :goto_86
    nop

    .line 230
    :try_start_87
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_90

    .line 233
    move/from16 v16, v0

    goto :goto_aa

    .line 231
    :catchall_90
    move-exception v0

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSP ERR type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    move/from16 v16, v0

    .line 234
    :goto_aa
    if-gez v16, :cond_b2

    .line 235
    const-string v0, "nSP skip notype"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 236
    return-void

    .line 238
    :cond_b2
    nop

    .line 240
    :try_start_b3
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_ba

    .line 243
    move/from16 v17, v0

    goto :goto_d4

    .line 241
    :catchall_ba
    move-exception v0

    move-object v2, v0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nSP ERR civ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    move/from16 v17, v11

    .line 245
    :goto_d4
    nop

    .line 246
    nop

    .line 248
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42c80000    # 100.0f

    :try_start_da
    const-string v0, "aaa"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 249
    if-ltz v0, :cond_ee

    .line 250
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->speedOf(I)F

    move-result v4
    :try_end_e6
    .catchall {:try_start_da .. :try_end_e6} :catchall_f2

    .line 251
    :try_start_e6
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ec

    int-to-float v3, v0

    goto :goto_ef

    .line 253
    :catchall_ec
    move-exception v0

    goto :goto_f4

    .line 249
    :cond_ee
    move v4, v2

    .line 255
    :goto_ef
    move/from16 v18, v3

    goto :goto_10c

    .line 253
    :catchall_f2
    move-exception v0

    move v4, v2

    .line 254
    :goto_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nSP fb cfg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    move/from16 v18, v3

    .line 256
    :goto_10c
    const/16 v19, 0x0

    cmpg-float v0, v4, v19

    if-gtz v0, :cond_116

    .line 257
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v4

    .line 259
    :cond_116
    cmpg-float v0, v4, v19

    if-gtz v0, :cond_11d

    .line 260
    move/from16 v21, v2

    goto :goto_11f

    .line 259
    :cond_11d
    move/from16 v21, v4

    .line 263
    :goto_11f
    nop

    .line 264
    nop

    .line 266
    move-object v2, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move v6, v12

    move/from16 v7, v21

    :try_start_128
    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F

    move-result-object v0

    .line 267
    if-eqz v0, :cond_135

    array-length v2, v0

    if-lt v2, v10, :cond_135

    .line 268
    aget v13, v0, v11

    .line 269
    aget v12, v0, v9
    :try_end_135
    .catchall {:try_start_128 .. :try_end_135} :catchall_138

    .line 273
    :cond_135
    move v3, v12

    move v2, v13

    goto :goto_151

    .line 271
    :catchall_138
    move-exception v0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nSP fb lead "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    move v3, v12

    move v2, v13

    .line 274
    :goto_151
    nop

    .line 276
    sub-float v0, v2, v14

    mul-float/2addr v0, v0

    sub-float v4, v3, v15

    mul-float/2addr v4, v4

    add-float/2addr v0, v4

    float-to-double v4, v0

    :try_start_15a
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4
    :try_end_15e
    .catchall {:try_start_15a .. :try_end_15e} :catchall_161

    double-to-float v0, v4

    .line 278
    move v4, v0

    goto :goto_164

    .line 277
    :catchall_161
    move-exception v0

    move/from16 v4, v19

    .line 280
    :goto_164
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v5

    .line 282
    :try_start_168
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v0
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_188

    mul-float v18, v18, v0

    .line 283
    cmpl-float v0, v21, v19

    if-lez v0, :cond_187

    cmpl-float v0, v18, v19

    if-lez v0, :cond_187

    .line 284
    const v0, 0x4019999a    # 2.4f

    mul-float v18, v18, v0

    div-float v18, v18, v21

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v18, v18, v0

    .line 285
    cmpl-float v0, v18, v5

    if-lez v0, :cond_187

    .line 286
    move/from16 v5, v18

    .line 291
    :cond_187
    goto :goto_1a0

    .line 289
    :catchall_188
    move-exception v0

    move-object v6, v0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nSP fb life "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 292
    :goto_1a0
    nop

    .line 294
    :try_start_1a1
    iget-wide v11, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    const/4 v13, -0x1

    const/16 v20, 0x0

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v21

    move/from16 v19, v5

    invoke-static/range {v9 .. v20}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->spawnEx(IIJIFFFFFFF)I

    move-result v0
    :try_end_1b6
    .catchall {:try_start_1a1 .. :try_end_1b6} :catchall_201

    .line 298
    nop

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nSP p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, v21, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " life="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 301
    return-void

    .line 295
    :catchall_201
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSP ERR spawn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 297
    return-void

    .line 213
    :catchall_219
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSP ERR sitexy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 215
    return-void

    .line 200
    :catchall_231
    move-exception v0

    move-object v1, v0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSP ERR prov "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 202
    return-void

    .line 187
    :catchall_24a
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nSP ERR cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static stepAll(FJ)V
    .registers 15

    .line 369
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-eqz v0, :cond_129

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    goto/16 :goto_129

    .line 372
    :cond_b
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 373
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v4, v5, :cond_128

    .line 374
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v5, v5, v4

    .line 375
    if-eqz v5, :cond_124

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v6, :cond_20

    .line 376
    goto/16 :goto_124

    .line 378
    :cond_20
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 379
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 380
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->isHoming()Z

    move-result v8

    const-string v9, "nAP exp t="

    const-string v10, " n="

    const/4 v11, 0x1

    if-eqz v8, :cond_7a

    .line 381
    iget-wide v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v6, v7, p1, p2, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 382
    aget v6, v2, v3

    .line 383
    aget v7, v2, v11

    goto :goto_9a

    .line 386
    :cond_3c
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v6, p0

    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 387
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_124

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_124

    .line 388
    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 389
    iput v1, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 390
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 391
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

    goto/16 :goto_124

    .line 395
    :cond_7a
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    if-ltz v8, :cond_9a

    .line 396
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 397
    if-eqz v8, :cond_9a

    .line 398
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v6

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 399
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v7

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 402
    :cond_9a
    :goto_9a
    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->step(FFF)I

    move-result v6

    .line 403
    if-ne v6, v11, :cond_f1

    .line 404
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 405
    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v6, :cond_ae

    .line 406
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 409
    :cond_ae
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAP hit t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v7, :cond_c9

    const-string v7, " fuse=1"

    goto :goto_cb

    :cond_c9
    const-string v7, " fuse=0"

    :goto_cb
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " age="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 411
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

    .line 410
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_124

    .line 412
    :cond_f1
    if-ne v6, v1, :cond_11c

    .line 413
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v11

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 415
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onExpire(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 416
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

    goto :goto_124

    .line 417
    :cond_11c
    const/4 v5, 0x3

    if-ne v6, v5, :cond_124

    .line 418
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    add-int/2addr v5, v11

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 373
    :cond_124
    :goto_124
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    .line 421
    :cond_128
    return-void

    .line 370
    :cond_129
    :goto_129
    return-void
.end method

.method public static targetMissionOf(I)J
    .registers 3

    .line 470
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 471
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

    .line 337
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 338
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3d0900

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 339
    return-void

    .line 341
    :cond_10
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 342
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 345
    return-void

    .line 347
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x10

    goto :goto_32

    :cond_2e
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    sub-long v2, v0, v2

    .line 349
    :goto_32
    cmp-long v6, v2, v4

    if-gez v6, :cond_37

    .line 350
    goto :goto_3f

    .line 351
    :cond_37
    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    .line 352
    goto :goto_3f

    .line 351
    :cond_3e
    move-wide v4, v2

    .line 354
    :goto_3f
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 355
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v2

    .line 356
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4c

    .line 357
    const/high16 v2, 0x43960000    # 300.0f

    .line 359
    :cond_4c
    long-to-float v3, v4

    div-float/2addr v3, v2

    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->stepAll(FJ)V

    .line 360
    return-void
.end method

.method public static typeOf(I)I
    .registers 1

    .line 455
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 456
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

    .line 445
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 446
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

    .line 450
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 451
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    :goto_a
    return p0
.end method
