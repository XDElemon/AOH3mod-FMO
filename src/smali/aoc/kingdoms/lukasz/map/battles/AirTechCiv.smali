.class public final Laoc/kingdoms/lukasz/map/battles/AirTechCiv;
.super Ljava/lang/Object;
.source "AirTechCiv.java"


# static fields
.field private static final AID_TECH:[I

.field public static final AIR_BASE:I = 0x63

.field private static final GEN:[I

.field private static final MASK:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const/16 v0, 0x35

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    .line 51
    const/16 v1, 0x40

    new-array v1, v1, [I

    fill-array-data v1, :array_88

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->AID_TECH:[I

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_10c

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->GEN:[I

    return-void

    :array_1a
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
        0x1
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
        0xa
        0x2
        0x4
        0x4
        0x4
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
        0x8
        0x8
        0x8
    .end array-data

    :array_88
    .array-data 4
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x76
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7d
        0x7e
        0x7f
        0x80
        0x80
        0x81
        0x82
        0x83
        0x83
        0x83
        0x84
        0x85
        0x86
        0x85
        0x87
        0x83
        0x83
        0x88
        0x89
        0x8a
        0x8b
        0x8b
        0x8c
        0x8d
        0x8e
        0x8f
        0x8d
        0x90
        0x91
        0x92
        0x93
        0x94
        0x95
        0x96
        0x97
    .end array-data

    :array_10c
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static aidTechOf(I)I
    .registers 2

    .line 75
    if-ltz p0, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->AID_TECH:[I

    array-length v0, v0

    if-lt p0, v0, :cond_8

    goto :goto_d

    .line 78
    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->AID_TECH:[I

    aget p0, v0, p0

    return p0

    .line 76
    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method public static allowed(II)Z
    .registers 2

    .line 124
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->allowedGroup(II)Z

    move-result p0

    return p0
.end method

.method public static allowedGroup(II)Z
    .registers 4

    .line 115
    add-int/lit8 p0, p0, -0x63

    .line 116
    const/4 v0, 0x1

    if-ltz p0, :cond_17

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    array-length v1, v1

    if-lt p0, v1, :cond_b

    goto :goto_17

    .line 119
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

    .line 117
    :cond_17
    :goto_17
    return v0
.end method

.method public static genOf(I)I
    .registers 2

    .line 83
    add-int/lit8 p0, p0, -0x63

    .line 84
    if-ltz p0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->GEN:[I

    array-length v0, v0

    if-lt p0, v0, :cond_a

    goto :goto_f

    .line 87
    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->GEN:[I

    aget p0, v0, p0

    return p0

    .line 85
    :cond_f
    :goto_f
    const/4 p0, -0x1

    return p0
.end method

.method public static isAir(I)Z
    .registers 1

    .line 92
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->maskOf(I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static maskOf(I)I
    .registers 2

    .line 97
    add-int/lit8 p0, p0, -0x63

    .line 98
    if-ltz p0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    array-length v0, v0

    if-lt p0, v0, :cond_a

    goto :goto_f

    .line 101
    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->MASK:[I

    aget p0, v0, p0

    return p0

    .line 99
    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method
