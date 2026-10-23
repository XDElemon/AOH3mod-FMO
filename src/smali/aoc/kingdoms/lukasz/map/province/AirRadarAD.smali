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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 15

    .line 36
    if-nez p0, :cond_3

    .line 37
    return-void

    .line 40
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 41
    if-nez v0, :cond_a

    .line 42
    return-void

    .line 44
    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 45
    if-eqz v1, :cond_a6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_a6

    .line 48
    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 49
    if-nez v2, :cond_1b

    .line 50
    return-void

    .line 52
    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 53
    if-nez v3, :cond_20

    .line 54
    return-void

    .line 56
    :cond_20
    iget v7, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 57
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    .line 58
    const/4 v9, 0x0

    cmpg-float v2, v8, v9

    if-gtz v2, :cond_2c

    .line 59
    return-void

    .line 62
    :cond_2c
    nop

    .line 63
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 64
    const/4 v10, 0x1

    if-eqz v2, :cond_3a

    iget v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v3, :cond_3a

    .line 65
    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    move v11, v2

    goto :goto_3b

    .line 67
    :cond_3a
    move v11, v10

    :goto_3b
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 68
    :goto_3f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 69
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_4e

    .line 71
    goto :goto_3f

    .line 73
    :cond_4e
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    nop

    .line 75
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 76
    if-nez v2, :cond_5c

    .line 77
    goto :goto_3f

    .line 80
    :cond_5c
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v7, :cond_63

    .line 81
    goto :goto_3f

    .line 83
    :cond_63
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 84
    goto :goto_3f

    .line 86
    :cond_6a
    nop

    .line 87
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v3

    if-nez v3, :cond_7b

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_7b

    :cond_78
    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_7d

    .line 88
    :cond_7b
    :goto_7b
    const/high16 v3, 0x43020000    # 130.0f

    .line 90
    :goto_7d
    int-to-float v4, v11

    mul-float/2addr v3, v4

    mul-float/2addr v3, v8

    .line 91
    cmpg-float v4, v3, v9

    if-gtz v4, :cond_85

    .line 92
    goto :goto_3f

    .line 94
    :cond_85
    float-to-int v4, v3

    .line 95
    if-ge v4, v10, :cond_89

    .line 96
    goto :goto_3f

    .line 98
    :cond_89
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v3

    .line 99
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 100
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v6

    .line 101
    const v13, 0xff3333

    move-object v1, p0

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v13

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V
    :try_end_a4
    .catchall {:try_start_3 .. :try_end_a4} :catchall_a7

    .line 102
    goto :goto_3f

    .line 105
    :cond_a5
    goto :goto_a8

    .line 46
    :cond_a6
    :goto_a6
    return-void

    .line 103
    :catchall_a7
    move-exception v0

    .line 106
    :goto_a8
    return-void
.end method
