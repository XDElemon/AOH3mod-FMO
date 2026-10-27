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

    .line 30
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 31
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 34
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 35
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static clear()V
    .registers 1

    .line 164
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 165
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    return-void
.end method

.method private static create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;
    .registers 12

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 174
    nop

    .line 176
    const/4 v1, 0x0

    :try_start_5
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    .line 178
    goto :goto_12

    .line 177
    :catchall_10
    move-exception v2

    move v2, v1

    .line 179
    :goto_12
    if-eqz v2, :cond_1c

    .line 180
    aget v1, v0, v1

    .line 181
    const/4 v2, 0x1

    aget v0, v0, v2

    move v4, v0

    move v3, v1

    goto :goto_30

    .line 183
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 184
    if-nez v0, :cond_26

    .line 185
    const/4 p0, 0x0

    return-object p0

    .line 187
    :cond_26
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 188
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    move v4, v0

    move v3, v1

    .line 190
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

    .line 191
    nop

    .line 192
    nop

    .line 194
    const/high16 p1, 0x42200000    # 40.0f

    const/high16 p2, 0x3f000000    # 0.5f

    :try_start_43
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    if-eqz p0, :cond_60

    .line 196
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 197
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_58

    .line 198
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    .line 200
    :cond_58
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_60

    .line 201
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_62

    .line 205
    :cond_60
    move v7, p2

    goto :goto_64

    .line 204
    :catchall_62
    move-exception p0

    move v7, p2

    .line 206
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

    .line 280
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 281
    :goto_8
    if-nez p0, :cond_b

    .line 282
    return-void

    .line 284
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 285
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 286
    return-void
.end method

.method private static firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;
    .registers 3

    .line 211
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 212
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 214
    :cond_14
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 215
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    return-object p0

    .line 218
    :cond_27
    goto :goto_29

    .line 217
    :catchall_28
    move-exception p0

    .line 219
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static headingOf(Ljava/lang/Object;)F
    .registers 5

    .line 144
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 145
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 146
    if-nez p0, :cond_14

    .line 147
    return v0

    .line 149
    :cond_14
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p0, v0, p0

    .line 150
    :goto_1a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v1, :cond_24

    .line 151
    add-float/2addr p0, v2

    goto :goto_1a

    .line 153
    :cond_24
    :goto_24
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2a

    .line 154
    sub-float/2addr p0, v2

    goto :goto_24

    .line 156
    :cond_2a
    return p0

    .line 157
    :catchall_2b
    move-exception p0

    .line 158
    return v0
.end method

.method private static homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 2

    .line 224
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_9

    .line 225
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    return p0

    .line 227
    :cond_9
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 294
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 295
    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 297
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 298
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1f

    .line 299
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    return p0

    .line 302
    :cond_1f
    goto :goto_21

    .line 301
    :catchall_20
    move-exception p0

    .line 303
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public static step(Ljava/lang/Object;)V
    .registers 13

    .line 60
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 61
    if-nez p0, :cond_5

    .line 62
    return-void

    .line 65
    :cond_5
    :try_start_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v0

    .line 66
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I

    move-result v1

    .line 67
    if-ltz v1, :cond_14

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 68
    :goto_15
    if-nez v2, :cond_24

    .line 69
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_1e

    .line 70
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_20

    :cond_1e
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 69
    :goto_20
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 71
    return-void

    .line 73
    :cond_24
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 74
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 76
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 77
    const/4 v5, 0x1

    if-nez v4, :cond_57

    .line 78
    invoke-static {p0, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;

    move-result-object v4

    .line 79
    if-nez v4, :cond_47

    .line 80
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V

    .line 81
    return-void

    .line 83
    :cond_47
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    add-int/2addr v1, v5

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgInit:I

    .line 87
    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 89
    if-nez v1, :cond_6e

    const-wide/16 v8, 0x10

    goto :goto_74

    :cond_6e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 90
    :goto_74
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_7c

    .line 91
    move-wide v8, v10

    goto :goto_83

    .line 92
    :cond_7c
    const-wide/16 v10, 0x78

    cmp-long v1, v8, v10

    if-lez v1, :cond_83

    .line 93
    move-wide v8, v10

    .line 95
    :cond_83
    :goto_83
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    iget-wide v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v1

    .line 98
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_9d

    .line 99
    const/high16 v1, 0x43960000    # 300.0f

    .line 101
    :cond_9d
    long-to-float v6, v8

    div-float/2addr v6, v1

    .line 105
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c2

    .line 106
    iget v7, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    mul-float/2addr v7, v6

    .line 107
    invoke-virtual {v4, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    add-float/2addr v7, v9

    cmpg-float v7, v8, v7

    if-gtz v7, :cond_c2

    .line 108
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 109
    if-eqz v7, :cond_c2

    .line 110
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 111
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 116
    :cond_c2
    if-eq v0, v5, :cond_c9

    if-eq v0, v1, :cond_c9

    const/4 v7, 0x3

    if-ne v0, v7, :cond_e0

    .line 117
    :cond_c9
    invoke-virtual {v4, v6, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v2

    .line 118
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    add-int/2addr v3, v5

    sput v3, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 119
    if-nez v2, :cond_db

    .line 120
    if-eq v0, v1, :cond_e0

    .line 121
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    goto :goto_e0

    .line 123
    :cond_db
    if-eq v0, v1, :cond_e0

    .line 124
    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V

    .line 128
    :cond_e0
    :goto_e0
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 129
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 130
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->record(Ljava/lang/Object;II)V
    :try_end_f1
    .catchall {:try_start_5 .. :try_end_f1} :catchall_f2

    .line 138
    goto :goto_101

    .line 131
    :catchall_f2
    move-exception v0

    .line 134
    :try_start_f3
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_fa

    .line 135
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_fc

    :cond_fa
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 134
    :goto_fc
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    :try_end_ff
    .catchall {:try_start_f3 .. :try_end_ff} :catchall_100

    .line 137
    goto :goto_101

    .line 136
    :catchall_100
    move-exception p0

    .line 139
    :goto_101
    return-void
.end method

.method private static targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I
    .registers 3

    .line 232
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 233
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->homeProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result p0

    return p0

    .line 235
    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz p1, :cond_f

    .line 236
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return p0

    .line 238
    :cond_f
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V
    .registers 10

    .line 242
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 243
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 244
    if-eqz v0, :cond_54

    if-nez v1, :cond_11

    goto :goto_54

    .line 247
    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 248
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    .line 249
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 250
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 251
    sub-float v4, v3, v2

    mul-float/2addr v4, v4

    sub-float v5, v1, v0

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 252
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_35

    .line 253
    move v4, v5

    .line 256
    :cond_35
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3d

    invoke-virtual {p1, v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    .line 257
    :goto_41
    div-float/2addr p1, v4

    sub-float p1, v5, p1

    .line 258
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_4b

    .line 259
    move v5, p2

    goto :goto_51

    .line 260
    :cond_4b
    cmpl-float p2, p1, v5

    if-lez p2, :cond_50

    .line 261
    goto :goto_51

    .line 260
    :cond_50
    move v5, p1

    .line 263
    :goto_51
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    .line 264
    return-void

    .line 245
    :cond_54
    :goto_54
    return-void
.end method

.method private static worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 272
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

    .line 276
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method
