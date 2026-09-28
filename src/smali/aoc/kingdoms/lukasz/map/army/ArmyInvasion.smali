.class public Laoc/kingdoms/lukasz/map/army/ArmyInvasion;
.super Ljava/lang/Object;
.source "ArmyInvasion.java"


# instance fields
.field public armyKey:Ljava/lang/String;

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "civID"    # I
    .param p2, "nKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p3, "nProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    .line 19
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    .line 22
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->invasionMoveArmy(I)Z

    .line 23
    return-void
.end method


# virtual methods
.method public final invasionMoveArmy(I)Z
    .registers 15
    .param p1, "civID"    # I

    .line 27
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v1

    .line 29
    .local v1, "armyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-nez v1, :cond_a

    .line 30
    return v0

    .line 33
    :cond_a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_be

    .line 34
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_4d

    goto :goto_ba

    .line 37
    :cond_4d
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, p1, :cond_69

    .line 38
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ba

    .line 40
    :cond_69
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-nez v4, :cond_89

    .line 41
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ba

    .line 43
    :cond_89
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    if-ne v4, v5, :cond_9f

    .line 44
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ba

    .line 46
    :cond_9f
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 47
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33
    :cond_ba
    :goto_ba
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_12

    .line 51
    .end local v2    # "i":I
    :cond_be
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c7

    .line 52
    return v0

    .line 55
    :cond_c7
    const/4 v2, 0x0

    .line 56
    .local v2, "bestID":I
    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v4

    .line 59
    .local v4, "distanceBest":F
    const/4 v5, 0x1

    .local v5, "i":I
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_e1
    if-ge v5, v6, :cond_fe

    .line 60
    iget v7, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    .line 62
    .local v7, "tempDistance":F
    cmpl-float v8, v4, v7

    if-lez v8, :cond_fb

    .line 63
    move v2, v5

    .line 64
    move v4, v7

    .line 59
    :cond_fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 68
    .end local v5    # "i":I
    .end local v6    # "iSize":I
    .end local v7    # "tempDistance":F
    :cond_fe
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v5

    .line 70
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v5

    if-nez v5, :cond_1b6

    .line 71
    const/4 v5, 0x0

    .line 73
    .local v5, "bestScore":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v6, "extraID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v7, "extraScore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_121
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_18f

    .line 77
    iget-object v9, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18c

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 80
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v9, 0x0

    .line 83
    .local v9, "tExtraScore":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_152
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_185

    .line 84
    iget-object v11, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_182

    .line 85
    add-int/lit8 v9, v9, 0x1

    .line 83
    :cond_182
    add-int/lit8 v10, v10, 0x1

    goto :goto_152

    .line 89
    .end local v10    # "j":I
    :cond_185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v9    # "tExtraScore":I
    :cond_18c
    add-int/lit8 v8, v8, 0x1

    goto :goto_121

    .line 93
    .end local v8    # "i":I
    :cond_18f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .restart local v8    # "i":I
    :goto_194
    if-ltz v8, :cond_1b0

    .line 94
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v5, :cond_1ad

    .line 95
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v2, v9

    .line 93
    :cond_1ad
    add-int/lit8 v8, v8, -0x1

    goto :goto_194

    .line 99
    .end local v8    # "i":I
    :cond_1b0
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 100
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 103
    .end local v5    # "bestScore":I
    .end local v6    # "extraID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "extraScore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1b6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v6, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v2

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c4} :catch_1c6

    .line 108
    nop

    .line 110
    .end local v1    # "armyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .end local v2    # "bestID":I
    .end local v4    # "distanceBest":F
    return v3

    .line 105
    :catch_1c6
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 107
    return v0
.end method
