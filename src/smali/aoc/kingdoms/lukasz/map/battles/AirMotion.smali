.class public final Laoc/kingdoms/lukasz/map/battles/AirMotion;
.super Ljava/lang/Object;
.source "AirMotion.java"


# static fields
.field private static final CRAFT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Laoc/kingdoms/lukasz/map/battles/AirCraft;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_AGILITY:F = 0.5f

.field private static final DEFAULT_FUEL:F = 9999.0f

.field private static final DEFAULT_SPEED_PX:F = 40.0f

.field private static F_STATE:Ljava/lang/reflect/Field; = null

.field private static final HIT:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIT_TRIGGER_MAX:F = 12.0f

.field private static final LAST_MS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_DT_MS:J = 0x78L

.field private static final MAX_STEP_PX:F = 12.0f

.field private static final SPAWN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[F>;"
        }
    .end annotation
.end field

.field private static dbgCreate:I

.field private static dbgHit2:I

.field private static dbgHome:I

.field public static dbgInit:I

.field private static dbgStale:I

.field public static dbgSteps:I

.field public static outX:I

.field public static outY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 33
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 36
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 38
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    .line 39
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->SPAWN:Ljava/util/HashMap;

    .line 56
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    .line 58
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgStale:I

    .line 70
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z
    .registers 4

    .line 427
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 428
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 429
    return v0

    .line 431
    :cond_c
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p0

    const/high16 p1, 0x40a00000    # 5.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public static clear()V
    .registers 1

    .line 290
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 291
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 293
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->SPAWN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    return-void
.end method

.method private static create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;
    .registers 15

    .line 300
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgStale:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_34

    .line 301
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgStale:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgStale:I

    .line 303
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAM stale mid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_33

    .line 305
    goto :goto_34

    .line 304
    :catchall_33
    move-exception v0

    .line 309
    :cond_34
    :goto_34
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 310
    nop

    .line 312
    const/4 v2, 0x0

    :try_start_39
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v3
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_44

    .line 314
    goto :goto_46

    .line 313
    :catchall_44
    move-exception v3

    move v3, v2

    .line 315
    :goto_46
    const/4 v4, 0x0

    if-eqz v3, :cond_50

    .line 316
    aget v2, v0, v2

    .line 317
    aget v0, v0, v1

    move v7, v0

    move v6, v2

    goto :goto_63

    .line 319
    :cond_50
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 320
    if-nez v0, :cond_59

    .line 321
    return-object v4

    .line 323
    :cond_59
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 324
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    move v7, v0

    move v6, v2

    .line 326
    :goto_63
    sub-float/2addr p2, v7

    float-to-double v2, p2

    sub-float/2addr p1, v6

    float-to-double p1, p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float v8, p1

    .line 327
    nop

    .line 328
    nop

    .line 330
    const/high16 p1, 0x42200000    # 40.0f

    const/high16 p2, 0x3f000000    # 0.5f

    :try_start_76
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_93

    .line 332
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 333
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8b

    .line 334
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    .line 336
    :cond_8b
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_93

    .line 337
    iget p2, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_95

    .line 341
    :cond_93
    move v10, p2

    goto :goto_97

    .line 340
    :catchall_95
    move-exception v0

    move v10, p2

    .line 343
    :goto_97
    sget p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    const/16 v0, 0xc8

    if-ge p2, v0, :cond_127

    .line 344
    sget p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    add-int/2addr p2, v1

    sput p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    .line 346
    nop

    .line 347
    :try_start_a3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object p2

    .line 348
    if-eqz p2, :cond_ac

    .line 349
    move-object v4, p2

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 351
    :cond_ac
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nAM init mid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " n="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 352
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_ca

    move v0, v1

    goto :goto_d0

    :cond_ca
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_d0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 353
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-nez v0, :cond_e0

    move p0, v1

    goto :goto_e6

    :cond_e0
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_e6
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " aid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 354
    if-nez v4, :cond_f3

    goto :goto_f5

    :cond_f3
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    :goto_f5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " uspd="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 355
    if-nez v4, :cond_104

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_106

    :cond_104
    iget p2, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    :goto_106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " px="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ag="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_a3 .. :try_end_125} :catchall_126

    .line 358
    goto :goto_127

    .line 357
    :catchall_126
    move-exception p0

    .line 360
    :cond_127
    :goto_127
    new-instance p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    const p2, 0x3d4ccccd    # 0.05f

    div-float v9, p1, p2

    const v11, 0x461c3c00    # 9999.0f

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/map/battles/AirCraft;-><init>(FFFFFF)V

    return-object p0
.end method

.method private static fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    .registers 2

    .line 492
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 493
    :goto_8
    if-nez p0, :cond_b

    .line 494
    return-void

    .line 496
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 497
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 498
    return-void
.end method

.method private static firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;
    .registers 3

    .line 365
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 366
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 368
    :cond_14
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 369
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    return-object p0

    .line 372
    :cond_27
    goto :goto_29

    .line 371
    :catchall_28
    move-exception p0

    .line 373
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static forceReturning(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 8

    .line 397
    const-string v0, "RETURNING"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v2, :cond_11

    .line 398
    const-class v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 400
    :cond_11
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 401
    instance-of v3, v2, Ljava/lang/Enum;

    if-nez v3, :cond_1c

    .line 402
    return v1

    .line 404
    :cond_1c
    move-object v3, v2

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 406
    return v1

    .line 408
    :cond_2a
    nop

    .line 409
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_35
    if-ge v4, v3, :cond_4b

    aget-object v5, v2, v4

    .line 410
    move-object v6, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 411
    nop

    .line 412
    goto :goto_4c

    .line 409
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_4b
    const/4 v5, 0x0

    .line 415
    :goto_4c
    if-nez v5, :cond_4f

    .line 416
    return v1

    .line 418
    :cond_4f
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    .line 419
    const/4 p0, 0x1

    return p0

    .line 420
    :catchall_56
    move-exception p0

    .line 421
    return v1
.end method

.method public static headingOf(Ljava/lang/Object;)F
    .registers 5

    .line 248
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 249
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 250
    if-nez p0, :cond_14

    .line 251
    return v0

    .line 253
    :cond_14
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p0, v0, p0

    .line 254
    :goto_1a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v1, :cond_24

    .line 255
    add-float/2addr p0, v2

    goto :goto_1a

    .line 257
    :cond_24
    :goto_24
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2a

    .line 258
    sub-float/2addr p0, v2

    goto :goto_24

    .line 260
    :cond_2a
    return p0

    .line 261
    :catchall_2b
    move-exception p0

    .line 262
    return v0
.end method

.method private static homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 436
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_9

    .line 437
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    return p0

    .line 439
    :cond_9
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 382
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 383
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 384
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_a
    goto :goto_c

    .line 386
    :catchall_b
    move-exception v0

    .line 388
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public static speedOf(Ljava/lang/Object;)F
    .registers 5

    .line 280
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 281
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 282
    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    :goto_16
    return v0

    .line 283
    :catchall_17
    move-exception p0

    .line 284
    return v0
.end method

.method private static stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 506
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 507
    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 509
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 510
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1f

    .line 511
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    return p0

    .line 514
    :cond_1f
    goto :goto_21

    .line 513
    :catchall_20
    move-exception p0

    .line 515
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static step(Ljava/lang/Object;)V
    .registers 18

    .line 80
    move-object/from16 v1, p0

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 81
    if-nez v1, :cond_7

    .line 82
    return-void

    .line 84
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 87
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v4, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 89
    if-eqz v0, :cond_3b

    .line 90
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 91
    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    goto :goto_47

    .line 93
    :cond_3b
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_42

    .line 94
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_44

    :cond_42
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 93
    :goto_44
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 96
    :goto_47
    return-void

    .line 99
    :cond_48
    :try_start_48
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 100
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I

    move-result v0

    .line 101
    if-ltz v0, :cond_57

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    .line 102
    :goto_58
    if-nez v3, :cond_67

    .line 103
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_61

    .line 104
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_63

    :cond_61
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 103
    :goto_63
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 105
    return-void

    .line 107
    :cond_67
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v4

    .line 108
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 110
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v6, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 111
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v5, :cond_b1

    .line 112
    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;

    move-result-object v5

    .line 113
    if-nez v5, :cond_8c

    .line 114
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 115
    return-void

    .line 117
    :cond_8c
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v9, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->SPAWN:Ljava/util/HashMap;

    iget-wide v9, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v7, [F

    iget v11, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    aput v11, v10, v6

    iget v11, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    aput v11, v10, v8

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    add-int/2addr v0, v8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 122
    :cond_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 123
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 124
    if-nez v0, :cond_c8

    const-wide/16 v11, 0x10

    goto :goto_ce

    :cond_c8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v11, v9, v11

    .line 125
    :goto_ce
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-gez v0, :cond_d6

    .line 126
    move-wide v11, v13

    goto :goto_dd

    .line 127
    :cond_d6
    const-wide/16 v13, 0x78

    cmp-long v0, v11, v13

    if-lez v0, :cond_dd

    .line 128
    move-wide v11, v13

    .line 130
    :cond_dd
    :goto_dd
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v13, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v0

    .line 133
    const/4 v9, 0x0

    cmpg-float v10, v0, v9

    if-gtz v10, :cond_f7

    .line 134
    const/high16 v0, 0x43960000    # 300.0f

    .line 136
    :cond_f7
    long-to-float v10, v11

    div-float/2addr v10, v0

    .line 142
    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    .line 143
    cmpl-float v9, v0, v9

    const/high16 v11, 0x41400000    # 12.0f

    if-lez v9, :cond_108

    .line 144
    div-float v0, v11, v0

    .line 145
    cmpl-float v9, v10, v0

    if-lez v9, :cond_108

    .line 146
    move v10, v0

    .line 150
    :cond_108
    iget-wide v12, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 155
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_114
    .catchall {:try_start_48 .. :try_end_114} :catchall_2a1

    .line 156
    const-string v12, " d="

    if-nez v0, :cond_1c8

    .line 160
    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v14, v10, v13

    if-lez v14, :cond_11f

    goto :goto_120

    :cond_11f
    move v13, v10

    .line 161
    :goto_120
    :try_start_120
    iget v14, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    mul-float/2addr v14, v13

    .line 162
    const/high16 v13, 0x41000000    # 8.0f

    add-float/2addr v14, v13

    .line 163
    cmpl-float v15, v14, v11

    if-lez v15, :cond_12b

    .line 164
    goto :goto_12c

    .line 163
    :cond_12b
    move v11, v14

    .line 169
    :goto_12c
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirMotion;->SPAWN:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [F

    .line 170
    if-nez v14, :cond_13a

    const v6, 0x461c3c00    # 9999.0f

    goto :goto_158

    .line 171
    :cond_13a
    iget v15, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    aget v16, v14, v6

    sub-float v15, v15, v16

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    aget v6, v14, v6

    sub-float/2addr v7, v6

    mul-float/2addr v15, v7

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    aget v7, v14, v8

    sub-float/2addr v6, v7

    iget v7, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    aget v14, v14, v8

    sub-float/2addr v7, v14

    mul-float/2addr v6, v7

    add-float/2addr v15, v6

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 172
    :goto_158
    invoke-virtual {v5, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v7

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_1c8

    cmpl-float v7, v6, v13

    if-gez v7, :cond_16e

    invoke-virtual {v5, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v7

    const/high16 v13, 0x40000000    # 2.0f

    cmpg-float v7, v7, v13

    if-gtz v7, :cond_1c8

    .line 173
    :cond_16e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    nop

    .line 175
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    const/16 v7, 0xc8

    if-ge v0, v7, :cond_1c7

    .line 176
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    add-int/2addr v0, v8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I
    :try_end_17f
    .catchall {:try_start_120 .. :try_end_17f} :catchall_2a1

    .line 178
    :try_start_17f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nAM hit mid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v13, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " trav="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " trig="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " spd="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_17f .. :try_end_1c5} :catchall_1c6

    .line 182
    goto :goto_1c7

    .line 181
    :catchall_1c6
    move-exception v0

    .line 186
    :cond_1c7
    :goto_1c7
    move v0, v8

    :cond_1c8
    const/4 v6, 0x3

    if-eqz v0, :cond_1e4

    if-eq v2, v8, :cond_1d2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1d2

    if-ne v2, v6, :cond_1e4

    .line 187
    :cond_1d2
    :try_start_1d2
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 188
    if-eqz v7, :cond_1e4

    .line 189
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v4

    .line 190
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 194
    :cond_1e4
    if-eq v2, v8, :cond_1eb

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1eb

    if-ne v2, v6, :cond_228

    .line 195
    :cond_1eb
    invoke-virtual {v5, v10, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v3

    .line 196
    sget v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    add-int/2addr v4, v8

    sput v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 197
    if-nez v3, :cond_221

    .line 198
    if-nez v0, :cond_212

    .line 200
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_212

    .line 203
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v4

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    invoke-virtual {v5, v10, v4, v3}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    .line 208
    :cond_212
    if-eq v2, v6, :cond_21c

    if-nez v0, :cond_21c

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 209
    :cond_21c
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    goto :goto_228

    .line 211
    :cond_221
    if-eq v2, v8, :cond_225

    if-ne v2, v6, :cond_228

    .line 212
    :cond_225
    invoke-static {v1, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V

    .line 216
    :cond_228
    :goto_228
    iget v3, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v3, v3

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 217
    iget v3, v5, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v3, v3

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 218
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirPos;->record(Ljava/lang/Object;II)V

    .line 224
    if-eqz v0, :cond_2a0

    if-eq v2, v8, :cond_240

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a0

    :cond_240
    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 225
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->forceReturning(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_2a0

    .line 226
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    add-int/2addr v0, v8

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I
    :try_end_257
    .catchall {:try_start_1d2 .. :try_end_257} :catchall_2a1

    .line 228
    :try_start_257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nAM home mid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 230
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 229
    invoke-virtual {v5, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_29e
    .catchall {:try_start_257 .. :try_end_29e} :catchall_29f

    .line 232
    goto :goto_2a0

    .line 231
    :catchall_29f
    move-exception v0

    .line 242
    :cond_2a0
    :goto_2a0
    goto :goto_2b0

    .line 235
    :catchall_2a1
    move-exception v0

    .line 238
    :try_start_2a2
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_2a9

    .line 239
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_2ab

    :cond_2a9
    iget v0, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 238
    :goto_2ab
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    :try_end_2ae
    .catchall {:try_start_2a2 .. :try_end_2ae} :catchall_2af

    .line 241
    goto :goto_2b0

    .line 240
    :catchall_2af
    move-exception v0

    .line 243
    :goto_2b0
    return-void
.end method

.method private static targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I
    .registers 3

    .line 444
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 445
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    return p0

    .line 447
    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz p1, :cond_f

    .line 448
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return p0

    .line 450
    :cond_f
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V
    .registers 10

    .line 454
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 455
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 456
    if-eqz v0, :cond_54

    if-nez v1, :cond_11

    goto :goto_54

    .line 459
    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 460
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    .line 461
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 462
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 463
    sub-float v4, v3, v2

    mul-float/2addr v4, v4

    sub-float v5, v1, v0

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 464
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_35

    .line 465
    move v4, v5

    .line 468
    :cond_35
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3d

    invoke-virtual {p1, v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    .line 469
    :goto_41
    div-float/2addr p1, v4

    sub-float p1, v5, p1

    .line 470
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_4b

    .line 471
    move v5, p2

    goto :goto_51

    .line 472
    :cond_4b
    cmpl-float p2, p1, v5

    if-lez p2, :cond_50

    .line 473
    goto :goto_51

    .line 472
    :cond_50
    move v5, p1

    .line 475
    :goto_51
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    .line 476
    return-void

    .line 457
    :cond_54
    :goto_54
    return-void
.end method

.method private static worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 484
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private static worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 488
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public static worldHeadingOf(Ljava/lang/Object;)F
    .registers 5

    .line 269
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 270
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 271
    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    :goto_16
    return v0

    .line 272
    :catchall_17
    move-exception p0

    .line 273
    return v0
.end method
