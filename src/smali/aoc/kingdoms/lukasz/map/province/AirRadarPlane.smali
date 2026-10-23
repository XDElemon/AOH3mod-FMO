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
    if-eqz v0, :cond_11e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_11e

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
    iget v7, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 60
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    .line 61
    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_34

    .line 62
    return-void

    .line 64
    :cond_34
    nop

    .line 65
    const-class v1, Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 67
    if-eqz v1, :cond_49

    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v2, :cond_49

    .line 68
    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    move v10, v1

    goto :goto_4a

    .line 70
    :cond_49
    const/4 v10, 0x1

    :goto_4a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 71
    const/4 v13, 0x0

    :goto_4f
    if-ge v13, v11, :cond_11d

    .line 72
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 73
    instance-of v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v2, :cond_5e

    .line 74
    move-object/from16 v16, v0

    const/4 v9, 0x1

    goto/16 :goto_117

    .line 76
    :cond_5e
    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 78
    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v2, v7, :cond_69

    .line 79
    move-object/from16 v16, v0

    const/4 v9, 0x1

    goto/16 :goto_117

    .line 81
    :cond_69
    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 82
    if-gez v2, :cond_6f

    .line 83
    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    .line 85
    :cond_6f
    nop

    .line 86
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 87
    if-nez v3, :cond_7b

    .line 88
    move-object/from16 v16, v0

    const/4 v9, 0x1

    goto/16 :goto_117

    .line 91
    :cond_7b
    nop

    .line 92
    nop

    .line 93
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 94
    if-eqz v4, :cond_b7

    .line 95
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 96
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_88
    if-ge v6, v5, :cond_b4

    .line 97
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 98
    instance-of v9, v12, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v9, :cond_95

    .line 99
    move-object/from16 v16, v0

    goto :goto_af

    .line 101
    :cond_95
    check-cast v12, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v9, v12, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    .line 102
    if-gez v9, :cond_a0

    .line 103
    nop

    .line 104
    move-object/from16 v16, v0

    const/4 v14, 0x1

    goto :goto_af

    .line 106
    :cond_a0
    and-int/lit8 v12, v9, 0x3

    move-object/from16 v16, v0

    const/4 v0, 0x3

    if-ne v12, v0, :cond_a8

    .line 107
    goto :goto_af

    .line 109
    :cond_a8
    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v0

    .line 110
    if-le v0, v15, :cond_af

    .line 111
    move v15, v0

    .line 96
    :cond_af
    :goto_af
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    goto :goto_88

    :cond_b4
    move-object/from16 v16, v0

    goto :goto_bb

    .line 94
    :cond_b7
    move-object/from16 v16, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 115
    :goto_bb
    const/16 v0, 0x64

    if-gtz v15, :cond_c4

    .line 116
    if-nez v14, :cond_c3

    .line 117
    const/4 v9, 0x1

    goto :goto_117

    .line 119
    :cond_c3
    move v15, v0

    .line 121
    :cond_c4
    int-to-float v4, v15

    int-to-float v5, v10

    mul-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 122
    const/4 v9, 0x1

    if-ge v4, v9, :cond_cd

    .line 123
    goto :goto_117

    .line 128
    :cond_cd
    iget v5, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    .line 129
    if-ltz v5, :cond_fb

    if-eq v5, v2, :cond_fb

    .line 130
    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    .line 131
    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 132
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v12

    .line 133
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v2

    .line 134
    iget v14, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/2addr v14, v0

    .line 135
    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    .line 136
    if-lez v1, :cond_ec

    div-int/2addr v14, v1

    goto :goto_ee

    :cond_ec
    div-int/lit16 v14, v14, 0x190

    .line 137
    :goto_ee
    if-le v14, v0, :cond_f1

    .line 138
    move v14, v0

    .line 140
    :cond_f1
    sub-int/2addr v12, v6

    mul-int/2addr v12, v14

    div-int/2addr v12, v0

    add-int/2addr v6, v12

    .line 141
    sub-int/2addr v2, v5

    mul-int/2addr v2, v14

    div-int/2addr v2, v0

    add-int/2addr v5, v2

    .line 142
    move v2, v6

    goto :goto_105

    .line 143
    :cond_fb
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v0

    .line 144
    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v1

    move v2, v0

    move v5, v1

    .line 146
    :goto_105
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    invoke-static {v4, v0}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v0

    .line 147
    const v6, 0xff3333

    move-object/from16 v1, p0

    move v3, v5

    move v5, v0

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V
    :try_end_117
    .catchall {:try_start_3 .. :try_end_117} :catchall_11f

    .line 71
    :goto_117
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_4f

    .line 151
    :cond_11d
    goto :goto_120

    .line 48
    :cond_11e
    :goto_11e
    return-void

    .line 149
    :catchall_11f
    move-exception v0

    .line 152
    :goto_120
    return-void
.end method
