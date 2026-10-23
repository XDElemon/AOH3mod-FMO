.class public final Laoc/kingdoms/lukasz/map/province/AirRadarBld;
.super Ljava/lang/Object;
.source "AirRadarBld.java"


# static fields
.field private static final T_AAA:Ljava/lang/String; = "ABM_SITE"

.field private static final T_LONG:Ljava/lang/String; = "MIDCOURSE_ABM"

.field private static final T_RADAR:Ljava/lang/String; = "RADAR"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 10

    .line 18
    if-nez p0, :cond_3

    .line 19
    return-void

    .line 22
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 23
    if-nez v0, :cond_a

    .line 24
    return-void

    .line 26
    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 27
    if-eqz v1, :cond_b7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_b7

    .line 30
    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 31
    if-nez v2, :cond_1b

    .line 32
    return-void

    .line 34
    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 35
    if-nez v3, :cond_20

    .line 36
    return-void

    .line 38
    :cond_20
    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 39
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    .line 40
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_2c

    .line 41
    return-void

    .line 43
    :cond_2c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 46
    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_3f

    .line 47
    goto :goto_30

    .line 49
    :cond_3f
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 50
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 51
    if-nez v6, :cond_4c

    .line 52
    goto :goto_30

    .line 54
    :cond_4c
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-eq v7, v2, :cond_53

    .line 55
    goto :goto_30

    .line 58
    :cond_53
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 59
    const-string v7, "MIDCOURSE_ABM"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    goto :goto_79

    .line 60
    :cond_60
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 61
    const-string v7, "RADAR"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    goto :goto_79

    .line 62
    :cond_6d
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 63
    const-string v7, "ABM_SITE"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    .line 67
    :goto_79
    cmpg-float v8, v7, v4

    if-gtz v8, :cond_96

    .line 69
    cmpl-float v7, v7, v4

    if-nez v7, :cond_8a

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_8a

    const/high16 v7, 0x45160000    # 2400.0f

    goto :goto_95

    .line 70
    :cond_8a
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_93

    const/high16 v7, 0x44160000    # 600.0f

    goto :goto_95

    :cond_93
    const/high16 v7, 0x43960000    # 300.0f

    :goto_95
    nop

    .line 72
    :cond_96
    mul-float/2addr v7, v3

    .line 73
    cmpg-float v8, v7, v4

    if-gtz v8, :cond_9c

    .line 74
    goto :goto_30

    .line 76
    :cond_9c
    float-to-int v7, v7

    .line 77
    const/4 v8, 0x1

    if-ge v7, v8, :cond_a1

    .line 78
    goto :goto_30

    .line 80
    :cond_a1
    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    .line 81
    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 82
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v6

    .line 83
    invoke-static {p0, v8, v5, v7, v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAny(Ljava/lang/Object;IIII)V
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b8

    .line 84
    goto/16 :goto_30

    .line 86
    :cond_b6
    goto :goto_b9

    .line 28
    :cond_b7
    :goto_b7
    return-void

    .line 85
    :catchall_b8
    move-exception p0

    .line 87
    :goto_b9
    return-void
.end method
