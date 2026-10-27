.class public final Laoc/kingdoms/lukasz/map/battles/AirProjectile;
.super Ljava/lang/Object;
.source "AirProjectile.java"


# static fields
.field public static final MAX_DT_TURNS:F = 0.5f

.field public static final RESULT_EXPIRED:I = 0x2

.field public static final RESULT_FLYING:I = 0x0

.field public static final RESULT_HIT:I = 0x1

.field public static final RESULT_LOST:I = 0x3


# instance fields
.field public ageTurns:F

.field public alive:Z

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
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static create(IIFFFJIFF)Laoc/kingdoms/lukasz/map/battles/AirProjectile;
    .registers 11

    .line 79
    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;-><init>()V

    .line 80
    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 81
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ownerCiv:I

    .line 82
    iput-wide p5, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetMissionID:J

    .line 83
    iput p7, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetProvinceID:I

    .line 84
    iput p2, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 85
    iput p3, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 86
    iput p4, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 87
    iput p8, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 88
    iput p9, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 89
    const/4 p0, 0x1

    iput-boolean p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 90
    const/4 p0, 0x0

    iput p0, v0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 91
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->applyType()V

    .line 92
    return-object v0
.end method

.method private settle(I)I
    .registers 3

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    .line 183
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    .line 184
    return p1
.end method

.method public static wrap180(F)F
    .registers 3

    .line 189
    nop

    :goto_1
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_b

    .line 190
    sub-float/2addr p0, v1

    goto :goto_1

    .line 192
    :cond_b
    :goto_b
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 193
    add-float/2addr p0, v1

    goto :goto_b

    .line 195
    :cond_13
    return p0
.end method


# virtual methods
.method public applyType()V
    .registers 3

    .line 97
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 98
    if-ltz v0, :cond_a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->count()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 99
    :cond_a
    const/4 v0, 0x0

    .line 101
    :cond_b
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->typeIdx:I

    .line 102
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->speedOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    .line 103
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->turnOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    .line 104
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->hitRadiusOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    .line 105
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->lifeOf(I)F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    .line 106
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->launcherOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->launcher:I

    .line 107
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->targetOf(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->targetKind:I

    .line 108
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->warheadOf(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->warhead:I

    .line 109
    return-void
.end method

.method public distTo(FF)F
    .registers 4

    .line 113
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float/2addr p1, v0

    .line 114
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float/2addr p2, v0

    .line 115
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

    .line 120
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
    .registers 12

    .line 129
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->alive:Z

    if-nez v0, :cond_7

    .line 130
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return p1

    .line 132
    :cond_7
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->tx:F

    .line 133
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ty:F

    .line 135
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->distTo(FF)F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gtz v0, :cond_1b

    .line 136
    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(I)I

    move-result p1

    return p1

    .line 138
    :cond_1b
    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-lez v2, :cond_ca

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_28

    goto/16 :goto_ca

    .line 141
    :cond_28
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2f

    .line 142
    move p1, v2

    .line 144
    :cond_2f
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    sub-float v2, p2, v2

    .line 145
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    sub-float v3, p3, v3

    .line 146
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 148
    float-to-double v5, v3

    float-to-double v2, v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 149
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    sub-float/2addr v2, v3

    .line 150
    :goto_50
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    const/high16 v5, 0x43b40000    # 360.0f

    if-lez v3, :cond_5a

    .line 151
    sub-float/2addr v2, v5

    goto :goto_50

    .line 153
    :cond_5a
    :goto_5a
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_62

    .line 154
    add-float/2addr v2, v5

    goto :goto_5a

    .line 156
    :cond_62
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->turnDeg:F

    mul-float/2addr v3, p1

    .line 157
    cmpl-float v5, v2, v3

    if-lez v5, :cond_6b

    .line 158
    move v2, v3

    goto :goto_71

    .line 159
    :cond_6b
    neg-float v3, v3

    cmpg-float v5, v2, v3

    if-gez v5, :cond_71

    .line 160
    move v2, v3

    .line 162
    :cond_71
    :goto_71
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    add-float/2addr v3, v2

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->wrap180(F)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    .line 163
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->speedPx:F

    mul-float/2addr v2, p1

    .line 164
    cmpl-float v3, v2, v4

    if-lez v3, :cond_82

    .line 165
    goto :goto_83

    .line 164
    :cond_82
    move v4, v2

    .line 167
    :goto_83
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->heading:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 168
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->x:F

    .line 169
    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->y:F

    .line 170
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    add-float/2addr v2, p1

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    .line 172
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->distTo(FF)F

    move-result p1

    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->hitRadius:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b4

    .line 173
    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(I)I

    move-result p1

    return p1

    .line 175
    :cond_b4
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c8

    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->ageTurns:F

    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->lifeTurns:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_c8

    .line 176
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->settle(I)I

    move-result p1

    return p1

    .line 178
    :cond_c8
    const/4 p1, 0x0

    return p1

    .line 139
    :cond_ca
    :goto_ca
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirProjectile;->result:I

    return p1
.end method
