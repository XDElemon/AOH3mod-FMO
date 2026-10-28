.class public final Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;
.super Ljava/lang/Object;
.source "MissileTypeIds.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static indexOf(Ljava/lang/String;)I
    .registers 5

    .line 22
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 23
    return v0

    .line 25
    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->ID:[Ljava/lang/String;

    .line 26
    if-nez v1, :cond_9

    .line 27
    return v0

    .line 29
    :cond_9
    const/4 v2, 0x0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_19

    .line 30
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 31
    return v2

    .line 29
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 34
    :cond_19
    return v0
.end method
