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

.field public static dbgIntc:I

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
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgIntc:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 50
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 52
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 53
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 61
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 63
    const/16 v1, 0x28

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 68
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 69
    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    .line 73
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamX:I

    .line 74
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamY:I

    .line 75
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 78
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    .line 79
    const/16 v0, 0xa

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static ageOf(I)F
    .registers 1

    .line 587
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 588
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

    .line 553
    nop

    .line 554
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v0, v2, :cond_1a

    .line 555
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v2, :cond_17

    .line 556
    add-int/lit8 v1, v1, 0x1

    .line 554
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 559
    :cond_1a
    return v1
.end method

.method public static clear()V
    .registers 4

    .line 598
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v2, :cond_e

    .line 599
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 601
    :cond_e
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    .line 602
    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 603
    const/16 v1, 0xf0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 604
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 605
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 606
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 607
    const/16 v1, 0x28

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 608
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgIntc:I

    .line 609
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->clear()V

    .line 610
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->clear()V

    .line 611
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->clearAgm()V

    .line 612
    return-void
.end method

.method private static clearAgm()V
    .registers 4

    .line 621
    :try_start_0
    const-string v0, "aoc.kingdoms.lukasz.map.battles.AirAgm"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clear"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 622
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 624
    goto :goto_17

    .line 623
    :catchall_16
    move-exception v0

    .line 625
    :goto_17
    return-void
.end method

.method public static countAliveAamTargeting(J)I
    .registers 7

    .line 537
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 538
    return v1

    .line 540
    :cond_8
    nop

    .line 541
    const-string v0, "AAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 542
    move v2, v1

    :goto_10
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v1, v3, :cond_2d

    .line 543
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v1

    .line 544
    if-eqz v3, :cond_2a

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v4, :cond_2a

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    if-ne v4, v0, :cond_2a

    iget-wide v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_2a

    .line 545
    add-int/lit8 v2, v2, 0x1

    .line 542
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 548
    :cond_2d
    return v2
.end method

.method public static get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 2

    .line 563
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

    .line 397
    const/4 v0, 0x1

    if-lez p2, :cond_1e

    if-gtz p3, :cond_6

    goto :goto_1e

    .line 400
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

    .line 398
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static inViewScreen(FFF)Z
    .registers 5

    .line 426
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-static {p0, p1, v0, v1, p2}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->inView(FFIIF)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    .line 428
    :catchall_9
    move-exception p0

    .line 429
    const/4 p0, 0x1

    return p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 660
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 661
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 662
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_a
    goto :goto_c

    .line 664
    :catchall_b
    move-exception v0

    .line 666
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method static leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F
    .registers 16

    .line 329
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    .line 330
    const/4 v4, 0x0

    cmpg-float v5, p5, v4

    if-lez v5, :cond_4f

    if-nez p0, :cond_11

    goto :goto_4f

    .line 333
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->speedOf(Ljava/lang/Object;)F

    move-result v5

    .line 334
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldHeadingOf(Ljava/lang/Object;)F

    move-result p0

    .line 335
    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1e

    .line 336
    return-object v1

    .line 338
    :cond_1e
    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 339
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p0, v8

    mul-float/2addr p0, v5

    .line 340
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v5

    .line 341
    move v5, v2

    :goto_30
    if-ge v5, v0, :cond_4e

    .line 342
    aget v6, v1, v2

    sub-float/2addr v6, p1

    .line 343
    aget v7, v1, v3

    sub-float/2addr v7, p2

    .line 344
    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 345
    div-float/2addr v6, p5

    .line 346
    mul-float v7, p0, v6

    add-float/2addr v7, p3

    aput v7, v1, v2

    .line 347
    mul-float/2addr v6, v4

    add-float/2addr v6, p4

    aput v6, v1, v3

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 349
    :cond_4e
    return-object v1

    .line 331
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .line 670
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    if-gtz v0, :cond_5

    .line 671
    return-void

    .line 673
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->logBudget:I

    .line 675
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 677
    goto :goto_10

    .line 676
    :catchall_f
    move-exception p0

    .line 678
    :goto_10
    return-void
.end method

.method public static mapScale()F
    .registers 1

    .line 647
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v0, :cond_10

    .line 648
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_11

    int-to-float v0, v0

    return v0

    .line 651
    :cond_10
    goto :goto_12

    .line 650
    :catchall_11
    move-exception v0

    .line 652
    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 630
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_18

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 631
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    return p0

    .line 633
    :cond_18
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 634
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    return p0

    .line 637
    :cond_2f
    goto :goto_31

    .line 636
    :catchall_30
    move-exception p0

    .line 638
    :goto_31
    return v0
.end method

.method public static onScreen(FFF)Z
    .registers 7

    .line 435
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 436
    return v1

    .line 439
    :cond_6
    :try_start_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    .line 440
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    .line 441
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

    .line 442
    :catchall_1d
    move-exception p0

    .line 443
    return v1
.end method

.method private static refreshView()V
    .registers 3

    .line 405
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 407
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v1, :cond_2e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-nez v1, :cond_c

    goto :goto_2e

    .line 410
    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    .line 411
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_18

    .line 412
    return-void

    .line 414
    :cond_18
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpZoom:F

    .line 415
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamX:I

    .line 416
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpCamY:I

    .line 417
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    .line 420
    goto :goto_32

    .line 408
    :cond_2e
    :goto_2e
    return-void

    .line 418
    :catchall_2f
    move-exception v1

    .line 419
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->vpOk:Z

    .line 421
    :goto_32
    return-void
.end method

.method public static resultOf(I)I
    .registers 1

    .line 582
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 583
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

    .line 696
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method

.method private static samLog(Ljava/lang/String;)V
    .registers 2

    .line 685
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    if-gtz v0, :cond_5

    .line 686
    return-void

    .line 688
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLogBudget:I

    .line 690
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 692
    goto :goto_10

    .line 691
    :catchall_f
    move-exception p0

    .line 693
    :goto_10
    return-void
.end method

.method public static slotCount()I
    .registers 1

    .line 529
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    return v0
.end method

.method public static spawn(IIJIFFFF)I
    .registers 21

    .line 94
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

    .line 105
    move v0, p0

    const/4 v1, -0x1

    if-ltz v0, :cond_d8

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v2

    if-lt v0, v2, :cond_c

    goto/16 :goto_d8

    .line 108
    :cond_c
    nop

    .line 109
    const/4 v2, 0x0

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v2, v3, :cond_26

    .line 110
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    if-eqz v3, :cond_24

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_21

    goto :goto_24

    .line 109
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 111
    :cond_24
    :goto_24
    nop

    .line 112
    goto :goto_27

    .line 109
    :cond_26
    move v2, v1

    .line 115
    :goto_27
    if-gez v2, :cond_38

    .line 116
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    const/16 v3, 0x200

    if-lt v2, v3, :cond_30

    .line 117
    return v1

    .line 119
    :cond_30
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    add-int/lit8 v1, v2, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    move v13, v2

    goto :goto_39

    .line 115
    :cond_38
    move v13, v2

    .line 121
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

    .line 122
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

    .line 124
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aput-object v0, v1, v13

    .line 125
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgSpawn:I

    .line 126
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

    .line 128
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

    .line 126
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 130
    return v13

    .line 106
    :cond_d8
    :goto_d8
    return v1
.end method

.method public static spawnFromMission(Ljava/lang/Object;)V
    .registers 18

    .line 140
    move-object/from16 v0, p0

    :try_start_2
    instance-of v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v1, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 144
    iget-wide v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    .line 145
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_12

    .line 146
    return-void

    .line 148
    :cond_12
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 150
    iget-wide v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2

    const/4 v7, 0x1

    if-nez v2, :cond_40

    .line 151
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v1, v7

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 152
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

    .line 153
    return-void

    .line 155
    :cond_40
    const/4 v2, 0x0

    aget v8, v1, v2

    .line 156
    aget v9, v1, v7

    .line 157
    nop

    .line 158
    nop

    .line 159
    invoke-static {v3, v4, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 160
    aget v2, v1, v2

    .line 161
    aget v1, v1, v7

    move v11, v1

    move v10, v2

    goto :goto_56

    .line 159
    :cond_54
    move v10, v8

    move v11, v9

    .line 163
    :goto_56
    const-string v1, "AAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->modelAidOf(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 165
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v5

    .line 166
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v2

    .line 167
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v6

    .line 168
    int-to-float v12, v2

    mul-float/2addr v12, v6

    .line 169
    sub-float v13, v10, v8

    mul-float/2addr v13, v13

    sub-float v14, v11, v9

    mul-float/2addr v14, v14

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 170
    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-lez v15, :cond_b6

    cmpl-float v16, v13, v12

    if-lez v16, :cond_b6

    .line 171
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    add-int/2addr v0, v7

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgNogo:I

    .line 172
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

    .line 173
    return-void

    .line 175
    :cond_b6
    cmpg-float v2, v5, v14

    if-gtz v2, :cond_c0

    .line 176
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v2

    move v13, v2

    goto :goto_c1

    .line 175
    :cond_c0
    move v13, v5

    .line 179
    :goto_c1
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v2

    .line 180
    cmpl-float v5, v13, v14

    if-lez v5, :cond_d5

    if-lez v15, :cond_d5

    .line 181
    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v12, v5

    div-float/2addr v12, v13

    .line 182
    cmpl-float v5, v12, v2

    if-lez v5, :cond_d5

    .line 183
    goto :goto_d6

    .line 186
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

    .line 187
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_ef

    .line 189
    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->shooterMissionID:J
    :try_end_ef
    .catchall {:try_start_2 .. :try_end_ef} :catchall_f0

    .line 193
    :cond_ef
    goto :goto_f1

    .line 191
    :catchall_f0
    move-exception v0

    .line 194
    :goto_f1
    return-void
.end method

.method public static spawnSam(Ljava/lang/Object;I)V
    .registers 24

    .line 203
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 205
    :try_start_4
    instance-of v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v2, :cond_c

    .line 206
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_24a

    move-object v8, v0

    goto :goto_e

    .line 205
    :cond_c
    const/4 v0, 0x0

    move-object v8, v0

    .line 211
    :goto_e
    nop

    .line 212
    if-nez v8, :cond_17

    .line 213
    const-string v0, "nSP skip notmission"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 214
    return-void

    .line 218
    :cond_17
    nop

    .line 220
    :try_start_18
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_231

    .line 224
    nop

    .line 225
    if-nez v2, :cond_36

    .line 226
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

    .line 227
    return-void

    .line 229
    :cond_36
    nop

    .line 230
    nop

    .line 232
    :try_start_38
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v14, v0

    .line 233
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v3
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_219

    add-int/2addr v0, v3

    int-to-float v15, v0

    .line 237
    nop

    .line 238
    nop

    .line 239
    nop

    .line 241
    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    :try_start_52
    new-array v0, v10, [F

    .line 242
    iget-wide v3, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 243
    aget v3, v0, v11
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_6c

    .line 244
    :try_start_62
    aget v0, v0, v9
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_65

    goto :goto_69

    .line 246
    :catchall_65
    move-exception v0

    goto :goto_6e

    .line 242
    :cond_67
    move v3, v14

    move v0, v15

    .line 248
    :goto_69
    move v12, v0

    move v13, v3

    goto :goto_86

    .line 246
    :catchall_6c
    move-exception v0

    move v3, v14

    .line 247
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

    .line 249
    :goto_86
    nop

    .line 251
    :try_start_87
    const-string v0, "SAM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_90

    .line 254
    move/from16 v16, v0

    goto :goto_aa

    .line 252
    :catchall_90
    move-exception v0

    .line 253
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

    .line 255
    :goto_aa
    if-gez v16, :cond_b2

    .line 256
    const-string v0, "nSP skip notype"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_b2
    nop

    .line 261
    :try_start_b3
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_ba

    .line 264
    move/from16 v17, v0

    goto :goto_d4

    .line 262
    :catchall_ba
    move-exception v0

    move-object v2, v0

    .line 263
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

    .line 266
    :goto_d4
    nop

    .line 267
    nop

    .line 269
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42c80000    # 100.0f

    :try_start_da
    const-string v0, "aaa"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefIds;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 270
    if-ltz v0, :cond_ee

    .line 271
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->speedOf(I)F

    move-result v4
    :try_end_e6
    .catchall {:try_start_da .. :try_end_e6} :catchall_f2

    .line 272
    :try_start_e6
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->rangeRealOf(I)I

    move-result v0
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ec

    int-to-float v3, v0

    goto :goto_ef

    .line 274
    :catchall_ec
    move-exception v0

    goto :goto_f4

    .line 270
    :cond_ee
    move v4, v2

    .line 276
    :goto_ef
    move/from16 v18, v3

    goto :goto_10c

    .line 274
    :catchall_f2
    move-exception v0

    move v4, v2

    .line 275
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

    .line 277
    :goto_10c
    const/16 v19, 0x0

    cmpg-float v0, v4, v19

    if-gtz v0, :cond_116

    .line 278
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v4

    .line 280
    :cond_116
    cmpg-float v0, v4, v19

    if-gtz v0, :cond_11d

    .line 281
    move/from16 v21, v2

    goto :goto_11f

    .line 280
    :cond_11d
    move/from16 v21, v4

    .line 284
    :goto_11f
    nop

    .line 285
    nop

    .line 287
    move-object v2, v8

    move v3, v14

    move v4, v15

    move v5, v13

    move v6, v12

    move/from16 v7, v21

    :try_start_128
    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->leadPoint(Laoc/kingdoms/lukasz/map/battles/AirMission;FFFFF)[F

    move-result-object v0

    .line 288
    if-eqz v0, :cond_135

    array-length v2, v0

    if-lt v2, v10, :cond_135

    .line 289
    aget v13, v0, v11

    .line 290
    aget v12, v0, v9
    :try_end_135
    .catchall {:try_start_128 .. :try_end_135} :catchall_138

    .line 294
    :cond_135
    move v3, v12

    move v2, v13

    goto :goto_151

    .line 292
    :catchall_138
    move-exception v0

    .line 293
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

    .line 295
    :goto_151
    nop

    .line 297
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

    .line 299
    move v4, v0

    goto :goto_164

    .line 298
    :catchall_161
    move-exception v0

    move/from16 v4, v19

    .line 301
    :goto_164
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v5

    .line 303
    :try_start_168
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->mapScale()F

    move-result v0
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_188

    mul-float v18, v18, v0

    .line 304
    cmpl-float v0, v21, v19

    if-lez v0, :cond_187

    cmpl-float v0, v18, v19

    if-lez v0, :cond_187

    .line 305
    const v0, 0x4019999a    # 2.4f

    mul-float v18, v18, v0

    div-float v18, v18, v21

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v18, v18, v0

    .line 306
    cmpl-float v0, v18, v5

    if-lez v0, :cond_187

    .line 307
    move/from16 v5, v18

    .line 312
    :cond_187
    goto :goto_1a0

    .line 310
    :catchall_188
    move-exception v0

    move-object v6, v0

    .line 311
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

    .line 313
    :goto_1a0
    nop

    .line 315
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

    .line 319
    nop

    .line 320
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

    .line 321
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->samLog(Ljava/lang/String;)V

    .line 322
    return-void

    .line 316
    :catchall_201
    move-exception v0

    .line 317
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

    .line 318
    return-void

    .line 234
    :catchall_219
    move-exception v0

    .line 235
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

    .line 236
    return-void

    .line 221
    :catchall_231
    move-exception v0

    move-object v1, v0

    .line 222
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

    .line 223
    return-void

    .line 208
    :catchall_24a
    move-exception v0

    .line 209
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

    .line 210
    return-void
.end method

.method public static stepAll(FJ)V
    .registers 16

    .line 454
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-eqz v0, :cond_1a0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_b

    goto/16 :goto_1a0

    .line 458
    :cond_b
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->refreshMissionIndex()V

    .line 459
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->refreshView()V

    .line 460
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 461
    const/4 v3, 0x0

    move v4, v3

    :goto_16
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-ge v4, v5, :cond_19f

    .line 462
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->SLOT:[Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    aget-object v5, v5, v4

    .line 463
    if-eqz v5, :cond_19b

    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v6, :cond_26

    .line 464
    goto/16 :goto_19b

    .line 467
    :cond_26
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    add-float/2addr v6, p0

    .line 468
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

    .line 469
    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    .line 470
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodSkips:I

    add-int/2addr v6, v8

    iput v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodSkips:I

    .line 471
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    add-int/2addr v5, v8

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSkips:I

    .line 472
    goto/16 :goto_19b

    .line 474
    :cond_4b
    iput v0, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lodDt:F

    .line 475
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    add-int/2addr v7, v8

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLodSteps:I

    .line 476
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 477
    iget v9, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 478
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->isHoming()Z

    move-result v10

    const-string v11, "nAP exp t="

    const-string v12, " n="

    if-eqz v10, :cond_ab

    .line 479
    iget-wide v9, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    invoke-static {v9, v10, p1, p2, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 480
    aget v7, v2, v3

    .line 481
    aget v9, v2, v8

    goto :goto_cb

    .line 484
    :cond_6d
    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v7, v6

    iput v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 485
    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_19b

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_19b

    .line 486
    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 487
    iput v1, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 488
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 489
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

    goto/16 :goto_19b

    .line 493
    :cond_ab
    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    if-ltz v10, :cond_cb

    .line 494
    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 495
    if-eqz v10, :cond_cb

    .line 496
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v7

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    .line 497
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v9

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 500
    :cond_cb
    :goto_cb
    invoke-virtual {v5, v6, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->step(FFF)I

    move-result v6

    .line 501
    const-string v7, " age="

    if-ne v6, v8, :cond_123

    .line 502
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgHit:I

    .line 503
    iget-boolean v6, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v6, :cond_e1

    .line 504
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgFuse:I

    .line 507
    :cond_e1
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onHit(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nAP hit t="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    if-eqz v8, :cond_fc

    const-string v8, " fuse=1"

    goto :goto_fe

    :cond_fc
    const-string v8, " fuse=0"

    :goto_fe
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 509
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

    .line 508
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    goto/16 :goto_19b

    .line 510
    :cond_123
    if-ne v6, v1, :cond_14e

    .line 511
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgExpired:I

    .line 513
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDamage;->onExpire(Laoc/kingdoms/lukasz/map/battles/AirProjectile;)V

    .line 514
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

    goto :goto_19b

    .line 515
    :cond_14e
    const/4 v9, 0x3

    if-ne v6, v9, :cond_157

    .line 516
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    add-int/2addr v5, v8

    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgLost:I

    goto :goto_19b

    .line 517
    :cond_157
    const/4 v9, 0x4

    if-ne v6, v9, :cond_19b

    .line 519
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgIntc:I

    add-int/2addr v6, v8

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgIntc:I

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nAGM intc t="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " p="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 521
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->round2(F)F

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->dbgIntc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 520
    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->log(Ljava/lang/String;)V

    .line 461
    :cond_19b
    :goto_19b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    .line 524
    :cond_19f
    return-void

    .line 455
    :cond_1a0
    :goto_1a0
    return-void
.end method

.method public static targetMissionOf(I)J
    .registers 3

    .line 592
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 593
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

    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 359
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3d0900

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    .line 360
    return-void

    .line 362
    :cond_10
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickNs:J

    .line 363
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 366
    return-void

    .line 368
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 369
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    const-wide/16 v2, 0x10

    goto :goto_32

    :cond_2e
    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    sub-long v2, v0, v2

    .line 370
    :goto_32
    cmp-long v6, v2, v4

    if-gez v6, :cond_37

    .line 371
    goto :goto_3f

    .line 372
    :cond_37
    const-wide/16 v4, 0x78

    cmp-long v6, v2, v4

    if-lez v6, :cond_3e

    .line 373
    goto :goto_3f

    .line 372
    :cond_3e
    move-wide v4, v2

    .line 375
    :goto_3f
    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->lastTickMs:J

    .line 376
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v2

    .line 377
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4c

    .line 378
    const/high16 v2, 0x43960000    # 300.0f

    .line 380
    :cond_4c
    long-to-float v3, v4

    div-float/2addr v3, v2

    .line 381
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    .line 382
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->used:I

    if-lez v2, :cond_a8

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->frameNo:I

    rem-int/lit16 v2, v2, 0x258

    if-nez v2, :cond_a8

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    if-lez v2, :cond_a8

    .line 383
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->perfBudget:I

    .line 385
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

    .line 388
    goto :goto_a8

    .line 387
    :catchall_a7
    move-exception v2

    .line 390
    :cond_a8
    :goto_a8
    invoke-static {v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->stepAll(FJ)V

    .line 391
    return-void
.end method

.method public static typeOf(I)I
    .registers 1

    .line 577
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 578
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

    .line 567
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 568
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

    .line 572
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object p0

    .line 573
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_a

    :cond_8
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    :goto_a
    return p0
.end method
