.class public final Laoc/kingdoms/lukasz/map/province/AirRadarTex;
.super Ljava/lang/Object;
.source "AirRadarTex.java"


# static fields
.field private static final PACK_WHITE:I = -0x100

.field private static final PERIOD_MS:F = 3000.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static fabric(IIIF)[I
    .registers 16

    .line 36
    mul-int v0, p0, p0

    new-array v0, v0, [I

    .line 37
    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    .line 38
    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 39
    nop

    .line 40
    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v6, p0, :cond_61

    .line 41
    move v7, v5

    :goto_15
    if-ge v7, p0, :cond_5e

    .line 42
    int-to-float v8, v7

    sub-float/2addr v8, v4

    .line 43
    int-to-float v9, v6

    sub-float/2addr v9, v4

    .line 44
    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v8, v1

    .line 45
    cmpl-float v9, v8, v3

    if-lez v9, :cond_2f

    .line 46
    mul-int v8, v6, p0

    add-int/2addr v8, v7

    aput v5, v0, v8

    .line 47
    goto :goto_5b

    .line 50
    :cond_2f
    cmpg-float v9, v8, p3

    const/high16 v10, 0x437f0000    # 255.0f

    if-gtz v9, :cond_38

    .line 51
    int-to-float v8, p1

    div-float/2addr v8, v10

    goto :goto_51

    .line 53
    :cond_38
    sub-float/2addr v8, p3

    sub-float v9, v3, p3

    div-float/2addr v8, v9

    .line 54
    cmpl-float v9, v8, v3

    if-lez v9, :cond_41

    .line 55
    move v8, v3

    .line 58
    :cond_41
    mul-float v9, v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v8, v11

    const/high16 v11, 0x40400000    # 3.0f

    sub-float/2addr v11, v8

    mul-float/2addr v9, v11

    .line 59
    int-to-float v8, p1

    sub-int v11, p2, p1

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v8, v11

    div-float/2addr v8, v10

    .line 61
    :goto_51
    mul-float/2addr v8, v10

    add-float/2addr v8, v2

    float-to-int v8, v8

    .line 62
    mul-int v9, v6, p0

    add-int/2addr v9, v7

    or-int/lit16 v8, v8, -0x100

    aput v8, v0, v9

    .line 41
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 40
    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 65
    :cond_61
    return-object v0
.end method

.method public static rotation()F
    .registers 4

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    rem-long/2addr v0, v2

    .line 24
    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static sweep(IFFF)[I
    .registers 18

    .line 77
    move v0, p0

    mul-int v1, v0, v0

    new-array v1, v1, [I

    .line 78
    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    .line 79
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 80
    nop

    .line 81
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v0, :cond_a4

    .line 82
    move v8, v6

    :goto_16
    if-ge v8, v0, :cond_a0

    .line 83
    int-to-float v9, v8

    sub-float/2addr v9, v5

    .line 84
    int-to-float v10, v7

    sub-float/2addr v10, v5

    .line 85
    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v11, v2

    .line 86
    cmpl-float v12, v11, v4

    if-lez v12, :cond_33

    .line 87
    mul-int v9, v7, v0

    add-int/2addr v9, v8

    aput v6, v1, v9

    .line 88
    goto/16 :goto_9c

    .line 91
    :cond_33
    float-to-double v12, v10

    float-to-double v9, v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v9, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v9, v12

    double-to-float v9, v9

    .line 92
    const/4 v10, 0x0

    cmpg-float v12, v9, v10

    const/high16 v13, 0x43b40000    # 360.0f

    if-gez v12, :cond_4e

    .line 93
    add-float/2addr v9, v13

    .line 95
    :cond_4e
    sub-float v9, p3, v9

    .line 96
    :goto_50
    cmpg-float v12, v9, v10

    if-gez v12, :cond_56

    .line 97
    add-float/2addr v9, v13

    goto :goto_50

    .line 99
    :cond_56
    :goto_56
    cmpl-float v12, v9, v13

    if-ltz v12, :cond_5c

    .line 100
    sub-float/2addr v9, v13

    goto :goto_56

    .line 102
    :cond_5c
    nop

    .line 103
    cmpg-float v12, v9, p1

    if-gez v12, :cond_66

    .line 104
    div-float/2addr v9, p1

    .line 105
    sub-float v9, v4, v9

    mul-float/2addr v9, v9

    goto :goto_67

    .line 103
    :cond_66
    move v9, v10

    .line 108
    :goto_67
    const v12, 0x3d23d70a    # 0.04f

    sub-float v12, v11, v12

    const v13, 0x3e6147ae    # 0.22f

    div-float/2addr v12, v13

    .line 109
    cmpl-float v13, v12, v4

    if-lez v13, :cond_75

    .line 110
    move v12, v4

    .line 112
    :cond_75
    cmpg-float v13, v12, v10

    if-gez v13, :cond_7a

    .line 113
    move v12, v10

    .line 115
    :cond_7a
    sub-float v11, v4, v11

    const v13, 0x3e4ccccd    # 0.2f

    div-float/2addr v11, v13

    .line 116
    cmpl-float v13, v11, v4

    if-lez v13, :cond_85

    .line 117
    move v11, v4

    .line 119
    :cond_85
    cmpg-float v13, v11, v10

    if-gez v13, :cond_8a

    .line 120
    goto :goto_8b

    .line 119
    :cond_8a
    move v10, v11

    .line 122
    :goto_8b
    mul-float/2addr v9, v12

    mul-float/2addr v9, v10

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v11, p2, v10

    mul-float/2addr v9, v11

    .line 123
    mul-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-int v9, v9

    .line 124
    mul-int v10, v7, v0

    add-int/2addr v10, v8

    or-int/lit16 v9, v9, -0x100

    aput v9, v1, v10

    .line 82
    :goto_9c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_16

    .line 81
    :cond_a0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13

    .line 127
    :cond_a4
    return-object v1
.end method
