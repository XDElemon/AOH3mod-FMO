.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace;
.super Ljava/lang/Object;
.source "AI_MoveAtPeace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static moveAtPeace(I)V
    .registers 14
    .param p0, "civID"    # I

    .line 29
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    if-gtz v0, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    if-lez v0, :cond_4c9

    .line 30
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "possibleToMove":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_16
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_ad

    .line 33
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 34
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 37
    :cond_4d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 38
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    .line 40
    .local v2, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v2, :cond_a9

    .line 41
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v3, :cond_8f

    .line 42
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 43
    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 44
    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    goto :goto_a9

    .line 47
    :cond_8f
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v3, :cond_a9

    .line 48
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;-><init>(Laoc/kingdoms/lukasz/map/army/ArmyPosition;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .end local v2    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_a9
    :goto_a9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 56
    .end local v1    # "j":I
    :cond_ad
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 57
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_c1

    .line 58
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenaries(I)V

    .line 60
    :cond_c1
    return-void

    .line 63
    :cond_c2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_cf
    if-ltz v2, :cond_117

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 67
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_114

    .line 70
    :cond_fb
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 65
    :goto_114
    add-int/lit8 v2, v2, -0x1

    goto :goto_cf

    .line 76
    .end local v2    # "i":I
    :cond_117
    :goto_117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x47c35000    # 100000.0f

    if-lez v2, :cond_238

    .line 77
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 79
    .local v2, "id":I
    const/4 v4, 0x0

    .line 81
    .local v4, "enemyArmy":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v6

    if-ge v5, v6, :cond_172

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v4, v6

    .line 81
    :cond_16f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12c

    .line 87
    .end local v5    # "j":I
    :cond_172
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyMovingToProvince_MoveUnits(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 89
    if-lez v4, :cond_232

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v5

    if-lt v5, v4, :cond_232

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "a":I
    :goto_197
    if-ltz v5, :cond_1bc

    .line 91
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    .line 90
    add-int/lit8 v5, v5, -0x1

    goto :goto_197

    .line 94
    .end local v5    # "a":I
    :cond_1bc
    :goto_1bc
    if-lez v4, :cond_232

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_232

    .line 95
    const/4 v5, 0x0

    .line 97
    .local v5, "bestID":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "a":I
    :goto_1cb
    if-lez v6, :cond_1e5

    .line 98
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e2

    .line 99
    move v5, v6

    .line 97
    :cond_1e2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1cb

    .line 103
    .end local v6    # "a":I
    :cond_1e5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_1f2

    .line 104
    goto :goto_232

    .line 107
    :cond_1f2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v8, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v10, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_229

    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->iRegiments:I

    sub-int/2addr v4, v6

    .line 109
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_231

    .line 112
    :cond_229
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iput v3, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    .line 114
    .end local v5    # "bestID":I
    :goto_231
    goto :goto_1bc

    .line 117
    :cond_232
    :goto_232
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    nop

    .end local v2    # "id":I
    .end local v4    # "enemyArmy":I
    goto/16 :goto_117

    .line 120
    :cond_238
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_242

    .line 123
    return-void

    .line 126
    :cond_242
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_24a
    if-ltz v2, :cond_292

    .line 127
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-eqz v4, :cond_276

    .line 128
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28f

    .line 131
    :cond_276
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 126
    :goto_28f
    add-int/lit8 v2, v2, -0x1

    goto :goto_24a

    .line 137
    .end local v2    # "i":I
    :cond_292
    :goto_292
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c3

    .line 138
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 140
    .local v2, "id":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v4

    if-gtz v4, :cond_3ba

    .line 141
    const/4 v4, 0x0

    .line 143
    .local v4, "iNeigh":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b8
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_309

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v6, p0, :cond_306

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    if-eqz v6, :cond_306

    .line 145
    add-int/lit8 v4, v4, 0x1

    .line 143
    :cond_306
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b8

    .line 149
    .end local v5    # "i":I
    :cond_309
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_30a
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_3ba

    .line 150
    const/4 v6, 0x0

    .line 152
    .local v6, "pNeigh":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_320
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_389

    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-ne v8, p0, :cond_386

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v8

    if-eqz v8, :cond_386

    .line 154
    add-int/lit8 v6, v6, 0x1

    .line 152
    :cond_386
    add-int/lit8 v7, v7, 0x1

    goto :goto_320

    .line 158
    .end local v7    # "j":I
    :cond_389
    if-ge v4, v6, :cond_3b6

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "k":I
    :goto_391
    if-ltz v7, :cond_3b6

    .line 160
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    if-ne v8, v9, :cond_3b3

    .line 161
    move v2, v7

    .line 162
    goto :goto_3b6

    .line 159
    :cond_3b3
    add-int/lit8 v7, v7, -0x1

    goto :goto_391

    .line 149
    .end local v7    # "k":I
    :cond_3b6
    :goto_3b6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_30a

    .line 169
    .end local v4    # "iNeigh":I
    .end local v5    # "i":I
    .end local v6    # "pNeigh":I
    :cond_3ba
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    add-int/lit8 v4, v4, 0x1

    .line 171
    .local v4, "enemyArmy":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3c1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v6

    if-ge v5, v6, :cond_407

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_404

    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v4, v6

    .line 171
    :cond_404
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c1

    .line 177
    .end local v5    # "j":I
    :cond_407
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyMovingToProvince_MoveUnits(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 179
    if-lez v4, :cond_4bd

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "a":I
    :goto_422
    if-ltz v5, :cond_447

    .line 181
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    .line 180
    add-int/lit8 v5, v5, -0x1

    goto :goto_422

    .line 184
    .end local v5    # "a":I
    :cond_447
    :goto_447
    if-lez v4, :cond_4bd

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4bd

    .line 185
    const/4 v5, 0x0

    .line 187
    .local v5, "bestID":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "a":I
    :goto_456
    if-lez v6, :cond_470

    .line 188
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_46d

    .line 189
    move v5, v6

    .line 187
    :cond_46d
    add-int/lit8 v6, v6, -0x1

    goto :goto_456

    .line 193
    .end local v6    # "a":I
    :cond_470
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_47d

    .line 194
    goto :goto_4bd

    .line 197
    :cond_47d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v8, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->armyPosition:Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v10, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_4b4

    .line 198
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->iRegiments:I

    sub-int/2addr v4, v6

    .line 199
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4bc

    .line 202
    :cond_4b4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;

    iput v3, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;->distance:F

    .line 204
    .end local v5    # "bestID":I
    :goto_4bc
    goto :goto_447

    .line 207
    :cond_4bd
    :goto_4bd
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    nop

    .end local v2    # "id":I
    .end local v4    # "enemyArmy":I
    goto/16 :goto_292

    .line 210
    :cond_4c3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_4c9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c9} :catch_4ca

    .line 215
    .end local v0    # "possibleToMove":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace$ArmyDivision_TempData;>;"
    .end local v1    # "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4c9
    goto :goto_4ce

    .line 213
    :catch_4ca
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 216
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4ce
    return-void
.end method
