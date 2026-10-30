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
    .registers 11

    .line 18
    if-nez p0, :cond_3

    .line 19
    return-void

    .line 22
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object p0

    .line 23
    if-nez p0, :cond_a

    .line 24
    return-void

    .line 26
    :cond_a
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->begin()V

    .line 27
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 28
    if-eqz v0, :cond_9c

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_9c

    .line 31
    :cond_19
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 32
    if-nez v1, :cond_1e

    .line 33
    return-void

    .line 35
    :cond_1e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 36
    if-nez v2, :cond_23

    .line 37
    return-void

    .line 39
    :cond_23
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 40
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    .line 41
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2f

    .line 42
    return-void

    .line 45
    :cond_2f
    nop

    .line 46
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 47
    const/4 v5, 0x1

    if-eqz v4, :cond_3c

    iget v6, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v6, :cond_3c

    .line 48
    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    goto :goto_3d

    .line 50
    :cond_3c
    move v4, v5

    :goto_3d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 53
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_50

    .line 54
    goto :goto_41

    .line 56
    :cond_50
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 57
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 58
    if-nez v7, :cond_5d

    .line 59
    goto :goto_41

    .line 61
    :cond_5d
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v8, v1, :cond_64

    .line 62
    goto :goto_41

    .line 65
    :cond_64
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v8

    if-nez v8, :cond_77

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v8

    if-nez v8, :cond_77

    .line 66
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v8

    if-nez v8, :cond_77

    .line 67
    goto :goto_41

    .line 69
    :cond_77
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->detectReal(I)F

    move-result v8

    .line 70
    int-to-float v9, v4

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    .line 71
    cmpg-float v9, v8, v3

    if-gtz v9, :cond_83

    .line 72
    goto :goto_41

    .line 74
    :cond_83
    float-to-int v8, v8

    .line 75
    if-ge v8, v5, :cond_87

    .line 76
    goto :goto_41

    .line 78
    :cond_87
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v9

    .line 79
    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v6

    .line 80
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v7

    .line 81
    invoke-static {v9, v6, v8, v7}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addBlue(IIII)V
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_9d

    .line 82
    goto :goto_41

    .line 84
    :cond_9b
    goto :goto_9e

    .line 29
    :cond_9c
    :goto_9c
    return-void

    .line 83
    :catchall_9d
    move-exception p0

    .line 85
    :goto_9e
    return-void
.end method
