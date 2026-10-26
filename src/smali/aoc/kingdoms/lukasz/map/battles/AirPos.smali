.class public final Laoc/kingdoms/lukasz/map/battles/AirPos;
.super Ljava/lang/Object;
.source "AirPos.java"


# static fields
.field private static final CAP:I = 0x200

.field private static final CT:[J

.field private static final CX:[F

.field private static final CY:[F

.field private static final ID:[J

.field private static final MAX_EXTRA_MS:J = 0x190L

.field private static final PT:[J

.field private static final PX:[F

.field private static final PY:[F

.field private static final SCRATCH:[F

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

    .line 29
    const/16 v0, 0x200

    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    .line 30
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    .line 31
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    .line 32
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    .line 33
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    .line 34
    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    .line 35
    new-array v1, v0, [J

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    .line 36
    new-array v0, v0, [Z

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    .line 37
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 43
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    .line 46
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    .line 47
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static alloc()I
    .registers 7

    .line 221
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x200

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_2f

    .line 222
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2c

    .line 223
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 224
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 225
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 226
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 227
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 228
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 229
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 230
    return v0

    .line 221
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_2f
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 234
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 235
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 236
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 237
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 238
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 239
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 240
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 241
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 242
    return v0
.end method

.method public static clear()V
    .registers 5

    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x200

    if-ge v1, v2, :cond_13

    .line 204
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v0, v2, v1

    .line 205
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_13
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 208
    return-void
.end method

.method private static find(J)I
    .registers 6

    .line 211
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x200

    if-ge v0, v1, :cond_17

    .line 212
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_14

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_14

    .line 213
    return v0

    .line 211
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static fixX(Ljava/lang/Object;I)I
    .registers 5

    .line 154
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 157
    :cond_7
    nop

    .line 158
    nop

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 159
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 162
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 163
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    goto :goto_22

    .line 162
    :cond_21
    const/4 v1, 0x0

    .line 165
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 166
    return p1

    .line 168
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 169
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenX(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 170
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 155
    :cond_35
    :goto_35
    return p1

    .line 171
    :catchall_36
    move-exception p0

    .line 172
    return p1
.end method

.method public static fixY(Ljava/lang/Object;I)I
    .registers 5

    .line 179
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 182
    :cond_7
    nop

    .line 183
    nop

    .line 184
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 185
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 184
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 187
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 188
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    goto :goto_22

    .line 187
    :cond_21
    const/4 v1, 0x0

    .line 190
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 191
    return p1

    .line 193
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 194
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenY(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 195
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 180
    :cond_35
    :goto_35
    return p1

    .line 196
    :catchall_36
    move-exception p0

    .line 197
    return p1
.end method

.method public static record(Ljava/lang/Object;II)V
    .registers 9

    .line 62
    :try_start_0
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_5

    .line 63
    return-void

    .line 65
    :cond_5
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    .line 66
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_10

    .line 67
    return-void

    .line 69
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result p0

    .line 71
    if-gez p0, :cond_22

    .line 72
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPos;->alloc()I

    move-result p0

    .line 73
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aput-wide v0, v4, p0

    .line 76
    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v1, v1, p0

    aput v1, v0, p0

    .line 77
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v1, v1, p0

    aput v1, v0, p0

    .line 78
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v4, v1, p0

    aput-wide v4, v0, p0

    .line 79
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    int-to-float p1, p1

    aput p1, v0, p0

    .line 80
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    int-to-float p2, p2

    aput p2, p1, p0

    .line 81
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, p1, p0

    .line 82
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    .line 85
    goto :goto_50

    .line 83
    :catchall_4f
    move-exception p0

    .line 86
    :goto_50
    return-void
.end method

.method public static screenX(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 123
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_2e

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 126
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_20

    .line 127
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    .line 128
    return v1

    .line 130
    :cond_20
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 131
    const/4 p0, 0x0

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 124
    :cond_2e
    :goto_2e
    return v1
.end method

.method public static screenY(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 136
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_22

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_22

    .line 139
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 140
    return v1

    .line 142
    :cond_1a
    const/4 p0, 0x1

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 137
    :cond_22
    :goto_22
    return v1
.end method

.method public static worldOf(JJ[F)Z
    .registers 14

    .line 97
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result p0

    .line 98
    const/4 p1, 0x0

    if-ltz p0, :cond_6a

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_e

    goto :goto_6a

    .line 101
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v1, v0, p0

    sub-long v0, p2, v1

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 102
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean p1, p2, p0

    .line 103
    return p1

    .line 105
    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v0, v0, p0

    .line 106
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v1, v1, p0

    .line 107
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v3, v2, p0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aget-wide v5, v2, p0

    sub-long/2addr v3, v5

    .line 108
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v5, v2, p0

    sub-long/2addr p2, v5

    .line 109
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_64

    const-wide/16 v7, 0x1388

    cmp-long v2, v3, v7

    if-gez v2, :cond_64

    cmp-long v2, p2, v5

    if-lez v2, :cond_64

    const-wide/16 v5, 0x190

    cmp-long v2, p2, v5

    if-gtz v2, :cond_64

    .line 110
    long-to-float p2, p2

    long-to-float p3, v3

    div-float/2addr p2, p3

    .line 111
    sget-object p3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget p3, p3, p0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aget v2, v2, p0

    sub-float/2addr p3, v2

    mul-float/2addr p3, p2

    add-float/2addr v0, p3

    .line 112
    sget-object p3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget p3, p3, p0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aget p0, v2, p0

    sub-float/2addr p3, p0

    mul-float/2addr p3, p2

    add-float/2addr v1, p3

    .line 114
    :cond_64
    aput v0, p4, p1

    .line 115
    const/4 p0, 0x1

    aput v1, p4, p0

    .line 116
    return p0

    .line 99
    :cond_6a
    :goto_6a
    return p1
.end method
