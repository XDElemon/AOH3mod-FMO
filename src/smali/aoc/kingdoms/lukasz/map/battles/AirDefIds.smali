.class public final Laoc/kingdoms/lukasz/map/battles/AirDefIds;
.super Ljava/lang/Object;
.source "AirDefIds.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static indexOf(Ljava/lang/String;)I
    .registers 5

    .line 14
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 15
    return v0

    .line 17
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirDefCfg;->ID:[Ljava/lang/String;

    .line 18
    if-nez v1, :cond_9

    .line 19
    return v0

    .line 21
    :cond_9
    const/4 v2, 0x0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_19

    .line 22
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 23
    return v2

    .line 21
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 26
    :cond_19
    return v0
.end method
