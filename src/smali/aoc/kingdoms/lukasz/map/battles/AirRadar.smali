.class public final Laoc/kingdoms/lukasz/map/battles/AirRadar;
.super Ljava/lang/Object;
.source "AirRadar.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static maxDetect(Ljava/util/List;)F
    .registers 6

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 24
    return v0

    .line 26
    :cond_4
    nop

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 28
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 30
    instance-of v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v4, :cond_15

    .line 31
    goto :goto_1e

    .line 33
    :cond_15
    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarDetect:F

    .line 34
    cmpl-float v4, v3, v0

    if-lez v4, :cond_1e

    .line 35
    move v0, v3

    .line 28
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 38
    :cond_21
    return v0
.end method
