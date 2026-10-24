.class public Laoc/kingdoms/lukasz/map/battles/AirMissileCore;
.super Ljava/lang/Object;
.source "AirMissileCore.java"


# static fields
.field private static final LAST_STEP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEGACY_SPEED:F = 67.5f

.field public static NX:F

.field public static NY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->LAST_STEP:Ljava/util/HashMap;

    return-void
.end method

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

    .line 243
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 244
    return-void

    .line 246
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 248
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    if-nez v0, :cond_e

    .line 249
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 253
    :cond_e
    goto :goto_10

    .line 251
    :catchall_f
    move-exception p0

    .line 254
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

    .line 262
    const/4 p1, 0x0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_6

    goto :goto_8

    :cond_6
    const/high16 p2, 0x42870000    # 67.5f

    .line 263
    :goto_8
    if-lez p0, :cond_b

    int-to-float p1, p0

    .line 264
    :cond_b
    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 265
    const/4 p1, 0x1

    if-ge p0, p1, :cond_14

    .line 266
    move p0, p1

    .line 268
    :cond_14
    const/4 p1, 0x4

    if-le p0, p1, :cond_18

    .line 269
    move p0, p1

    .line 271
    :cond_18
    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static gateStep(Ljava/lang/Object;F)F
    .registers 10

    .line 172
    :try_start_0
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 174
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->LAST_STEP:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 175
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x3d0900

    cmp-long p0, v4, v6

    if-gez p0, :cond_25

    .line 176
    const/4 p0, 0x0

    return p0

    .line 178
    :cond_25
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->LAST_STEP:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->LAST_STEP:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/16 v0, 0x1000

    if-le p0, v0, :cond_41

    .line 180
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->LAST_STEP:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    .line 183
    :cond_41
    goto :goto_43

    .line 182
    :catchall_42
    move-exception p0

    .line 184
    :goto_43
    return p1
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

.method private static isEnemy(Ljava/lang/Object;)Z
    .registers 3

    .line 190
    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 192
    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    if-eq p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 193
    :catchall_d
    move-exception p0

    .line 194
    return v0
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

.method public static speedDiv()F
    .registers 3

    .line 141
    nop

    .line 143
    const/high16 v0, 0x43960000    # 300.0f

    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 144
    if-eqz v1, :cond_e

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-lez v2, :cond_e

    .line 145
    iget v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    int-to-float v0, v0

    .line 148
    :cond_e
    goto :goto_10

    .line 147
    :catchall_f
    move-exception v1

    .line 149
    :goto_10
    nop

    .line 151
    const/4 v1, 0x1

    :try_start_12
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    if-lez v2, :cond_18

    .line 152
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    .line 155
    :cond_18
    goto :goto_1a

    .line 154
    :catchall_19
    move-exception v2

    .line 156
    :goto_1a
    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static stepGate(Ljava/lang/Object;)F
    .registers 2

    .line 166
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->gateStep(Ljava/lang/Object;F)F

    move-result p0

    return p0
.end method

.method public static sx2wx(I)I
    .registers 3

    .line 218
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 219
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 220
    return p0

    .line 222
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

    .line 223
    :catchall_1b
    move-exception v0

    .line 224
    return p0
.end method

.method public static sx2wy(I)I
    .registers 3

    .line 230
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    .line 231
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 232
    return p0

    .line 234
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

    .line 235
    :catchall_1b
    move-exception v0

    .line 236
    return p0
.end method

.method public static tintB(Ljava/lang/Object;)F
    .registers 1

    .line 207
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->isEnemy(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x3eb33333    # 0.35f

    goto :goto_c

    :cond_a
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_c
    return p0
.end method

.method public static tintG(Ljava/lang/Object;)F
    .registers 1

    .line 203
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->isEnemy(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x3eb33333    # 0.35f

    goto :goto_c

    :cond_a
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_c
    return p0
.end method

.method public static tintR(Ljava/lang/Object;)F
    .registers 1

    .line 199
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
