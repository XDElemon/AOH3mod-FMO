.class public final Laoc/kingdoms/lukasz/map/province/AirRadarBld;
.super Ljava/lang/Object;
.source "AirRadarBld.java"


# static fields
.field private static final T_AAA:Ljava/lang/String; = "ABM_SITE"

.field private static final T_LONG:Ljava/lang/String; = "MIDCOURSE_ABM"

.field private static final T_RADAR:Ljava/lang/String; = "RADAR"

.field private static dbgBudget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/16 v0, 0x28

    sput v0, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->dbgBudget:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static drawAll(Ljava/lang/Object;)V
    .registers 12

    .line 21
    if-nez p0, :cond_3

    .line 22
    return-void

    .line 25
    :cond_3
    :try_start_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object p0

    .line 26
    if-nez p0, :cond_a

    .line 27
    return-void

    .line 29
    :cond_a
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->begin()V

    .line 30
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    .line 31
    if-eqz v0, :cond_e9

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_e9

    .line 34
    :cond_19
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 35
    if-nez v1, :cond_1e

    .line 36
    return-void

    .line 38
    :cond_1e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 39
    if-nez v2, :cond_23

    .line 40
    return-void

    .line 42
    :cond_23
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 43
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    .line 44
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_2f

    .line 45
    return-void

    .line 48
    :cond_2f
    nop

    .line 49
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 50
    if-eqz v4, :cond_3a

    iget v5, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v5, :cond_3a

    .line 51
    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    .line 53
    :cond_3a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_4d

    .line 57
    goto :goto_3e

    .line 59
    :cond_4d
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 60
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    .line 61
    if-nez v5, :cond_5a

    .line 62
    goto :goto_3e

    .line 64
    :cond_5a
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v6, v1, :cond_61

    .line 65
    goto :goto_3e

    .line 68
    :cond_61
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    .line 69
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z

    move-result v6

    if-nez v6, :cond_74

    .line 70
    goto :goto_3e

    .line 74
    :cond_74
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->detectReal(I)F

    move-result v6

    .line 76
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDefCfgRt;->discScale(I)F

    move-result v7

    .line 77
    mul-float v8, v6, v7

    mul-float/2addr v8, v2

    .line 78
    cmpg-float v9, v8, v3

    if-gtz v9, :cond_84

    .line 79
    goto :goto_3e

    .line 81
    :cond_84
    float-to-int v8, v8

    .line 82
    const/4 v9, 0x1

    if-ge v8, v9, :cond_89

    .line 83
    goto :goto_3e

    .line 85
    :cond_89
    sget v10, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->dbgBudget:I

    if-lez v10, :cond_d3

    .line 86
    sget v10, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->dbgBudget:I

    sub-int/2addr v10, v9

    sput v10, Laoc/kingdoms/lukasz/map/province/AirRadarBld;->dbgBudget:I
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_ea

    .line 88
    :try_start_92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nBld p="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    float-to-int v6, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " s="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " z="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_92 .. :try_end_d1} :catchall_d2

    .line 92
    goto :goto_d3

    .line 91
    :catchall_d2
    move-exception v6

    .line 94
    :cond_d3
    :goto_d3
    :try_start_d3
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    .line 95
    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v4

    .line 96
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v5

    .line 97
    invoke-static {v6, v4, v8, v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->addBlue(IIII)V
    :try_end_e6
    .catchall {:try_start_d3 .. :try_end_e6} :catchall_ea

    .line 98
    goto/16 :goto_3e

    .line 100
    :cond_e8
    goto :goto_eb

    .line 32
    :cond_e9
    :goto_e9
    return-void

    .line 99
    :catchall_ea
    move-exception p0

    .line 101
    :goto_eb
    return-void
.end method
