.class public Laoc/kingdoms/lukasz/map/battles/AirMissileCore;
.super Ljava/lang/Object;
.source "AirMissileCore.java"


# static fields
.field public static final LEGACY_SPEED:F = 67.5f

.field public static NX:F

.field public static NY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advance(FFFFF)F
    .registers 10

    .line 32
    sub-float v0, p2, p0

    .line 33
    sub-float v1, p3, p1

    .line 34
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 35
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-lez v4, :cond_2d

    cmpg-float v4, p4, v3

    if-gtz v4, :cond_19

    goto :goto_2d

    .line 40
    :cond_19
    cmpl-float v3, p4, v2

    if-ltz v3, :cond_22

    .line 41
    sput p2, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 42
    sput p3, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 43
    return v2

    .line 45
    :cond_22
    div-float p2, p4, v2

    .line 46
    mul-float/2addr v0, p2

    add-float/2addr p0, v0

    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 47
    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 48
    return p4

    .line 36
    :cond_2d
    :goto_2d
    sput p0, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NX:F

    .line 37
    sput p1, Laoc/kingdoms/lukasz/map/battles/AirMissileCore;->NY:F

    .line 38
    return v3
.end method

.method public static contact(FFFFF)Z
    .registers 7

    .line 53
    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_6

    .line 54
    move p4, v0

    .line 56
    :cond_6
    sub-float/2addr p2, p0

    .line 57
    sub-float/2addr p3, p1

    .line 58
    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    mul-float/2addr p4, p4

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static flightHours(IIF)I
    .registers 4

    .line 67
    nop

    .line 68
    const/4 v0, 0x2

    if-lez p1, :cond_b

    if-lez p0, :cond_b

    .line 69
    mul-int/lit8 p0, p0, 0x5

    div-int/2addr p0, p1

    add-int/2addr p0, v0

    goto :goto_c

    .line 71
    :cond_b
    move p0, v0

    :goto_c
    if-ge p0, v0, :cond_f

    .line 72
    move p0, v0

    .line 74
    :cond_f
    const/16 p1, 0x8

    if-le p0, p1, :cond_14

    .line 75
    move p0, p1

    .line 77
    :cond_14
    nop

    .line 78
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1e

    .line 79
    const/high16 p1, 0x42870000    # 67.5f

    div-float/2addr p1, p2

    goto :goto_20

    .line 78
    :cond_1e
    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    :goto_20
    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 82
    const/4 p1, 0x1

    if-ge p0, p1, :cond_2a

    .line 83
    move p0, p1

    .line 85
    :cond_2a
    mul-int/2addr p0, v0

    return p0
.end method
