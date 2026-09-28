.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;
.super Ljava/lang/Object;
.source "AI_MoveNoConnection.java"


# instance fields
.field public noConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addProvince(II)V
    .registers 7
    .param p1, "fromProvince"    # I
    .param p2, "toProvince"    # I

    .line 17
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;-><init>(II)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_NO_CONNECTION_DAYS:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public contains(II)Z
    .registers 11
    .param p1, "fromProvince"    # I
    .param p2, "toProvince"    # I

    .line 31
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;-><init>(II)V

    .line 33
    .local v0, "keyCheck":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 34
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "turnID":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v4, :cond_25

    .line 37
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return v3

    .line 40
    :cond_25
    return v2

    .line 43
    .end local v1    # "turnID":I
    :cond_26
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v1, v4, :cond_80

    .line 44
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;Ljava/lang/Integer;>;>;"
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    .line 50
    .local v5, "key":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v6, v7, :cond_66

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7f

    .line 54
    :cond_66
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z

    move-result v6

    if-eqz v6, :cond_7f

    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 55
    return v2

    .line 58
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;Ljava/lang/Integer;>;"
    .end local v5    # "key":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
    :cond_7f
    :goto_7f
    goto :goto_42

    .line 61
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;Ljava/lang/Integer;>;>;"
    :cond_80
    return v3
.end method

.method public isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z
    .registers 5
    .param p1, "provinceA"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p2, "provinceB"    # I

    .line 65
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public update()V
    .registers 4

    .line 21
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;Ljava/lang/Integer;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v2, :cond_a

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 28
    :cond_28
    return-void
.end method
