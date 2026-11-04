.class public final Laoc/kingdoms/lukasz/map/battles/AirAgmMath;
.super Ljava/lang/Object;
.source "AirAgmMath.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static lifeFor(FFF)F
    .registers 5

    .line 31
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_17

    cmpg-float v1, p0, v0

    if-lez v1, :cond_17

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_e

    goto :goto_17

    .line 34
    :cond_e
    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p0, p2

    mul-float/2addr p0, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0

    .line 32
    :cond_17
    :goto_17
    return v0
.end method

.method public static rollHit(FF)Z
    .registers 6

    .line 39
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_7

    .line 40
    return v2

    .line 42
    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v3, 0x1

    if-ltz v1, :cond_f

    .line 43
    return v3

    .line 45
    :cond_f
    cmpl-float v0, p0, v0

    if-ltz v0, :cond_18

    cmpg-float p0, p0, p1

    if-gez p0, :cond_18

    move v2, v3

    :cond_18
    return v2
.end method

.method public static shotsFor(II)I
    .registers 2

    .line 17
    if-lez p0, :cond_a

    if-gtz p1, :cond_5

    goto :goto_a

    .line 20
    :cond_5
    if-ge p0, p1, :cond_8

    goto :goto_9

    :cond_8
    move p0, p1

    :goto_9
    return p0

    .line 18
    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method
