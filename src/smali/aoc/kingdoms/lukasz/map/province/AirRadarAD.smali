.class public final Laoc/kingdoms/lukasz/map/province/AirRadarAD;
.super Ljava/lang/Object;
.source "AirRadarAD.java"


# static fields
.field private static final COLOR_AD:I = 0xff3333


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 12

    .line 33
    if-nez p0, :cond_3

    .line 34
    return-void

    .line 37
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object p0

    .line 38
    if-nez p0, :cond_a

    .line 39
    return-void

    .line 41
    :cond_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 42
    if-eqz v0, :cond_94

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_94

    .line 45
    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 46
    if-nez v1, :cond_1b

    .line 47
    return-void

    .line 49
    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 50
    if-nez v2, :cond_20

    .line 51
    return-void

    .line 53
    :cond_20
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 54
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    .line 55
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2c

    .line 56
    return-void

    .line 58
    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 60
    nop

    .line 61
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 62
    const/4 v5, 0x1

    if-eqz v4, :cond_3c

    iget v6, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v6, :cond_3c

    .line 63
    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    goto :goto_3d

    .line 65
    :cond_3c
    move v4, v5

    :goto_3d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 66
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 68
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_50

    .line 69
    goto :goto_41

    .line 71
    :cond_50
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 72
    nop

    .line 73
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 74
    if-nez v7, :cond_5e

    .line 75
    goto :goto_41

    .line 79
    :cond_5e
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v8, v1, :cond_65

    .line 80
    goto :goto_41

    .line 82
    :cond_65
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 83
    goto :goto_41

    .line 86
    :cond_6c
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->engageReal(I)F

    move-result v8

    .line 87
    int-to-float v9, v4

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    .line 88
    cmpg-float v9, v8, v3

    if-gtz v9, :cond_78

    .line 89
    goto :goto_41

    .line 91
    :cond_78
    float-to-int v8, v8

    .line 92
    if-ge v8, v5, :cond_7c

    .line 93
    goto :goto_41

    .line 95
    :cond_7c
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    .line 96
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    .line 97
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v7

    .line 98
    const v10, 0xff3333

    invoke-static {v9, v6, v8, v7, v10}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addColor(IIIII)V
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_95

    .line 99
    goto :goto_41

    .line 102
    :cond_93
    goto :goto_96

    .line 43
    :cond_94
    :goto_94
    return-void

    .line 100
    :catchall_95
    move-exception p0

    .line 103
    :goto_96
    return-void
.end method
