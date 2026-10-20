.class public final Laoc/kingdoms/lukasz/map/battles/AirTechCiv;
.super Ljava/lang/Object;
.source "AirTechCiv.java"


# static fields
.field public static final AIR_BASE:I = 0x63

.field private static final MASK:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
        0x8
        0x8
        0x8
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
        0x8
        0xa
        0x8
        0x1
        0x1
        0x1
        0x2
        0x4
        0x4
        0x4
        0x8
        0x8
        0x8
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
        0x4
        0x4
        0x8
        0x8
        0x8
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static allowed(II)Z
    .registers 2

    .line 81
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->allowedGroup(II)Z

    move-result p0

    return p0
.end method

.method public static allowedGroup(II)Z
    .registers 4

    .line 72
    add-int/lit8 p0, p0, -0x63

    .line 73
    const/4 v0, 0x1

    if-ltz p0, :cond_17

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    array-length v1, v1

    if-lt p0, v1, :cond_b

    goto :goto_17

    .line 76
    :cond_b
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    aget p0, v1, p0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    .line 74
    :cond_17
    :goto_17
    return v0
.end method

.method public static maskOf(I)I
    .registers 2

    .line 54
    add-int/lit8 p0, p0, -0x63

    .line 55
    if-ltz p0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    array-length v0, v0

    if-lt p0, v0, :cond_a

    goto :goto_f

    .line 58
    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    aget p0, v0, p0

    return p0

    .line 56
    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method
