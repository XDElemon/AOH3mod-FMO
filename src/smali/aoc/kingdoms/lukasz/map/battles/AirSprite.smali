.class public final Laoc/kingdoms/lukasz/map/battles/AirSprite;
.super Ljava/lang/Object;
.source "AirSprite.java"


# static fields
.field public static final AID_MAX:I = 0x3f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static aidOfRow(II)I
    .registers 4

    .line 56
    const/4 v0, 0x7

    if-lt p0, v0, :cond_15

    const/16 v1, 0xa

    if-gt p0, v1, :cond_15

    if-ltz p1, :cond_15

    const/16 v1, 0xf

    if-le p1, v1, :cond_e

    goto :goto_15

    .line 59
    :cond_e
    mul-int/lit8 p1, p1, 0x4

    sub-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr p1, p0

    return p1

    .line 57
    :cond_15
    :goto_15
    const/4 p0, -0x1

    return p0
.end method

.method public static imageForCiv(II)I
    .registers 3

    .line 69
    if-ltz p1, :cond_13

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_13

    .line 72
    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->best(III)I

    move-result p0

    .line 73
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirSprite;->imageOf(I)I

    move-result p0

    return p0

    .line 70
    :cond_13
    :goto_13
    const/4 p0, -0x1

    return p0
.end method

.method public static imageForTypeOrdinal(II)I
    .registers 3

    .line 78
    if-ltz p1, :cond_d

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_d

    .line 81
    :cond_6
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirSprite;->imageForCiv(II)I

    move-result p0

    return p0

    .line 79
    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method public static imageOf(I)I
    .registers 3

    .line 41
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirSprite;->packOf(I)I

    move-result p0

    .line 42
    if-gez p0, :cond_8

    .line 43
    const/4 p0, -0x1

    return p0

    .line 45
    :cond_8
    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 p0, p0, 0xf

    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I

    move-result p0

    return p0
.end method

.method public static imageOfRow(II)I
    .registers 2

    .line 64
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirSprite;->aidOfRow(II)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirSprite;->imageOf(I)I

    move-result p0

    return p0
.end method

.method public static packOf(I)I
    .registers 3

    .line 33
    if-ltz p0, :cond_18

    const/16 v0, 0x3f

    if-le p0, v0, :cond_7

    goto :goto_18

    .line 36
    :cond_7
    shr-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3

    or-int/2addr p0, v0

    return p0

    .line 34
    :cond_18
    :goto_18
    const/4 p0, -0x1

    return p0
.end method
