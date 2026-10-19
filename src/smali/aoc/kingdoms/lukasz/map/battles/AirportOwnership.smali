.class public Laoc/kingdoms/lukasz/map/battles/AirportOwnership;
.super Ljava/lang/Object;
.source "AirportOwnership.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onProvinceOwnerChanged(II)V
    .registers 3

    .line 26
    :try_start_0
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirportOwnership;->transfer(II)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 29
    goto :goto_1b

    .line 27
    :catchall_4
    move-exception p1

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aptXfer fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    .line 30
    :goto_1b
    return-void
.end method

.method private static transfer(II)V
    .registers 12

    .line 33
    if-ltz p0, :cond_c0

    if-gtz p1, :cond_6

    goto/16 :goto_c0

    .line 36
    :cond_6
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_bf

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-nez v1, :cond_12

    goto/16 :goto_bf

    .line 40
    :cond_12
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    .line 43
    nop

    .line 44
    nop

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 46
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 49
    instance-of v7, v6, Ljava/util/List;

    if-nez v7, :cond_34

    .line 50
    goto :goto_20

    .line 52
    :cond_34
    check-cast v6, Ljava/util/List;

    .line 53
    move v7, v5

    :goto_37
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_53

    .line 54
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 55
    instance-of v9, v8, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v9, :cond_50

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v9, v8, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    if-ne v9, p0, :cond_50

    .line 56
    nop

    .line 57
    nop

    .line 58
    move-object v3, v4

    move-object v2, v8

    goto :goto_53

    .line 53
    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 61
    :cond_53
    :goto_53
    if-eqz v2, :cond_56

    .line 62
    goto :goto_57

    .line 64
    :cond_56
    goto :goto_20

    .line 65
    :cond_57
    :goto_57
    if-nez v2, :cond_5a

    .line 66
    return-void

    .line 68
    :cond_5a
    iget p0, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne p0, p1, :cond_5f

    .line 69
    return-void

    .line 73
    :cond_5f
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 74
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_6c

    .line 75
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_6c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 80
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_7b

    .line 83
    check-cast v1, Ljava/util/List;

    goto :goto_83

    .line 85
    :cond_7b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iput p1, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    .line 92
    iget-object p0, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    if-eqz p0, :cond_be

    .line 93
    iget-object p0, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    :goto_96
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 96
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_a5

    .line 97
    goto :goto_96

    .line 99
    :cond_a5
    check-cast v0, Ljava/util/List;

    .line 100
    move v1, v5

    :goto_a8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 102
    instance-of v3, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_ba

    .line 103
    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iput p1, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I

    .line 100
    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 106
    :cond_bd
    goto :goto_96

    .line 108
    :cond_be
    return-void

    .line 38
    :cond_bf
    :goto_bf
    return-void

    .line 34
    :cond_c0
    :goto_c0
    return-void
.end method
