.class public final Laoc/kingdoms/lukasz/map/province/AirDiscQueue;
.super Ljava/lang/Object;
.source "AirDiscQueue.java"


# static fields
.field private static final BE:[I

.field private static final BI:[I

.field private static final BIDX:[I

.field private static final BJ:[I

.field private static final BS:[I

.field private static final CO:[I

.field private static final COLOR_BLUE:I = 0x3333ff

.field private static final CX:[I

.field private static final CY:[I

.field private static final MAX:I = 0x100

.field private static final MAXIV:I = 0x40

.field private static final MAXRAW:I = 0x100

.field private static final RE:[I

.field private static final RIDX:[I

.field private static final RS:[I

.field private static final RX:[I

.field private static final RY:[I

.field private static final TP:[I

.field public static dbgClipped:I

.field public static dbgDiscs:I

.field public static dbgRects:I

.field private static n:I

.field private static sRowL:I

.field private static sRowR:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    .line 35
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    .line 36
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    .line 37
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    .line 38
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    .line 40
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    .line 41
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 44
    new-array v2, v0, [I

    sput-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    .line 46
    new-array v2, v0, [I

    sput-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    .line 53
    const/16 v2, 0x40

    new-array v3, v2, [I

    sput-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    .line 54
    new-array v3, v2, [I

    sput-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    .line 55
    new-array v3, v0, [I

    sput-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    .line 56
    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    .line 57
    new-array v0, v2, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    .line 58
    new-array v0, v2, [I

    sput-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    .line 65
    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    .line 66
    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    .line 67
    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgClipped:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static add(IIIIII)V
    .registers 8

    .line 91
    if-lez p2, :cond_37

    if-gtz p3, :cond_5

    goto :goto_37

    .line 94
    :cond_5
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_c

    .line 95
    return-void

    .line 97
    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p0, v0, v1

    .line 98
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p1, p0, v0

    .line 99
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p2, p0, p1

    .line 100
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p3, p0, p1

    .line 101
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p4, p0, p1

    .line 102
    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    aput p5, p0, p1

    .line 103
    sget p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 104
    return-void

    .line 92
    :cond_37
    :goto_37
    return-void
.end method

.method public static addBlue(IIII)V
    .registers 10

    .line 82
    const v4, 0x3333ff

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 83
    return-void
.end method

.method public static addColor(IIIII)V
    .registers 11

    .line 87
    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->add(IIIIII)V

    .line 88
    return-void
.end method

.method public static begin()V
    .registers 1

    .line 74
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 75
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    .line 76
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    .line 77
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgClipped:I

    .line 78
    return-void
.end method

.method private static collectBlocked(IIIII)I
    .registers 16

    .line 344
    nop

    .line 345
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    const/16 v3, 0x40

    if-ge v1, p1, :cond_26

    if-ge v2, v3, :cond_26

    .line 346
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v3, v3, v1

    .line 347
    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->rowInterval(II)Z

    move-result v3

    if-nez v3, :cond_15

    .line 348
    goto :goto_23

    .line 350
    :cond_15
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowL:I

    aput v4, v3, v2

    .line 351
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowR:I

    aput v4, v3, v2

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 345
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 354
    :cond_26
    if-nez v2, :cond_29

    .line 355
    return v0

    .line 358
    :cond_29
    nop

    .line 359
    move p1, v0

    move v1, p1

    :goto_2c
    if-ge p1, p2, :cond_69

    const/16 v4, 0x100

    if-ge v1, v4, :cond_69

    .line 360
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v5, v5, p1

    .line 361
    invoke-static {v5, p0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->rowInterval(II)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 362
    goto :goto_66

    .line 364
    :cond_3d
    sget v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowL:I

    .line 365
    sget v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowR:I

    .line 366
    move v7, v0

    :goto_42
    if-ge v7, v2, :cond_66

    if-ge v1, v4, :cond_66

    .line 367
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BI:[I

    aget v8, v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 368
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BJ:[I

    aget v9, v9, v7

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 369
    if-gt v9, v8, :cond_59

    .line 370
    goto :goto_63

    .line 372
    :cond_59
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    aput v8, v10, v1

    .line 373
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    aput v9, v8, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    .line 366
    :goto_63
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 359
    :cond_66
    :goto_66
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    .line 377
    :cond_69
    if-nez v1, :cond_6c

    .line 378
    return v0

    .line 381
    :cond_6c
    const/4 p0, 0x1

    :goto_6d
    if-ge p0, v1, :cond_a3

    .line 382
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    aget p1, p1, p0

    .line 383
    sget-object p2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    aget p2, p2, p0

    .line 384
    add-int/lit8 v2, p0, -0x1

    .line 385
    :goto_79
    if-ltz v2, :cond_96

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    aget v4, v4, v2

    if-le v4, p1, :cond_96

    .line 386
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    add-int/lit8 v5, v2, 0x1

    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    aget v6, v6, v2

    aput v6, v4, v5

    .line 387
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    aget v6, v6, v2

    aput v6, v4, v5

    .line 388
    add-int/lit8 v2, v2, -0x1

    goto :goto_79

    .line 390
    :cond_96
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    add-int/lit8 v2, v2, 0x1

    aput p1, v4, v2

    .line 391
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    aput p2, p1, v2

    .line 381
    add-int/lit8 p0, p0, 0x1

    goto :goto_6d

    .line 393
    :cond_a3
    nop

    .line 394
    move p0, v0

    :goto_a5
    if-ge v0, v1, :cond_df

    .line 395
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RS:[I

    aget p1, p1, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 396
    sget-object p2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RE:[I

    aget p2, p2, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 397
    if-gt p2, p1, :cond_ba

    .line 398
    goto :goto_dc

    .line 400
    :cond_ba
    if-lez p0, :cond_cf

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    add-int/lit8 v4, p0, -0x1

    aget v2, v2, v4

    if-gt p1, v2, :cond_cf

    .line 401
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aget p1, p1, v4

    if-le p2, p1, :cond_dc

    .line 402
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aput p2, p1, v4

    goto :goto_dc

    .line 405
    :cond_cf
    if-lt p0, v3, :cond_d2

    .line 406
    goto :goto_df

    .line 408
    :cond_d2
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    aput p1, v2, p0

    .line 409
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    aput p2, p1, p0

    .line 410
    add-int/lit8 p0, p0, 0x1

    .line 394
    :cond_dc
    :goto_dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 413
    :cond_df
    :goto_df
    return p0
.end method

.method private static covers(II)Z
    .registers 10

    .line 314
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v0, v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_4f

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v0, v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v1, v1, p1

    if-gt v0, v1, :cond_16

    goto :goto_4f

    .line 317
    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p0

    int-to-double v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v3, v3, p1

    int-to-double v3, v3

    sub-double/2addr v0, v3

    .line 318
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v3, v3, p0

    int-to-double v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v5, v5, p1

    int-to-double v5, v5

    sub-double/2addr v3, v5

    .line 319
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v5, v5, p0

    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v6, v6, p1

    sub-int/2addr v5, v6

    int-to-double v5, v5

    .line 320
    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p0, v7, p0

    sget-object v7, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p1, v7, p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    .line 321
    mul-double/2addr v0, v0

    mul-double/2addr v5, v5

    div-double/2addr v0, v5

    mul-double/2addr v3, v3

    mul-double/2addr p0, p0

    div-double/2addr v3, p0

    add-double/2addr v0, v3

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    return v2

    .line 315
    :cond_4f
    :goto_4f
    return v2
.end method

.method private static drawClipped(Ljava/lang/Object;III)V
    .registers 26

    .line 200
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v5, v3, v0

    .line 201
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v6, v3, v0

    .line 202
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v7, v3, v0

    .line 203
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v8, v3, v0

    .line 204
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v3, v3, v0

    .line 207
    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v1, :cond_3c

    .line 208
    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v10, v10, v9

    invoke-static {v10, v0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->covers(II)Z

    move-result v10

    if-nez v10, :cond_28

    .line 209
    goto :goto_39

    .line 211
    :cond_28
    const/4 v10, 0x0

    :goto_29
    if-ge v10, v2, :cond_39

    .line 212
    sget-object v11, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v11, v11, v10

    invoke-static {v11, v0}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->covers(II)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 213
    return-void

    .line 211
    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    .line 207
    :cond_39
    :goto_39
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 221
    :cond_3c
    sub-int v0, v5, v7

    .line 222
    add-int v9, v5, v7

    .line 223
    sub-int v10, v6, v8

    .line 224
    add-int v15, v6, v8

    .line 225
    nop

    .line 226
    nop

    .line 227
    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    move v14, v11

    move v13, v12

    const/4 v11, 0x0

    :goto_4e
    if-ge v11, v1, :cond_ea

    .line 228
    sget-object v12, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v12, v12, v11

    .line 229
    const/4 v4, 0x0

    :goto_55
    if-ge v4, v2, :cond_e0

    .line 230
    sget-object v16, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v16, v16, v4

    .line 231
    sget-object v17, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v17, v17, v12

    sget-object v18, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v18, v18, v12

    sub-int v1, v17, v18

    sget-object v17, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v17, v17, v16

    sget-object v18, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v18, v18, v16

    sub-int v2, v17, v18

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 232
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, v12

    sget-object v17, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v17, v17, v12

    add-int v2, v2, v17

    sget-object v17, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v17, v17, v16

    sget-object v18, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v18, v18, v16

    move/from16 p1, v0

    add-int v0, v17, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    if-lt v1, v0, :cond_98

    .line 234
    goto :goto_d6

    .line 236
    :cond_98
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v0, v0, v12

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v1, v1, v16

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v2, v2, v16

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v1, v1, v12

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, v16

    sget-object v17, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v16, v17, v16

    add-int v2, v2, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 238
    if-lt v0, v1, :cond_d0

    .line 239
    goto :goto_d6

    .line 241
    :cond_d0
    if-ge v0, v14, :cond_d3

    .line 242
    move v14, v0

    .line 244
    :cond_d3
    if-le v1, v13, :cond_d6

    .line 245
    move v13, v1

    .line 229
    :cond_d6
    :goto_d6
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_55

    .line 227
    :cond_e0
    move/from16 p1, v0

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_4e

    .line 249
    :cond_ea
    if-lt v14, v13, :cond_f9

    .line 251
    move-object/from16 v4, p0

    move v9, v3

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 252
    sget v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    .line 253
    return-void

    .line 256
    :cond_f9
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->stepFor(I)I

    move-result v0

    .line 257
    int-to-long v1, v8

    mul-long/2addr v1, v1

    .line 258
    move v4, v10

    .line 259
    :goto_100
    if-ge v4, v15, :cond_1fd

    .line 260
    int-to-long v9, v4

    int-to-long v11, v6

    sub-long/2addr v9, v11

    .line 263
    int-to-long v11, v0

    add-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    add-int/lit8 v11, v8, -0x1

    int-to-long v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 264
    mul-long/2addr v9, v9

    long-to-double v9, v9

    long-to-double v11, v1

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v9

    .line 265
    const-wide/16 v9, 0x0

    cmpg-double v9, v11, v9

    if-gtz v9, :cond_120

    .line 266
    add-int/2addr v4, v0

    .line 267
    goto :goto_100

    .line 269
    :cond_120
    int-to-double v9, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    .line 270
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v9, v9

    sub-int v10, v5, v9

    .line 271
    add-int v12, v5, v9

    .line 272
    sub-int v11, v12, v10

    const/4 v9, 0x2

    if-ge v11, v9, :cond_135

    .line 273
    add-int/2addr v4, v0

    .line 274
    goto :goto_100

    .line 276
    :cond_135
    add-int v9, v4, v0

    if-le v9, v14, :cond_1d5

    if-lt v4, v13, :cond_148

    move-wide/from16 v16, v1

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v18, v9

    move v2, v13

    move/from16 v21, v14

    goto/16 :goto_1e0

    .line 283
    :cond_148
    move/from16 v11, p2

    move-wide/from16 v16, v1

    move/from16 v1, p3

    invoke-static {v4, v11, v1, v10, v12}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->collectBlocked(IIIII)I

    move-result v2

    .line 284
    const/4 v1, 0x0

    :goto_153
    if-ge v1, v2, :cond_1ab

    .line 285
    sget-object v18, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BS:[I

    move/from16 p1, v2

    aget v2, v18, v1

    .line 286
    sget-object v18, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BE:[I

    move/from16 v19, v5

    aget v5, v18, v1

    .line 287
    if-gt v5, v10, :cond_16c

    .line 288
    move/from16 v20, v6

    move/from16 v18, v9

    move v6, v12

    move v2, v13

    move/from16 v21, v14

    goto :goto_19a

    .line 290
    :cond_16c
    if-le v2, v10, :cond_187

    .line 291
    sub-int/2addr v2, v10

    move/from16 v18, v9

    move-object/from16 v9, p0

    move v11, v4

    move/from16 v20, v6

    move v6, v12

    move v12, v2

    move v2, v13

    move v13, v0

    move/from16 v21, v14

    move v14, v3

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    .line 292
    sget v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    goto :goto_18f

    .line 290
    :cond_187
    move/from16 v20, v6

    move/from16 v18, v9

    move v6, v12

    move v2, v13

    move/from16 v21, v14

    .line 294
    :goto_18f
    if-lt v5, v6, :cond_194

    .line 296
    nop

    .line 297
    move v10, v6

    goto :goto_1b5

    .line 299
    :cond_194
    nop

    .line 300
    if-lt v5, v6, :cond_199

    .line 301
    move v10, v5

    goto :goto_1b5

    .line 300
    :cond_199
    move v10, v5

    .line 284
    :goto_19a
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, p2

    move v13, v2

    move v12, v6

    move/from16 v9, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v14, v21

    move/from16 v2, p1

    goto :goto_153

    :cond_1ab
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v18, v9

    move v6, v12

    move v2, v13

    move/from16 v21, v14

    .line 304
    :goto_1b5
    if-ge v10, v6, :cond_1c7

    .line 305
    sub-int v12, v6, v10

    move-object/from16 v9, p0

    move v11, v4

    move v13, v0

    move v14, v3

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    .line 306
    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    .line 308
    :cond_1c7
    nop

    .line 309
    move v13, v2

    move-wide/from16 v1, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v14, v21

    goto/16 :goto_100

    .line 276
    :cond_1d5
    move-wide/from16 v16, v1

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v18, v9

    move v2, v13

    move/from16 v21, v14

    .line 278
    :goto_1e0
    move-object/from16 v9, p0

    move v12, v11

    move v11, v4

    move v13, v0

    move v14, v3

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/map/province/AirRect;->fill(Ljava/lang/Object;IIIII)V

    .line 279
    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgRects:I

    .line 280
    nop

    .line 281
    move v13, v2

    move-wide/from16 v1, v16

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v14, v21

    goto/16 :goto_100

    .line 310
    :cond_1fd
    return-void
.end method

.method public static flush(Ljava/lang/Object;)V
    .registers 14

    .line 109
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sort()V

    .line 110
    nop

    .line 111
    nop

    .line 112
    move v1, v0

    move v2, v1

    move v3, v2

    :goto_9
    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_a6

    if-ge v1, v4, :cond_a7

    .line 115
    :try_start_d
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v4, v4, v1

    const/16 v5, 0x100

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    .line 117
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v8, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v9, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v11, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v12, v4, v1

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 118
    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    add-int/2addr v4, v6

    sput v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    .line 119
    if-ge v3, v5, :cond_41

    .line 120
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_a1

    add-int/lit8 v5, v3, 0x1

    :try_start_39
    aput v1, v4, v3
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_3d

    move v3, v5

    goto :goto_41

    .line 148
    :catchall_3d
    move-exception v3

    move v3, v5

    goto/16 :goto_a2

    .line 122
    :cond_41
    :goto_41
    goto/16 :goto_a2

    .line 126
    :cond_43
    nop

    .line 127
    move v4, v0

    move v7, v4

    :goto_46
    if-ge v4, v2, :cond_6b

    if-nez v7, :cond_6b

    .line 128
    :try_start_4a
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I

    aget v8, v8, v4

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->intersects(II)Z

    move-result v8

    if-nez v8, :cond_55

    .line 129
    goto :goto_68

    .line 131
    :cond_55
    move v8, v0

    :goto_56
    if-ge v8, v3, :cond_68

    .line 132
    sget-object v9, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RIDX:[I

    aget v9, v9, v8

    invoke-static {v1, v9}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->intersects(II)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 133
    nop

    .line 134
    move v7, v6

    goto :goto_68

    .line 131
    :cond_65
    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    .line 127
    :cond_68
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 138
    :cond_6b
    if-nez v7, :cond_8b

    .line 139
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v8, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v9, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v11, v4, v1

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v12, v4, v1

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/province/RadarOverlay;->drawDiscAnyColor(Ljava/lang/Object;IIIII)V

    .line 140
    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    add-int/2addr v4, v6

    sput v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgDiscs:I

    goto :goto_93

    .line 142
    :cond_8b
    invoke-static {p0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->drawClipped(Ljava/lang/Object;III)V

    .line 143
    sget v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgClipped:I

    add-int/2addr v4, v6

    sput v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->dbgClipped:I

    .line 145
    :goto_93
    if-ge v2, v5, :cond_a0

    .line 146
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->BIDX:[I
    :try_end_97
    .catchall {:try_start_4a .. :try_end_97} :catchall_a1

    add-int/lit8 v5, v2, 0x1

    :try_start_99
    aput v1, v4, v2
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_9d

    move v2, v5

    goto :goto_a0

    .line 148
    :catchall_9d
    move-exception v2

    move v2, v5

    goto :goto_a2

    .line 150
    :cond_a0
    :goto_a0
    goto :goto_a2

    .line 148
    :catchall_a1
    move-exception v4

    .line 112
    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 152
    :catchall_a6
    move-exception p0

    .line 155
    :cond_a7
    sput v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    .line 156
    nop

    .line 157
    return-void
.end method

.method private static intersects(II)Z
    .registers 10

    .line 188
    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v0, v0, p0

    int-to-long v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v2, v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 189
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v4, v4, p1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 190
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v4, v4, p0

    int-to-long v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v6, v6, p1

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_3e

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p0, v0, p0

    int-to-long v0, p0

    sget-object p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    return p0
.end method

.method private static rowInterval(II)Z
    .registers 8

    .line 423
    int-to-long v0, p1

    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget p1, p1, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 424
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget p1, p1, p0

    int-to-long v2, p1

    .line 425
    neg-long v4, v2

    cmp-long p1, v0, v4

    const/4 v4, 0x0

    if-lez p1, :cond_47

    cmp-long p1, v0, v2

    if-ltz p1, :cond_17

    goto :goto_47

    .line 428
    :cond_17
    mul-long/2addr v0, v0

    long-to-double v0, v0

    mul-long/2addr v2, v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 429
    const-wide/16 v0, 0x0

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_26

    .line 430
    return v4

    .line 432
    :cond_26
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget p1, p1, p0

    int-to-double v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 433
    sget-object p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget p1, p1, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    sub-int/2addr p1, v0

    .line 434
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget p0, v1, p0

    add-int/2addr p0, v0

    .line 435
    if-gt p0, p1, :cond_41

    .line 436
    return v4

    .line 438
    :cond_41
    sput p1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowL:I

    .line 439
    sput p0, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->sRowR:I

    .line 440
    const/4 p0, 0x1

    return p0

    .line 426
    :cond_47
    :goto_47
    return v4
.end method

.method private static sort()V
    .registers 11

    .line 161
    const/4 v0, 0x1

    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->n:I

    if-ge v0, v1, :cond_79

    .line 162
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v1, v1, v0

    .line 163
    sget-object v2, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v2, v2, v0

    .line 164
    sget-object v3, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v3, v3, v0

    .line 165
    sget-object v4, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v4, v4, v0

    .line 166
    sget-object v5, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v5, v5, v0

    .line 167
    sget-object v6, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v6, v6, v0

    .line 168
    add-int/lit8 v7, v0, -0x1

    .line 169
    :goto_1f
    if-ltz v7, :cond_5c

    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v8, v8, v7

    if-ge v8, v3, :cond_5c

    .line 170
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v9, v7, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 171
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 172
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 173
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 174
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 175
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aget v10, v10, v7

    aput v10, v8, v9

    .line 176
    add-int/lit8 v7, v7, -0x1

    goto :goto_1f

    .line 178
    :cond_5c
    sget-object v8, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CX:[I

    add-int/lit8 v7, v7, 0x1

    aput v1, v8, v7

    .line 179
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CY:[I

    aput v2, v1, v7

    .line 180
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RX:[I

    aput v3, v1, v7

    .line 181
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->RY:[I

    aput v4, v1, v7

    .line 182
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->CO:[I

    aput v5, v1, v7

    .line 183
    sget-object v1, Laoc/kingdoms/lukasz/map/province/AirDiscQueue;->TP:[I

    aput v6, v1, v7

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    :cond_79
    return-void
.end method

.method private static stepFor(I)I
    .registers 2

    .line 326
    const/16 v0, 0x104

    if-gt p0, v0, :cond_6

    .line 327
    const/4 p0, 0x1

    return p0

    .line 329
    :cond_6
    const/16 v0, 0x2bc

    if-gt p0, v0, :cond_c

    .line 330
    const/4 p0, 0x2

    return p0

    .line 332
    :cond_c
    const/16 v0, 0x578

    if-gt p0, v0, :cond_12

    .line 333
    const/4 p0, 0x3

    return p0

    .line 335
    :cond_12
    const/4 p0, 0x4

    return p0
.end method
