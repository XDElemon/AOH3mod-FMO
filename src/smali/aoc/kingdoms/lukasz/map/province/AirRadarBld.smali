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
    if-eqz v0, :cond_ba

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_ba

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

    .line 44
    :cond_2f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :cond_33
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 47
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_42

    .line 48
    goto :goto_33

    .line 50
    :cond_42
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 51
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    .line 52
    if-nez v5, :cond_4f

    .line 53
    goto :goto_33

    .line 55
    :cond_4f
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v6, v1, :cond_56

    .line 56
    goto :goto_33

    .line 59
    :cond_56
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 60
    const-string v6, "MIDCOURSE_ABM"

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v6

    goto :goto_7c

    .line 61
    :cond_63
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 62
    const-string v6, "RADAR"

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v6

    goto :goto_7c

    .line 63
    :cond_70
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 64
    const-string v6, "ABM_SITE"

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v6

    .line 68
    :goto_7c
    cmpg-float v7, v6, v3

    if-gtz v7, :cond_99

    .line 70
    cmpl-float v6, v6, v3

    if-nez v6, :cond_8d

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_8d

    const/high16 v6, 0x45160000    # 2400.0f

    goto :goto_98

    .line 71
    :cond_8d
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_96

    const/high16 v6, 0x44160000    # 600.0f

    goto :goto_98

    :cond_96
    const/high16 v6, 0x43960000    # 300.0f

    :goto_98
    nop

    .line 73
    :cond_99
    mul-float/2addr v6, v2

    .line 74
    cmpg-float v7, v6, v3

    if-gtz v7, :cond_9f

    .line 75
    goto :goto_33

    .line 77
    :cond_9f
    float-to-int v6, v6

    .line 78
    const/4 v7, 0x1

    if-ge v6, v7, :cond_a4

    .line 79
    goto :goto_33

    .line 81
    :cond_a4
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v7

    .line 82
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v4

    .line 83
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v5

    .line 84
    invoke-static {v7, v4, v6, v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addBlue(IIII)V
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_bb

    .line 85
    goto/16 :goto_33

    .line 87
    :cond_b9
    goto :goto_bc

    .line 29
    :cond_ba
    :goto_ba
    return-void

    .line 86
    :catchall_bb
    move-exception p0

    .line 88
    :goto_bc
    return-void
.end method
