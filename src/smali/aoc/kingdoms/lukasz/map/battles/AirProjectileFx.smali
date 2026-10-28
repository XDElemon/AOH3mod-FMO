.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;
.super Ljava/lang/Object;
.source "AirProjectileFx.java"


# static fields
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

    fill-array-data v1, :array_b4

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
    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    .line 65
    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    .line 67
    sput v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 70
    sput-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    .line 73
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    .line 75
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 77
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 79
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 100
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 158
    const-string v0, "?"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    return-void

    :array_b4
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static bodySize()I
    .registers 1

    .line 162
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

    .line 116
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    if-ltz v0, :cond_12

    .line 117
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 118
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    return v0

    .line 120
    :cond_f
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 122
    :cond_12
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_47

    const-string v1, "ring"

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1e

    .line 123
    :try_start_19
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 124
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0

    .line 126
    :cond_1e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    .line 127
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 128
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 129
    const-string v1, "proj"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 130
    return v0

    .line 133
    :cond_2d
    const-string v0, "game/AirUnit/AirUnitlmages/airProj.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->safeGet(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 135
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 136
    const-string v1, "lazy"

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 137
    return v0

    .line 139
    :cond_40
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->cachedId:I

    .line 140
    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 141
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_47

    return v0

    .line 142
    :catchall_47
    move-exception v0

    .line 143
    const-string v0, "err"

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->src:Ljava/lang/String;

    .line 144
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I

    return v0
.end method

.method public static logDrawn()V
    .registers 2

    .line 295
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 296
    return-void

    .line 298
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    .line 300
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

    .line 302
    goto :goto_27

    .line 301
    :catchall_26
    move-exception v0

    .line 303
    :goto_27
    return-void
.end method

.method public static logEnter(I)V
    .registers 4

    .line 278
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_7

    .line 279
    return-void

    .line 281
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgEnter:I

    .line 283
    nop

    .line 285
    :try_start_e
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    .line 287
    goto :goto_15

    .line 286
    :catchall_13
    move-exception v0

    const/4 v0, -0x1

    .line 288
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

    .line 290
    goto :goto_45

    .line 289
    :catchall_44
    move-exception p0

    .line 291
    :goto_45
    return-void
.end method

.method public static prepare()I
    .registers 16

    .line 171
    const-string v0, ","

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 172
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 178
    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_10
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v3, :cond_1b

    .line 179
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1d

    goto :goto_1c

    .line 178
    :cond_1b
    move v3, v2

    .line 182
    :goto_1c
    goto :goto_1f

    .line 181
    :catchall_1d
    move-exception v3

    move v3, v2

    .line 184
    :goto_1f
    :try_start_1f
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v4, :cond_32

    .line 185
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_35

    .line 186
    :try_start_29
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    goto :goto_34

    .line 188
    :catchall_30
    move-exception v5

    goto :goto_37

    .line 184
    :cond_32
    move v4, v1

    move v5, v4

    .line 189
    :goto_34
    goto :goto_38

    .line 188
    :catchall_35
    move-exception v4

    move v4, v1

    :goto_37
    move v5, v1

    .line 190
    :goto_38
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3e

    .line 191
    move v3, v2

    .line 193
    :cond_3e
    :try_start_3e
    sput v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 194
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v6

    .line 195
    move v7, v1

    :goto_45
    if-ge v7, v6, :cond_f6

    sget v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v9, 0x100

    if-ge v8, v9, :cond_f6

    .line 196
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v8

    .line 197
    if-eqz v8, :cond_f2

    iget-boolean v9, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v9, :cond_59

    .line 198
    goto/16 :goto_f2

    .line 200
    :cond_59
    sget v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 201
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v12, v4

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, v10, v9

    .line 202
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, v10, v9

    .line 203
    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 204
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, v12, v9

    .line 205
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    aput v10, v12, v9

    .line 206
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    neg-float v11, v11

    aput v11, v10, v9
    :try_end_8e
    .catchall {:try_start_3e .. :try_end_8e} :catchall_224

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 211
    :try_start_91
    iget v8, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 212
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    .line 213
    if-eqz v8, :cond_ab

    .line 214
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v10
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_af

    .line 215
    :try_start_9d
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v11
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a8

    .line 216
    :try_start_a1
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v8
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_a6

    goto :goto_ae

    .line 218
    :catchall_a6
    move-exception v8

    goto :goto_b2

    :catchall_a8
    move-exception v8

    move v11, v2

    goto :goto_b2

    .line 213
    :cond_ab
    move v8, v2

    move v10, v8

    move v11, v10

    .line 219
    :goto_ae
    goto :goto_b3

    .line 218
    :catchall_af
    move-exception v8

    move v10, v2

    move v11, v10

    :goto_b2
    move v8, v2

    .line 220
    :goto_b3
    :try_start_b3
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v10, v12, v9

    .line 221
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v11, v10, v9

    .line 222
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v8, v10, v9

    .line 224
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v8, v8, v9

    .line 225
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v10, v10, v9

    .line 226
    move v11, v1

    :goto_c8
    const/16 v12, 0x18

    if-ge v11, v12, :cond_ec

    .line 227
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v12, v12, v11

    .line 228
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v13, v13, v9

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v14, v14, v9

    mul-float v15, v8, v12

    sub-float/2addr v14, v15

    aput v14, v13, v11

    .line 229
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v13, v13, v9

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v14, v14, v9

    mul-float/2addr v12, v10

    sub-float/2addr v14, v12

    aput v14, v13, v11

    .line 226
    add-int/lit8 v11, v11, 0x1

    goto :goto_c8

    .line 231
    :cond_ec
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 195
    :cond_f2
    :goto_f2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_45

    .line 234
    :cond_f6
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    rem-int/lit16 v2, v2, 0x12c
    :try_end_fa
    .catchall {:try_start_b3 .. :try_end_fa} :catchall_224

    const-string v3, " img="

    const/16 v4, 0x28

    if-nez v2, :cond_14a

    :try_start_100
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v2, v4, :cond_14a

    .line 235
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_224

    .line 237
    :try_start_10a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nFX tick f="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->frameNo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " n="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " probe="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->probeImageId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_10a .. :try_end_148} :catchall_149

    .line 240
    goto :goto_14a

    .line 239
    :catchall_149
    move-exception v2

    .line 243
    :cond_14a
    :goto_14a
    :try_start_14a
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v2, :cond_223

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    if-ge v2, v4, :cond_223

    .line 244
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_158
    .catchall {:try_start_14a .. :try_end_158} :catchall_224

    .line 246
    nop

    .line 248
    :try_start_159
    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImagesSize()I

    move-result v2
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_15e

    .line 250
    goto :goto_160

    .line 249
    :catchall_15e
    move-exception v2

    const/4 v2, -0x1

    .line 251
    :goto_160
    :try_start_160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nFX n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ring="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->probeImageId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " use="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->imageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v3, v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v3, v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rot0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    aget v3, v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aget v3, v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aget v3, v3, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aget v1, v2, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_221
    .catchall {:try_start_160 .. :try_end_221} :catchall_222

    .line 260
    goto :goto_223

    .line 259
    :catchall_222
    move-exception v0

    .line 268
    :cond_223
    :goto_223
    goto :goto_247

    .line 262
    :catchall_224
    move-exception v0

    .line 263
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 265
    :try_start_227
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
    :try_end_245
    .catchall {:try_start_227 .. :try_end_245} :catchall_246

    .line 267
    goto :goto_247

    .line 266
    :catchall_246
    move-exception v0

    .line 269
    :goto_247
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method

.method public static probeImageId()I
    .registers 1

    .line 91
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airRingCiv:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    .line 92
    :catchall_3
    move-exception v0

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method private static safeGet(I)Ljava/lang/Object;
    .registers 1

    .line 151
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 152
    :catchall_5
    move-exception p0

    .line 153
    const/4 p0, 0x0

    return-object p0
.end method
