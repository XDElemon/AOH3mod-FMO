.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;
.super Ljava/lang/Object;
.source "AirProjectileFx.java"


# static fields
.field public static final BAR_LEN:I = 0x10

.field public static final BAR_ROT:[[F

.field public static final BAR_W:I = 0x4

.field public static final BAR_X:[[F

.field public static final BAR_Y:[[F

.field public static final BODY:F = 26.0f

.field public static final CB:[F

.field public static final CG:[F

.field public static final CR:[F

.field public static DEBUG_BOX:Z = false

.field private static final DIR_X:[F

.field private static final DIR_Y:[F

.field public static final DX:[F

.field public static final DY:[F

.field private static final HAS_DIR:[Z

.field private static final HIST_EVERY:I = 0x3

.field private static final HIST_HEAD:[I

.field private static final HIST_N:[I

.field private static final HIST_TICK:[I

.field private static final HIST_X:[[F

.field private static final HIST_Y:[[F

.field public static final MAXDRAW:I = 0x100

.field private static final PREV_WX:[F

.field private static final PREV_WY:[F

.field private static final PREV_X:[F

.field private static final PREV_Y:[F

.field private static final PROJ_PATH:Ljava/lang/String; = "game/AirUnit/AirUnitlmages/airProj.png"

.field public static final ROT:[F

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

.field public static dbgDrawn:I

.field private static dbgEnter:I

.field private static dbgFx:I

.field public static frameNo:I

.field public static src:Ljava/lang/String;

.field public static zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_126

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    .line 30
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    .line 32
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F

    .line 33
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F

    .line 34
    new-array v1, v0, [F

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F

    .line 37
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_SIZE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/high16 v4, 0x41500000    # 13.0f

    add-float/2addr v1, v4

    .line 38
    move v4, v2

    :goto_26
    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v4, v0, :cond_60

    .line 39
    if-lez v4, :cond_3e

    .line 40
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

    .line 42
    :cond_3e
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aput v1, v6, v4

    .line 43
    int-to-float v6, v4

    const/high16 v7, 0x41b80000    # 23.0f

    div-float/2addr v6, v7

    .line 44
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_R:[F

    aput v5, v7, v4

    .line 45
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_G:[F

    const v8, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v8, v6

    sub-float v8, v5, v8

    aput v8, v7, v4

    .line 46
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_B:[F

    const v8, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, v7, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 51
    :cond_60
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 53
    const/16 v1, 0x100

    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    .line 54
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    .line 55
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    .line 56
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    .line 58
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    .line 60
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    .line 61
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    .line 62
    new-array v3, v1, [F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    .line 64
    const/16 v3, 0x200

    filled-new-array {v3, v0}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    .line 65
    filled-new-array {v3, v0}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    .line 66
    new-array v4, v3, [I

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    .line 67
    new-array v4, v3, [I

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    .line 68
    new-array v4, v3, [I

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_TICK:[I

    .line 73
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    .line 74
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_Y:[F

    .line 76
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    .line 77
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    .line 78
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    .line 79
    new-array v4, v3, [F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    .line 80
    new-array v3, v3, [Z

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_DIR:[Z

    .line 83
    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    .line 84
    filled-new-array {v1, v3}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    .line 85
    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    .line 90
    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    .line 91
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    .line 93
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 96
    sput-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    .line 99
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    .line 101
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 103
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 105
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 126
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 184
    const-string v0, "?"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    return-void

    nop

    :array_126
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static bodySize()I
    .registers 1

    .line 188
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_9

    :cond_7
    const/16 v0, 0x1a

    :goto_9
    return v0
.end method

.method public static imageId()I
    .registers 4

    .line 142
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    if-ltz v0, :cond_12

    .line 143
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 144
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    return v0

    .line 146
    :cond_f
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 148
    :cond_12
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_47

    const-string v1, "ring"

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1e

    .line 149
    :try_start_19
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 150
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0

    .line 152
    :cond_1e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    .line 153
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 154
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 155
    const-string v1, "proj"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 156
    return v0

    .line 159
    :cond_2d
    const-string v0, "game/AirUnit/AirUnitlmages/airProj.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 161
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 162
    const-string v1, "lazy"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 163
    return v0

    .line 165
    :cond_40
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 166
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 167
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_47

    return v0

    .line 168
    :catchall_47
    move-exception v0

    .line 169
    const-string v0, "err"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 170
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0
.end method

.method public static logDrawn()V
    .registers 2

    .line 413
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 414
    return-void

    .line 416
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 418
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

    .line 420
    goto :goto_27

    .line 419
    :catchall_26
    move-exception v0

    .line 421
    :goto_27
    return-void
.end method

.method public static logEnter(I)V
    .registers 4

    .line 396
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 397
    return-void

    .line 399
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 401
    nop

    .line 403
    :try_start_e
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    .line 405
    goto :goto_15

    .line 404
    :catchall_13
    move-exception v0

    const/4 v0, -0x1

    .line 406
    :goto_15
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nFX enter n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " img="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " isz="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_44

    .line 408
    goto :goto_45

    .line 407
    :catchall_44
    move-exception p0

    .line 409
    :goto_45
    return-void
.end method

.method public static prepare()I
    .registers 27

    .line 197
    const-string v1, ","

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 198
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 200
    nop

    .line 201
    nop

    .line 202
    nop

    .line 204
    :try_start_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_19

    .line 205
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    goto :goto_1b

    .line 204
    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    :goto_1b
    move v5, v0

    goto :goto_20

    .line 207
    :catchall_1d
    move-exception v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 210
    :goto_20
    :try_start_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v0, :cond_33

    .line 211
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v6
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_38

    .line 212
    :try_start_2a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    goto :goto_35

    .line 214
    :catchall_31
    move-exception v0

    goto :goto_3a

    .line 210
    :cond_33
    move v0, v2

    move v6, v0

    .line 215
    :goto_35
    move v7, v6

    move v6, v0

    goto :goto_3c

    .line 214
    :catchall_38
    move-exception v0

    move v6, v2

    :goto_3a
    move v7, v6

    move v6, v2

    .line 216
    :goto_3c
    const/4 v8, 0x0

    cmpg-float v0, v5, v8

    if-gtz v0, :cond_43

    .line 217
    const/high16 v5, 0x3f800000    # 1.0f

    .line 219
    :cond_43
    :try_start_43
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 220
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v9

    .line 221
    move v10, v2

    :goto_4a
    if-ge v10, v9, :cond_2ec

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v11, 0x100

    if-ge v0, v11, :cond_2ec

    .line 222
    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2d9

    iget-boolean v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v11, :cond_64

    .line 224
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v9

    goto/16 :goto_2df

    .line 226
    :cond_64
    sget v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 227
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    mul-float/2addr v13, v5

    aput v13, v12, v11

    .line 228
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v15, v6

    add-float/2addr v13, v15

    mul-float/2addr v13, v5

    aput v13, v12, v11

    .line 230
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    if-ltz v10, :cond_b7

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    array-length v12, v12

    if-ge v10, v12, :cond_b7

    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_DIR:[Z

    aget-boolean v12, v12, v10

    if-eqz v12, :cond_b7

    .line 235
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    aget v13, v13, v10

    sub-float/2addr v12, v13

    .line 236
    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    aget v16, v16, v10

    sub-float v13, v13, v16

    .line 237
    mul-float v16, v12, v12

    mul-float v17, v13, v13

    add-float v4, v16, v17

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 238
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b7

    .line 239
    div-float/2addr v12, v2

    .line 240
    div-float/2addr v13, v2

    .line 241
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    aput v12, v2, v10

    .line 242
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    aput v13, v2, v10

    .line 243
    const/4 v2, 0x1

    goto :goto_ba

    .line 246
    :cond_b7
    move v12, v8

    move v13, v12

    const/4 v2, 0x0

    :goto_ba
    if-nez v2, :cond_dd

    if-ltz v10, :cond_dd

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    array-length v3, v3

    if-ge v10, v3, :cond_dd

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_DIR:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_dd

    .line 247
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    aget v12, v2, v10

    .line 248
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    aget v13, v2, v10

    .line 249
    cmpl-float v2, v12, v8

    if-nez v2, :cond_dc

    cmpl-float v2, v13, v8

    if-eqz v2, :cond_da

    goto :goto_dc

    :cond_da
    const/4 v2, 0x0

    goto :goto_dd

    :cond_dc
    :goto_dc
    const/4 v2, 0x1

    .line 251
    :cond_dd
    :goto_dd
    if-nez v2, :cond_11b

    .line 253
    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    add-float/2addr v2, v14

    mul-float/2addr v2, v5

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v3, v3, v11

    sub-float/2addr v2, v3

    .line 254
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    add-float/2addr v3, v15

    mul-float/2addr v3, v5

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v4, v4, v11

    sub-float/2addr v3, v4

    .line 255
    mul-float v4, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v4, v12

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 256
    const v12, 0x3c23d70a    # 0.01f

    cmpl-float v12, v4, v12

    if-lez v12, :cond_108

    .line 257
    div-float/2addr v2, v4

    .line 258
    div-float/2addr v3, v4

    move v12, v2

    move v13, v3

    goto :goto_10c

    .line 260
    :cond_108
    nop

    .line 261
    move v13, v8

    const/high16 v12, 0x3f800000    # 1.0f

    .line 263
    :goto_10c
    if-ltz v10, :cond_11b

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    array-length v2, v2

    if-ge v10, v2, :cond_11b

    .line 264
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_X:[F

    aput v12, v2, v10

    .line 265
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DIR_Y:[F

    aput v13, v2, v10

    .line 268
    :cond_11b
    const/16 v2, 0x18

    if-ltz v10, :cond_188

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    array-length v3, v3

    if-ge v10, v3, :cond_188

    .line 269
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WX:[F

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    aput v4, v3, v10

    .line 270
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_WY:[F

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    aput v4, v3, v10

    .line 271
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_X:[F

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v4, v4, v11

    aput v4, v3, v10

    .line 272
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->PREV_Y:[F

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v4, v4, v11

    aput v4, v3, v10

    .line 273
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HAS_DIR:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v10

    .line 275
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_TICK:[I

    aget v17, v3, v10

    add-int/lit8 v18, v17, 0x1

    aput v18, v3, v10

    .line 276
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_TICK:[I

    aget v3, v3, v10

    const/4 v4, 0x3

    if-ge v3, v4, :cond_15a

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v3, v3, v10

    if-nez v3, :cond_188

    .line 277
    :cond_15a
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_TICK:[I

    const/4 v4, 0x0

    aput v4, v3, v10

    .line 278
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    aget v3, v3, v10

    .line 279
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    aget-object v4, v4, v10

    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    aput v8, v4, v3

    .line 280
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    aget-object v4, v4, v10

    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    aput v8, v4, v3

    .line 281
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v2

    aput v3, v4, v10

    .line 282
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v3, v3, v10

    if-ge v3, v2, :cond_188

    .line 283
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v4, v3, v10

    const/4 v8, 0x1

    add-int/2addr v4, v8

    aput v4, v3, v10

    .line 287
    :cond_188
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aput v12, v3, v11

    .line 288
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aput v13, v3, v11

    .line 290
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    move-object v8, v3

    float-to-double v2, v13

    float-to-double v12, v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    aput v2, v8, v11
    :try_end_1a1
    .catchall {:try_start_43 .. :try_end_1a1} :catchall_420

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 295
    :try_start_1a4
    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 296
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1bd

    .line 298
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2
    :try_end_1b0
    .catchall {:try_start_1a4 .. :try_end_1b0} :catchall_1c4

    .line 299
    :try_start_1b0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3
    :try_end_1b4
    .catchall {:try_start_1b0 .. :try_end_1b4} :catchall_1bb

    .line 300
    :try_start_1b4
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v0
    :try_end_1b8
    .catchall {:try_start_1b4 .. :try_end_1b8} :catchall_1b9

    goto :goto_1c3

    .line 302
    :catchall_1b9
    move-exception v0

    goto :goto_1c9

    :catchall_1bb
    move-exception v0

    goto :goto_1c7

    .line 297
    :cond_1bd
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 303
    :goto_1c3
    goto :goto_1cb

    .line 302
    :catchall_1c4
    move-exception v0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1c7
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1c9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    :goto_1cb
    :try_start_1cb
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v2, v8, v11

    .line 305
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v3, v2, v11

    .line 306
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v0, v2, v11

    .line 309
    const-wide/high16 v2, 0x4043000000000000L    # 38.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 310
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 311
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 313
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v0, v0, v11

    .line 314
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v8, v8, v11

    .line 316
    neg-float v12, v8

    .line 317
    nop

    .line 318
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v13, v13, v11

    const/high16 v19, 0x41000000    # 8.0f

    mul-float v20, v0, v19

    add-float v13, v13, v20

    .line 319
    sget-object v20, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v20, v20, v11

    mul-float v19, v19, v8

    add-float v20, v20, v19

    .line 320
    const/4 v4, 0x0

    :goto_200
    move/from16 v21, v6

    const/4 v6, 0x2

    if-ge v4, v6, :cond_25f

    .line 321
    if-nez v4, :cond_20a

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_20c

    :cond_20a
    const/high16 v6, -0x40800000    # -1.0f

    .line 323
    :goto_20c
    const/high16 v22, 0x40800000    # 4.0f

    mul-float v23, v0, v22

    sub-float v23, v13, v23

    mul-float v24, v12, v6

    const v25, 0x404ccccd    # 3.2f

    mul-float v24, v24, v25

    add-float v23, v23, v24

    .line 324
    mul-float v22, v22, v8

    sub-float v22, v20, v22

    mul-float/2addr v6, v0

    mul-float v6, v6, v25

    add-float v22, v22, v6

    .line 325
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    aget-object v6, v6, v11

    aput v23, v6, v4

    .line 326
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    aget-object v6, v6, v11

    aput v22, v6, v4

    .line 330
    move/from16 v22, v7

    float-to-double v6, v8

    move/from16 v24, v8

    move/from16 v23, v9

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 331
    if-nez v4, :cond_240

    move-wide v8, v2

    goto :goto_241

    :cond_240
    neg-double v8, v2

    :goto_241
    add-double/2addr v6, v8

    .line 332
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    aget-object v8, v8, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v25, 0x4056800000000000L    # 90.0

    sub-double v6, v25, v6

    double-to-float v6, v6

    aput v6, v8, v4

    .line 320
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    move/from16 v8, v24

    goto :goto_200

    .line 335
    :cond_25f
    move/from16 v22, v7

    move/from16 v23, v9

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_N:[I

    aget v0, v0, v10

    .line 336
    const/4 v2, 0x0

    :goto_268
    const/16 v3, 0x18

    if-ge v2, v3, :cond_2d2

    .line 337
    if-gtz v0, :cond_299

    .line 338
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v3, v3, v11

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v6, v6, v11

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v7, v7, v11

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v3, v2

    .line 339
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v3, v3, v11

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v6, v6, v11

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v7, v7, v11

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v3, v2

    .line 340
    const/16 v4, 0x18

    goto :goto_2cf

    .line 342
    :cond_299
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    aget v3, v3, v10

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x30

    const/16 v4, 0x18

    rem-int/2addr v3, v4

    .line 343
    if-lt v2, v0, :cond_2b1

    .line 344
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_HEAD:[I

    aget v3, v3, v10

    sub-int/2addr v3, v0

    const/16 v4, 0x18

    add-int/2addr v3, v4

    rem-int/2addr v3, v4

    goto :goto_2b3

    .line 343
    :cond_2b1
    const/16 v4, 0x18

    .line 346
    :goto_2b3
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v6, v6, v11

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_X:[[F

    aget-object v7, v7, v10

    aget v7, v7, v3

    add-float/2addr v7, v14

    mul-float/2addr v7, v5

    aput v7, v6, v2

    .line 347
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v6, v6, v11

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->HIST_Y:[[F

    aget-object v7, v7, v10

    aget v3, v7, v3

    add-float/2addr v3, v15

    mul-float/2addr v3, v5

    aput v3, v6, v2

    .line 336
    :goto_2cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_268

    .line 349
    :cond_2d2
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    goto :goto_2df

    .line 223
    :cond_2d9
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v9

    .line 221
    :goto_2df
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4a

    .line 352
    :cond_2ec
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    rem-int/lit16 v0, v0, 0x12c
    :try_end_2f0
    .catchall {:try_start_1cb .. :try_end_2f0} :catchall_420

    const-string v2, " img="

    const/16 v3, 0x28

    if-nez v0, :cond_340

    :try_start_2f6
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v0, v3, :cond_340

    .line 353
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_300
    .catchall {:try_start_2f6 .. :try_end_300} :catchall_420

    .line 355
    :try_start_300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nFX tick f="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " n="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " probe="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->probeImageId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_33e
    .catchall {:try_start_300 .. :try_end_33e} :catchall_33f

    .line 358
    goto :goto_340

    .line 357
    :catchall_33f
    move-exception v0

    .line 361
    :cond_340
    :goto_340
    :try_start_340
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v0, :cond_41f

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v0, v3, :cond_41f

    .line 362
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_34e
    .catchall {:try_start_340 .. :try_end_34e} :catchall_420

    .line 364
    nop

    .line 366
    :try_start_34f
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_353
    .catchall {:try_start_34f .. :try_end_353} :catchall_354

    .line 368
    goto :goto_356

    .line 367
    :catchall_354
    move-exception v0

    const/4 v0, -0x1

    .line 369
    :goto_356
    :try_start_356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nFX n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ring="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->probeImageId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " use="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " box="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " y0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rot0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " c0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_41d
    .catchall {:try_start_356 .. :try_end_41d} :catchall_41e

    .line 378
    goto :goto_41f

    .line 377
    :catchall_41e
    move-exception v0

    .line 386
    :cond_41f
    :goto_41f
    goto :goto_444

    .line 380
    :catchall_420
    move-exception v0

    .line 381
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 383
    :try_start_424
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
    :try_end_442
    .catchall {:try_start_424 .. :try_end_442} :catchall_443

    .line 385
    goto :goto_444

    .line 384
    :catchall_443
    move-exception v0

    .line 387
    :goto_444
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method

.method public static probeImageId()I
    .registers 1

    .line 117
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    .line 118
    :catchall_3
    move-exception v0

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method private static safeGet(I)Ljava/lang/Object;
    .registers 1

    .line 177
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 178
    :catchall_5
    move-exception p0

    .line 179
    const/4 p0, 0x0

    return-object p0
.end method
