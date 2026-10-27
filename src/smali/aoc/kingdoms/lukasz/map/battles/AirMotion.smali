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

.field private static dbgCreate:I

.field private static dbgHit2:I

.field private static dbgHome:I

.field public static dbgInit:I

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

    .line 51
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    .line 63
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z
    .registers 4

    .line 368
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    .line 369
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 370
    return v0

    .line 372
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

    .line 240
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 242
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 243
    return-void
.end method

.method private static create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;
    .registers 15

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 251
    nop

    .line 253
    const/4 v1, 0x0

    :try_start_5
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    .line 255
    goto :goto_12

    .line 254
    :catchall_10
    move-exception v2

    move v2, v1

    .line 256
    :goto_12
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    .line 257
    aget v1, v0, v1

    .line 258
    aget v0, v0, v4

    move v7, v0

    move v6, v1

    goto :goto_30

    .line 260
    :cond_1d
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 261
    if-nez v0, :cond_26

    .line 262
    return-object v3

    .line 264
    :cond_26
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 265
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    move v7, v0

    move v6, v1

    .line 267
    :goto_30
    sub-float/2addr p2, v7

    float-to-double v0, p2

    sub-float/2addr p1, v6

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float v8, p1

    .line 268
    nop

    .line 269
    nop

    .line 271
    const/high16 p1, 0x42200000    # 40.0f

    const/high16 p2, 0x3f000000    # 0.5f

    :try_start_43
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_60

    .line 273
    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 274
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_58

    .line 275
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    .line 277
    :cond_58
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_60

    .line 278
    iget p2, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_62

    .line 282
    :cond_60
    move v10, p2

    goto :goto_64

    .line 281
    :catchall_62
    move-exception v0

    move v10, p2

    .line 284
    :goto_64
    sget p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    const/16 v0, 0xc8

    if-ge p2, v0, :cond_f4

    .line 285
    sget p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    add-int/2addr p2, v4

    sput p2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgCreate:I

    .line 287
    nop

    .line 288
    :try_start_70
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object p2

    .line 289
    if-eqz p2, :cond_79

    .line 290
    move-object v3, p2

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 292
    :cond_79
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

    .line 293
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_97

    move v0, v1

    goto :goto_9d

    :cond_97
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_9d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 294
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-nez v0, :cond_ad

    move p0, v1

    goto :goto_b3

    :cond_ad
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_b3
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " aid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 295
    if-nez v3, :cond_c0

    goto :goto_c2

    :cond_c0
    iget v1, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    :goto_c2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " uspd="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 296
    if-nez v3, :cond_d1

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_d3

    :cond_d1
    iget p2, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    :goto_d3
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

    .line 292
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_70 .. :try_end_f2} :catchall_f3

    .line 299
    goto :goto_f4

    .line 298
    :catchall_f3
    move-exception p0

    .line 301
    :cond_f4
    :goto_f4
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

    .line 433
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 434
    :goto_8
    if-nez p0, :cond_b

    .line 435
    return-void

    .line 437
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 438
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 439
    return-void
.end method

.method private static firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;
    .registers 3

    .line 306
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 307
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 309
    :cond_14
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 310
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    return-object p0

    .line 313
    :cond_27
    goto :goto_29

    .line 312
    :catchall_28
    move-exception p0

    .line 314
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static forceReturning(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 8

    .line 338
    const-string v0, "RETURNING"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v2, :cond_11

    .line 339
    const-class v2, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 341
    :cond_11
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 342
    instance-of v3, v2, Ljava/lang/Enum;

    if-nez v3, :cond_1c

    .line 343
    return v1

    .line 345
    :cond_1c
    move-object v3, v2

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 347
    return v1

    .line 349
    :cond_2a
    nop

    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_35
    if-ge v4, v3, :cond_4b

    aget-object v5, v2, v4

    .line 351
    move-object v6, v5

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 352
    nop

    .line 353
    goto :goto_4c

    .line 350
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_4b
    const/4 v5, 0x0

    .line 356
    :goto_4c
    if-nez v5, :cond_4f

    .line 357
    return v1

    .line 359
    :cond_4f
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    .line 360
    const/4 p0, 0x1

    return p0

    .line 361
    :catchall_56
    move-exception p0

    .line 362
    return v1
.end method

.method public static headingOf(Ljava/lang/Object;)F
    .registers 5

    .line 220
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 221
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 222
    if-nez p0, :cond_14

    .line 223
    return v0

    .line 225
    :cond_14
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p0, v0, p0

    .line 226
    :goto_1a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v1, :cond_24

    .line 227
    add-float/2addr p0, v2

    goto :goto_1a

    .line 229
    :cond_24
    :goto_24
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2a

    .line 230
    sub-float/2addr p0, v2

    goto :goto_24

    .line 232
    :cond_2a
    return p0

    .line 233
    :catchall_2b
    move-exception p0

    .line 234
    return v0
.end method

.method private static homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 377
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_9

    .line 378
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    return p0

    .line 380
    :cond_9
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 323
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 324
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 325
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_a
    goto :goto_c

    .line 327
    :catchall_b
    move-exception v0

    .line 329
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method private static stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 447
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 448
    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 450
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 451
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1f

    .line 452
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    return p0

    .line 455
    :cond_1f
    goto :goto_21

    .line 454
    :catchall_20
    move-exception p0

    .line 456
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static step(Ljava/lang/Object;)V
    .registers 14

    .line 73
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 74
    if-nez p0, :cond_5

    .line 75
    return-void

    .line 77
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 80
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 82
    if-eqz v0, :cond_39

    .line 83
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 84
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    goto :goto_45

    .line 86
    :cond_39
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_40

    .line 87
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_42

    :cond_40
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 86
    :goto_42
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 89
    :goto_45
    return-void

    .line 92
    :cond_46
    :try_start_46
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 93
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I

    move-result v1

    .line 94
    if-ltz v1, :cond_55

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    .line 95
    :goto_56
    if-nez v2, :cond_65

    .line 96
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_5f

    .line 97
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_61

    :cond_5f
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 96
    :goto_61
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 98
    return-void

    .line 100
    :cond_65
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 101
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 103
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 104
    const/4 v5, 0x1

    if-nez v4, :cond_98

    .line 105
    invoke-static {p0, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;

    move-result-object v4

    .line 106
    if-nez v4, :cond_88

    .line 107
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 108
    return-void

    .line 110
    :cond_88
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    add-int/2addr v1, v5

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 114
    :cond_98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 115
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 116
    if-nez v1, :cond_af

    const-wide/16 v8, 0x10

    goto :goto_b5

    :cond_af
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 117
    :goto_b5
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_bd

    .line 118
    move-wide v8, v10

    goto :goto_c4

    .line 119
    :cond_bd
    const-wide/16 v10, 0x78

    cmp-long v1, v8, v10

    if-lez v1, :cond_c4

    .line 120
    move-wide v8, v10

    .line 122
    :cond_c4
    :goto_c4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v1

    .line 125
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_de

    .line 126
    const/high16 v1, 0x43960000    # 300.0f

    .line 128
    :cond_de
    long-to-float v6, v8

    div-float/2addr v6, v1

    .line 129
    iget-wide v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 134
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_ec
    .catchall {:try_start_46 .. :try_end_ec} :catchall_233

    .line 135
    const-string v8, " d="

    if-nez v7, :cond_15c

    .line 139
    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v10, v6, v9

    if-lez v10, :cond_f7

    goto :goto_f8

    :cond_f7
    move v9, v6

    .line 140
    :goto_f8
    :try_start_f8
    iget v10, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    mul-float/2addr v10, v9

    .line 141
    const/high16 v9, 0x41000000    # 8.0f

    add-float/2addr v10, v9

    .line 142
    const/high16 v9, 0x41400000    # 12.0f

    cmpl-float v11, v10, v9

    if-lez v11, :cond_105

    .line 143
    move v10, v9

    .line 145
    :cond_105
    invoke-virtual {v4, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v9

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_15c

    .line 146
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    nop

    .line 148
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    const/16 v9, 0xc8

    if-ge v7, v9, :cond_15b

    .line 149
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I

    add-int/2addr v7, v5

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHit2:I
    :try_end_11e
    .catchall {:try_start_f8 .. :try_end_11e} :catchall_233

    .line 151
    :try_start_11e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nAM hit mid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " trig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " spd="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_11e .. :try_end_159} :catchall_15a

    .line 154
    goto :goto_15b

    .line 153
    :catchall_15a
    move-exception v7

    .line 158
    :cond_15b
    :goto_15b
    move v7, v5

    :cond_15c
    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v7, :cond_178

    if-eq v0, v5, :cond_166

    if-eq v0, v9, :cond_166

    if-ne v0, v10, :cond_178

    .line 159
    :cond_166
    :try_start_166
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    .line 160
    if-eqz v11, :cond_178

    .line 161
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 162
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 166
    :cond_178
    if-eq v0, v5, :cond_17e

    if-eq v0, v9, :cond_17e

    if-ne v0, v10, :cond_1bb

    .line 167
    :cond_17e
    invoke-virtual {v4, v6, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v2

    .line 168
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    add-int/2addr v3, v5

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 169
    if-nez v2, :cond_1b4

    .line 170
    if-nez v7, :cond_1a5

    .line 172
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->HIT:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1a5

    .line 175
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    invoke-virtual {v4, v6, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    .line 180
    :cond_1a5
    if-eq v0, v10, :cond_1af

    if-nez v7, :cond_1af

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 181
    :cond_1af
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    goto :goto_1bb

    .line 183
    :cond_1b4
    if-eq v0, v5, :cond_1b8

    if-ne v0, v10, :cond_1bb

    .line 184
    :cond_1b8
    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V

    .line 188
    :cond_1bb
    :goto_1bb
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 189
    iget v1, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 190
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->record(Ljava/lang/Object;II)V

    .line 196
    if-eqz v7, :cond_232

    if-eq v0, v5, :cond_1d2

    if-ne v0, v9, :cond_232

    :cond_1d2
    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->atHome(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;)Z

    move-result v1

    if-eqz v1, :cond_232

    .line 197
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->forceReturning(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v1

    if-eqz v1, :cond_232

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_232

    .line 198
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I

    add-int/2addr v1, v5

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgHome:I
    :try_end_1e9
    .catchall {:try_start_166 .. :try_end_1e9} :catchall_233

    .line 200
    :try_start_1e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nAM home mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 202
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    .line 201
    invoke-virtual {v4, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_230
    .catchall {:try_start_1e9 .. :try_end_230} :catchall_231

    .line 204
    goto :goto_232

    .line 203
    :catchall_231
    move-exception p0

    .line 214
    :cond_232
    :goto_232
    goto :goto_242

    .line 207
    :catchall_233
    move-exception v0

    .line 210
    :try_start_234
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_23b

    .line 211
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_23d

    :cond_23b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 210
    :goto_23d
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    :try_end_240
    .catchall {:try_start_234 .. :try_end_240} :catchall_241

    .line 213
    goto :goto_242

    .line 212
    :catchall_241
    move-exception p0

    .line 215
    :goto_242
    return-void
.end method

.method private static targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I
    .registers 3

    .line 385
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 386
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    return p0

    .line 388
    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz p1, :cond_f

    .line 389
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return p0

    .line 391
    :cond_f
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V
    .registers 10

    .line 395
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 396
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 397
    if-eqz v0, :cond_54

    if-nez v1, :cond_11

    goto :goto_54

    .line 400
    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 401
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    .line 402
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 403
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 404
    sub-float v4, v3, v2

    mul-float/2addr v4, v4

    sub-float v5, v1, v0

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 405
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_35

    .line 406
    move v4, v5

    .line 409
    :cond_35
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3d

    invoke-virtual {p1, v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    .line 410
    :goto_41
    div-float/2addr p1, v4

    sub-float p1, v5, p1

    .line 411
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_4b

    .line 412
    move v5, p2

    goto :goto_51

    .line 413
    :cond_4b
    cmpl-float p2, p1, v5

    if-lez p2, :cond_50

    .line 414
    goto :goto_51

    .line 413
    :cond_50
    move v5, p1

    .line 416
    :goto_51
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    .line 417
    return-void

    .line 398
    :cond_54
    :goto_54
    return-void
.end method

.method private static worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 425
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

    .line 429
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method
