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

.field public static dbgInit:I

.field public static dbgSteps:I

.field public static outX:I

.field public static outY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 32
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 35
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 36
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static clear()V
    .registers 1

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    return-void
.end method

.method private static create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;
    .registers 12

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 189
    nop

    .line 191
    const/4 v1, 0x0

    :try_start_5
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    .line 193
    goto :goto_12

    .line 192
    :catchall_10
    move-exception v2

    move v2, v1

    .line 194
    :goto_12
    if-eqz v2, :cond_1c

    .line 195
    aget v1, v0, v1

    .line 196
    const/4 v2, 0x1

    aget v0, v0, v2

    move v4, v0

    move v3, v1

    goto :goto_30

    .line 198
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 199
    if-nez v0, :cond_26

    .line 200
    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_26
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 203
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    move v4, v0

    move v3, v1

    .line 205
    :goto_30
    sub-float/2addr p2, v4

    float-to-double v0, p2

    sub-float/2addr p1, v3

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float v5, p1

    .line 206
    nop

    .line 207
    nop

    .line 209
    const/high16 p1, 0x42200000    # 40.0f

    const/high16 p2, 0x3f000000    # 0.5f

    :try_start_43
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object p0

    .line 210
    if-eqz p0, :cond_60

    .line 211
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 212
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_58

    .line 213
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    .line 215
    :cond_58
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_60

    .line 216
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_62

    .line 220
    :cond_60
    move v7, p2

    goto :goto_64

    .line 219
    :catchall_62
    move-exception p0

    move v7, p2

    .line 221
    :goto_64
    new-instance p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    const p2, 0x3d4ccccd    # 0.05f

    div-float v6, p1, p2

    const v8, 0x461c3c00    # 9999.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/map/battles/AirCraft;-><init>(FFFFFF)V

    return-object p0
.end method

.method private static fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    .registers 2

    .line 310
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 311
    :goto_8
    if-nez p0, :cond_b

    .line 312
    return-void

    .line 314
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 315
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 316
    return-void
.end method

.method private static firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 227
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 229
    :cond_14
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 230
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    return-object p0

    .line 233
    :cond_27
    goto :goto_29

    .line 232
    :catchall_28
    move-exception p0

    .line 234
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static headingOf(Ljava/lang/Object;)F
    .registers 5

    .line 159
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 160
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 161
    if-nez p0, :cond_14

    .line 162
    return v0

    .line 164
    :cond_14
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p0, v0, p0

    .line 165
    :goto_1a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v1, :cond_24

    .line 166
    add-float/2addr p0, v2

    goto :goto_1a

    .line 168
    :cond_24
    :goto_24
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2a

    .line 169
    sub-float/2addr p0, v2

    goto :goto_24

    .line 171
    :cond_2a
    return p0

    .line 172
    :catchall_2b
    move-exception p0

    .line 173
    return v0
.end method

.method private static homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 254
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_9

    .line 255
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    return p0

    .line 257
    :cond_9
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static isPaused()Z
    .registers 1

    .line 243
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 244
    if-eqz v0, :cond_a

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    if-nez v0, :cond_a

    .line 245
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_a
    goto :goto_c

    .line 247
    :catchall_b
    move-exception v0

    .line 249
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method private static stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 324
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 325
    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 327
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 328
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1f

    .line 329
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    return p0

    .line 332
    :cond_1f
    goto :goto_21

    .line 331
    :catchall_20
    move-exception p0

    .line 333
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static step(Ljava/lang/Object;)V
    .registers 13

    .line 61
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 62
    if-nez p0, :cond_5

    .line 63
    return-void

    .line 65
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 68
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 70
    if-eqz v0, :cond_39

    .line 71
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 72
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    goto :goto_45

    .line 74
    :cond_39
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_40

    .line 75
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_42

    :cond_40
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 74
    :goto_42
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 77
    :goto_45
    return-void

    .line 80
    :cond_46
    :try_start_46
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 81
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I

    move-result v1

    .line 82
    if-ltz v1, :cond_55

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    .line 83
    :goto_56
    if-nez v2, :cond_65

    .line 84
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_5f

    .line 85
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_61

    :cond_5f
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 84
    :goto_61
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 86
    return-void

    .line 88
    :cond_65
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 89
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 91
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 92
    const/4 v5, 0x1

    if-nez v4, :cond_98

    .line 93
    invoke-static {p0, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;

    move-result-object v4

    .line 94
    if-nez v4, :cond_88

    .line 95
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 96
    return-void

    .line 98
    :cond_88
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    add-int/2addr v1, v5

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 102
    :cond_98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 103
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 104
    if-nez v1, :cond_af

    const-wide/16 v8, 0x10

    goto :goto_b5

    :cond_af
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 105
    :goto_b5
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_bd

    .line 106
    move-wide v8, v10

    goto :goto_c4

    .line 107
    :cond_bd
    const-wide/16 v10, 0x78

    cmp-long v1, v8, v10

    if-lez v1, :cond_c4

    .line 108
    move-wide v8, v10

    .line 110
    :cond_c4
    :goto_c4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v1

    .line 113
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_de

    .line 114
    const/high16 v1, 0x43960000    # 300.0f

    .line 116
    :cond_de
    long-to-float v6, v8

    div-float/2addr v6, v1

    .line 120
    const/4 v1, 0x2

    if-ne v0, v1, :cond_103

    .line 121
    iget v7, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    mul-float/2addr v7, v6

    .line 122
    invoke-virtual {v4, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    add-float/2addr v7, v9

    cmpg-float v7, v8, v7

    if-gtz v7, :cond_103

    .line 123
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_103

    .line 125
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 126
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 131
    :cond_103
    if-eq v0, v5, :cond_10a

    if-eq v0, v1, :cond_10a

    const/4 v7, 0x3

    if-ne v0, v7, :cond_121

    .line 132
    :cond_10a
    invoke-virtual {v4, v6, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v2

    .line 133
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    add-int/2addr v3, v5

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 134
    if-nez v2, :cond_11c

    .line 135
    if-eq v0, v1, :cond_121

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    goto :goto_121

    .line 138
    :cond_11c
    if-eq v0, v1, :cond_121

    .line 139
    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V

    .line 143
    :cond_121
    :goto_121
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 144
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 145
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->record(Ljava/lang/Object;II)V
    :try_end_132
    .catchall {:try_start_46 .. :try_end_132} :catchall_133

    .line 153
    goto :goto_142

    .line 146
    :catchall_133
    move-exception v0

    .line 149
    :try_start_134
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_13b

    .line 150
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_13d

    :cond_13b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 149
    :goto_13d
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    :try_end_140
    .catchall {:try_start_134 .. :try_end_140} :catchall_141

    .line 152
    goto :goto_142

    .line 151
    :catchall_141
    move-exception p0

    .line 154
    :goto_142
    return-void
.end method

.method private static targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I
    .registers 3

    .line 262
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 263
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    return p0

    .line 265
    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz p1, :cond_f

    .line 266
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return p0

    .line 268
    :cond_f
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V
    .registers 10

    .line 272
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 273
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 274
    if-eqz v0, :cond_54

    if-nez v1, :cond_11

    goto :goto_54

    .line 277
    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 278
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    .line 279
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 280
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 281
    sub-float v4, v3, v2

    mul-float/2addr v4, v4

    sub-float v5, v1, v0

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 282
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_35

    .line 283
    move v4, v5

    .line 286
    :cond_35
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3d

    invoke-virtual {p1, v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    .line 287
    :goto_41
    div-float/2addr p1, v4

    sub-float p1, v5, p1

    .line 288
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_4b

    .line 289
    move v5, p2

    goto :goto_51

    .line 290
    :cond_4b
    cmpl-float p2, p1, v5

    if-lez p2, :cond_50

    .line 291
    goto :goto_51

    .line 290
    :cond_50
    move v5, p1

    .line 293
    :goto_51
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    .line 294
    return-void

    .line 275
    :cond_54
    :goto_54
    return-void
.end method

.method private static worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 302
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

    .line 306
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method
