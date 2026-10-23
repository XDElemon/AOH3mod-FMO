.class public final Laoc/kingdoms/lukasz/map/battles/AirInterceptFill;
.super Ljava/lang/Object;
.source "AirInterceptFill.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static fill(Ljava/lang/Object;Ljava/util/List;)V
    .registers 6

    .line 28
    if-eqz p0, :cond_37

    if-nez p1, :cond_5

    goto :goto_37

    .line 31
    :cond_5
    instance-of v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-nez v0, :cond_a

    .line 32
    return-void

    .line 34
    :cond_a
    check-cast p0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    .line 35
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetAirUnitIDs:Ljava/util/List;

    .line 36
    if-nez p0, :cond_11

    .line 37
    return-void

    .line 39
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_36

    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 42
    instance-of v3, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-nez v3, :cond_21

    .line 43
    goto :goto_33

    .line 45
    :cond_21
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    .line 46
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canIntercept()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 47
    goto :goto_33

    .line 49
    :cond_2a
    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->unitID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 51
    :cond_36
    return-void

    .line 29
    :cond_37
    :goto_37
    return-void
.end method
