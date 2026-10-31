.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;
.super Ljava/lang/Object;
.source "AirProjectileFx.java"


# static fields
.field public static final BAR_LEN:I = 0x10

.field public static final BAR_ROT:[[F

.field public static final BAR_W:I = 0x4

.field public static final BAR_X:[[F

.field public static final BAR_Y:[[F

.field public static final CB:[F

.field public static final CG:[F

.field public static final CR:[F

.field public static DEBUG_BOX:Z = false

.field private static final DIR_X:[F

.field private static final DIR_Y:[F

.field public static final DX:[F

.field public static final DY:[F

.field private static final HAS_PREV:[Z

.field private static final HIST_HEAD:[I

.field private static final HIST_LEN:I = 0x48

.field private static final HIST_N:[I

.field private static final HIST_X:[[F

.field private static final HIST_Y:[[F

.field public static final MAXDRAW:I = 0x100

.field private static final PREV_WX:[F

.field private static final PREV_WY:[F

.field private static final PROJ_PATH:Ljava/lang/String; = "game/AirUnit/AirUnitlmages/airProj.png"

.field public static final TRAIL:I = 0x18

.field public static final TRAIL_B:[F

.field public static final TRAIL_DIST:[F

.field public static final TRAIL_G:[F

.field public static final TRAIL_R:[F

.field public static final TRAIL_SIZE:[I

.field public static final TX:[[F

.field public static final TY:[[F

.field public static final X:[F

.field public static final Y:[F

.field private static cachedId:I

.field public static count:I

.field public static dbgCulled:I

.field public static dbgDrawn:I

.field private static dbgEnter:I

.field private static dbgFx:I

.field public static frameNo:I

.field public static src:Ljava/lang/String;

.field public static zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 19
    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_11a

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    .line 22
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    .line 23
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F

    .line 24
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F

    .line 25
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F

    .line 28
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/high16 v4, 0x41300000    # 11.0f

    add-float/2addr v1, v4

    .line 29
    move v4, v2

    :goto_26
    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v4, v0, :cond_60

    .line 30
    if-lez v4, :cond_3e

    .line 31
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    aget v7, v7, v4

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v3

    const v7, 0x3f828f5c    # 1.02f

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 33
    :cond_3e
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aput v1, v6, v4

    .line 34
    int-to-float v6, v4

    const/high16 v7, 0x41b80000    # 23.0f

    div-float/2addr v6, v7

    .line 35
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F

    aput v5, v7, v4

    .line 36
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F

    const v8, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v8, v6

    sub-float v8, v5, v8

    aput v8, v7, v4

    .line 37
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F

    const v8, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, v7, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 41
    :cond_60
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 42
    const/16 v1, 0x100

    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    .line 43
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    .line 44
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    .line 45
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    .line 46
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    .line 47
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    .line 48
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    .line 49
    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    .line 50
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    .line 52
    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    .line 53
    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    .line 54
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    .line 58
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 59
    const-string v0, "?"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 60
    sput-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    .line 62
    const/16 v0, 0x200

    const/16 v1, 0x48

    filled-new-array {v0, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    .line 63
    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    .line 64
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    .line 65
    new-array v1, v0, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    .line 66
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    .line 67
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    .line 68
    new-array v1, v0, [Z

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_PREV:[Z

    .line 69
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    .line 70
    new-array v0, v0, [F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    .line 72
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    .line 73
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 74
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 75
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 77
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgCulled:I

    .line 273
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    return-void

    nop

    :array_11a
    .array-data 4
        0x6
        0x6
        0x6
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static bodySize()I
    .registers 1

    .line 83
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_9

    :cond_7
    const/16 v0, 0x1a

    :goto_9
    return v0
.end method

.method private static fillTrail(IIFIIFF)V
    .registers 25

    .line 230
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v0, v0, p1

    .line 231
    const/4 v1, 0x0

    const/16 v2, 0x18

    if-gtz v0, :cond_32

    .line 232
    nop

    :goto_a
    if-ge v1, v2, :cond_31

    .line 233
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v0, v0, p0

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v3, v3, p0

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v4, v4, v1

    mul-float v4, v4, p5

    sub-float/2addr v3, v4

    aput v3, v0, v1

    .line 234
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v0, v0, p0

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v3, v3, p0

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v4, v4, v1

    mul-float v4, v4, p6

    sub-float/2addr v3, v4

    aput v3, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 236
    :cond_31
    return-void

    .line 238
    :cond_32
    nop

    .line 239
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v3, v3, p0

    .line 240
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v4, v4, p0

    .line 241
    nop

    .line 242
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    aget v5, v5, p1

    add-int/lit8 v5, v5, -0x1

    .line 243
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_48
    if-ge v1, v0, :cond_af

    if-ge v3, v2, :cond_af

    .line 244
    if-gez v6, :cond_50

    .line 245
    add-int/lit8 v6, v6, 0x48

    .line 247
    :cond_50
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    aget-object v8, v8, p1

    aget v8, v8, v6

    move/from16 v9, p3

    int-to-float v10, v9

    add-float/2addr v8, v10

    mul-float v8, v8, p2

    .line 248
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    aget-object v10, v10, p1

    aget v10, v10, v6

    move/from16 v11, p4

    int-to-float v12, v11

    add-float/2addr v10, v12

    mul-float v10, v10, p2

    .line 249
    sub-float v12, v8, v4

    .line 250
    sub-float v13, v10, v5

    .line 251
    mul-float v14, v12, v12

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 252
    const v15, 0x38d1b717    # 1.0E-4f

    cmpl-float v15, v14, v15

    if-lez v15, :cond_a6

    .line 253
    :goto_7e
    if-ge v3, v2, :cond_a5

    add-float v15, v7, v14

    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v16, v16, v3

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_a5

    .line 254
    sget-object v15, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v15, v15, v3

    sub-float/2addr v15, v7

    div-float/2addr v15, v14

    .line 255
    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v16, v16, p0

    mul-float v17, v12, v15

    add-float v17, v4, v17

    aput v17, v16, v3

    .line 256
    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v16, v16, p0

    mul-float/2addr v15, v13

    add-float/2addr v15, v5

    aput v15, v16, v3

    .line 257
    add-int/lit8 v3, v3, 0x1

    .line 258
    goto :goto_7e

    .line 259
    :cond_a5
    add-float/2addr v7, v14

    .line 261
    :cond_a6
    nop

    .line 262
    nop

    .line 263
    add-int/lit8 v6, v6, -0x1

    .line 243
    add-int/lit8 v1, v1, 0x1

    move v4, v8

    move v5, v10

    goto :goto_48

    .line 265
    :cond_af
    :goto_af
    if-ge v3, v2, :cond_cd

    .line 266
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v0, v0, v3

    sub-float/2addr v0, v7

    .line 267
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v1, v1, p0

    mul-float v6, p5, v0

    sub-float v6, v4, v6

    aput v6, v1, v3

    .line 268
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v1, v1, p0

    mul-float v0, v0, p6

    sub-float v0, v5, v0

    aput v0, v1, v3

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_af

    .line 270
    :cond_cd
    return-void
.end method

.method public static imageId()I
    .registers 2

    .line 277
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    if-ltz v0, :cond_f

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 278
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    return v0

    .line 280
    :cond_f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    .line 281
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 282
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 283
    const-string v1, "proj"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 284
    return v0

    .line 286
    :cond_1e
    const-string v0, "game/AirUnit/AirUnitlmages/airProj.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    .line 287
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 288
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 289
    const-string v1, "lazy"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 290
    return v0

    .line 292
    :cond_31
    const/4 v0, -0x2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 293
    const-string v0, "ring"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 294
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return v0

    .line 295
    :catchall_3b
    move-exception v0

    .line 296
    const-string v0, "err"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public static logDrawn()V
    .registers 2

    .line 321
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 322
    return-void

    .line 324
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 326
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nFX drawn k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_26

    .line 328
    goto :goto_27

    .line 327
    :catchall_26
    move-exception v0

    .line 329
    :goto_27
    return-void
.end method

.method public static logEnter(I)V
    .registers 3

    .line 310
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 311
    return-void

    .line 313
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 315
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nFX enter n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_24

    .line 317
    goto :goto_25

    .line 316
    :catchall_24
    move-exception p0

    .line 318
    :goto_25
    return-void
.end method

.method public static prepare()I
    .registers 25

    .line 87
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 88
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 94
    :try_start_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_17

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    goto :goto_19

    .line 94
    :cond_17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 98
    :goto_19
    move v4, v0

    goto :goto_1e

    .line 97
    :catchall_1b
    move-exception v0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    :goto_1e
    :try_start_1e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v0, :cond_31

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_36

    .line 102
    :try_start_28
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2f

    goto :goto_33

    .line 104
    :catchall_2f
    move-exception v0

    goto :goto_38

    .line 100
    :cond_31
    move v0, v1

    move v5, v0

    .line 105
    :goto_33
    move v13, v5

    move v5, v0

    goto :goto_3a

    .line 104
    :catchall_36
    move-exception v0

    move v5, v1

    :goto_38
    move v13, v5

    move v5, v1

    .line 106
    :goto_3a
    const/4 v14, 0x0

    cmpg-float v0, v4, v14

    if-gtz v0, :cond_41

    .line 107
    const/high16 v4, 0x3f800000    # 1.0f

    .line 109
    :cond_41
    :try_start_41
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 111
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v15

    .line 112
    move v12, v1

    :goto_48
    if-ge v12, v15, :cond_214

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v6, 0x100

    if-ge v0, v6, :cond_214

    .line 113
    invoke-static {v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_203

    iget-boolean v6, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-eqz v6, :cond_203

    const/16 v6, 0x200

    if-lt v12, v6, :cond_66

    .line 115
    move/from16 v18, v4

    move/from16 v19, v12

    move/from16 v20, v15

    goto/16 :goto_209

    .line 117
    :cond_66
    nop

    .line 118
    sget v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 120
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v8, v13

    add-float/2addr v7, v8

    mul-float/2addr v7, v4

    aput v7, v6, v16

    .line 121
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v8, v5

    add-float/2addr v7, v8

    mul-float/2addr v7, v4

    aput v7, v6, v16

    .line 123
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    aget v6, v6, v12

    .line 124
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    aget v7, v7, v12

    .line 125
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_PREV:[Z

    aget-boolean v8, v8, v12

    .line 126
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_PREV:[Z

    aget-boolean v9, v9, v12

    if-eqz v9, :cond_b5

    .line 127
    iget v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    aget v10, v10, v12

    sub-float/2addr v9, v10

    .line 128
    iget v10, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    aget v11, v11, v12

    sub-float/2addr v10, v11

    .line 129
    mul-float v11, v9, v9

    mul-float v17, v10, v10

    add-float v11, v11, v17

    move/from16 v18, v4

    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 130
    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b7

    .line 131
    div-float v6, v9, v3

    .line 132
    div-float v7, v10, v3

    goto :goto_b7

    .line 126
    :cond_b5
    move/from16 v18, v4

    .line 135
    :cond_b7
    :goto_b7
    if-eqz v8, :cond_c5

    cmpl-float v3, v6, v14

    if-nez v3, :cond_c2

    cmpl-float v3, v7, v14

    if-nez v3, :cond_c2

    goto :goto_c5

    .line 147
    :cond_c2
    move v3, v6

    move v4, v7

    goto :goto_ea

    .line 136
    :cond_c5
    :goto_c5
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float/2addr v3, v4

    .line 137
    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    iget v6, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float/2addr v4, v6

    .line 138
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 139
    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_e6

    .line 140
    div-float/2addr v3, v6

    .line 141
    div-float v7, v4, v6

    move v4, v7

    goto :goto_ea

    .line 143
    :cond_e6
    nop

    .line 144
    move v4, v14

    const/high16 v3, 0x3f800000    # 1.0f

    .line 147
    :goto_ea
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    aput v3, v6, v12

    .line 148
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    aput v4, v6, v12

    .line 149
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aput v3, v6, v16

    .line 150
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aput v4, v6, v16

    .line 151
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    aput v7, v6, v12

    .line 152
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    aput v7, v6, v12

    .line 153
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_PREV:[Z

    aput-boolean v2, v6, v12

    .line 155
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    aget v6, v6, v12

    .line 156
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    aget-object v7, v7, v12

    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    aput v8, v7, v6

    .line 157
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    aget-object v7, v7, v12

    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    aput v8, v7, v6

    .line 158
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x48

    rem-int/2addr v6, v8

    aput v6, v7, v12

    .line 159
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v6, v6, v12

    if-ge v6, v8, :cond_134

    .line 160
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v7, v6, v12

    add-int/2addr v7, v2

    aput v7, v6, v12

    .line 165
    :cond_134
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v6, v6, v16

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v7, v7, v16

    const/high16 v8, 0x43400000    # 192.0f

    invoke-static {v6, v7, v8}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->inViewScreen(FFF)Z

    move-result v6

    if-nez v6, :cond_14f

    .line 166
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgCulled:I

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgCulled:I

    .line 167
    move/from16 v19, v12

    move/from16 v20, v15

    goto/16 :goto_209

    .line 170
    :cond_14f
    move/from16 v6, v16

    move v7, v12

    move/from16 v8, v18

    move v9, v13

    move v10, v5

    move v11, v3

    move/from16 v19, v12

    move v12, v4

    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->fillTrail(IIFIIFF)V

    .line 172
    const-wide/high16 v6, 0x4043000000000000L    # 38.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 173
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v8, v8, v16

    const/high16 v9, 0x41000000    # 8.0f

    mul-float v10, v3, v9

    add-float/2addr v8, v10

    .line 174
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v10, v10, v16

    mul-float/2addr v9, v4

    add-float/2addr v10, v9

    .line 175
    float-to-double v11, v4

    move/from16 v20, v15

    float-to-double v14, v3

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    .line 176
    move v14, v1

    :goto_17b
    const/4 v15, 0x2

    if-ge v14, v15, :cond_1c6

    .line 177
    if-nez v14, :cond_183

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_185

    :cond_183
    const/high16 v15, -0x40800000    # -1.0f

    .line 178
    :goto_185
    neg-float v9, v4

    mul-float/2addr v9, v15

    .line 179
    mul-float/2addr v15, v3

    .line 180
    sget-object v21, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    aget-object v21, v21, v16

    const/high16 v22, 0x40800000    # 4.0f

    mul-float v23, v3, v22

    sub-float v23, v8, v23

    const v24, 0x404ccccd    # 3.2f

    mul-float v9, v9, v24

    add-float v23, v23, v9

    aput v23, v21, v14

    .line 181
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    aget-object v9, v9, v16

    mul-float v22, v22, v4

    sub-float v21, v10, v22

    mul-float v15, v15, v24

    add-float v21, v21, v15

    aput v21, v9, v14

    .line 182
    if-nez v14, :cond_1ad

    move-wide v1, v6

    goto :goto_1ae

    :cond_1ad
    neg-double v1, v6

    :goto_1ae
    add-double/2addr v1, v11

    .line 183
    sget-object v21, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    aget-object v21, v21, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const-wide v22, 0x4056800000000000L    # 90.0

    sub-double v1, v22, v1

    double-to-float v1, v1

    aput v1, v21, v14
    :try_end_1c1
    .catchall {:try_start_41 .. :try_end_1c1} :catchall_27d

    .line 176
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_17b

    .line 186
    :cond_1c6
    nop

    .line 187
    nop

    .line 188
    nop

    .line 190
    :try_start_1c9
    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 191
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1e2

    .line 193
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v1
    :try_end_1d5
    .catchall {:try_start_1c9 .. :try_end_1d5} :catchall_1e9

    .line 194
    :try_start_1d5
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v2
    :try_end_1d9
    .catchall {:try_start_1d5 .. :try_end_1d9} :catchall_1e0

    .line 195
    :try_start_1d9
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v0
    :try_end_1dd
    .catchall {:try_start_1d9 .. :try_end_1dd} :catchall_1de

    goto :goto_1e8

    .line 197
    :catchall_1de
    move-exception v0

    goto :goto_1ee

    :catchall_1e0
    move-exception v0

    goto :goto_1ec

    .line 192
    :cond_1e2
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 198
    :goto_1e8
    goto :goto_1f0

    .line 197
    :catchall_1e9
    move-exception v0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1ec
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1ee
    const/high16 v0, 0x3f800000    # 1.0f

    .line 199
    :goto_1f0
    :try_start_1f0
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v1, v3, v16

    .line 200
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v2, v1, v16

    .line 201
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v0, v1, v16

    .line 202
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    goto :goto_209

    .line 114
    :cond_203
    move/from16 v18, v4

    move/from16 v19, v12

    move/from16 v20, v15

    .line 112
    :goto_209
    add-int/lit8 v12, v19, 0x1

    move/from16 v4, v18

    move/from16 v15, v20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v14, 0x0

    goto/16 :goto_48

    .line 205
    :cond_214
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v0, :cond_27c

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_27c

    .line 206
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_224
    .catchall {:try_start_1f0 .. :try_end_224} :catchall_27d

    .line 208
    nop

    .line 210
    :try_start_225
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_229
    .catchall {:try_start_225 .. :try_end_229} :catchall_22a

    .line 212
    goto :goto_22c

    .line 211
    :catchall_22a
    move-exception v0

    const/4 v0, -0x1

    .line 213
    :goto_22c
    :try_start_22c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nFX n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_27a
    .catchall {:try_start_22c .. :try_end_27a} :catchall_27b

    .line 216
    goto :goto_27c

    .line 215
    :catchall_27b
    move-exception v0

    .line 224
    :cond_27c
    :goto_27c
    goto :goto_2a1

    .line 218
    :catchall_27d
    move-exception v0

    .line 219
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 221
    :try_start_281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nFX ERR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_29f
    .catchall {:try_start_281 .. :try_end_29f} :catchall_2a0

    .line 223
    goto :goto_2a1

    .line 222
    :catchall_2a0
    move-exception v0

    .line 225
    :goto_2a1
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method

.method private static safeGet(I)Ljava/lang/Object;
    .registers 1

    .line 303
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 304
    :catchall_5
    move-exception p0

    .line 305
    const/4 p0, 0x0

    return-object p0
.end method
