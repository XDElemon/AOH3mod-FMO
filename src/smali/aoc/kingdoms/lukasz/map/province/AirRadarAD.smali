.class public final Laoc/kingdoms/lukasz/map/province/AirRadarAD;
.super Ljava/lang/Object;
.source "AirRadarAD.java"


# static fields
.field private static final COLOR_AD:I = 0xff3333

.field private static DBG:I = 0x0

.field private static DREW:I = 0x0

.field private static final RANGE_BASE:F = 100.0f

.field private static final RANGE_WITH_RADAR:F = 130.0f


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DBG:I

    .line 24
    sput v0, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DREW:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 16

    .line 39
    if-nez p0, :cond_3

    .line 40
    return-void

    .line 43
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 44
    if-nez v0, :cond_a

    .line 45
    return-void

    .line 47
    :cond_a
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 48
    if-eqz v1, :cond_10b

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_10b

    .line 51
    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 52
    if-nez v2, :cond_1b

    .line 53
    return-void

    .line 55
    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 56
    if-nez v3, :cond_20

    .line 57
    return-void

    .line 59
    :cond_20
    iget v7, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 60
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    .line 61
    const/4 v9, 0x0

    cmpg-float v2, v8, v9

    if-gtz v2, :cond_2c

    .line 62
    return-void

    .line 64
    :cond_2c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v10

    .line 66
    nop

    .line 67
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 68
    const/4 v11, 0x1

    if-eqz v2, :cond_3e

    iget v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v3, :cond_3e

    .line 69
    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    move v12, v2

    goto :goto_3f

    .line 71
    :cond_3e
    move v12, v11

    :goto_3f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 72
    :goto_43
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 73
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_52

    .line 75
    goto :goto_43

    .line 77
    :cond_52
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    nop

    .line 79
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 80
    if-nez v2, :cond_60

    .line 81
    goto :goto_43

    .line 84
    :cond_60
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, v7, :cond_67

    .line 85
    goto :goto_43

    .line 87
    :cond_67
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 88
    goto :goto_43

    .line 90
    :cond_6e
    nop

    .line 91
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v3

    if-nez v3, :cond_7f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_7f

    :cond_7c
    const/high16 v3, 0x42c80000    # 100.0f

    goto :goto_81

    .line 92
    :cond_7f
    :goto_7f
    const/high16 v3, 0x43020000    # 130.0f

    .line 94
    :goto_81
    int-to-float v4, v12

    mul-float/2addr v3, v4

    mul-float/2addr v3, v8

    .line 95
    cmpg-float v4, v3, v9

    if-gtz v4, :cond_89

    .line 96
    goto :goto_43

    .line 98
    :cond_89
    float-to-int v4, v3

    .line 99
    if-ge v4, v11, :cond_8d

    .line 100
    goto :goto_43

    .line 102
    :cond_8d
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v3

    .line 103
    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    .line 104
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v6

    .line 105
    sget v1, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DREW:I

    add-int/2addr v1, v11

    sput v1, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DREW:I

    .line 106
    const v14, 0xff3333

    move-object v1, p0

    move v2, v3

    move v3, v5

    move v5, v6

    move v6, v14

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 107
    goto :goto_43

    .line 108
    :cond_ae
    sget v0, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DBG:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DBG:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_10a

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AD set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " drew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/province/AirRadarAD;->DREW:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->f(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/RadarDiag;->log(Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_3 .. :try_end_10a} :catchall_10c

    .line 115
    :cond_10a
    goto :goto_10d

    .line 49
    :cond_10b
    :goto_10b
    return-void

    .line 113
    :catchall_10c
    move-exception v0

    .line 116
    :goto_10d
    return-void
.end method
