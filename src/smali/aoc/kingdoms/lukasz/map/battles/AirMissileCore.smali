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

    .line 166
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 167
    return-void

    .line 169
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 171
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-nez v0, :cond_e

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 176
    :cond_e
    goto :goto_10

    .line 174
    :catchall_f
    move-exception p0

    .line 177
    :goto_10
    return-void
.end method

.method public static contact(FFFFF)Z
    .registers 7

    .line 54
    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_6

    .line 55
    move p4, v0

    .line 57
    :cond_6
    sub-float/2addr p2, p0

    .line 58
    sub-float/2addr p3, p1

    .line 59
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

    .line 185
    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_6

    goto :goto_8

    :cond_6
    const/high16 p2, 0x42870000    # 67.5f

    .line 186
    :goto_8
    if-lez p0, :cond_b

    int-to-float p1, p0

    .line 187
    :cond_b
    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 188
    const/4 p1, 0x1

    if-ge p0, p1, :cond_14

    .line 189
    move p0, p1

    .line 191
    :cond_14
    const/4 p1, 0x4

    if-le p0, p1, :cond_18

    .line 192
    move p0, p1

    .line 194
    :cond_18
    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static gunMul(Z)F
    .registers 1

    .line 76
    if-eqz p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static notContact(FFFFF)Z
    .registers 5

    .line 68
    invoke-static {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->contact(FFFFF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static seedFx(Ljava/lang/Object;)V
    .registers 7

    .line 93
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 94
    return-void

    .line 96
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 98
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-eqz v0, :cond_c

    .line 99
    return-void

    .line 103
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 104
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 105
    if-eqz v0, :cond_53

    if-nez v1, :cond_15

    goto :goto_53

    .line 108
    :cond_15
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 109
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1f

    .line 110
    return-void

    .line 112
    :cond_1f
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v2

    .line 113
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v3

    .line 114
    int-to-float v4, v2

    div-float/2addr v4, v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 115
    int-to-float v5, v3

    div-float/2addr v5, v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    .line 117
    if-lez v2, :cond_3b

    if-gtz v3, :cond_4e

    .line 118
    :cond_3b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    .line 119
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 120
    if-nez v0, :cond_44

    .line 121
    return-void

    .line 123
    :cond_44
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    int-to-float v4, v1

    .line 124
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    int-to-float v5, v0

    .line 126
    :cond_4e
    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxX:F

    .line 127
    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxY:F
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_54

    .line 130
    goto :goto_55

    .line 106
    :cond_53
    :goto_53
    return-void

    .line 128
    :catchall_54
    move-exception p0

    .line 131
    :goto_55
    return-void
.end method

.method public static sx2wx(I)I
    .registers 3

    .line 141
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 142
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 143
    return p0

    .line 145
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

    .line 146
    :catchall_1b
    move-exception v0

    .line 147
    return p0
.end method

.method public static sx2wy(I)I
    .registers 3

    .line 153
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 154
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 155
    return p0

    .line 157
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

    .line 158
    :catchall_1b
    move-exception v0

    .line 159
    return p0
.end method
