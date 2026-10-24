.class public Laoc/kingdoms/lukasz/map/battles/AirMissileCore;
.super Ljava/lang/Object;
.source "AirMissileCore.java"


# static fields
.field public static final LEGACY_SPEED:F = 67.5f

.field public static NX:F

.field public static NY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advance(FFFFF)F
    .registers 10

    .line 32
    sub-float v0, p2, p0

    .line 33
    sub-float v1, p3, p1

    .line 34
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 35
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-lez v4, :cond_2d

    cmpg-float v4, p4, v3

    if-gtz v4, :cond_19

    goto :goto_2d

    .line 40
    :cond_19
    cmpl-float v3, p4, v2

    if-ltz v3, :cond_22

    .line 41
    sput p2, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 42
    sput p3, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 43
    return v2

    .line 45
    :cond_22
    div-float p2, p4, v2

    .line 46
    mul-float/2addr v0, p2

    add-float/2addr p0, v0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 47
    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 48
    return p4

    .line 36
    :cond_2d
    :goto_2d
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 37
    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 38
    return v3
.end method

.method public static beginFx(Ljava/lang/Object;)V
    .registers 2

    .line 156
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 157
    return-void

    .line 159
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 161
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-nez v0, :cond_e

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 166
    :cond_e
    goto :goto_10

    .line 164
    :catchall_f
    move-exception p0

    .line 167
    :goto_10
    return-void
.end method

.method public static contact(FFFFF)Z
    .registers 7

    .line 53
    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_6

    .line 54
    move p4, v0

    .line 56
    :cond_6
    sub-float/2addr p2, p0

    .line 57
    sub-float/2addr p3, p1

    .line 58
    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    mul-float/2addr p4, p4

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static flightHours(IIF)I
    .registers 4

    .line 175
    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_6

    goto :goto_8

    :cond_6
    const/high16 p2, 0x42870000    # 67.5f

    .line 176
    :goto_8
    if-lez p0, :cond_b

    int-to-float p1, p0

    .line 177
    :cond_b
    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 178
    const/4 p1, 0x1

    if-ge p0, p1, :cond_14

    .line 179
    move p0, p1

    .line 181
    :cond_14
    const/4 p1, 0x4

    if-le p0, p1, :cond_18

    .line 182
    move p0, p1

    .line 184
    :cond_18
    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static gunMul(Z)F
    .registers 1

    .line 66
    if-eqz p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static seedFx(Ljava/lang/Object;)V
    .registers 7

    .line 83
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 84
    return-void

    .line 86
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 88
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-eqz v0, :cond_c

    .line 89
    return-void

    .line 93
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 94
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 95
    if-eqz v0, :cond_53

    if-nez v1, :cond_15

    goto :goto_53

    .line 98
    :cond_15
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 99
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1f

    .line 100
    return-void

    .line 102
    :cond_1f
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 103
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v3

    .line 104
    int-to-float v4, v2

    div-float/2addr v4, v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 105
    int-to-float v5, v3

    div-float/2addr v5, v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    .line 107
    if-lez v2, :cond_3b

    if-gtz v3, :cond_4e

    .line 108
    :cond_3b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 109
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 110
    if-nez v0, :cond_44

    .line 111
    return-void

    .line 113
    :cond_44
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    int-to-float v4, v1

    .line 114
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    int-to-float v5, v0

    .line 116
    :cond_4e
    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    .line 117
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_54

    .line 120
    goto :goto_55

    .line 96
    :cond_53
    :goto_53
    return-void

    .line 118
    :catchall_54
    move-exception p0

    .line 121
    :goto_55
    return-void
.end method

.method public static sx2wx(I)I
    .registers 3

    .line 131
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 132
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 133
    return p0

    .line 135
    :cond_c
    int-to-float v1, p0

    div-float/2addr v1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return p0

    .line 136
    :catchall_1b
    move-exception v0

    .line 137
    return p0
.end method

.method public static sx2wy(I)I
    .registers 3

    .line 143
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 144
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 145
    return p0

    .line 147
    :cond_c
    int-to-float v1, p0

    div-float/2addr v1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return p0

    .line 148
    :catchall_1b
    move-exception v0

    .line 149
    return p0
.end method
