.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;
.super Ljava/lang/Object;
.source "AirProjectileCore.java"


# static fields
.field private static final DEDUPE_NS:J = 0x3d0900L

.field public static final LOD_MIN_TURNS:F = 0.3f

.field public static final MAX:I = 0x200

.field private static final MAX_DT_MS:J = 0x78L

.field public static final RENDER_MARGIN:F = 192.0f

.field public static final SAM_RANGE_REAL_FALLBACK:F = 100.0f

.field public static final SAM_SPD_FALLBACK:F = 180.0f

.field private static final SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

.field public static final VIEW_MARGIN:F = 128.0f

.field public static dbgExpired:I

.field public static dbgFuse:I

.field public static dbgHit:I

.field public static dbgLodSkips:I

.field public static dbgLodSteps:I

.field public static dbgLost:I

.field public static dbgNogo:I

.field public static dbgSpawn:I

.field private static frameNo:I

.field private static lastTickMs:J

.field private static lastTickNs:J

.field private static logBudget:I

.field private static perfBudget:I

.field private static samLogBudget:I

.field private static used:I

.field private static vpCamX:I

.field private static vpCamY:I

.field private static vpOk:Z

.field private static vpZoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

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
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 51
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 59
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 61
    const/16 v1, 0x28

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 66
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 67
    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    .line 71
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamX:I

    .line 72
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamY:I

    .line 73
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 76
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    .line 77
    const/16 v0, 0xa

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static ageOf(I)F
    .registers 1

    .line 561
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 562
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

    .line 527
    nop

    .line 528
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v0, v2, :cond_1a

    .line 529
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v2, :cond_17

    .line 530
    add-int/lit8 v1, v1, 0x1

    .line 528
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 533
    :cond_1a
    return v1
.end method

.method public static clear()V
    .registers 4

    .line 572
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v2, :cond_e

    .line 573
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 575
    :cond_e
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 576
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 577
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 578
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 579
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 580
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 581
    const/16 v0, 0x28

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 582
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->clear()V

    .line 583
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->clear()V

    .line 584
    return-void
.end method

.method public static get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 2

    .line 537
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

.method public static inView(FFIIF)Z
    .registers 8

    .line 395
    const/4 v0, 0x1

    if-lez p2, :cond_1e

    if-gtz p3, :cond_6

    goto :goto_1e

    .line 398
    :cond_6
    neg-float v1, p4

    cmpl-float v2, p0, v1

    if-ltz v2, :cond_1c

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1c

    int-to-float p2, p2

    add-float/2addr p2, p4

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_1c

    int-to-float p0, p3

    add-float/2addr p0, p4

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    .line 396
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static inViewScreen(FFF)Z
    .registers 5

    .line 424
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-static {p0, p1, v0, v1, p2}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->inView(FFIIF)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    .line 426
    :catchall_9
    move-exception p0

    .line 427
    const/4 p0, 0x1

    return p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 619
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 620
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 621
    const/4 v0, 0x1

    return v0

    .line 624
    :cond_a
    goto :goto_c

    .line 623
    :catchall_b
    move-exception v0

    .line 625
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method static leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F
    .registers 16

    .line 327
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    .line 328
    const/4 v4, 0x0

    cmpg-float v5, p5, v4

    if-lez v5, :cond_4f

    if-nez p0, :cond_11

    goto :goto_4f

    .line 331
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->speedOf(Ljava/lang/Object;)F

    move-result v5

    .line 332
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldHeadingOf(Ljava/lang/Object;)F

    move-result p0

    .line 333
    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1e

    .line 334
    return-object v1

    .line 336
    :cond_1e
    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 337
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p0, v8

    mul-float/2addr p0, v5

    .line 338
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 339
    move v5, v2

    :goto_30
    if-ge v5, v0, :cond_4e

    .line 340
    aget v6, v1, v2

    sub-float/2addr v6, p1

    .line 341
    aget v7, v1, v3

    sub-float/2addr v7, p2

    .line 342
    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 343
    div-float/2addr v6, p5

    .line 344
    mul-float v7, p0, v6

    add-float/2addr v7, p3

    aput v7, v1, v2

    .line 345
    mul-float/2addr v6, v4

    add-float/2addr v6, p4

    aput v6, v1, v3

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 347
    :cond_4e
    return-object v1

    .line 329
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 629
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    if-gtz v0, :cond_5

    .line 630
    return-void

    .line 632
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 634
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 636
    goto :goto_10

    .line 635
    :catchall_f
    move-exception p0

    .line 637
    :goto_10
    return-void
.end method

.method public static mapScale()F
    .registers 1

    .line 606
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v0, :cond_10

    .line 607
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_11

    int-to-float v0, v0

    return v0

    .line 610
    :cond_10
    goto :goto_12

    .line 609
    :catchall_11
    move-exception v0

    .line 611
    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 589
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 590
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    return p0

    .line 592
    :cond_18
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 593
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    return p0

    .line 596
    :cond_2f
    goto :goto_31

    .line 595
    :catchall_30
    move-exception p0

    .line 597
    :goto_31
    return v0
.end method

.method public static onScreen(FFF)Z
    .registers 7

    .line 433
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 434
    return v1

    .line 437
    :cond_6
    :try_start_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 438
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 439
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamX:I

    int-to-float v3, v3

    add-float/2addr p0, v3

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    mul-float/2addr p0, v3

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamY:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    mul-float/2addr p1, v3

    invoke-static {p0, p1, v0, v2, p2}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->inView(FFIIF)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return p0

    .line 440
    :catchall_1d
    move-exception p0

    .line 441
    return v1
.end method

.method private static refreshView()V
    .registers 3

    .line 403
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 405
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v1, :cond_2e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-nez v1, :cond_c

    goto :goto_2e

    .line 408
    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    .line 409
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_18

    .line 410
    return-void

    .line 412
    :cond_18
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    .line 413
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamX:I

    .line 414
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamY:I

    .line 415
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    .line 418
    goto :goto_32

    .line 406
    :cond_2e
    :goto_2e
    return-void

    .line 416
    :catchall_2f
    move-exception v1

    .line 417
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 419
    :goto_32
    return-void
.end method

.method public static resultOf(I)I
    .registers 1

    .line 556
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 557
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

    .line 655
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private static samLog(Ljava/lang/String;)V
    .registers 2

    .line 644
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    if-gtz v0, :cond_5

    .line 645
    return-void

    .line 647
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 649
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 651
    goto :goto_10

    .line 650
    :catchall_f
    move-exception p0

    .line 652
    :goto_10
    return-void
.end method

.method public static slotCount()I
    .registers 1

    .line 522
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    return v0
.end method

.method public static spawn(IIJIFFFF)I
    .registers 21

    .line 92
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

    .line 103
    move v0, p0

    const/4 v1, -0x1

    if-ltz v0, :cond_d8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_d8

    .line 106
    :cond_c
    nop

    .line 107
    const/4 v2, 0x0

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v2, v3, :cond_26

    .line 108
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_21

    goto :goto_24

    .line 107
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 109
    :cond_24
    :goto_24
    nop

    .line 110
    goto :goto_27

    .line 107
    :cond_26
    move v2, v1

    .line 113
    :goto_27
    if-gez v2, :cond_38

    .line 114
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_30

    .line 115
    return v1

    .line 117
    :cond_30
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    move v13, v2

    goto :goto_39

    .line 113
    :cond_38
    move v13, v2

    .line 119
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

    .line 120
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

    .line 122
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aput-object v0, v1, v13

    .line 123
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 124
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

    .line 126
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

    .line 124
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 128
    return v13

    .line 104
    :cond_d8
    :goto_d8
    return v1
.end method

.method public static spawnFromMission(Ljava/lang/Object;)V
    .registers 18

    .line 138
    move-object/from16 v0, p0

    :try_start_2
    instance-of v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v1, :cond_7

    .line 139
    return-void

    .line 141
    :cond_7
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 142
    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 143
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_12

    .line 144
    return-void

    .line 146
    :cond_12
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 148
    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2

    const/4 v7, 0x1

    if-nez v2, :cond_40

    .line 149
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v1, v7

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 150
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

    .line 151
    return-void

    .line 153
    :cond_40
    const/4 v2, 0x0

    aget v8, v1, v2

    .line 154
    aget v9, v1, v7

    .line 155
    nop

    .line 156
    nop

    .line 157
    invoke-static {v3, v4, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 158
    aget v2, v1, v2

    .line 159
    aget v1, v1, v7

    move v11, v1

    move v10, v2

    goto :goto_56

    .line 157
    :cond_54
    move v10, v8

    move v11, v9

    .line 161
    :goto_56
    const-string v1, "AAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 163
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v5

    .line 164
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v2

    .line 165
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v6

    .line 166
    int-to-float v12, v2

    mul-float/2addr v12, v6

    .line 167
    sub-float v13, v10, v8

    mul-float/2addr v13, v13

    sub-float v14, v11, v9

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 168
    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-lez v15, :cond_b6

    cmpl-float v16, v13, v12

    if-lez v16, :cond_b6

    .line 169
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v0, v7

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 170
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

    .line 171
    return-void

    .line 173
    :cond_b6
    cmpg-float v2, v5, v14

    if-gtz v2, :cond_c0

    .line 174
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v2

    move v13, v2

    goto :goto_c1

    .line 173
    :cond_c0
    move v13, v5

    .line 177
    :goto_c1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v2

    .line 178
    cmpl-float v5, v13, v14

    if-lez v5, :cond_d5

    if-lez v15, :cond_d5

    .line 179
    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v12, v5

    div-float/2addr v12, v13

    .line 180
    cmpl-float v5, v12, v2

    if-lez v5, :cond_d5

    .line 181
    goto :goto_d6

    .line 184
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

    .line 185
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_ef

    .line 187
    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J
    :try_end_ef
    .catchall {:try_start_2 .. :try_end_ef} :catchall_f0

    .line 191
    :cond_ef
    goto :goto_f1

    .line 189
    :catchall_f0
    move-exception v0

    .line 192
    :goto_f1
    return-void
.end method

.method public static spawnSam(Ljava/lang/Object;I)V
    .registers 24

    .line 201
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 203
    :try_start_4
    instance-of v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_c

    .line 204
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_24a

    move-object v8, v0

    goto :goto_e

    .line 203
    :cond_c
    const/4 v0, 0x0

    move-object v8, v0

    .line 209
    :goto_e
    nop

    .line 210
    if-nez v8, :cond_17

    .line 211
    const-string v0, "nSP skip notmission"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 212
    return-void

    .line 216
    :cond_17
    nop

    .line 218
    :try_start_18
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_231

    .line 222
    nop

    .line 223
    if-nez v2, :cond_36

    .line 224
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

    .line 225
    return-void

    .line 227
    :cond_36
    nop

    .line 228
    nop

    .line 230
    :try_start_38
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v14, v0

    .line 231
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v3
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_219

    add-int/2addr v0, v3

    int-to-float v15, v0

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 239
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    :try_start_52
    new-array v0, v10, [F

    .line 240
    iget-wide v3, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 241
    aget v3, v0, v11
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_6c

    .line 242
    :try_start_62
    aget v0, v0, v9
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_65

    goto :goto_69

    .line 244
    :catchall_65
    move-exception v0

    goto :goto_6e

    .line 240
    :cond_67
    move v3, v14

    move v0, v15

    .line 246
    :goto_69
    move v12, v0

    move v13, v3

    goto :goto_86

    .line 244
    :catchall_6c
    move-exception v0

    move v3, v14

    .line 245
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

    .line 247
    :goto_86
    nop

    .line 249
    :try_start_87
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_90

    .line 252
    move/from16 v16, v0

    goto :goto_aa

    .line 250
    :catchall_90
    move-exception v0

    .line 251
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

    .line 253
    :goto_aa
    if-gez v16, :cond_b2

    .line 254
    const-string v0, "nSP skip notype"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 255
    return-void

    .line 257
    :cond_b2
    nop

    .line 259
    :try_start_b3
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_ba

    .line 262
    move/from16 v17, v0

    goto :goto_d4

    .line 260
    :catchall_ba
    move-exception v0

    move-object v2, v0

    .line 261
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

    .line 264
    :goto_d4
    nop

    .line 265
    nop

    .line 267
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42c80000    # 100.0f

    :try_start_da
    const-string v0, "aaa"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 268
    if-ltz v0, :cond_ee

    .line 269
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->speedOf(I)F

    move-result v4
    :try_end_e6
    .catchall {:try_start_da .. :try_end_e6} :catchall_f2

    .line 270
    :try_start_e6
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ec

    int-to-float v3, v0

    goto :goto_ef

    .line 272
    :catchall_ec
    move-exception v0

    goto :goto_f4

    .line 268
    :cond_ee
    move v4, v2

    .line 274
    :goto_ef
    move/from16 v18, v3

    goto :goto_10c

    .line 272
    :catchall_f2
    move-exception v0

    move v4, v2

    .line 273
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

    .line 275
    :goto_10c
    const/16 v19, 0x0

    cmpg-float v0, v4, v19

    if-gtz v0, :cond_116

    .line 276
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v4

    .line 278
    :cond_116
    cmpg-float v0, v4, v19

    if-gtz v0, :cond_11d

    .line 279
    move/from16 v21, v2

    goto :goto_11f

    .line 278
    :cond_11d
    move/from16 v21, v4

    .line 282
    :goto_11f
    nop

    .line 283
    nop

    .line 285
    move-object v2, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move v6, v12

    move/from16 v7, v21

    :try_start_128
    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F

    move-result-object v0

    .line 286
    if-eqz v0, :cond_135

    array-length v2, v0

    if-lt v2, v10, :cond_135

    .line 287
    aget v13, v0, v11

    .line 288
    aget v12, v0, v9
    :try_end_135
    .catchall {:try_start_128 .. :try_end_135} :catchall_138

    .line 292
    :cond_135
    move v3, v12

    move v2, v13

    goto :goto_151

    .line 290
    :catchall_138
    move-exception v0

    .line 291
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

    .line 293
    :goto_151
    nop

    .line 295
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

    .line 297
    move v4, v0

    goto :goto_164

    .line 296
    :catchall_161
    move-exception v0

    move/from16 v4, v19

    .line 299
    :goto_164
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v5

    .line 301
    :try_start_168
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v0
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_188

    mul-float v18, v18, v0

    .line 302
    cmpl-float v0, v21, v19

    if-lez v0, :cond_187

    cmpl-float v0, v18, v19

    if-lez v0, :cond_187

    .line 303
    const v0, 0x4019999a    # 2.4f

    mul-float v18, v18, v0

    div-float v18, v18, v21

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v18, v18, v0

    .line 304
    cmpl-float v0, v18, v5

    if-lez v0, :cond_187

    .line 305
    move/from16 v5, v18

    .line 310
    :cond_187
    goto :goto_1a0

    .line 308
    :catchall_188
    move-exception v0

    move-object v6, v0

    .line 309
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

    .line 311
    :goto_1a0
    nop

    .line 313
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

    .line 317
    nop

    .line 318
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

    .line 319
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 320
    return-void

    .line 314
    :catchall_201
    move-exception v0

    .line 315
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

    .line 316
    return-void

    .line 232
    :catchall_219
    move-exception v0

    .line 233
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

    .line 234
    return-void

    .line 219
    :catchall_231
    move-exception v0

    move-object v1, v0

    .line 220
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

    .line 221
    return-void

    .line 206
    :catchall_24a
    move-exception v0

    .line 207
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

    .line 208
    return-void
.end method

.method public static stepAll(FJ)V
    .registers 16

    .line 452
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-eqz v0, :cond_15a

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    goto/16 :goto_15a

    .line 456
    :cond_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->refreshMissionIndex()V

    .line 457
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->refreshView()V

    .line 458
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 459
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v4, v5, :cond_159

    .line 460
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v5, v5, v4

    .line 461
    if-eqz v5, :cond_155

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v6, :cond_26

    .line 462
    goto/16 :goto_155

    .line 465
    :cond_26
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    add-float/2addr v6, p0

    .line 466
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    const/high16 v9, 0x43000000    # 128.0f

    invoke-static {v7, v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->onScreen(FFF)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4b

    const v7, 0x3e99999a    # 0.3f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4b

    .line 467
    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    .line 468
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodSkips:I

    add-int/2addr v6, v8

    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodSkips:I

    .line 469
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    add-int/2addr v5, v8

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 470
    goto/16 :goto_155

    .line 472
    :cond_4b
    iput v0, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    .line 473
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    add-int/2addr v7, v8

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 474
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 475
    iget v9, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 476
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->isHoming()Z

    move-result v10

    const-string v11, "nAP exp t="

    const-string v12, " n="

    if-eqz v10, :cond_ab

    .line 477
    iget-wide v9, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v9, v10, p1, p2, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 478
    aget v7, v2, v3

    .line 479
    aget v9, v2, v8

    goto :goto_cb

    .line 482
    :cond_6d
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v7, v6

    iput v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 483
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_155

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_155

    .line 484
    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 485
    iput v1, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 486
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto/16 :goto_155

    .line 491
    :cond_ab
    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    if-ltz v10, :cond_cb

    .line 492
    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 493
    if-eqz v10, :cond_cb

    .line 494
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v7

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    .line 495
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v9

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 498
    :cond_cb
    :goto_cb
    invoke-virtual {v5, v6, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->step(FFF)I

    move-result v6

    .line 499
    if-ne v6, v8, :cond_122

    .line 500
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 501
    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v6, :cond_df

    .line 502
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 505
    :cond_df
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 506
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAP hit t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v7, :cond_fa

    const-string v7, " fuse=1"

    goto :goto_fc

    :cond_fa
    const-string v7, " fuse=0"

    :goto_fc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " age="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 507
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_155

    .line 508
    :cond_122
    if-ne v6, v1, :cond_14d

    .line 509
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 511
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onExpire(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto :goto_155

    .line 513
    :cond_14d
    const/4 v5, 0x3

    if-ne v6, v5, :cond_155

    .line 514
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    add-int/2addr v5, v8

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    .line 459
    :cond_155
    :goto_155
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    .line 517
    :cond_159
    return-void

    .line 453
    :cond_15a
    :goto_15a
    return-void
.end method

.method public static targetMissionOf(I)J
    .registers 3

    .line 566
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 567
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

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 357
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3d0900

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 358
    return-void

    .line 360
    :cond_10
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 361
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 364
    return-void

    .line 366
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 367
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x10

    goto :goto_32

    :cond_2e
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    sub-long v2, v0, v2

    .line 368
    :goto_32
    cmp-long v6, v2, v4

    if-gez v6, :cond_37

    .line 369
    goto :goto_3f

    .line 370
    :cond_37
    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    .line 371
    goto :goto_3f

    .line 370
    :cond_3e
    move-wide v4, v2

    .line 373
    :goto_3f
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 374
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v2

    .line 375
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4c

    .line 376
    const/high16 v2, 0x43960000    # 300.0f

    .line 378
    :cond_4c
    long-to-float v3, v4

    div-float/2addr v3, v2

    .line 379
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    .line 380
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-lez v2, :cond_a8

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    rem-int/lit16 v2, v2, 0x258

    if-nez v2, :cond_a8

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    if-lez v2, :cond_a8

    .line 381
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    .line 383
    :try_start_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nPF f="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " proj="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->aliveCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lod="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " step="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_68 .. :try_end_a6} :catchall_a7

    .line 386
    goto :goto_a8

    .line 385
    :catchall_a7
    move-exception v2

    .line 388
    :cond_a8
    :goto_a8
    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->stepAll(FJ)V

    .line 389
    return-void
.end method

.method public static typeOf(I)I
    .registers 1

    .line 551
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 552
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

    .line 541
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 542
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

    .line 546
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 547
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    :goto_a
    return p0
.end method
