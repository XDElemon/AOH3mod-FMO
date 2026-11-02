.class public final Laoc/kingdoms/lukasz/map/battles/AirSalvo;
.super Ljava/lang/Object;
.source "AirSalvo.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static needed(FFI)I
    .registers 6

    .line 32
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_7

    .line 33
    return v2

    .line 35
    :cond_7
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 36
    if-lez p2, :cond_e

    goto :goto_f

    :cond_e
    move p2, v2

    :goto_f
    return p2

    .line 38
    :cond_10
    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 39
    const/4 p1, 0x1

    if-ge p0, p1, :cond_1b

    move p0, p1

    :cond_1b
    return p0
.end method

.method public static shots(IIII)I
    .registers 5

    .line 52
    const/4 v0, 0x0

    if-lez p0, :cond_14

    if-gtz p1, :cond_6

    goto :goto_14

    .line 55
    :cond_6
    sub-int/2addr p2, p3

    .line 56
    if-gtz p2, :cond_a

    .line 57
    return v0

    .line 59
    :cond_a
    nop

    .line 60
    if-le p2, p0, :cond_e

    .line 61
    goto :goto_f

    .line 60
    :cond_e
    move p0, p2

    .line 63
    :goto_f
    if-le p0, p1, :cond_12

    .line 64
    goto :goto_13

    .line 63
    :cond_12
    move p1, p0

    .line 66
    :goto_13
    return p1

    .line 53
    :cond_14
    :goto_14
    return v0
.end method
