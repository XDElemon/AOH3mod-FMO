.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;
.super Ljava/lang/Object;
.source "AirProjectileFx.java"


# static fields
.field public static final BODY:F = 20.0f

.field public static final CB:[F

.field public static final CG:[F

.field public static final CR:[F

.field public static DEBUG_BOX:Z = false

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

.field public static dbgDrawn:I

.field private static dbgFx:I

.field public static zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 26
    const/16 v0, 0x18

    new-array v1, v0, [I

    fill-array-data v1, :array_aa

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
    sput-boolean v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    .line 72
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    .line 74
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgDrawn:I

    return-void

    nop

    :array_aa
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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static bodySize()I
    .registers 1

    .line 93
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DEBUG_BOX:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_8

    :cond_6
    const/16 v0, 0x14

    :goto_8
    return v0
.end method

.method public static imageId()I
    .registers 1

    .line 85
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->airProj:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return v0

    .line 86
    :catchall_3
    move-exception v0

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public static prepare()I
    .registers 16

    .line 102
    const-string v0, ","

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 108
    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v3, :cond_15

    .line 109
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_17

    goto :goto_16

    .line 108
    :cond_15
    move v3, v2

    .line 112
    :goto_16
    goto :goto_19

    .line 111
    :catchall_17
    move-exception v3

    move v3, v2

    .line 114
    :goto_19
    :try_start_19
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v4, :cond_2c

    .line 115
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2f

    .line 116
    :try_start_23
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2a

    goto :goto_2e

    .line 118
    :catchall_2a
    move-exception v5

    goto :goto_31

    .line 114
    :cond_2c
    move v4, v1

    move v5, v4

    .line 119
    :goto_2e
    goto :goto_32

    .line 118
    :catchall_2f
    move-exception v4

    move v4, v1

    :goto_31
    move v5, v1

    .line 120
    :goto_32
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_38

    .line 121
    move v3, v2

    .line 123
    :cond_38
    :try_start_38
    sput v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    .line 124
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->slotCount()I

    move-result v6

    .line 125
    move v7, v1

    :goto_3f
    if-ge v7, v6, :cond_f0

    sget v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    const/16 v9, 0x100

    if-ge v8, v9, :cond_f0

    .line 126
    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirProjectileCore;->get(I)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v8

    .line 127
    if-eqz v8, :cond_ec

    iget-boolean v9, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v9, :cond_53

    .line 128
    goto/16 :goto_ec

    .line 130
    :cond_53
    sget v9, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 131
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    int-to-float v12, v4

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, v10, v9

    .line 132
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    int-to-float v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v3

    aput v11, v10, v9

    .line 133
    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 134
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, v12, v9

    .line 135
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    double-to-float v10, v10

    aput v10, v12, v9

    .line 136
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->ROT:[F

    iget v11, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    neg-float v11, v11

    aput v11, v10, v9
    :try_end_88
    .catchall {:try_start_38 .. :try_end_88} :catchall_1ae

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 141
    :try_start_8b
    iget v8, v8, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 142
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    .line 143
    if-eqz v8, :cond_a5

    .line 144
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v10
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_a9

    .line 145
    :try_start_97
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v11
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_a2

    .line 146
    :try_start_9b
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v8
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_a0

    goto :goto_a8

    .line 148
    :catchall_a0
    move-exception v8

    goto :goto_ac

    :catchall_a2
    move-exception v8

    move v11, v2

    goto :goto_ac

    .line 143
    :cond_a5
    move v8, v2

    move v10, v8

    move v11, v10

    .line 149
    :goto_a8
    goto :goto_ad

    .line 148
    :catchall_a9
    move-exception v8

    move v10, v2

    move v11, v10

    :goto_ac
    move v8, v2

    .line 150
    :goto_ad
    :try_start_ad
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CR:[F

    aput v10, v12, v9

    .line 151
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CG:[F

    aput v11, v10, v9

    .line 152
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->CB:[F

    aput v8, v10, v9

    .line 154
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DX:[F

    aget v8, v8, v9

    .line 155
    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->DY:[F

    aget v10, v10, v9

    .line 156
    move v11, v1

    :goto_c2
    const/16 v12, 0x18

    if-ge v11, v12, :cond_e6

    .line 157
    sget-object v12, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TRAIL_DIST:[F

    aget v12, v12, v11

    .line 158
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TX:[[F

    aget-object v13, v13, v9

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->X:[F

    aget v14, v14, v9

    mul-float v15, v8, v12

    sub-float/2addr v14, v15

    aput v14, v13, v11

    .line 159
    sget-object v13, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->TY:[[F

    aget-object v13, v13, v9

    sget-object v14, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->Y:[F

    aget v14, v14, v9

    mul-float/2addr v12, v10

    sub-float/2addr v14, v12

    aput v14, v13, v11

    .line 156
    add-int/lit8 v11, v11, 0x1

    goto :goto_c2

    .line 161
    :cond_e6
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 125
    :cond_ec
    :goto_ec
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3f

    .line 164
    :cond_f0
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    if-lez v2, :cond_1ad

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_1ad

    .line 165
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->dbgFx:I
    :try_end_100
    .catchall {:try_start_ad .. :try_end_100} :catchall_1ae

    .line 167
    :try_start_100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nFX n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->zoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " img="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->airProj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " use="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
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

    .line 167
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :try_end_1ab
    .catchall {:try_start_100 .. :try_end_1ab} :catchall_1ac

    .line 175
    goto :goto_1ad

    .line 174
    :catchall_1ac
    move-exception v0

    .line 183
    :cond_1ad
    :goto_1ad
    goto :goto_1d1

    .line 177
    :catchall_1ae
    move-exception v0

    .line 178
    sput v1, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    .line 180
    :try_start_1b1
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
    :try_end_1cf
    .catchall {:try_start_1b1 .. :try_end_1cf} :catchall_1d0

    .line 182
    goto :goto_1d1

    .line 181
    :catchall_1d0
    move-exception v0

    .line 184
    :goto_1d1
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirProjectileFx;->count:I

    return v0
.end method
