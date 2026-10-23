.class public final Laoc/kingdoms/lukasz/map/province/AirRadarPlane;
.super Ljava/lang/Object;
.source "AirRadarPlane.java"


# static fields
.field private static final COLOR_PLANE:I = 0xff3333


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static drawMission(Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 14

    .line 38
    if-eqz p0, :cond_88

    :try_start_2
    instance-of v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_8

    goto/16 :goto_88

    .line 41
    :cond_8
    check-cast p1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 43
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    .line 44
    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_85

    .line 47
    :cond_16
    nop

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 49
    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v2, v1, :cond_3f

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 51
    instance-of v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v5, :cond_28

    .line 52
    goto :goto_3c

    .line 54
    :cond_28
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 56
    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    .line 57
    if-gez v4, :cond_2f

    .line 58
    goto :goto_3c

    .line 61
    :cond_2f
    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_35

    .line 62
    goto :goto_3c

    .line 64
    :cond_35
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v4

    .line 65
    if-le v4, v3, :cond_3c

    .line 66
    move v3, v4

    .line 49
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 69
    :cond_3f
    if-gtz v3, :cond_42

    .line 70
    return-void

    .line 72
    :cond_42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 73
    if-nez v0, :cond_47

    .line 74
    return-void

    .line 76
    :cond_47
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 77
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_51

    .line 78
    return-void

    .line 80
    :cond_51
    nop

    .line 81
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    .line 82
    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v4, :cond_5e

    .line 83
    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    goto :goto_5f

    .line 85
    :cond_5e
    move v1, v2

    :goto_5f
    int-to-float v3, v3

    int-to-float v1, v1

    mul-float/2addr v3, v1

    mul-float/2addr v3, v0

    float-to-int v7, v3

    .line 86
    if-ge v7, v2, :cond_67

    .line 87
    return-void

    .line 89
    :cond_67
    nop

    .line 90
    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 91
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    .line 92
    if-eqz p1, :cond_7a

    .line 93
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p1

    invoke-static {v7, p1}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result p1

    move v8, p1

    goto :goto_7b

    .line 92
    :cond_7a
    move v8, v7

    .line 95
    :goto_7b
    const v9, 0xff3333

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V
    :try_end_84
    .catchall {:try_start_2 .. :try_end_84} :catchall_86

    .line 98
    goto :goto_87

    .line 45
    :cond_85
    :goto_85
    return-void

    .line 96
    :catchall_86
    move-exception p0

    .line 99
    :goto_87
    return-void

    .line 39
    :cond_88
    :goto_88
    return-void
.end method
