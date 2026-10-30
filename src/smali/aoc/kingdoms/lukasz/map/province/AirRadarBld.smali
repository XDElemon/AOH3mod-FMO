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
    .registers 9

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
    if-eqz v0, :cond_98

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_98

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
    if-eqz v4, :cond_3a

    iget v5, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v5, :cond_3a

    .line 48
    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 50
    :cond_3a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 53
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_4d

    .line 54
    goto :goto_3e

    .line 56
    :cond_4d
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 57
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    .line 58
    if-nez v5, :cond_5a

    .line 59
    goto :goto_3e

    .line 61
    :cond_5a
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v6, v1, :cond_61

    .line 62
    goto :goto_3e

    .line 65
    :cond_61
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    .line 66
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    .line 67
    goto :goto_3e

    .line 71
    :cond_74
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->detectReal(I)F

    move-result v6

    .line 72
    mul-float/2addr v6, v2

    .line 73
    cmpg-float v7, v6, v3

    if-gtz v7, :cond_7e

    .line 74
    goto :goto_3e

    .line 76
    :cond_7e
    float-to-int v6, v6

    .line 77
    const/4 v7, 0x1

    if-ge v6, v7, :cond_83

    .line 78
    goto :goto_3e

    .line 80
    :cond_83
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v7

    .line 81
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v4

    .line 82
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v5

    .line 83
    invoke-static {v7, v4, v6, v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addBlue(IIII)V
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_99

    .line 84
    goto :goto_3e

    .line 86
    :cond_97
    goto :goto_9a

    .line 29
    :cond_98
    :goto_98
    return-void

    .line 85
    :catchall_99
    move-exception p0

    .line 87
    :goto_9a
    return-void
.end method
