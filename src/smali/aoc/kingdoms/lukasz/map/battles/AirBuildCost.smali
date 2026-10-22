.class public final Laoc/kingdoms/lukasz/map/battles/AirBuildCost;
.super Ljava/lang/Object;
.source "AirBuildCost.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static costOfAid(II)I
    .registers 4

    .line 32
    const/4 v0, -0x1

    if-gez p0, :cond_4

    .line 33
    return v0

    .line 35
    :cond_4
    nop

    .line 36
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->COST:[I

    array-length v1, v1

    if-lt p0, v1, :cond_b

    .line 37
    move p0, p1

    .line 39
    :cond_b
    if-ltz p0, :cond_18

    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->COST:[I

    array-length p1, p1

    if-lt p0, p1, :cond_13

    goto :goto_18

    .line 42
    :cond_13
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->COST:[I

    aget p0, p1, p0

    return p0

    .line 40
    :cond_18
    :goto_18
    return v0
.end method

.method public static playerCiv()I
    .registers 1

    .line 23
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 24
    if-nez v0, :cond_6

    .line 25
    const/4 v0, -0x1

    return v0

    .line 27
    :cond_6
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method

.method public static timeOfAid(II)I
    .registers 3

    .line 47
    nop

    .line 48
    if-ltz p0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->TIME:[I

    array-length v0, v0

    if-lt p0, v0, :cond_9

    .line 49
    :cond_8
    move p0, p1

    .line 51
    :cond_9
    if-ltz p0, :cond_1a

    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->TIME:[I

    array-length p1, p1

    if-lt p0, p1, :cond_11

    goto :goto_1a

    .line 54
    :cond_11
    sget-object p1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->TIME:[I

    aget p0, p1, p0

    .line 55
    const/4 p1, 0x1

    if-ge p0, p1, :cond_19

    move p0, p1

    :cond_19
    return p0

    .line 52
    :cond_1a
    :goto_1a
    const/4 p0, 0x3

    return p0
.end method
