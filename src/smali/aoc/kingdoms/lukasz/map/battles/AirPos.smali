.class public final Laoc/kingdoms/lukasz/map/battles/AirPos;
.super Ljava/lang/Object;
.source "AirPos.java"


# static fields
.field private static final CAP:I = 0x200

.field private static final CT:[J

.field private static final CX:[F

.field private static final CY:[F

.field private static final ID:[J

.field private static final PT:[J

.field private static final PX:[F

.field private static final PY:[F

.field private static final RT:[J

.field private static final RX:[F

.field private static final RY:[F

.field private static final SCRATCH:[F

.field private static final SMOOTH_MAX_DT_MS:F = 100.0f

.field private static final SMOOTH_TAU_MS:F = 55.0f

.field private static final SNAP_DIST:F = 60.0f

.field private static final STALE_MS:J = 0x4e20L

.field private static final USED:[Z

.field private static cursor:I

.field public static dbgHits:I

.field public static dbgMisses:I

.field public static dbgRecords:I

.field public static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const/16 v0, 0x200

    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    .line 34
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    .line 35
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    .line 36
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    .line 37
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    .line 38
    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    .line 39
    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    .line 40
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    .line 41
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    .line 42
    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    .line 43
    new-array v0, v0, [Z

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    .line 44
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    .line 53
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    .line 54
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 55
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static alloc()I
    .registers 7

    .line 247
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x200

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_2f

    .line 248
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2c

    .line 249
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 250
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 251
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 252
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 253
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 254
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 255
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 256
    return v0

    .line 247
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 259
    :cond_2f
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 260
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 261
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 262
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 263
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 264
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 265
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 266
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 267
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 268
    return v0
.end method

.method public static clear()V
    .registers 5

    .line 229
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x200

    if-ge v1, v2, :cond_13

    .line 230
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v0, v2, v1

    .line 231
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 233
    :cond_13
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 234
    return-void
.end method

.method private static find(J)I
    .registers 6

    .line 237
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x200

    if-ge v0, v1, :cond_17

    .line 238
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_14

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_14

    .line 239
    return v0

    .line 237
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static fixX(Ljava/lang/Object;I)I
    .registers 5

    .line 180
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 183
    :cond_7
    nop

    .line 184
    nop

    .line 185
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 186
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 185
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 188
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 189
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    goto :goto_22

    .line 188
    :cond_21
    const/4 v1, 0x0

    .line 191
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 192
    return p1

    .line 194
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 195
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenX(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 196
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 181
    :cond_35
    :goto_35
    return p1

    .line 197
    :catchall_36
    move-exception p0

    .line 198
    return p1
.end method

.method public static fixY(Ljava/lang/Object;I)I
    .registers 5

    .line 205
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 208
    :cond_7
    nop

    .line 209
    nop

    .line 210
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 211
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 210
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 214
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    goto :goto_22

    .line 213
    :cond_21
    const/4 v1, 0x0

    .line 216
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 217
    return p1

    .line 219
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 220
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenY(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 221
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 206
    :cond_35
    :goto_35
    return p1

    .line 222
    :catchall_36
    move-exception p0

    .line 223
    return p1
.end method

.method public static record(Ljava/lang/Object;II)V
    .registers 11

    .line 69
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 70
    return-void

    .line 72
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    .line 73
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    .line 74
    return-void

    .line 76
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 77
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result p0

    .line 78
    if-gez p0, :cond_22

    .line 79
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPos;->alloc()I

    move-result p0

    .line 80
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aput-wide v0, v6, p0

    .line 82
    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v6, v0, p0

    cmp-long v0, v6, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 84
    :goto_2e
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v3, v3, p0

    aput v3, v2, p0

    .line 85
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v3, v3, p0

    aput v3, v2, p0

    .line 86
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v6, v3, p0

    aput-wide v6, v2, p0

    .line 87
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    int-to-float p1, p1

    aput p1, v2, p0

    .line 88
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    int-to-float p2, p2

    aput p2, v2, p0

    .line 89
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v4, v2, p0

    .line 90
    if-eqz v0, :cond_62

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aput p1, v0, p0

    .line 92
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aput p2, p1, p0

    .line 93
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aput-wide v4, p1, p0

    .line 95
    :cond_62
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    add-int/2addr p0, v1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I
    :try_end_67
    .catchall {:try_start_0 .. :try_end_67} :catchall_68

    .line 98
    goto :goto_69

    .line 96
    :catchall_68
    move-exception p0

    .line 99
    :goto_69
    return-void
.end method

.method public static screenX(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 149
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_2e

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 152
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_20

    .line 153
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    .line 154
    return v1

    .line 156
    :cond_20
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 157
    const/4 p0, 0x0

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 150
    :cond_2e
    :goto_2e
    return v1
.end method

.method public static screenY(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 162
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_22

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_22

    .line 165
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 166
    return v1

    .line 168
    :cond_1a
    const/4 p0, 0x1

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 163
    :cond_22
    :goto_22
    return v1
.end method

.method public static worldOf(JJ[F)Z
    .registers 12

    .line 110
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result p0

    .line 111
    const/4 p1, 0x0

    if-ltz p0, :cond_9b

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_f

    goto/16 :goto_9b

    .line 114
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v1, v0, p0

    sub-long v0, p2, v1

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 115
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean p1, p2, p0

    .line 116
    return p1

    .line 122
    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v0, v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget v1, v1, p0

    sub-float/2addr v0, v1

    .line 123
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v1, v1, p0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget v2, v2, p0

    sub-float/2addr v1, v2

    .line 124
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x45610000    # 3600.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4e

    .line 125
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v1, v1, p0

    aput v1, v0, p0

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v1, v1, p0

    aput v1, v0, p0

    goto :goto_89

    .line 128
    :cond_4e
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aget-wide v3, v2, p0

    .line 129
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_5b

    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_5e

    :cond_5b
    sub-long v2, p2, v3

    long-to-float v2, v2

    .line 130
    :goto_5e
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_65

    .line 131
    move v2, v3

    goto :goto_6c

    .line 132
    :cond_65
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6c

    .line 133
    move v2, v3

    .line 135
    :cond_6c
    :goto_6c
    neg-float v2, v2

    const/high16 v3, 0x425c0000    # 55.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 136
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget v4, v2, p0

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    aput v4, v2, p0

    .line 137
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget v2, v0, p0

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    aput v2, v0, p0

    .line 139
    :goto_89
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aput-wide p2, v0, p0

    .line 140
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget p2, p2, p0

    aput p2, p4, p1

    .line 141
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget p0, p1, p0

    const/4 p1, 0x1

    aput p0, p4, p1

    .line 142
    return p1

    .line 112
    :cond_9b
    :goto_9b
    return p1
.end method
