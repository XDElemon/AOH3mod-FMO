.class public final Laoc/kingdoms/lukasz/map/province/AirRadarBld;
.super Ljava/lang/Object;
.source "AirRadarBld.java"


# static fields
.field private static DBG:I = 0x0

.field private static final T_AAA:Ljava/lang/String; = "ABM_SITE"

.field private static final T_LONG:Ljava/lang/String; = "MIDCOURSE_ABM"

.field private static final T_RADAR:Ljava/lang/String; = "RADAR"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->DBG:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 10

    .line 20
    if-nez p0, :cond_3

    .line 21
    return-void

    .line 24
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 25
    if-nez v0, :cond_a

    .line 26
    return-void

    .line 28
    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 29
    if-eqz v1, :cond_ed

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_ed

    .line 32
    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 33
    if-nez v2, :cond_1b

    .line 34
    return-void

    .line 36
    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 37
    if-nez v3, :cond_20

    .line 38
    return-void

    .line 40
    :cond_20
    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 41
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    .line 42
    sget v4, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->DBG:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->DBG:I

    rem-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_5c

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BLD set="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->i(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->f(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->log(Ljava/lang/String;)V

    .line 45
    :cond_5c
    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_62

    .line 46
    return-void

    .line 48
    :cond_62
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 51
    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_75

    .line 52
    goto :goto_66

    .line 54
    :cond_75
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 55
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    .line 56
    if-nez v6, :cond_82

    .line 57
    goto :goto_66

    .line 59
    :cond_82
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-eq v7, v2, :cond_89

    .line 60
    goto :goto_66

    .line 63
    :cond_89
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 64
    const-string v7, "MIDCOURSE_ABM"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    goto :goto_af

    .line 65
    :cond_96
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 66
    const-string v7, "RADAR"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    goto :goto_af

    .line 67
    :cond_a3
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 68
    const-string v7, "ABM_SITE"

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/RadarDataManager;->getRange(Ljava/lang/String;)F

    move-result v7

    .line 72
    :goto_af
    cmpg-float v8, v7, v4

    if-gtz v8, :cond_cc

    .line 74
    cmpl-float v7, v7, v4

    if-nez v7, :cond_c0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_c0

    const/high16 v7, 0x45160000    # 2400.0f

    goto :goto_cb

    .line 75
    :cond_c0
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_c9

    const/high16 v7, 0x44160000    # 600.0f

    goto :goto_cb

    :cond_c9
    const/high16 v7, 0x43960000    # 300.0f

    :goto_cb
    nop

    .line 77
    :cond_cc
    mul-float/2addr v7, v3

    .line 78
    cmpg-float v8, v7, v4

    if-gtz v8, :cond_d2

    .line 79
    goto :goto_66

    .line 81
    :cond_d2
    float-to-int v7, v7

    .line 82
    const/4 v8, 0x1

    if-ge v7, v8, :cond_d7

    .line 83
    goto :goto_66

    .line 85
    :cond_d7
    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    .line 86
    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 87
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v6

    .line 88
    invoke-static {p0, v8, v5, v7, v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAny(Ljava/lang/Object;IIII)V
    :try_end_ea
    .catchall {:try_start_3 .. :try_end_ea} :catchall_ee

    .line 89
    goto/16 :goto_66

    .line 91
    :cond_ec
    goto :goto_ef

    .line 30
    :cond_ed
    :goto_ed
    return-void

    .line 90
    :catchall_ee
    move-exception p0

    .line 92
    :goto_ef
    return-void
.end method
