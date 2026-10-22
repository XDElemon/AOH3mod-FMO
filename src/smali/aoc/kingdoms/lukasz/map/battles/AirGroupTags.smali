.class public final Laoc/kingdoms/lukasz/map/battles/AirGroupTags;
.super Ljava/lang/Object;
.source "AirGroupTags.java"


# static fields
.field public static final CN:I = 0x0

.field public static final DEFAULT_GROUP:I = 0x3

.field public static final EU:I = 0x1

.field public static final RU:I = 0x2

.field private static final TAG_CN:[I

.field private static final TAG_EU:[I

.field private static final TAG_RU:[I

.field private static final TAG_US:[I

.field public static final US:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const v0, 0x63686e

    const v1, 0x70616b

    const v2, 0x636869

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_CN:[I

    .line 34
    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_EU:[I

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_88

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_RU:[I

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_US:[I

    return-void

    :array_2a
    .array-data 4
        0x616c62
        0x617574
        0x62656c
        0x626f73
        0x62756c
        0x63726f
        0x63736b
        0x637970
        0x637a65
        0x64656e
        0x656e67
        0x657374
        0x66696e
        0x667261
        0x676572
        0x677265    # 9.500093E-39f
        0x686f6c
        0x68756e
        0x696365
        0x697265
        0x697461
        0x6b6f73
        0x6c6174
        0x6c6974
        0x6c7578
        0x6d6163
        0x6d6f6c
        0x6e6564
        0x6e6f72
        0x706f6c
        0x706f72
        0x726f6d
        0x73636f
        0x736572
        0x736c6f    # 1.0599981E-38f
        0x736c76    # 1.059999E-38f
        0x737061
        0x73766b
        0x73766e
        0x737765
        0x737769
        0x73777a
        0x756b72
        0x77616c
        0x797567
    .end array-data

    :array_88
    .array-data 4
        0x696e64
        0x69726e
        0x70726b
        0x727573
        0x736f76
        0x766e6d
    .end array-data

    :array_98
    .array-data 4
        0x617573
        0x63616e
        0x697372
        0x6a6170
        0x6b6f72
        0x736175
        0x746169
        0x747572
        0x757361
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static codeOf(Ljava/lang/String;)I
    .registers 4

    .line 86
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 87
    return v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    .line 91
    return v0

    .line 93
    :cond_10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static groupOfCiv(I)I
    .registers 1

    .line 67
    nop

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    .line 69
    if-nez p0, :cond_9

    .line 70
    const/4 p0, 0x3

    return p0

    .line 72
    :cond_9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->groupOfTag(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static groupOfCode(I)I
    .registers 5

    .line 98
    const/4 v0, 0x3

    if-nez p0, :cond_4

    .line 99
    return v0

    .line 101
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_CN:[I

    array-length v3, v3

    if-ge v2, v3, :cond_15

    .line 102
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_CN:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_12

    .line 103
    return v1

    .line 101
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 106
    :cond_15
    move v2, v1

    :goto_16
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_EU:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 107
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_EU:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_23

    .line 108
    const/4 p0, 0x1

    return p0

    .line 106
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 111
    :cond_26
    move v2, v1

    :goto_27
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_US:[I

    array-length v3, v3

    if-ge v2, v3, :cond_36

    .line 112
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_US:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_33

    .line 113
    return v0

    .line 111
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 116
    :cond_36
    nop

    :goto_37
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_RU:[I

    array-length v2, v2

    if-ge v1, v2, :cond_47

    .line 117
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->TAG_RU:[I

    aget v2, v2, v1

    if-ne v2, p0, :cond_44

    .line 118
    const/4 p0, 0x2

    return p0

    .line 116
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 121
    :cond_47
    return v0
.end method

.method public static groupOfTag(Ljava/lang/String;)I
    .registers 1

    .line 77
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->codeOf(Ljava/lang/String;)I

    move-result p0

    .line 78
    if-nez p0, :cond_8

    .line 79
    const/4 p0, 0x3

    return p0

    .line 81
    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirGroupTags;->groupOfCode(I)I

    move-result p0

    return p0
.end method
