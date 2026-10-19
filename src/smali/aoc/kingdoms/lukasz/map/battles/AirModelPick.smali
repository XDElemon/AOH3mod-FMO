.class public Laoc/kingdoms/lukasz/map/battles/AirModelPick;
.super Ljava/lang/Object;
.source "AirModelPick.java"


# static fields
.field public static AIR_GEN_MAX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x3

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->AIR_GEN_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static best(III)I
    .registers 11

    .line 20
    sget-object p0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I

    .line 21
    const/4 v0, -0x1

    if-nez p0, :cond_6

    .line 22
    return v0

    .line 24
    :cond_6
    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    .line 25
    sget p2, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->AIR_GEN_MAX:I

    .line 26
    const/4 v1, 0x3

    if-ge p2, v1, :cond_f

    .line 27
    move p2, v1

    .line 29
    :cond_f
    nop

    .line 30
    nop

    .line 31
    nop

    .line 32
    nop

    .line 33
    const/16 v2, 0x7fff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v2

    :goto_1a
    array-length v6, p0

    if-ge v5, v6, :cond_3b

    .line 34
    aget v6, p0, v5

    .line 35
    ushr-int/lit8 v7, v6, 0x10

    if-eq v7, p1, :cond_24

    .line 36
    goto :goto_38

    .line 38
    :cond_24
    and-int/lit16 v6, v6, 0xff

    .line 39
    add-int/lit8 v7, v6, -0x46

    shr-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v1

    .line 40
    if-gt v7, p2, :cond_33

    .line 41
    if-le v6, v3, :cond_38

    .line 42
    nop

    .line 43
    move v0, v5

    move v3, v6

    goto :goto_38

    .line 45
    :cond_33
    if-ge v6, v4, :cond_38

    .line 46
    nop

    .line 47
    move v2, v5

    move v4, v6

    .line 33
    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 50
    :cond_3b
    if-ltz v0, :cond_3e

    .line 51
    return v0

    .line 53
    :cond_3e
    return v2
.end method
