.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;
.super Ljava/lang/Object;
.source "AI_RecruitMercenaries.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recruitMercenaries(I)V
    .registers 6
    .param p0, "civID"    # I

    .line 18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->averageArmyCost:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_COST_EXTRA_PER_REGIMENT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v3, v4, :cond_1f

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    add-float/2addr v2, v3

    mul-float v1, v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_MIN_REGIMENTS:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 19
    return-void

    .line 22
    :cond_2f
    const/4 v0, 0x0

    .line 24
    .local v0, "enemyArmy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 25
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 27
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_48
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 28
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 29
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v0, v4

    .line 27
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 24
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "j":I
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 34
    .end local v1    # "i":I
    :cond_67
    int-to-float v1, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ENEMY_ARMIES_MODIFIER:F

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 36
    int-to-float v1, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER:F

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_90

    .line 37
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_OWN_ARMIES_MODIFIER:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 40
    :cond_90
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenaries(II)V

    .line 41
    return-void
.end method

.method public static recruitMercenaries(II)V
    .registers 9
    .param p0, "civID"    # I
    .param p1, "limit"    # I

    .line 46
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 47
    return-void

    .line 50
    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 52
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->averageArmyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_COST_EXTRA_PER_REGIMENT:F

    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v4, v5, :cond_1b

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    add-float/2addr v3, v4

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_MIN_REGIMENTS:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_94

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v1, "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_30
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 56
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 57
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 61
    .end local v2    # "a":I
    :cond_52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 62
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_59
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ACTION_LIMIT:I

    if-ge v2, v3, :cond_94

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_94

    .line 63
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 65
    .local v3, "bestProvinceID":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenariesArmy(II)I

    move-result v4

    .line 67
    .local v4, "recruited":I
    if-nez v4, :cond_80

    .line 68
    return-void

    .line 71
    :cond_80
    sub-int/2addr p1, v4

    .line 73
    if-ltz p1, :cond_84

    .line 74
    return-void

    .line 77
    :cond_84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_ACTION_LIMIT:I

    if-le v5, v6, :cond_91

    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    .end local v3    # "bestProvinceID":I
    .end local v4    # "recruited":I
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 83
    .end local v1    # "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_94
    return-void
.end method

.method private static recruitMercenariesArmy(II)I
    .registers 6
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I

    .line 86
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/MercenariesManager;->getMercenaryArmies(I)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "mercenaryArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_38

    .line 89
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_35

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-static {p0, p1, v2}, Laoc/kingdoms/lukasz/map/MercenariesManager;->recruitMercenaries(IILaoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;)Z

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2

    .line 88
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 97
    .end local v1    # "i":I
    :cond_38
    const/4 v1, 0x0

    return v1
.end method
