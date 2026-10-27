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

.field public fuseRadius:F

.field public fused:Z

.field public heading:F

.field public hitRadius:F

.field public launcher:I

.field public lifeTurns:F

.field public ownerCiv:I

.field public result:I

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

    .line 245
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_DIRECT:[F

    .line 246
    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_FUSED:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private contactKind(FF)[F
    .registers 3

    .line 235
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->distTo(FF)F

    move-result p1

    .line 236
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_d

    .line 237
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_DIRECT:[F

    return-object p1

    .line 239
    :cond_d
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_16

    .line 240
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->HIT_FUSED:[F

    return-object p1

    .line 242
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public static create(IIFFFJIFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 23

    .line 85
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

    .line 99
    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;-><init>()V

    .line 100
    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 101
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 102
    iput-wide p5, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    .line 103
    iput p7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    .line 104
    iput p2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 105
    iput p3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 106
    iput p4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 107
    iput p8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 108
    iput p9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 109
    const/4 p0, 0x1

    iput-boolean p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 110
    const/4 p0, 0x0

    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 111
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->applyType()V

    .line 112
    const/4 p0, 0x0

    cmpl-float p1, p10, p0

    if-lez p1, :cond_27

    .line 113
    iput p10, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    .line 115
    :cond_27
    cmpl-float p1, p11, p0

    if-lez p1, :cond_2d

    .line 116
    iput p11, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 118
    :cond_2d
    cmpl-float p0, p12, p0

    if-lez p0, :cond_33

    .line 119
    iput p12, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 121
    :cond_33
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    iget p1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3f

    .line 122
    iget p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 124
    :cond_3f
    return-object v0
.end method

.method private settle(I)I
    .registers 3

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result p1

    return p1
.end method

.method private settle(IZ)I
    .registers 4

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 225
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 226
    iput-boolean p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fused:Z

    .line 227
    return p1
.end method

.method public static wrap180(F)F
    .registers 3

    .line 250
    nop

    :goto_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_b

    .line 251
    sub-float/2addr p0, v1

    goto :goto_1

    .line 253
    :cond_b
    :goto_b
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 254
    add-float/2addr p0, v1

    goto :goto_b

    .line 256
    :cond_13
    return p0
.end method


# virtual methods
.method public applyType()V
    .registers 4

    .line 129
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 130
    if-ltz v0, :cond_a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 131
    :cond_a
    const/4 v0, 0x0

    .line 133
    :cond_b
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 134
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    .line 135
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->turnOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    .line 136
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->hitRadiusOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    .line 137
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->fuseRadiusOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 138
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    .line 139
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->fuseRadius:F

    .line 141
    :cond_31
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 142
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->launcherOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->launcher:I

    .line 143
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->targetOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetKind:I

    .line 144
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->warheadOf(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->warhead:I

    .line 145
    return-void
.end method

.method public distTo(FF)F
    .registers 4

    .line 149
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float/2addr p1, v0

    .line 150
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float/2addr p2, v0

    .line 151
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

    .line 156
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
    .registers 14

    .line 165
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v0, :cond_7

    .line 166
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return p1

    .line 168
    :cond_7
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 169
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 171
    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->contactKind(FF)[F

    move-result-object v0

    .line 172
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 173
    aget p1, v0, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1c

    move v3, v2

    :cond_1c
    invoke-direct {p0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result p1

    return p1

    .line 175
    :cond_21
    const/4 v0, 0x0

    cmpg-float v4, p1, v0

    if-lez v4, :cond_d0

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_2e

    goto/16 :goto_d0

    .line 178
    :cond_2e
    cmpl-float v4, p1, v1

    if-lez v4, :cond_33

    .line 179
    move p1, v1

    .line 181
    :cond_33
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float v4, p2, v4

    .line 182
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float v5, p3, v5

    .line 183
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 185
    float-to-double v7, v5

    float-to-double v4, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 186
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    sub-float/2addr v4, v5

    .line 187
    :goto_54
    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v5, v4, v5

    const/high16 v7, 0x43b40000    # 360.0f

    if-lez v5, :cond_5e

    .line 188
    sub-float/2addr v4, v7

    goto :goto_54

    .line 190
    :cond_5e
    :goto_5e
    const/high16 v5, -0x3ccc0000    # -180.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_66

    .line 191
    add-float/2addr v4, v7

    goto :goto_5e

    .line 193
    :cond_66
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    mul-float/2addr v5, p1

    .line 194
    cmpl-float v7, v4, v5

    if-lez v7, :cond_6f

    .line 195
    move v4, v5

    goto :goto_75

    .line 196
    :cond_6f
    neg-float v5, v5

    cmpg-float v7, v4, v5

    if-gez v7, :cond_75

    .line 197
    move v4, v5

    .line 199
    :cond_75
    :goto_75
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    add-float/2addr v5, v4

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->wrap180(F)F

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 200
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    mul-float/2addr v4, p1

    .line 201
    cmpl-float v5, v4, v6

    if-lez v5, :cond_86

    .line 202
    goto :goto_87

    .line 201
    :cond_86
    move v6, v4

    .line 204
    :goto_87
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 205
    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 206
    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v7, v4

    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 207
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v4, p1

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 209
    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->contactKind(FF)[F

    move-result-object p1

    .line 210
    if-eqz p1, :cond_bb

    .line 211
    aget p1, p1, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_b6

    move v3, v2

    :cond_b6
    invoke-direct {p0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(IZ)I

    move-result p1

    return p1

    .line 213
    :cond_bb
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_cf

    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_cf

    .line 214
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(I)I

    move-result p1

    return p1

    .line 216
    :cond_cf
    return v3

    .line 176
    :cond_d0
    :goto_d0
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return p1
.end method
