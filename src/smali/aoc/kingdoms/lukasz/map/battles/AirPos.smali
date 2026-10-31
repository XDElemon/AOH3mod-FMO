.class public final Laoc/kingdoms/lukasz/map/battles/AirPos;
.super Ljava/lang/Object;
.source "AirPos.java"


# static fields
.field private static final CAP:I = 0x200

.field private static final CT:[J

.field private static final CX:[F

.field private static final CY:[F

.field private static final ID:[J

.field private static final IDX_ID:[J

.field private static final IDX_MASK:I = 0x7ff

.field private static final IDX_SIZE:I = 0x800

.field private static final IDX_SLOT:[I

.field private static final LX:[F

.field private static final LY:[F

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

.field private static dbgRevWrites:I

.field public static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    .line 44
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->LX:[F

    .line 45
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->LY:[F

    .line 46
    new-array v0, v0, [Z

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    .line 47
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 58
    const/16 v1, 0x800

    new-array v2, v1, [J

    sput-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    .line 59
    new-array v1, v1, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_SLOT:[I

    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 83
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    .line 86
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    .line 88
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRevWrites:I

    .line 89
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 90
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static alloc()I
    .registers 7

    .line 327
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x200

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v0, v1, :cond_2f

    .line 328
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2c

    .line 329
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 330
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 331
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 332
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 333
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 334
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 335
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 336
    return v0

    .line 327
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    :cond_2f
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 340
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 341
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v4, v1, v0

    .line 342
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aput v5, v1, v0

    .line 343
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aput v5, v1, v0

    .line 344
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    aput v5, v1, v0

    .line 345
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    aput v5, v1, v0

    .line 346
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v2, v1, v0

    .line 347
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aput-wide v2, v1, v0

    .line 348
    return v0
.end method

.method public static clear()V
    .registers 5

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x200

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_13

    .line 294
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v0, v2, v1

    .line 295
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aput-wide v3, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :cond_13
    move v1, v0

    :goto_14
    const/16 v2, 0x800

    if-ge v1, v2, :cond_23

    .line 298
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    aput-wide v3, v2, v1

    .line 299
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_SLOT:[I

    aput v0, v2, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 301
    :cond_23
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->cursor:I

    .line 302
    return-void
.end method

.method private static find(J)I
    .registers 7

    .line 309
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxHash(J)I

    move-result v0

    .line 310
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p0

    const/16 v2, 0x200

    if-nez v1, :cond_25

    .line 311
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_SLOT:[I

    aget v0, v1, v0

    .line 312
    if-ltz v0, :cond_25

    if-ge v0, v2, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aget-wide v3, v1, v0

    cmp-long v1, v3, p0

    if-nez v1, :cond_25

    .line 313
    return v0

    .line 316
    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_3d

    .line 317
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3a

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aget-wide v3, v1, v0

    cmp-long v1, v3, p0

    if-nez v1, :cond_3a

    .line 318
    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxPut(JI)V

    .line 319
    return v0

    .line 316
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 322
    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method public static fixX(Ljava/lang/Object;I)I
    .registers 5

    .line 244
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 247
    :cond_7
    nop

    .line 248
    nop

    .line 249
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 250
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 249
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 252
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 253
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    goto :goto_22

    .line 252
    :cond_21
    const/4 v1, 0x0

    .line 255
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 256
    return p1

    .line 258
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 259
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenX(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 260
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 245
    :cond_35
    :goto_35
    return p1

    .line 261
    :catchall_36
    move-exception p0

    .line 262
    return p1
.end method

.method public static fixY(Ljava/lang/Object;I)I
    .registers 5

    .line 269
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    if-eqz v0, :cond_35

    if-nez p0, :cond_7

    goto :goto_35

    .line 272
    :cond_7
    nop

    .line 273
    nop

    .line 274
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_14

    .line 275
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    goto :goto_16

    .line 274
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 277
    :goto_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v1, :cond_21

    .line 278
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    goto :goto_22

    .line 277
    :cond_21
    const/4 v1, 0x0

    .line 280
    :goto_22
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_28

    .line 281
    return p1

    .line 283
    :cond_28
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->SCRATCH:[F

    .line 284
    invoke-static {p0, v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->screenY(Ljava/lang/Object;FI[F)I

    move-result p0
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_36

    .line 285
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_33

    goto :goto_34

    :cond_33
    move p1, p0

    :goto_34
    return p1

    .line 270
    :cond_35
    :goto_35
    return p1

    .line 286
    :catchall_36
    move-exception p0

    .line 287
    return p1
.end method

.method private static idxClear(J)V
    .registers 6

    .line 72
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxHash(J)I

    move-result v0

    .line 73
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    aget-wide v2, v1, v0

    cmp-long p0, v2, p0

    if-nez p0, :cond_17

    .line 74
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 75
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_SLOT:[I

    const/4 p1, 0x0

    aput p1, p0, v0

    .line 77
    :cond_17
    return-void
.end method

.method private static idxHash(J)I
    .registers 4

    .line 62
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    const-wide/16 v0, 0x7ff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static idxPut(JI)V
    .registers 5

    .line 66
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxHash(J)I

    move-result v0

    .line 67
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_ID:[J

    aput-wide p0, v1, v0

    .line 68
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->IDX_SLOT:[I

    aput p2, p0, v0

    .line 69
    return-void
.end method

.method public static record(Ljava/lang/Object;II)V
    .registers 16

    .line 104
    const-string v0, ","

    :try_start_2
    instance-of v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v1, :cond_7

    .line 105
    return-void

    .line 107
    :cond_7
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    .line 108
    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_12

    .line 109
    return-void

    .line 111
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 112
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result p0

    .line 113
    if-gez p0, :cond_27

    .line 114
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPos;->alloc()I

    move-result p0

    .line 115
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirPos;->ID:[J

    aput-wide v1, v7, p0

    .line 116
    invoke-static {v1, v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxPut(JI)V

    .line 118
    :cond_27
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v8, v7, p0

    cmp-long v3, v8, v3

    const/4 v4, 0x1

    if-nez v3, :cond_32

    move v3, v4

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    .line 119
    :goto_33
    if-nez v3, :cond_cb

    .line 120
    int-to-float v7, p1

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v8, v8, p0

    sub-float/2addr v7, v8

    .line 121
    int-to-float v8, p2

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v9, v9, p0

    sub-float/2addr v8, v9

    .line 122
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirPos;->LX:[F

    aget v9, v9, p0

    mul-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirPos;->LY:[F

    aget v10, v10, p0

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 123
    mul-float v10, v7, v7

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    .line 124
    const/4 v11, 0x0

    cmpg-float v9, v9, v11

    if-gez v9, :cond_bc

    const/high16 v9, 0x40800000    # 4.0f

    cmpl-float v9, v10, v9

    if-lez v9, :cond_bc

    sget v9, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRevWrites:I

    const/16 v11, 0x190

    if-ge v9, v11, :cond_bc

    .line 125
    sget v9, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRevWrites:I

    add-int/2addr v9, v4

    sput v9, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRevWrites:I

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APOS rev id="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v2, v2, p0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v2, v2, p0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v11, v1, p0

    sub-long v1, v5, v11

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    .line 132
    :cond_bc
    const v0, 0x3c23d70a    # 0.01f

    cmpl-float v0, v10, v0

    if-lez v0, :cond_cb

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->LX:[F

    aput v7, v0, p0

    .line 134
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->LY:[F

    aput v8, v0, p0

    .line 138
    :cond_cb
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PX:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget v1, v1, p0

    aput v1, v0, p0

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PY:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget v1, v1, p0

    aput v1, v0, p0

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v7, v1, p0

    aput-wide v7, v0, p0

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    int-to-float p1, p1

    aput p1, v0, p0

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    int-to-float p2, p2

    aput p2, v0, p0

    .line 143
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aput-wide v5, v0, p0

    .line 144
    if-eqz v3, :cond_ff

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aput p1, v0, p0

    .line 146
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aput p2, p1, p0

    .line 147
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aput-wide v5, p1, p0

    .line 149
    :cond_ff
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I

    add-int/2addr p0, v4

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgRecords:I
    :try_end_104
    .catchall {:try_start_2 .. :try_end_104} :catchall_105

    .line 152
    goto :goto_106

    .line 150
    :catchall_105
    move-exception p0

    .line 153
    :goto_106
    return-void
.end method

.method public static screenX(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 213
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_2e

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_2e

    .line 216
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_20

    .line 217
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgMisses:I

    .line 218
    return v1

    .line 220
    :cond_20
    sget p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->dbgHits:I

    .line 221
    const/4 p0, 0x0

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 214
    :cond_2e
    :goto_2e
    return v1
.end method

.method public static screenY(Ljava/lang/Object;FI[F)I
    .registers 10

    .line 226
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirPos;->enabled:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_22

    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_b

    goto :goto_22

    .line 229
    :cond_b
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p3}, Laoc/kingdoms/lukasz/map/battles/AirPos;->worldOf(JJ[F)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 230
    return v1

    .line 232
    :cond_1a
    const/4 p0, 0x1

    aget p0, p3, p0

    int-to-float p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 227
    :cond_22
    :goto_22
    return v1
.end method

.method public static worldOf(JJ[F)Z
    .registers 13

    .line 164
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->find(J)I

    move-result v0

    .line 165
    const/4 v1, 0x0

    if-ltz v0, :cond_b9

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_f

    goto/16 :goto_b9

    .line 168
    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v3, v2, v0

    sub-long v2, p2, v3

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    .line 169
    sget-object p2, Laoc/kingdoms/lukasz/map/battles/AirPos;->USED:[Z

    aput-boolean v1, p2, v0

    .line 170
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirPos;->idxClear(J)V

    .line 171
    return v1

    .line 177
    :cond_23
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget p0, p0, v0

    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget p1, p1, v0

    sub-float/2addr p0, p1

    .line 178
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget p1, p1, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget v2, v2, v0

    sub-float/2addr p1, v2

    .line 179
    mul-float v2, p0, p0

    mul-float v3, p1, p1

    add-float/2addr v2, v3

    const/high16 v3, 0x45610000    # 3600.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_51

    .line 180
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CX:[F

    aget p1, p1, v0

    aput p1, p0, v0

    .line 181
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirPos;->CY:[F

    aget p1, p1, v0

    aput p1, p0, v0

    goto :goto_a7

    .line 183
    :cond_51
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aget-wide v3, v2, v0

    .line 184
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-nez v2, :cond_5e

    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_61

    :cond_5e
    sub-long v2, p2, v3

    long-to-float v2, v2

    .line 185
    :goto_61
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_68

    .line 186
    move v2, v3

    goto :goto_6f

    .line 187
    :cond_68
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6f

    .line 188
    move v2, v3

    .line 192
    :cond_6f
    :goto_6f
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirPos;->CT:[J

    aget-wide v4, v3, v0

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirPos;->PT:[J

    aget-wide v6, v3, v0

    sub-long/2addr v4, v6

    long-to-float v3, v4

    .line 193
    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    .line 194
    const/high16 v4, 0x41400000    # 12.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_85

    .line 195
    move v3, v4

    goto :goto_8c

    .line 196
    :cond_85
    const/high16 v4, 0x42f00000    # 120.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_8c

    .line 197
    move v3, v4

    .line 199
    :cond_8c
    :goto_8c
    neg-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 200
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget v4, v2, v0

    mul-float/2addr p0, v3

    add-float/2addr v4, p0

    aput v4, v2, v0

    .line 201
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget v2, p0, v0

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 203
    :goto_a7
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RT:[J

    aput-wide p2, p0, v0

    .line 204
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RX:[F

    aget p0, p0, v0

    aput p0, p4, v1

    .line 205
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirPos;->RY:[F

    aget p0, p0, v0

    const/4 p1, 0x1

    aput p0, p4, p1

    .line 206
    return p1

    .line 166
    :cond_b9
    :goto_b9
    return v1
.end method
