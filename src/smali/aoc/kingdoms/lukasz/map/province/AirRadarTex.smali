.class public final Laoc/kingdoms/lukasz/map/province/AirRadarTex;
.super Ljava/lang/Object;
.source "AirRadarTex.java"


# static fields
.field private static final PERIOD_MS:F = 3000.0f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static fabric(IIIF)[I
    .registers 16

    .line 33
    mul-int v0, p0, p0

    new-array v0, v0, [I

    .line 34
    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    .line 35
    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 36
    nop

    .line 37
    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v6, p0, :cond_65

    .line 38
    move v7, v5

    :goto_15
    if-ge v7, p0, :cond_62

    .line 39
    int-to-float v8, v7

    sub-float/2addr v8, v4

    .line 40
    int-to-float v9, v6

    sub-float/2addr v9, v4

    .line 41
    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v8, v1

    .line 42
    cmpl-float v9, v8, v3

    if-lez v9, :cond_2f

    .line 43
    mul-int v8, v6, p0

    add-int/2addr v8, v7

    aput v5, v0, v8

    .line 44
    goto :goto_5f

    .line 47
    :cond_2f
    cmpg-float v9, v8, p3

    const/high16 v10, 0x437f0000    # 255.0f

    if-gtz v9, :cond_38

    .line 48
    int-to-float v8, p1

    div-float/2addr v8, v10

    goto :goto_51

    .line 50
    :cond_38
    sub-float/2addr v8, p3

    sub-float v9, v3, p3

    div-float/2addr v8, v9

    .line 51
    cmpl-float v9, v8, v3

    if-lez v9, :cond_41

    .line 52
    move v8, v3

    .line 55
    :cond_41
    mul-float v9, v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v8, v11

    const/high16 v11, 0x40400000    # 3.0f

    sub-float/2addr v11, v8

    mul-float/2addr v9, v11

    .line 56
    int-to-float v8, p1

    sub-int v11, p2, p1

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v8, v11

    div-float/2addr v8, v10

    .line 58
    :goto_51
    mul-float/2addr v8, v10

    add-float/2addr v8, v2

    float-to-int v8, v8

    .line 59
    mul-int v9, v6, p0

    add-int/2addr v9, v7

    shl-int/lit8 v8, v8, 0x18

    const v10, 0xffffff

    or-int/2addr v8, v10

    aput v8, v0, v9

    .line 38
    :goto_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 37
    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 62
    :cond_65
    return-object v0
.end method

.method public static rotation()F
    .registers 4

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    rem-long/2addr v0, v2

    .line 21
    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static sweep(IFF)[I
    .registers 16

    .line 74
    mul-int v0, p0, p0

    new-array v0, v0, [I

    .line 75
    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    .line 76
    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 77
    nop

    .line 78
    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v6, p0, :cond_98

    .line 79
    move v7, v5

    :goto_15
    if-ge v7, p0, :cond_94

    .line 80
    int-to-float v8, v7

    sub-float/2addr v8, v4

    .line 81
    int-to-float v9, v6

    sub-float/2addr v9, v4

    .line 82
    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    div-float/2addr v10, v1

    .line 83
    cmpl-float v11, v10, v3

    if-lez v11, :cond_31

    .line 84
    mul-int v8, v6, p0

    add-int/2addr v8, v7

    aput v5, v0, v8

    .line 85
    goto :goto_91

    .line 88
    :cond_31
    float-to-double v11, v9

    float-to-double v8, v8

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v11, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v11

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v11

    double-to-float v8, v8

    .line 89
    const/4 v9, 0x0

    cmpg-float v11, v8, v9

    if-gez v11, :cond_4c

    .line 90
    const/high16 v11, 0x43b40000    # 360.0f

    add-float/2addr v8, v11

    .line 92
    :cond_4c
    nop

    .line 93
    nop

    .line 94
    cmpg-float v11, v8, p1

    if-gez v11, :cond_57

    .line 95
    div-float/2addr v8, p1

    .line 96
    sub-float v8, v3, v8

    mul-float/2addr v8, v8

    goto :goto_58

    .line 94
    :cond_57
    move v8, v9

    .line 99
    :goto_58
    const v11, 0x3d23d70a    # 0.04f

    sub-float v11, v10, v11

    const v12, 0x3e6147ae    # 0.22f

    div-float/2addr v11, v12

    .line 100
    cmpl-float v12, v11, v3

    if-lez v12, :cond_66

    .line 101
    move v11, v3

    .line 103
    :cond_66
    cmpg-float v12, v11, v9

    if-gez v12, :cond_6b

    .line 104
    move v11, v9

    .line 106
    :cond_6b
    sub-float v10, v3, v10

    const v12, 0x3e4ccccd    # 0.2f

    div-float/2addr v10, v12

    .line 107
    cmpl-float v12, v10, v3

    if-lez v12, :cond_76

    .line 108
    move v10, v3

    .line 110
    :cond_76
    cmpg-float v12, v10, v9

    if-gez v12, :cond_7b

    .line 111
    goto :goto_7c

    .line 110
    :cond_7b
    move v9, v10

    .line 113
    :goto_7c
    mul-float/2addr v8, v11

    mul-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v10, p2, v9

    mul-float/2addr v8, v10

    .line 114
    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    float-to-int v8, v8

    .line 115
    mul-int v9, v6, p0

    add-int/2addr v9, v7

    shl-int/lit8 v8, v8, 0x18

    const v10, 0xffffff

    or-int/2addr v8, v10

    aput v8, v0, v9

    .line 79
    :goto_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 78
    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    .line 118
    :cond_98
    return-object v0
.end method
