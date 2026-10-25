.class public final Laoc/kingdoms/lukasz/map/province/AirRadarPlane;
.super Ljava/lang/Object;
.source "AirRadarPlane.java"


# static fields
.field private static final COLOR_PLANE:I = 0xff3333

.field private static final RANGE_FALLBACK:F = 100.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static drawAllMissions(Ljava/lang/Object;)V
    .registers 18

    .line 38
    if-nez p0, :cond_3

    .line 39
    return-void

    .line 42
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 43
    if-nez v0, :cond_a

    .line 44
    return-void

    .line 46
    :cond_a
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    .line 47
    if-eqz v0, :cond_116

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_116

    .line 50
    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 51
    if-nez v1, :cond_1b

    .line 52
    return-void

    .line 54
    :cond_1b
    const-class v2, Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 56
    if-nez v2, :cond_28

    .line 57
    return-void

    .line 59
    :cond_28
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 60
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    .line 61
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_34

    .line 62
    return-void

    .line 64
    :cond_34
    nop

    .line 65
    const-class v3, Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 67
    if-eqz v3, :cond_48

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v5, :cond_48

    .line 68
    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    goto :goto_49

    .line 70
    :cond_48
    const/4 v3, 0x1

    :goto_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 71
    const/4 v7, 0x0

    :goto_4e
    if-ge v7, v5, :cond_115

    .line 72
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 73
    instance-of v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v9, :cond_5d

    .line 74
    move-object/from16 v16, v0

    const/4 v6, 0x1

    goto/16 :goto_10f

    .line 76
    :cond_5d
    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 78
    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v9, v1, :cond_68

    .line 79
    move-object/from16 v16, v0

    const/4 v6, 0x1

    goto/16 :goto_10f

    .line 81
    :cond_68
    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 82
    if-gez v9, :cond_6e

    .line 83
    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 85
    :cond_6e
    nop

    .line 86
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    .line 87
    if-nez v10, :cond_7a

    .line 88
    move-object/from16 v16, v0

    const/4 v6, 0x1

    goto/16 :goto_10f

    .line 91
    :cond_7a
    nop

    .line 92
    nop

    .line 93
    iget-object v11, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 94
    if-eqz v11, :cond_b6

    .line 95
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 96
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_87
    if-ge v13, v12, :cond_b3

    .line 97
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 98
    instance-of v4, v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v4, :cond_94

    .line 99
    move-object/from16 v16, v0

    goto :goto_ae

    .line 101
    :cond_94
    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v4, v6, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    .line 102
    if-gez v4, :cond_9f

    .line 103
    nop

    .line 104
    move-object/from16 v16, v0

    const/4 v14, 0x1

    goto :goto_ae

    .line 106
    :cond_9f
    and-int/lit8 v6, v4, 0x3

    move-object/from16 v16, v0

    const/4 v0, 0x3

    if-ne v6, v0, :cond_a7

    .line 107
    goto :goto_ae

    .line 109
    :cond_a7
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v0

    .line 110
    if-le v0, v15, :cond_ae

    .line 111
    move v15, v0

    .line 96
    :cond_ae
    :goto_ae
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_87

    :cond_b3
    move-object/from16 v16, v0

    goto :goto_ba

    .line 94
    :cond_b6
    move-object/from16 v16, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 115
    :goto_ba
    const/16 v0, 0x64

    if-gtz v15, :cond_c3

    .line 116
    if-nez v14, :cond_c2

    .line 117
    const/4 v6, 0x1

    goto :goto_10f

    .line 119
    :cond_c2
    move v15, v0

    .line 121
    :cond_c3
    int-to-float v4, v15

    int-to-float v6, v3

    mul-float/2addr v4, v6

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 122
    const/4 v6, 0x1

    if-ge v4, v6, :cond_cc

    .line 123
    goto :goto_10f

    .line 128
    :cond_cc
    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    .line 129
    if-ltz v11, :cond_f9

    if-eq v11, v9, :cond_f9

    .line 130
    invoke-static {v11, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v12

    .line 131
    invoke-static {v11, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    .line 132
    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v13

    .line 133
    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v9

    .line 134
    iget v14, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/2addr v14, v0

    .line 135
    iget v8, v8, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    .line 136
    if-lez v8, :cond_eb

    div-int/2addr v14, v8

    goto :goto_ed

    :cond_eb
    div-int/lit16 v14, v14, 0x190

    .line 137
    :goto_ed
    if-le v14, v0, :cond_f0

    .line 138
    move v14, v0

    .line 140
    :cond_f0
    sub-int/2addr v13, v12

    mul-int/2addr v13, v14

    div-int/2addr v13, v0

    add-int/2addr v12, v13

    .line 141
    sub-int/2addr v9, v11

    mul-int/2addr v9, v14

    div-int/2addr v9, v0

    add-int/2addr v11, v9

    .line 142
    goto :goto_101

    .line 143
    :cond_f9
    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v12

    .line 144
    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    .line 146
    :goto_101
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    invoke-static {v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v0

    .line 147
    const v8, 0xff3333

    invoke-static {v12, v11, v4, v0, v8}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addColor(IIIII)V
    :try_end_10f
    .catchall {:try_start_3 .. :try_end_10f} :catchall_117

    .line 71
    :goto_10f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_4e

    .line 151
    :cond_115
    goto :goto_118

    .line 48
    :cond_116
    :goto_116
    return-void

    .line 149
    :catchall_117
    move-exception v0

    .line 152
    :goto_118
    return-void
.end method
