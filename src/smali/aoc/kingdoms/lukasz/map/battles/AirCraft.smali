.class public final Laoc/kingdoms/lukasz/map/battles/AirCraft;
.super Ljava/lang/Object;
.source "AirCraft.java"


# static fields
.field public static final ARRIVE_RADIUS:F = 2.0f

.field public static final MAX_DT_TURNS:F = 0.5f

.field public static final SPEED_K:F = 0.05f

.field public static final TURN_AGILITY:F = 100.0f

.field public static final TURN_BASE:F = 40.0f

.field public static final TURN_EXP:F = 1.5f

.field public static final TURN_SCALE:F = 0.7f


# instance fields
.field public agility:F

.field public fuel:F

.field public heading:F

.field public speedPxPerTurn:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .registers 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    .line 55
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    .line 56
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    .line 57
    invoke-static {p4}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedFor(F)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    .line 58
    iput p5, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->agility:F

    .line 59
    iput p6, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    .line 60
    return-void
.end method

.method public static sampleRoute(FFFFFFFFI)[F
    .registers 21

    .line 161
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p8

    new-instance v10, Laoc/kingdoms/lukasz/map/battles/AirCraft;

    sub-float v3, v1, p1

    float-to-double v3, v3

    sub-float v5, v0, p0

    float-to-double v5, v5

    .line 162
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v6, v3

    move-object v3, v10

    move v4, p0

    move v5, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/map/battles/AirCraft;-><init>(FFFFFF)V

    .line 164
    mul-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [F

    .line 165
    nop

    .line 166
    iget v5, v10, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 167
    iget v5, v10, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    const/4 v7, 0x1

    aput v5, v3, v7

    .line 168
    move v5, v6

    :goto_36
    if-ge v5, v2, :cond_50

    .line 169
    move/from16 v7, p7

    invoke-virtual {v10, v7, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->step(FFF)Z

    move-result v8

    .line 170
    add-int/lit8 v9, v4, 0x1

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    aput v11, v3, v4

    .line 171
    add-int/lit8 v4, v9, 0x1

    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    aput v11, v3, v9

    .line 172
    if-nez v8, :cond_4d

    .line 173
    goto :goto_50

    .line 168
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 176
    :cond_50
    :goto_50
    new-array v0, v4, [F

    .line 177
    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method public static speedFor(F)F
    .registers 3

    .line 64
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_6

    .line 65
    return v0

    .line 67
    :cond_6
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, v0

    return p0
.end method

.method public static turnRateFor(F)F
    .registers 5

    .line 72
    nop

    .line 73
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_8

    .line 74
    move p0, v0

    goto :goto_f

    .line 75
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_f

    .line 76
    move p0, v0

    .line 78
    :cond_f
    :goto_f
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p0, v0

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public distTo(FF)F
    .registers 4

    .line 92
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    sub-float/2addr p1, v0

    .line 93
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    sub-float/2addr p2, v0

    .line 94
    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public step(FFF)Z
    .registers 10

    .line 106
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_b8

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_b8

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_14

    goto/16 :goto_b8

    .line 109
    :cond_14
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_1b

    .line 110
    move p1, v1

    .line 112
    :cond_1b
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    sub-float/2addr p2, v1

    .line 113
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    sub-float/2addr p3, v1

    .line 114
    mul-float v1, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 115
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_33

    .line 116
    return v2

    .line 119
    :cond_33
    float-to-double v2, p3

    float-to-double p2, p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 120
    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    sub-float/2addr p2, p3

    .line 121
    :goto_41
    const/high16 p3, 0x43340000    # 180.0f

    cmpl-float v2, p2, p3

    const/high16 v3, 0x43b40000    # 360.0f

    if-lez v2, :cond_4b

    .line 122
    sub-float/2addr p2, v3

    goto :goto_41

    .line 124
    :cond_4b
    :goto_4b
    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_53

    .line 125
    add-float/2addr p2, v3

    goto :goto_4b

    .line 127
    :cond_53
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->agility:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->turnRateFor(F)F

    move-result v4

    mul-float/2addr v4, p1

    .line 128
    cmpl-float v5, p2, v4

    if-lez v5, :cond_60

    .line 129
    move p2, v4

    goto :goto_66

    .line 130
    :cond_60
    neg-float v4, v4

    cmpg-float v5, p2, v4

    if-gez v5, :cond_66

    .line 131
    move p2, v4

    .line 133
    :cond_66
    :goto_66
    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    add-float/2addr v4, p2

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    .line 134
    :goto_6b
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_77

    .line 135
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    sub-float/2addr p2, v3

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    goto :goto_6b

    .line 137
    :cond_77
    :goto_77
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_83

    .line 138
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    add-float/2addr p2, v3

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    goto :goto_77

    .line 140
    :cond_83
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    mul-float/2addr p2, p1

    .line 141
    cmpl-float p3, p2, v1

    if-lez p3, :cond_8b

    .line 142
    goto :goto_8c

    .line 141
    :cond_8b
    move v1, p2

    .line 144
    :goto_8c
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->heading:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 145
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->x:F

    .line 146
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p2, v1

    add-float/2addr v2, p2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->y:F

    .line 147
    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    sub-float/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    .line 148
    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b6

    .line 149
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->fuel:F

    .line 151
    :cond_b6
    const/4 p1, 0x1

    return p1

    .line 107
    :cond_b8
    :goto_b8
    return v2
.end method

.method public turnRadius()F
    .registers 5

    .line 83
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->agility:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirCraft;->turnRateFor(F)F

    move-result v0

    .line 84
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1c

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_12

    goto :goto_1c

    .line 87
    :cond_12
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirCraft;->speedPxPerTurn:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    return v1

    .line 85
    :cond_1c
    :goto_1c
    return v2
.end method
