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

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 149
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->LAST_MS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    return-void
.end method

.method private static create(Laoc/kingdoms/lukasz/map/battles/AirMission;FF)Laoc/kingdoms/lukasz/map/battles/AirCraft;
    .registers 12

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 158
    nop

    .line 160
    const/4 v1, 0x0

    :try_start_5
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    .line 162
    goto :goto_12

    .line 161
    :catchall_10
    move-exception v2

    move v2, v1

    .line 163
    :goto_12
    if-eqz v2, :cond_1c

    .line 164
    aget v1, v0, v1

    .line 165
    const/4 v2, 0x1

    aget v0, v0, v2

    move v4, v0

    move v3, v1

    goto :goto_30

    .line 167
    :cond_1c
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 168
    if-nez v0, :cond_26

    .line 169
    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_26
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 172
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    move v4, v0

    move v3, v1

    .line 174
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

    .line 175
    nop

    .line 176
    nop

    .line 178
    const/high16 p1, 0x42200000    # 40.0f

    const/high16 p2, 0x3f000000    # 0.5f

    :try_start_43
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;

    move-result-object p0

    .line 179
    if-eqz p0, :cond_60

    .line 180
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 181
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_58

    .line 182
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    .line 184
    :cond_58
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_60

    .line 185
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_62

    .line 189
    :cond_60
    move v7, p2

    goto :goto_64

    .line 188
    :catchall_62
    move-exception p0

    move v7, p2

    .line 190
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

    .line 259
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    .line 260
    :goto_8
    if-nez p0, :cond_b

    .line 261
    return-void

    .line 263
    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 264
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 265
    return-void
.end method

.method private static firstUnit(Laoc/kingdoms/lukasz/map/battles/AirMission;)Ljava/lang/Object;
    .registers 3

    .line 195
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 196
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 198
    :cond_14
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 199
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    return-object p0

    .line 202
    :cond_27
    goto :goto_29

    .line 201
    :catchall_28
    move-exception p0

    .line 203
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static headingOf(Ljava/lang/Object;)F
    .registers 5

    .line 128
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 129
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->CRAFT:Ljava/util/HashMap;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    .line 130
    if-nez p0, :cond_14

    .line 131
    return v0

    .line 133
    :cond_14
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2b

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p0, v0, p0

    .line 134
    :goto_1a
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gtz v1, :cond_24

    .line 135
    add-float/2addr p0, v2

    goto :goto_1a

    .line 137
    :cond_24
    :goto_24
    cmpl-float v1, p0, v0

    if-lez v1, :cond_2a

    .line 138
    sub-float/2addr p0, v2

    goto :goto_24

    .line 140
    :cond_2a
    return p0

    .line 141
    :catchall_2b
    move-exception p0

    .line 142
    return v0
.end method

.method private static stateOrdinal(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 3

    .line 273
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    .line 274
    const-class v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    .line 276
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->F_STATE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 277
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_1f

    .line 278
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_20

    return p0

    .line 281
    :cond_1f
    goto :goto_21

    .line 280
    :catchall_20
    move-exception p0

    .line 282
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
    if-eq v0, v5, :cond_9a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ba

    .line 98
    :cond_9a
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->speedDiv()F

    move-result v1

    .line 99
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_a5

    .line 100
    const/high16 v1, 0x43960000    # 300.0f

    .line 102
    :cond_a5
    long-to-float v6, v8

    div-float/2addr v6, v1

    .line 103
    invoke-virtual {v4, v6, v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v1

    .line 104
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    add-int/2addr v2, v5

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirMotion;->dbgSteps:I

    .line 105
    if-nez v1, :cond_b7

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    goto :goto_ba

    .line 108
    :cond_b7
    invoke-static {p0, v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V

    .line 112
    :cond_ba
    :goto_ba
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    .line 113
    iget v0, v4, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    .line 114
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outX:I

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirMotion;->outY:I

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->record(Ljava/lang/Object;II)V
    :try_end_cb
    .catchall {:try_start_5 .. :try_end_cb} :catchall_cc

    .line 122
    goto :goto_db

    .line 115
    :catchall_cc
    move-exception v0

    .line 118
    :try_start_cd
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v0, :cond_d4

    .line 119
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_d6

    :cond_d4
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 118
    :goto_d6
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->fallbackToProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)V
    :try_end_d9
    .catchall {:try_start_cd .. :try_end_d9} :catchall_da

    .line 121
    goto :goto_db

    .line 120
    :catchall_da
    move-exception p0

    .line 123
    :goto_db
    return-void
.end method

.method private static targetProvince(Laoc/kingdoms/lukasz/map/battles/AirMission;I)I
    .registers 3

    .line 208
    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    .line 209
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz p1, :cond_c

    .line 210
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    return p0

    .line 212
    :cond_c
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0

    .line 214
    :cond_f
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz p1, :cond_16

    .line 215
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    return p0

    .line 217
    :cond_16
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    return p0
.end method

.method private static updateProgress(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirCraft;I)V
    .registers 10

    .line 221
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 222
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 223
    if-eqz v0, :cond_54

    if-nez v1, :cond_11

    goto :goto_54

    .line 226
    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v2

    .line 227
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v0

    .line 228
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v3

    .line 229
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMotion;->worldCy(Laoc/kingdoms/lukasz/map/province/Province;)F

    move-result v1

    .line 230
    sub-float v4, v3, v2

    mul-float/2addr v4, v4

    sub-float v5, v1, v0

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 231
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_35

    .line 232
    move v4, v5

    .line 235
    :cond_35
    const/4 v6, 0x3

    if-ne p2, v6, :cond_3d

    invoke-virtual {p1, v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1, v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->distTo(FF)F

    move-result p1

    .line 236
    :goto_41
    div-float/2addr p1, v4

    sub-float p1, v5, p1

    .line 237
    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_4b

    .line 238
    move v5, p2

    goto :goto_51

    .line 239
    :cond_4b
    cmpl-float p2, p1, v5

    if-lez p2, :cond_50

    .line 240
    goto :goto_51

    .line 239
    :cond_50
    move v5, p1

    .line 242
    :goto_51
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    .line 243
    return-void

    .line 224
    :cond_54
    :goto_54
    return-void
.end method

.method private static worldCx(Laoc/kingdoms/lukasz/map/province/Province;)F
    .registers 2

    .line 251
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

    .line 255
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method
