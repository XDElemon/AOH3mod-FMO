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

.field public static final DX:[F

.field public static final DY:[F

.field public static final MAXDRAW:I = 0x100

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

    fill-array-data v1, :array_e0

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
    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    .line 65
    filled-new-array {v1, v3}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    sput-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    .line 66
    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    .line 71
    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    .line 72
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    .line 74
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 77
    sput-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    .line 80
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    .line 82
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 84
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 86
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 107
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 165
    const-string v0, "?"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    return-void

    nop

    :array_e0
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static bodySize()I
    .registers 1

    .line 169
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

    .line 123
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    if-ltz v0, :cond_12

    .line 124
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 125
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    return v0

    .line 127
    :cond_f
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 129
    :cond_12
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_47

    const-string v1, "ring"

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1e

    .line 130
    :try_start_19
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 131
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0

    .line 133
    :cond_1e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    .line 134
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 135
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 136
    const-string v1, "proj"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 137
    return v0

    .line 140
    :cond_2d
    const-string v0, "game/AirUnit/AirUnitlmages/airProj.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 142
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 143
    const-string v1, "lazy"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 144
    return v0

    .line 146
    :cond_40
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 147
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 148
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_47

    return v0

    .line 149
    :catchall_47
    move-exception v0

    .line 150
    const-string v0, "err"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 151
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0
.end method

.method public static logDrawn()V
    .registers 2

    .line 326
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 327
    return-void

    .line 329
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 331
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

    .line 333
    goto :goto_27

    .line 332
    :catchall_26
    move-exception v0

    .line 334
    :goto_27
    return-void
.end method

.method public static logEnter(I)V
    .registers 4

    .line 309
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 310
    return-void

    .line 312
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 314
    nop

    .line 316
    :try_start_e
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    .line 318
    goto :goto_15

    .line 317
    :catchall_13
    move-exception v0

    const/4 v0, -0x1

    .line 319
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

    .line 321
    goto :goto_45

    .line 320
    :catchall_44
    move-exception p0

    .line 322
    :goto_45
    return-void
.end method

.method public static prepare()I
    .registers 21

    .line 178
    const-string v1, ","

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 179
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 185
    :try_start_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :cond_19

    .line 186
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    goto :goto_1b

    .line 185
    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    :goto_1b
    move v4, v0

    goto :goto_20

    .line 188
    :catchall_1d
    move-exception v0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 191
    :goto_20
    :try_start_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v0, :cond_33

    .line 192
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_38

    .line 193
    :try_start_2a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    goto :goto_35

    .line 195
    :catchall_31
    move-exception v0

    goto :goto_3a

    .line 191
    :cond_33
    move v0, v2

    move v5, v0

    .line 196
    :goto_35
    move v6, v5

    move v5, v0

    goto :goto_3c

    .line 195
    :catchall_38
    move-exception v0

    move v5, v2

    :goto_3a
    move v6, v5

    move v5, v2

    .line 197
    :goto_3c
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_43

    .line 198
    const/high16 v4, 0x3f800000    # 1.0f

    .line 200
    :cond_43
    :try_start_43
    sput v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 201
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v7

    .line 202
    move v8, v2

    :goto_4a
    if-ge v8, v7, :cond_18c

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v9, 0x100

    if-ge v0, v9, :cond_18c

    .line 203
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_17f

    iget-boolean v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v9, :cond_62

    .line 205
    move/from16 v19, v4

    move/from16 v18, v5

    goto/16 :goto_183

    .line 207
    :cond_62
    sget v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 208
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v12, v6

    add-float/2addr v11, v12

    mul-float/2addr v11, v4

    aput v11, v10, v9

    .line 209
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v4

    aput v11, v10, v9

    .line 210
    iget v10, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 211
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, v12, v9

    .line 212
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    aput v10, v12, v9

    .line 213
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    neg-float v11, v11

    aput v11, v10, v9
    :try_end_97
    .catchall {:try_start_43 .. :try_end_97} :catchall_2c0

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 218
    :try_start_9a
    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 219
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_b3

    .line 221
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v10
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_ba

    .line 222
    :try_start_a6
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v11
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_b1

    .line 223
    :try_start_aa
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v0
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_af

    goto :goto_b9

    .line 225
    :catchall_af
    move-exception v0

    goto :goto_bf

    :catchall_b1
    move-exception v0

    goto :goto_bd

    .line 220
    :cond_b3
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 226
    :goto_b9
    goto :goto_c1

    .line 225
    :catchall_ba
    move-exception v0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_bd
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_bf
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    :goto_c1
    :try_start_c1
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v10, v12, v9

    .line 228
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v11, v10, v9

    .line 229
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v0, v10, v9

    .line 232
    const-wide/high16 v10, 0x4043000000000000L    # 38.0

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 233
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 234
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 236
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v0, v0, v9

    .line 237
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v12, v12, v9

    .line 239
    neg-float v13, v12

    .line 240
    nop

    .line 241
    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v14, v14, v9

    const/high16 v15, 0x41000000    # 8.0f

    mul-float v16, v0, v15

    add-float v14, v14, v16

    .line 242
    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v16, v16, v9

    mul-float/2addr v15, v12

    add-float v16, v16, v15

    .line 243
    move v15, v2

    :goto_f5
    const/4 v3, 0x2

    if-ge v15, v3, :cond_147

    .line 244
    if-nez v15, :cond_fd

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_ff

    :cond_fd
    const/high16 v3, -0x40800000    # -1.0f

    .line 246
    :goto_ff
    const/high16 v17, 0x40800000    # 4.0f

    mul-float v18, v0, v17

    sub-float v18, v14, v18

    mul-float v19, v13, v3

    const v20, 0x404ccccd    # 3.2f

    mul-float v19, v19, v20

    add-float v18, v18, v19

    .line 247
    mul-float v17, v17, v12

    sub-float v17, v16, v17

    mul-float/2addr v3, v0

    mul-float v3, v3, v20

    add-float v17, v17, v3

    .line 248
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_X:[[F

    aget-object v3, v3, v9

    aput v18, v3, v15

    .line 249
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_Y:[[F

    aget-object v3, v3, v9

    aput v17, v3, v15

    .line 251
    float-to-double v2, v12

    move/from16 v19, v4

    move/from16 v18, v5

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    if-nez v15, :cond_131

    move-wide v4, v10

    goto :goto_132

    :cond_131
    neg-double v4, v10

    :goto_132
    add-double/2addr v2, v4

    .line 252
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->BAR_ROT:[[F

    aget-object v4, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    aput v2, v4, v15

    .line 243
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v18

    move/from16 v4, v19

    const/4 v2, 0x0

    goto :goto_f5

    .line 255
    :cond_147
    move/from16 v19, v4

    move/from16 v18, v5

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v0, v0, v9

    .line 256
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v2, v2, v9

    .line 257
    const/4 v3, 0x0

    :goto_154
    const/16 v4, 0x18

    if-ge v3, v4, :cond_178

    .line 258
    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v4, v4, v3

    .line 259
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v5, v5, v9

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v10, v10, v9

    mul-float v11, v0, v4

    sub-float/2addr v10, v11

    aput v10, v5, v3

    .line 260
    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v5, v5, v9

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v10, v10, v9

    mul-float/2addr v4, v2

    sub-float/2addr v10, v4

    aput v10, v5, v3

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    .line 262
    :cond_178
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    goto :goto_183

    .line 204
    :cond_17f
    move/from16 v19, v4

    move/from16 v18, v5

    .line 202
    :goto_183
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v18

    move/from16 v4, v19

    const/4 v2, 0x0

    goto/16 :goto_4a

    .line 265
    :cond_18c
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    rem-int/lit16 v0, v0, 0x12c
    :try_end_190
    .catchall {:try_start_c1 .. :try_end_190} :catchall_2c0

    const-string v2, " img="

    const/16 v3, 0x28

    if-nez v0, :cond_1e0

    :try_start_196
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v0, v3, :cond_1e0

    .line 266
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_1a0
    .catchall {:try_start_196 .. :try_end_1a0} :catchall_2c0

    .line 268
    :try_start_1a0
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

    .line 269
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

    .line 268
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_1de
    .catchall {:try_start_1a0 .. :try_end_1de} :catchall_1df

    .line 271
    goto :goto_1e0

    .line 270
    :catchall_1df
    move-exception v0

    .line 274
    :cond_1e0
    :goto_1e0
    :try_start_1e0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v0, :cond_2bf

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v0, v3, :cond_2bf

    .line 275
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_1ee
    .catchall {:try_start_1e0 .. :try_end_1ee} :catchall_2c0

    .line 277
    nop

    .line 279
    :try_start_1ef
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_1f3
    .catchall {:try_start_1ef .. :try_end_1f3} :catchall_1f4

    .line 281
    goto :goto_1f6

    .line 280
    :catchall_1f4
    move-exception v0

    const/4 v0, -0x1

    .line 282
    :goto_1f6
    :try_start_1f6
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

    .line 283
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

    .line 285
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

    .line 282
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_2bd
    .catchall {:try_start_1f6 .. :try_end_2bd} :catchall_2be

    .line 291
    goto :goto_2bf

    .line 290
    :catchall_2be
    move-exception v0

    .line 299
    :cond_2bf
    :goto_2bf
    goto :goto_2e4

    .line 293
    :catchall_2c0
    move-exception v0

    .line 294
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 296
    :try_start_2c4
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
    :try_end_2e2
    .catchall {:try_start_2c4 .. :try_end_2e2} :catchall_2e3

    .line 298
    goto :goto_2e4

    .line 297
    :catchall_2e3
    move-exception v0

    .line 300
    :goto_2e4
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method

.method public static probeImageId()I
    .registers 1

    .line 98
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    .line 99
    :catchall_3
    move-exception v0

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method private static safeGet(I)Ljava/lang/Object;
    .registers 1

    .line 158
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 159
    :catchall_5
    move-exception p0

    .line 160
    const/4 p0, 0x0

    return-object p0
.end method
