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
    .registers 7

    .line 23
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I

    .line 24
    if-nez v0, :cond_6

    .line 25
    const/4 p0, -0x1

    return p0

    .line 27
    :cond_6
    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    .line 28
    const/4 p2, 0x6

    :goto_a
    const/4 v1, 0x3

    if-lt p2, v1, :cond_2a

    .line 29
    add-int/lit8 v2, p2, -0x3

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v2, p1

    .line 30
    if-ltz v2, :cond_27

    array-length v3, v0

    if-lt v2, v3, :cond_18

    .line 31
    goto :goto_27

    .line 33
    :cond_18
    aget v3, v0, v2

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0x7f

    .line 34
    if-eq p2, v1, :cond_26

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->researched(II)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 35
    :cond_26
    return v2

    .line 28
    :cond_27
    :goto_27
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    .line 38
    :cond_2a
    return p1
.end method

.method public static bestForUnit(II)I
    .registers 3

    .line 43
    add-int/lit8 p1, p1, -0x7

    xor-int/lit8 p1, p1, 0x1

    .line 44
    if-ltz p1, :cond_13

    const/4 v0, 0x3

    if-le p1, v0, :cond_a

    goto :goto_13

    .line 47
    :cond_a
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirModelPick;->best(III)I

    move-result p0

    return p0

    .line 45
    :cond_13
    :goto_13
    const/4 p0, -0x1

    return p0
.end method

.method static researched(II)Z
    .registers 3

    .line 51
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 52
    return v0

    .line 54
    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 55
    nop

    .line 56
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    .line 57
    if-nez p0, :cond_f

    .line 58
    return v0

    .line 60
    :cond_f
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result p0

    return p0
.end method
