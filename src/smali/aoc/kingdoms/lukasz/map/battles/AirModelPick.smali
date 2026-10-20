.class public Laoc/kingdoms/lukasz/map/battles/AirModelPick;
.super Ljava/lang/Object;
.source "AirModelPick.java"


# static fields
.field public static AIR_GEN_MAX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x6

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
    .registers 8

    .line 23
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I

    .line 24
    if-nez v0, :cond_6

    .line 25
    const/4 p0, -0x1

    return p0

    .line 27
    :cond_6
    const/4 v1, 0x0

    if-gez p1, :cond_a

    .line 28
    move p1, v1

    .line 30
    :cond_a
    const/4 v2, 0x3

    if-le p1, v2, :cond_e

    .line 31
    move p1, v2

    .line 33
    :cond_e
    if-gez p2, :cond_11

    .line 34
    move p2, v1

    .line 36
    :cond_11
    if-le p2, v2, :cond_14

    .line 37
    move p2, v2

    .line 39
    :cond_14
    nop

    .line 40
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    .line 43
    const/4 v1, 0x6

    :goto_1a
    if-lt v1, v2, :cond_40

    .line 44
    add-int/lit8 v3, v1, -0x3

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v4, p1, 0x4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    .line 45
    if-ltz v3, :cond_3d

    array-length v4, v0

    if-lt v3, v4, :cond_2a

    .line 46
    goto :goto_3d

    .line 48
    :cond_2a
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->aidTechOf(I)I

    move-result v4

    .line 49
    if-gez v4, :cond_31

    .line 50
    goto :goto_3d

    .line 52
    :cond_31
    if-ne v1, v2, :cond_34

    .line 53
    return v3

    .line 55
    :cond_34
    if-eqz p0, :cond_3d

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 56
    return v3

    .line 43
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 59
    :cond_40
    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    return p1
.end method

.method public static bestForUnit(II)I
    .registers 3

    .line 64
    add-int/lit8 p1, p1, -0x7

    xor-int/lit8 p1, p1, 0x1

    .line 65
    if-ltz p1, :cond_13

    const/4 v0, 0x3

    if-le p1, v0, :cond_a

    goto :goto_13

    .line 68
    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->best(III)I

    move-result p0

    return p0

    .line 66
    :cond_13
    :goto_13
    const/4 p0, -0x1

    return p0
.end method

.method static researched(II)Z
    .registers 3

    .line 72
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 73
    return v0

    .line 75
    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 76
    nop

    .line 77
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    .line 78
    if-nez p0, :cond_f

    .line 79
    return v0

    .line 81
    :cond_f
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result p0

    return p0
.end method
