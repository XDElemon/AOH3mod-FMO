.class public final Laoc/kingdoms/lukasz/map/province/AirRadarAD;
.super Ljava/lang/Object;
.source "AirRadarAD.java"


# static fields
.field private static final COLOR_AD:I = 0xff3333

.field private static final RANGE_BASE:F = 100.0f

.field private static final RANGE_WITH_RADAR:F = 130.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 15

    .line 37
    if-nez p0, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 42
    if-nez v0, :cond_a

    .line 43
    return-void

    .line 45
    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 46
    if-eqz v1, :cond_a9

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_a9

    .line 49
    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 50
    if-nez v2, :cond_1b

    .line 51
    return-void

    .line 53
    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 54
    if-nez v3, :cond_20

    .line 55
    return-void

    .line 57
    :cond_20
    iget v7, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 58
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    .line 59
    const/4 v9, 0x0

    cmpg-float v2, v8, v9

    if-gtz v2, :cond_2c

    .line 60
    return-void

    .line 62
    :cond_2c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 64
    nop

    .line 65
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 66
    const/4 v10, 0x1

    if-eqz v2, :cond_3d

    iget v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v3, :cond_3d

    .line 67
    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    move v11, v2

    goto :goto_3e

    .line 69
    :cond_3d
    move v11, v10

    :goto_3e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 70
    :goto_42
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 71
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_51

    .line 73
    goto :goto_42

    .line 75
    :cond_51
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    nop

    .line 77
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 78
    if-nez v2, :cond_5f

    .line 79
    goto :goto_42

    .line 83
    :cond_5f
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eq v3, v7, :cond_66

    .line 84
    goto :goto_42

    .line 86
    :cond_66
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 87
    goto :goto_42

    .line 89
    :cond_6d
    nop

    .line 90
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    goto :goto_7e

    :cond_7b
    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_80

    .line 91
    :cond_7e
    :goto_7e
    const/high16 v3, 0x43020000    # 130.0f

    .line 93
    :goto_80
    int-to-float v4, v11

    mul-float/2addr v3, v4

    mul-float/2addr v3, v8

    .line 94
    cmpg-float v4, v3, v9

    if-gtz v4, :cond_88

    .line 95
    goto :goto_42

    .line 97
    :cond_88
    float-to-int v4, v3

    .line 98
    if-ge v4, v10, :cond_8c

    .line 99
    goto :goto_42

    .line 101
    :cond_8c
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v3

    .line 102
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 103
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v6

    .line 104
    const v13, 0xff3333

    move-object v1, p0

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v13

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawRingAnyColor(Ljava/lang/Object;IIIII)V
    :try_end_a7
    .catchall {:try_start_3 .. :try_end_a7} :catchall_aa

    .line 105
    goto :goto_42

    .line 108
    :cond_a8
    goto :goto_ab

    .line 47
    :cond_a9
    :goto_a9
    return-void

    .line 106
    :catchall_aa
    move-exception v0

    .line 109
    :goto_ab
    return-void
.end method
