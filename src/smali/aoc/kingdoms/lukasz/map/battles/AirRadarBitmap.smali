.class public final Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;
.super Ljava/lang/Object;
.source "AirRadarBitmap.java"


# static fields
.field private static sig:I

.field private static sigReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sig:I

    .line 36
    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sigReady:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static bmpCoord(IIII)I
    .registers 4

    .line 57
    if-gtz p3, :cond_4

    .line 58
    const/4 p0, 0x0

    return p0

    .line 60
    :cond_4
    sub-int/2addr p0, p1

    mul-int/2addr p0, p2

    div-int/2addr p0, p3

    return p0
.end method

.method public static bmpRadius(FIII)I
    .registers 5

    .line 68
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_17

    if-lez p1, :cond_17

    if-lez p2, :cond_17

    if-gtz p3, :cond_c

    goto :goto_17

    .line 71
    :cond_c
    int-to-float p1, p1

    mul-float/2addr p0, p1

    mul-int/2addr p2, p3

    int-to-float p1, p2

    div-float/2addr p0, p1

    float-to-int p0, p0

    .line 72
    const/4 p1, 0x1

    if-ge p0, p1, :cond_16

    move p0, p1

    :cond_16
    return p0

    .line 69
    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public static discs(IIIIIII)[F
    .registers 23

    .line 81
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    const/4 v5, 0x0

    if-lez v0, :cond_a8

    if-lez v1, :cond_a8

    if-lez v2, :cond_a8

    if-lez v3, :cond_a8

    if-gtz v4, :cond_17

    goto/16 :goto_a8

    .line 84
    :cond_17
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v6

    .line 85
    if-nez v6, :cond_20

    .line 86
    new-array v0, v5, [F

    return-object v0

    .line 88
    :cond_20
    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 89
    if-nez v6, :cond_27

    .line 90
    new-array v0, v5, [F

    return-object v0

    .line 92
    :cond_27
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 93
    mul-int/lit8 v8, v7, 0x4

    new-array v9, v8, [F

    .line 94
    nop

    .line 95
    move v10, v5

    move v11, v10

    :goto_32
    if-ge v10, v7, :cond_98

    .line 96
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 97
    instance-of v13, v12, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v13, :cond_3d

    .line 98
    goto :goto_5f

    .line 100
    :cond_3d
    check-cast v12, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 101
    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->isMine(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v13

    if-nez v13, :cond_46

    .line 102
    goto :goto_5f

    .line 104
    :cond_46
    iget v13, v12, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 105
    if-gez v13, :cond_4b

    .line 106
    goto :goto_5f

    .line 108
    :cond_4b
    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    .line 109
    if-nez v13, :cond_52

    .line 110
    goto :goto_5f

    .line 112
    :cond_52
    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirRadar;->maxDetect(Ljava/util/List;)F

    move-result v12

    invoke-static {v12, v0, v4, v2}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->bmpRadius(FIII)I

    move-result v12

    .line 113
    if-gtz v12, :cond_64

    .line 114
    nop

    .line 95
    :goto_5f
    move/from16 v15, p2

    move/from16 v5, p3

    goto :goto_92

    .line 116
    :cond_64
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v14

    .line 117
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v13

    .line 118
    move/from16 v15, p2

    invoke-static {v14, v15, v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->bmpCoord(IIII)I

    move-result v14

    int-to-float v14, v14

    aput v14, v9, v11

    .line 119
    add-int/lit8 v14, v11, 0x1

    move/from16 v5, p3

    invoke-static {v13, v5, v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->bmpCoord(IIII)I

    move-result v0

    int-to-float v0, v0

    aput v0, v9, v14

    .line 120
    add-int/lit8 v0, v11, 0x2

    int-to-float v12, v12

    aput v12, v9, v0

    .line 121
    add-int/lit8 v0, v11, 0x3

    invoke-static {v13}, Laoc/kingdoms/lukasz/map/battles/AirLat;->f(I)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    aput v12, v9, v0

    .line 122
    add-int/lit8 v11, v11, 0x4

    .line 95
    :goto_92
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p0

    const/4 v5, 0x0

    goto :goto_32

    .line 124
    :cond_98
    if-ne v11, v8, :cond_9b

    .line 125
    return-object v9

    .line 127
    :cond_9b
    new-array v0, v11, [F

    .line 128
    const/4 v5, 0x0

    :goto_9e
    if-ge v5, v11, :cond_a7

    .line 129
    aget v1, v9, v5

    aput v1, v0, v5

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 131
    :cond_a7
    return-object v0

    .line 82
    :cond_a8
    :goto_a8
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public static isMine(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 3

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 47
    return v0

    .line 49
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-nez v1, :cond_9

    .line 50
    return v0

    .line 52
    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v1, p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static signature()I
    .registers 6

    .line 155
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 157
    return v1

    .line 159
    :cond_8
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 160
    if-nez v0, :cond_d

    .line 161
    return v1

    .line 163
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    add-int/lit8 v3, v2, 0x1

    .line 165
    nop

    :goto_14
    if-ge v1, v2, :cond_3a

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 167
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v5, :cond_1f

    .line 168
    goto :goto_37

    .line 170
    :cond_1f
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 171
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->isMine(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 172
    goto :goto_37

    .line 174
    :cond_28
    mul-int/lit8 v3, v3, 0x1f

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    add-int/2addr v3, v5

    .line 175
    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirRadar;->maxDetect(Ljava/util/List;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 165
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 177
    :cond_3a
    return v3
.end method

.method public static syncDirty()V
    .registers 2

    .line 140
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->signature()I

    move-result v0

    .line 141
    sget-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sigReady:Z

    if-nez v1, :cond_e

    .line 142
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sig:I

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sigReady:Z

    .line 144
    return-void

    .line 146
    :cond_e
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sig:I

    if-ne v0, v1, :cond_13

    .line 147
    return-void

    .line 149
    :cond_13
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirRadarBitmap;->sig:I

    .line 150
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->markDirty()V

    .line 151
    return-void
.end method
