.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectile;
.super Ljava/lang/Object;
.source "AirProjectile.java"


# static fields
.field private static final HIT_DIRECT:[F

.field private static final HIT_FUSED:[F

.field public static final MAX_DT_TURNS:F = 0.5f

.field public static final RESULT_EXPIRED:I = 0x2

.field public static final RESULT_FLYING:I = 0x0

.field public static final RESULT_HIT:I = 0x1

.field public static final RESULT_LOST:I = 0x3


# instance fields
.field public ageTurns:F

.field public alive:Z

.field public dirX:F

.field public dirY:F

.field public fuseRadius:F

.field public fused:Z

.field public hasDir:Z

.field public heading:F

.field public hitRadius:F

.field public launcher:I

.field public lifeTurns:F

.field public lodDt:F

.field public lodSkips:I

.field public ownerCiv:I

.field public result:I

.field public shooterMissionID:J

.field public speedPx:F

.field public targetKind:I

.field public targetMissionID:J

.field public targetProvinceID:I

.field public turnDeg:F

.field public tx:F

.field public ty:F

.field public typeIdx:I

.field public warhead:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 283
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_DIRECT:[F

    .line 284
    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_FUSED:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private contactKind(FF)[F
    .registers 3

    .line 273
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->distTo(FF)F

    move-result p1

    .line 274
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_d

    .line 275
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_DIRECT:[F

    return-object p1

    .line 277
    :cond_d
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_16

    .line 278
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_FUSED:[F

    return-object p1

    .line 280
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public static create(IIFFFJIFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 23

    .line 102
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v12}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->create(IIFFFJIFFFFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    move-result-object v0

    return-object v0
.end method

.method public static create(IIFFFJIFFFFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 14

    .line 116
    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;-><init>()V

    .line 117
    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 118
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 119
    iput-wide p5, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    .line 120
    iput p7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    .line 121
    iput p2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 122
    iput p3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 123
    iput p4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 124
    iput p8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 125
    iput p9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 126
    const/4 p0, 0x1

    iput-boolean p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 127
    const/4 p0, 0x0

    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 128
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->applyType()V

    .line 129
    const/4 p0, 0x0

    cmpl-float p1, p10, p0

    if-lez p1, :cond_27

    .line 130
    iput p10, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    .line 132
    :cond_27
    cmpl-float p1, p11, p0

    if-lez p1, :cond_2d

    .line 133
    iput p11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 135
    :cond_2d
    cmpl-float p0, p12, p0

    if-lez p0, :cond_33

    .line 136
    iput p12, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 138
    :cond_33
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    iget p1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3f

    .line 139
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 141
    :cond_3f
    return-object v0
.end method

.method private settle(I)I
    .registers 3

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result p1

    return p1
.end method

.method private settle(IZ)I
    .registers 4

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 263
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 264
    iput-boolean p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    .line 265
    return p1
.end method

.method public static wrap180(F)F
    .registers 3

    .line 288
    nop

    :goto_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_b

    .line 289
    sub-float/2addr p0, v1

    goto :goto_1

    .line 291
    :cond_b
    :goto_b
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 292
    add-float/2addr p0, v1

    goto :goto_b

    .line 294
    :cond_13
    return p0
.end method


# virtual methods
.method public applyType()V
    .registers 4

    .line 146
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 147
    if-ltz v0, :cond_a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 148
    :cond_a
    const/4 v0, 0x0

    .line 150
    :cond_b
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 151
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    .line 152
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->turnOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    .line 153
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->hitRadiusOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    .line 154
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->fuseRadiusOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 155
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    .line 156
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 158
    :cond_31
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 159
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->launcherOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->launcher:I

    .line 160
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->targetOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetKind:I

    .line 161
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->warheadOf(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->warhead:I

    .line 162
    return-void
.end method

.method public distTo(FF)F
    .registers 4

    .line 166
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float/2addr p1, v0

    .line 167
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float/2addr p2, v0

    .line 168
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public isHoming()Z
    .registers 5

    .line 173
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public step(FFF)I
    .registers 19

    .line 182
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v3, :cond_c

    .line 183
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return v1

    .line 185
    :cond_c
    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 186
    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 188
    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->contactKind(FF)[F

    move-result-object v3

    .line 189
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_26

    .line 190
    aget v1, v3, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_21

    move v5, v6

    :cond_21
    invoke-direct {p0, v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result v1

    return v1

    .line 192
    :cond_26
    const/4 v3, 0x0

    cmpg-float v7, p1, v3

    if-lez v7, :cond_137

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_33

    goto/16 :goto_137

    .line 195
    :cond_33
    cmpl-float v7, p1, v4

    if-lez v7, :cond_39

    .line 196
    move v7, v4

    goto :goto_3b

    .line 195
    :cond_39
    move/from16 v7, p1

    .line 198
    :goto_3b
    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float v8, v1, v8

    .line 199
    iget v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float v9, v2, v9

    .line 200
    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 201
    const v11, 0x38d1b717    # 1.0E-4f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_58

    .line 202
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return v1

    .line 204
    :cond_58
    iget-boolean v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hasDir:Z

    if-nez v11, :cond_73

    .line 205
    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 206
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    iput v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    .line 207
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    .line 208
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hasDir:Z

    .line 211
    :cond_73
    div-float/2addr v8, v10

    .line 212
    div-float/2addr v9, v10

    .line 213
    iget v11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    mul-float/2addr v11, v7

    .line 214
    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v13, v11, v12

    if-lez v13, :cond_7f

    .line 215
    move v11, v12

    .line 217
    :cond_7f
    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 218
    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    mul-float/2addr v12, v8

    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    .line 219
    iget v13, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    mul-float/2addr v13, v9

    iget v14, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    .line 220
    cmpl-float v14, v12, v3

    if-lez v14, :cond_aa

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpg-float v3, v14, v3

    if-gtz v3, :cond_aa

    .line 221
    iput v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    .line 222
    iput v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    goto :goto_ef

    .line 224
    :cond_aa
    float-to-double v3, v13

    float-to-double v8, v12

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 225
    cmpl-float v4, v3, v11

    if-lez v4, :cond_b6

    .line 226
    goto :goto_bd

    .line 227
    :cond_b6
    neg-float v11, v11

    cmpg-float v4, v3, v11

    if-gez v4, :cond_bc

    .line 228
    goto :goto_bd

    .line 227
    :cond_bc
    move v11, v3

    .line 230
    :goto_bd
    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 232
    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    mul-float/2addr v4, v8

    iget v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    mul-float/2addr v9, v3

    sub-float/2addr v4, v9

    .line 233
    iget v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    mul-float/2addr v9, v3

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    mul-float/2addr v3, v8

    add-float/2addr v9, v3

    .line 234
    iput v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    .line 235
    iput v9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    .line 237
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    float-to-double v3, v3

    iget v8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    float-to-double v8, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->wrap180(F)F

    move-result v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 239
    :goto_ef
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    mul-float/2addr v3, v7

    .line 240
    cmpl-float v4, v3, v10

    if-lez v4, :cond_f7

    .line 241
    goto :goto_f8

    .line 240
    :cond_f7
    move v10, v3

    .line 243
    :goto_f8
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirX:F

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 244
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->dirY:F

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 245
    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v3, v7

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 247
    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->contactKind(FF)[F

    move-result-object v1

    .line 248
    if-eqz v1, :cond_121

    .line 249
    aget v1, v1, v5

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11c

    move v5, v6

    :cond_11c
    invoke-direct {p0, v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result v1

    return v1

    .line 251
    :cond_121
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_136

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_136

    .line 252
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(I)I

    move-result v1

    return v1

    .line 254
    :cond_136
    return v5

    .line 193
    :cond_137
    :goto_137
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return v1
.end method
