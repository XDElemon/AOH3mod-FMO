.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;
.super Ljava/lang/Object;
.source "AirProjectileFx.java"


# static fields
.field public static final BODY:F = 20.0f

.field public static final CB:[F

.field public static final CG:[F

.field public static final CR:[F

.field public static final DX:[F

.field public static final DY:[F

.field public static final MAXDRAW:I = 0x100

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

.field public static count:I

.field private static dbgFx:I

.field public static zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_a6

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

    const/high16 v4, 0x41200000    # 10.0f

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

    const v7, 0x3f666666    # 0.9f

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

    .line 69
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    return-void

    nop

    :array_a6
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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static prepare()I
    .registers 15

    .line 80
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v2, :cond_13

    .line 87
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_15

    goto :goto_14

    .line 86
    :cond_13
    move v2, v1

    .line 90
    :goto_14
    goto :goto_17

    .line 89
    :catchall_15
    move-exception v2

    move v2, v1

    .line 92
    :goto_17
    :try_start_17
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v3, :cond_2a

    .line 93
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_2d

    .line 94
    :try_start_21
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v4
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_2c

    .line 96
    :catchall_28
    move-exception v4

    goto :goto_2f

    .line 92
    :cond_2a
    move v3, v0

    move v4, v3

    .line 97
    :goto_2c
    goto :goto_30

    .line 96
    :catchall_2d
    move-exception v3

    move v3, v0

    :goto_2f
    move v4, v0

    .line 98
    :goto_30
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_36

    .line 99
    move v2, v1

    .line 101
    :cond_36
    :try_start_36
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 102
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v5

    .line 103
    move v6, v0

    :goto_3d
    if-ge v6, v5, :cond_ee

    sget v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v8, 0x100

    if-ge v7, v8, :cond_ee

    .line 104
    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v7

    .line 105
    if-eqz v7, :cond_ea

    iget-boolean v8, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v8, :cond_51

    .line 106
    goto/16 :goto_ea

    .line 108
    :cond_51
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 109
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v10, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v11, v3

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    aput v10, v9, v8

    .line 110
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v10, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v11, v4

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    aput v10, v9, v8

    .line 111
    iget v9, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 112
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v11, v8

    .line 113
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    neg-double v9, v9

    double-to-float v9, v9

    aput v9, v11, v8

    .line 114
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    iget v10, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    neg-float v10, v10

    aput v10, v9, v8
    :try_end_86
    .catchall {:try_start_36 .. :try_end_86} :catchall_15e

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 119
    :try_start_89
    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 120
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    .line 121
    if-eqz v7, :cond_a3

    .line 122
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v9
    :try_end_95
    .catchall {:try_start_89 .. :try_end_95} :catchall_a7

    .line 123
    :try_start_95
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v10
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_a0

    .line 124
    :try_start_99
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v7
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_9e

    goto :goto_a6

    .line 126
    :catchall_9e
    move-exception v7

    goto :goto_aa

    :catchall_a0
    move-exception v7

    move v10, v1

    goto :goto_aa

    .line 121
    :cond_a3
    move v7, v1

    move v9, v7

    move v10, v9

    .line 127
    :goto_a6
    goto :goto_ab

    .line 126
    :catchall_a7
    move-exception v7

    move v9, v1

    move v10, v9

    :goto_aa
    move v7, v1

    .line 128
    :goto_ab
    :try_start_ab
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v9, v11, v8

    .line 129
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v10, v9, v8

    .line 130
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v7, v9, v8

    .line 132
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v7, v7, v8

    .line 133
    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v9, v9, v8

    .line 134
    move v10, v0

    :goto_c0
    const/16 v11, 0x18

    if-ge v10, v11, :cond_e4

    .line 135
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v11, v11, v10

    .line 136
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v12, v12, v8

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v13, v13, v8

    mul-float v14, v7, v11

    sub-float/2addr v13, v14

    aput v13, v12, v10

    .line 137
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v12, v12, v8

    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v13, v13, v8

    mul-float/2addr v11, v9

    sub-float/2addr v13, v11

    aput v13, v12, v10

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 139
    :cond_e4
    sget v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 103
    :cond_ea
    :goto_ea
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3d

    .line 142
    :cond_ee
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v1, :cond_15d

    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/16 v2, 0x28

    if-ge v1, v2, :cond_15d

    .line 143
    sget v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_fe
    .catchall {:try_start_ab .. :try_end_fe} :catchall_15e

    .line 145
    :try_start_fe
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

    const-string v2, " img="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rot0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    aget v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_fe .. :try_end_15b} :catchall_15c

    .line 150
    goto :goto_15d

    .line 149
    :catchall_15c
    move-exception v0

    .line 158
    :cond_15d
    :goto_15d
    goto :goto_181

    .line 152
    :catchall_15e
    move-exception v1

    .line 153
    sput v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 155
    :try_start_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nFX ERR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_161 .. :try_end_17f} :catchall_180

    .line 157
    goto :goto_181

    .line 156
    :catchall_180
    move-exception v0

    .line 159
    :goto_181
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method
