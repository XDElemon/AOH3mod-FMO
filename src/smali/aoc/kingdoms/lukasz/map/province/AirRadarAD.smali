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
    .registers 12

    .line 37
    if-nez p0, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object p0

    .line 42
    if-nez p0, :cond_a

    .line 43
    return-void

    .line 45
    :cond_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 46
    if-eqz v0, :cond_a3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_a3

    .line 49
    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 50
    if-nez v1, :cond_1b

    .line 51
    return-void

    .line 53
    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 54
    if-nez v2, :cond_20

    .line 55
    return-void

    .line 57
    :cond_20
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 58
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    .line 59
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2c

    .line 60
    return-void

    .line 62
    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 64
    nop

    .line 65
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 66
    const/4 v5, 0x1

    if-eqz v4, :cond_3c

    iget v6, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v6, :cond_3c

    .line 67
    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    goto :goto_3d

    .line 69
    :cond_3c
    move v4, v5

    :goto_3d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 72
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_50

    .line 73
    goto :goto_41

    .line 75
    :cond_50
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 76
    nop

    .line 77
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 78
    if-nez v7, :cond_5e

    .line 79
    goto :goto_41

    .line 83
    :cond_5e
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v8, v1, :cond_65

    .line 84
    goto :goto_41

    .line 86
    :cond_65
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 87
    goto :goto_41

    .line 89
    :cond_6c
    nop

    .line 90
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v8

    if-nez v8, :cond_7d

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v8

    if-eqz v8, :cond_7a

    goto :goto_7d

    :cond_7a
    const/high16 v8, 0x42c80000    # 100.0f

    goto :goto_7f

    .line 91
    :cond_7d
    :goto_7d
    const/high16 v8, 0x43020000    # 130.0f

    .line 93
    :goto_7f
    int-to-float v9, v4

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    .line 94
    cmpg-float v9, v8, v3

    if-gtz v9, :cond_87

    .line 95
    goto :goto_41

    .line 97
    :cond_87
    float-to-int v8, v8

    .line 98
    if-ge v8, v5, :cond_8b

    .line 99
    goto :goto_41

    .line 101
    :cond_8b
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    .line 102
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    .line 103
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v7

    .line 104
    const v10, 0xff3333

    invoke-static {v9, v6, v8, v7, v10}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addColor(IIIII)V
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_a4

    .line 105
    goto :goto_41

    .line 108
    :cond_a2
    goto :goto_a5

    .line 47
    :cond_a3
    :goto_a3
    return-void

    .line 106
    :catchall_a4
    move-exception p0

    .line 109
    :goto_a5
    return-void
.end method
