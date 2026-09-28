.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;
.super Ljava/lang/Object;
.source "AI_ReorganizeArmies.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static borderWithPreparingForWar(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 6
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "province"    # Laoc/kingdoms/lukasz/map/province/Province;

    .line 659
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 661
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, v3, :cond_26

    .line 662
    const/4 v2, 0x1

    return v2

    .line 660
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 659
    .end local v1    # "i":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    .end local v0    # "j":I
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public static final bordersWithAnyNonAlly(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z
    .registers 7
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "province"    # Laoc/kingdoms/lukasz/map/province/Province;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_28

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_25

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    return v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method public static final buildProvincesScore(I)V
    .registers 8
    .param p0, "civID"    # I

    .line 633
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 635
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 636
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 638
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    nop

    .line 639
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_GROWTH_RATE:F

    mul-float v3, v3, v4

    .line 640
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_ECONOMY:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PROVINCE_INCOME:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_DISTANCE:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->bordersWithAnyNonAlly(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/high16 p0, 0x40400000    # 3.0f

    :cond_45
    mul-float/2addr v3, p0

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    .line 635
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 644
    .end local v1    # "i":I
    :cond_4b
    return-void
.end method

.method public static final buildProvincesScore_PrepareForWar(I)V
    .registers 8
    .param p0, "civID"    # I

    .line 647
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 649
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 650
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 652
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->borderWithPreparingForWar(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/province/Province;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_BORDERS_WITH_CIV:F

    goto :goto_20

    :cond_1e
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_20
    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_PROVINCE_INCOME:F

    mul-float v4, v4, v5

    iget v5, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_DISTANCE:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    .line 649
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 656
    .end local v1    # "i":I
    :cond_38
    return-void
.end method

.method public static reorganizeArmies_AtPeace(I)V
    .registers 33
    .param p0, "civID"    # I

    .line 19
    move/from16 v1, p0

    :try_start_2
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 26
    .local v2, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->aiMergeTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 29
    .local v9, "armiesInOwnProvinces":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 31
    .local v10, "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v11, 0x0

    if-ge v3, v4, :cond_7b

    .line 32
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 34
    .local v4, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v4, :cond_78

    .line 35
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v5, v1, :cond_78

    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v5, :cond_78

    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v5, :cond_78

    .line 36
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v5, v1, :cond_5a

    .line 37
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v6

    iget-object v7, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 40
    :cond_5a
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v6

    iget-object v7, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_68
    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v5, :cond_78

    .line 44
    iget-object v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 45
    iput-boolean v11, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 46
    iput-boolean v11, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 31
    .end local v4    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 53
    .end local v3    # "i":I
    :cond_7b
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 54
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->buildProvincesScore(I)V

    .line 55
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_CAPITAL:F

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    goto :goto_ae

    .line 58
    :cond_9a
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->buildProvincesScore_PrepareForWar(I)V

    .line 59
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PREPARE_FOR_WAR_CAPITAL:F

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    .line 62
    :goto_ae
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    move v12, v3

    .line 64
    .local v12, "battleWidth":I
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    mul-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_First:F

    mul-float v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    move-object v13, v3

    .line 65
    .local v13, "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    mul-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Second:F

    mul-float v4, v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    move-object v14, v3

    .line 66
    .local v14, "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    mul-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Third:F

    mul-float v4, v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    move-object v15, v3

    .line 67
    .local v15, "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    mul-int/lit8 v4, v12, 0x2

    int-to-float v4, v4

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Fourth:F

    mul-float v4, v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    move-object v8, v3

    .line 73
    .local v8, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinces()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v3

    .line 74
    .local v7, "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    .line 76
    .local v6, "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v3

    int-to-float v3, v3

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v3, v3, v16

    double-to-int v3, v3

    .line 78
    .local v3, "limitOfProvinces":I
    :goto_128
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_180

    add-int/lit8 v4, v3, -0x1

    .end local v3    # "limitOfProvinces":I
    .local v4, "limitOfProvinces":I
    if-lez v3, :cond_17d

    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, "bestID":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v5, v16

    .local v5, "i":I
    :goto_13c
    if-lez v5, :cond_16b

    .line 82
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v18, v4

    .end local v4    # "limitOfProvinces":I
    .local v18, "limitOfProvinces":I
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    cmpl-float v4, v11, v4

    if-lez v4, :cond_165

    .line 83
    move v3, v5

    .line 81
    :cond_165
    add-int/lit8 v5, v5, -0x1

    move/from16 v4, v18

    const/4 v11, 0x0

    goto :goto_13c

    .end local v18    # "limitOfProvinces":I
    .restart local v4    # "limitOfProvinces":I
    :cond_16b
    move/from16 v18, v4

    .line 87
    .end local v4    # "limitOfProvinces":I
    .end local v5    # "i":I
    .restart local v18    # "limitOfProvinces":I
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v7, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    move/from16 v3, v18

    const/4 v11, 0x0

    .end local v3    # "bestID":I
    goto :goto_128

    .line 78
    .end local v18    # "limitOfProvinces":I
    .restart local v4    # "limitOfProvinces":I
    :cond_17d
    move/from16 v18, v4

    .end local v4    # "limitOfProvinces":I
    .restart local v18    # "limitOfProvinces":I
    goto :goto_182

    .end local v18    # "limitOfProvinces":I
    .local v3, "limitOfProvinces":I
    :cond_180
    move/from16 v18, v3

    .line 90
    .end local v3    # "limitOfProvinces":I
    .restart local v18    # "limitOfProvinces":I
    :goto_182
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "sortedID":I
    const/16 v4, 0x64

    move v11, v3

    .line 99
    .end local v3    # "sortedID":I
    .local v4, "limit":I
    .local v11, "sortedID":I
    :goto_189
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18d} :catch_ad8

    if-nez v3, :cond_a6a

    :try_start_18f
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_193} :catch_a65

    if-eqz v3, :cond_1b0

    :try_start_195
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_199} :catch_ad8

    if-nez v3, :cond_19c

    goto :goto_1b0

    :cond_19c
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v19, v8

    move-object/from16 v28, v10

    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/16 v30, 0x1

    goto/16 :goto_a7c

    :cond_1b0
    :goto_1b0
    add-int/lit8 v16, v4, -0x1

    .end local v4    # "limit":I
    .local v16, "limit":I
    if-lez v4, :cond_a50

    .line 101
    :try_start_1b4
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v4, v3

    .line 103
    .local v4, "provinceID":I
    const/4 v3, 0x0

    .line 105
    .local v3, "armyKey":Ljava/lang/String;
    rem-int/lit8 v19, v4, 0x4

    packed-switch v19, :pswitch_data_ae0

    .line 119
    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c7} :catch_a65

    goto :goto_1da

    .line 115
    :pswitch_1c8
    :try_start_1c8
    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v5, v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    .line 116
    .local v5, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_1dd

    .line 111
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :pswitch_1ce
    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v5, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    .line 112
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_1dd

    .line 107
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :pswitch_1d4
    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v5, v13}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d9} :catch_ad8

    .line 108
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_1dd

    .line 119
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_1da
    :try_start_1da
    invoke-direct {v5, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)V

    .line 130
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_1dd
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e1} :catch_a65

    const/16 v19, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v31, v20

    move-object/from16 v20, v6

    move/from16 v6, v31

    .local v6, "i":I
    .local v20, "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1eb
    if-ltz v6, :cond_57a

    .line 131
    :try_start_1ed
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v7

    .end local v7    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, v21

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v7, v4, :cond_560

    .line 132
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v8

    .end local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v23, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move-object/from16 v8, v21

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    .line 134
    .local v7, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v7, :cond_553

    .line 135
    if-nez v3, :cond_22a

    .line 136
    iget-object v8, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object v3, v8

    .line 137
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move-object/from16 v21, v3

    .end local v3    # "armyKey":Ljava/lang/String;
    .local v21, "armyKey":Ljava/lang/String;
    iget v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move/from16 v24, v12

    .end local v12    # "battleWidth":I
    .local v24, "battleWidth":I
    iget-object v12, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v8, v3, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    move-object/from16 v3, v21

    goto :goto_22c

    .line 135
    .end local v21    # "armyKey":Ljava/lang/String;
    .end local v24    # "battleWidth":I
    .restart local v3    # "armyKey":Ljava/lang/String;
    .restart local v12    # "battleWidth":I
    :cond_22a
    move/from16 v24, v12

    .line 140
    .end local v12    # "battleWidth":I
    .restart local v24    # "battleWidth":I
    :goto_22c
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v8

    .line 145
    .local v8, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget-object v12, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_336

    .line 148
    iget v12, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    move-object/from16 v21, v13

    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v21, "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 149
    .local v12, "tempNum":I
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v12

    iput v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 150
    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v12

    iput v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 152
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .local v25, "tempNum":I
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 153
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v12

    iput v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 154
    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v12

    iput v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 156
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 157
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v12

    iput v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 158
    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v12

    iput v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 160
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 161
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v12

    iput v13, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 162
    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v12

    iput v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 164
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 165
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 167
    new-instance v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v13}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    .line 170
    .local v13, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    move-object/from16 v26, v14

    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v26, "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v12, v14, :cond_2ae

    .line 171
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v12, v14

    .line 173
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v14, v12

    iput v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 174
    iput v12, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    goto :goto_2b0

    .line 170
    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    :cond_2ae
    move/from16 v12, v25

    .line 176
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    :goto_2b0
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v14, v12, :cond_2c9

    .line 177
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v12, v14

    .line 179
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v14, v12

    iput v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 180
    iput v12, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    goto :goto_2cb

    .line 176
    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    :cond_2c9
    move/from16 v12, v25

    .line 182
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    :goto_2cb
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v14, v12, :cond_2e4

    .line 183
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v12, v14

    .line 185
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v14, v12

    iput v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 186
    iput v12, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    goto :goto_2e6

    .line 182
    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    :cond_2e4
    move/from16 v12, v25

    .line 188
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    :goto_2e6
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    if-le v14, v12, :cond_2ff

    .line 189
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MAX_NUMBER_OF_REGIMENTS_OVER_MAX:I

    sub-int/2addr v12, v14

    .line 191
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v14, v12

    iput v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 192
    iput v12, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    goto :goto_301

    .line 188
    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    :cond_2ff
    move/from16 v12, v25

    .line 195
    .end local v25    # "tempNum":I
    .restart local v12    # "tempNum":I
    :goto_301
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 196
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 200
    iget v14, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v14, :cond_32b

    .line 201
    iget v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 202
    .local v14, "splitProvinceID":I
    move/from16 v25, v12

    .end local v12    # "tempNum":I
    .restart local v25    # "tempNum":I
    iget v12, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move-object/from16 v27, v15

    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v27, "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v13, v12, v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "splitKey":Ljava/lang/String;
    if-eqz v12, :cond_323

    .line 205
    new-instance v15, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v15, v14, v12}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_323
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    goto :goto_32f

    .line 200
    .end local v14    # "splitProvinceID":I
    .end local v25    # "tempNum":I
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v12, "tempNum":I
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_32b
    move/from16 v25, v12

    move-object/from16 v27, v15

    .line 211
    .end local v12    # "tempNum":I
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v25    # "tempNum":I
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_32f
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 212
    move-object/from16 v25, v3

    .end local v13    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v25    # "tempNum":I
    goto/16 :goto_550

    .line 214
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v13, "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v14, "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_336
    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    .line 215
    .local v12, "armyDivision_ToCreate":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    const/4 v13, 0x0

    .line 219
    .local v13, "updateArmies":Z
    if-eqz v12, :cond_54c

    .line 220
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v14, :cond_392

    .line 221
    iget v14, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v14, :cond_38f

    .line 222
    iget v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .local v14, "a":I
    :goto_353
    if-ltz v14, :cond_38c

    .line 223
    sget-object v15, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    move-object/from16 v25, v3

    .end local v3    # "armyKey":Ljava/lang/String;
    .local v25, "armyKey":Ljava/lang/String;
    iget-object v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v3, :cond_387

    .line 224
    iget-object v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 225
    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    .line 227
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    iput v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 228
    const/4 v13, 0x1

    .line 230
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-gtz v3, :cond_387

    .line 231
    goto :goto_394

    .line 222
    :cond_387
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v3, v25

    goto :goto_353

    .end local v25    # "armyKey":Ljava/lang/String;
    .restart local v3    # "armyKey":Ljava/lang/String;
    :cond_38c
    move-object/from16 v25, v3

    .end local v3    # "armyKey":Ljava/lang/String;
    .restart local v25    # "armyKey":Ljava/lang/String;
    goto :goto_394

    .line 221
    .end local v14    # "a":I
    .end local v25    # "armyKey":Ljava/lang/String;
    .restart local v3    # "armyKey":Ljava/lang/String;
    :cond_38f
    move-object/from16 v25, v3

    .end local v3    # "armyKey":Ljava/lang/String;
    .restart local v25    # "armyKey":Ljava/lang/String;
    goto :goto_394

    .line 220
    .end local v25    # "armyKey":Ljava/lang/String;
    .restart local v3    # "armyKey":Ljava/lang/String;
    :cond_392
    move-object/from16 v25, v3

    .line 238
    .end local v3    # "armyKey":Ljava/lang/String;
    .restart local v25    # "armyKey":Ljava/lang/String;
    :goto_394
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_3d6

    .line 239
    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_3d6

    .line 240
    iget v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    .local v3, "a":I
    :goto_3a0
    if-ltz v3, :cond_3d6

    .line 241
    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3d3

    .line 242
    iget-object v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 243
    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    .line 245
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    iput v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 246
    const/4 v13, 0x1

    .line 248
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-gtz v14, :cond_3d3

    .line 249
    goto :goto_3d6

    .line 240
    :cond_3d3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3a0

    .line 256
    .end local v3    # "a":I
    :cond_3d6
    :goto_3d6
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_465

    .line 257
    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_465

    .line 258
    iget v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    .restart local v3    # "a":I
    :goto_3e2
    if-ltz v3, :cond_465

    .line 259
    sget-object v15, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_461

    .line 260
    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-nez v14, :cond_461

    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v14, :cond_461

    .line 261
    iget-object v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 262
    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    .line 264
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    iput v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 265
    const/4 v13, 0x1

    .line 267
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-gtz v14, :cond_461

    .line 268
    goto :goto_465

    .line 258
    :cond_461
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3e2

    .line 276
    .end local v3    # "a":I
    :cond_465
    :goto_465
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_4f4

    .line 277
    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_4f4

    .line 278
    iget v3, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    .restart local v3    # "a":I
    :goto_471
    if-ltz v3, :cond_4f4

    .line 279
    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4f0

    .line 280
    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v14, :cond_4f0

    sget-object v14, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v14, :cond_4f0

    .line 281
    iget-object v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 282
    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    .line 284
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    iput v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 285
    const/4 v13, 0x1

    .line 287
    iget v14, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-gtz v14, :cond_4f0

    .line 288
    goto :goto_4f4

    .line 278
    :cond_4f0
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_471

    .line 296
    .end local v3    # "a":I
    :cond_4f4
    :goto_4f4
    if-eqz v13, :cond_549

    .line 297
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v14, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    .line 298
    .local v3, "armyID":I
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget-object v15, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v14

    .line 300
    .local v14, "armyID_ToCreate":I
    if-ltz v3, :cond_546

    if-ltz v14, :cond_546

    .line 301
    iget v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-gtz v15, :cond_52a

    .line 302
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    move-object/from16 v28, v8

    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v28, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget-object v8, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v15, v14, v8}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    .line 303
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 305
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_53e

    .line 308
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_52a
    move-object/from16 v28, v8

    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v15, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v8, v3, v15}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    .line 309
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v15, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v8, v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    .line 312
    :goto_53e
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    goto :goto_550

    .line 300
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_546
    move-object/from16 v28, v8

    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_550

    .line 296
    .end local v3    # "armyID":I
    .end local v14    # "armyID_ToCreate":I
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_549
    move-object/from16 v28, v8

    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_550

    .line 219
    .end local v25    # "armyKey":Ljava/lang/String;
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v3, "armyKey":Ljava/lang/String;
    .restart local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_54c
    move-object/from16 v25, v3

    move-object/from16 v28, v8

    .line 319
    .end local v3    # "armyKey":Ljava/lang/String;
    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v12    # "armyDivision_ToCreate":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v13    # "updateArmies":Z
    .restart local v25    # "armyKey":Ljava/lang/String;
    :goto_550
    move-object/from16 v3, v25

    goto :goto_55b

    .line 134
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v24    # "battleWidth":I
    .end local v25    # "armyKey":Ljava/lang/String;
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v3    # "armyKey":Ljava/lang/String;
    .local v12, "battleWidth":I
    .local v13, "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v14, "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_553
    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 319
    .end local v12    # "battleWidth":I
    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v24    # "battleWidth":I
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_55b
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I
    :try_end_55d
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_55d} :catch_ad8

    if-gtz v8, :cond_56a

    .line 320
    goto :goto_586

    .line 131
    .end local v7    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v24    # "battleWidth":I
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v8, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v12    # "battleWidth":I
    .restart local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_560
    move-object/from16 v23, v8

    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 130
    .end local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v12    # "battleWidth":I
    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v24    # "battleWidth":I
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_56a
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v13, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v12, v24

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_1eb

    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v24    # "battleWidth":I
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v7, "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v12    # "battleWidth":I
    .restart local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_57a
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 326
    .end local v6    # "i":I
    .end local v7    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v12    # "battleWidth":I
    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v24    # "battleWidth":I
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_586
    :try_start_586
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v6, :cond_7ee

    .line 327
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object v12, v3

    move v13, v6

    .end local v3    # "armyKey":Ljava/lang/String;
    .local v12, "armyKey":Ljava/lang/String;
    .local v13, "i":I
    :goto_592
    if-ltz v13, :cond_7e6

    .line 328
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    move-object v14, v3

    .line 330
    .local v14, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v14, :cond_7cf

    .line 331
    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v3

    move-object v15, v3

    .line 333
    .local v15, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    move-object v8, v3

    .line 338
    .local v8, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I
    :try_end_5bc
    .catch Ljava/lang/Exception; {:try_start_586 .. :try_end_5bc} :catch_a65

    if-lez v3, :cond_5d6

    :try_start_5be
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v3, :cond_5d6

    .line 339
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 341
    .local v3, "tempNum":I
    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v6, v3

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 342
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v6, v3

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 343
    iput v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I
    :try_end_5d6
    .catch Ljava/lang/Exception; {:try_start_5be .. :try_end_5d6} :catch_ad8

    .line 345
    .end local v3    # "tempNum":I
    :cond_5d6
    :try_start_5d6
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I
    :try_end_5d8
    .catch Ljava/lang/Exception; {:try_start_5d6 .. :try_end_5d8} :catch_a65

    if-lez v3, :cond_5f2

    :try_start_5da
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_5f2

    .line 346
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 348
    .restart local v3    # "tempNum":I
    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v6, v3

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 349
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v6, v3

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 350
    iput v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I
    :try_end_5f2
    .catch Ljava/lang/Exception; {:try_start_5da .. :try_end_5f2} :catch_ad8

    .line 352
    .end local v3    # "tempNum":I
    :cond_5f2
    :try_start_5f2
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I
    :try_end_5f4
    .catch Ljava/lang/Exception; {:try_start_5f2 .. :try_end_5f4} :catch_a65

    if-lez v3, :cond_60e

    :try_start_5f6
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_60e

    .line 353
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 355
    .restart local v3    # "tempNum":I
    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v6, v3

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 356
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v6, v3

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 357
    iput v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I
    :try_end_60e
    .catch Ljava/lang/Exception; {:try_start_5f6 .. :try_end_60e} :catch_ad8

    .line 359
    .end local v3    # "tempNum":I
    :cond_60e
    :try_start_60e
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I
    :try_end_610
    .catch Ljava/lang/Exception; {:try_start_60e .. :try_end_610} :catch_a65

    if-lez v3, :cond_62a

    :try_start_612
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_62a

    .line 360
    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 362
    .restart local v3    # "tempNum":I
    iget v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v6, v3

    iput v6, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 363
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v6, v3

    iput v6, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 364
    iput v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I
    :try_end_62a
    .catch Ljava/lang/Exception; {:try_start_612 .. :try_end_62a} :catch_ad8

    .line 367
    .end local v3    # "tempNum":I
    :cond_62a
    :try_start_62a
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 368
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 369
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 375
    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v3, :cond_7c4

    .line 376
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-nez v3, :cond_6f7

    .line 377
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v25, 0x0

    move-object/from16 v28, v3

    move-object v3, v2

    move/from16 v29, v4

    .end local v4    # "provinceID":I
    .local v29, "provinceID":I
    move v4, v6

    move-object v7, v5

    const/16 v30, 0x1

    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v7, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v5, v29

    move-object/from16 v6, v28

    move-object/from16 v28, v15

    move-object v15, v7

    .end local v7    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v15, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v7, v19

    move-object v1, v8

    move-object/from16 v19, v23

    .end local v8    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v1, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v19, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v8, v25

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_68f

    .line 378
    if-nez v12, :cond_67f

    .line 379
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v3

    .line 380
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move/from16 v8, v29

    .end local v29    # "provinceID":I
    .local v8, "provinceID":I
    invoke-virtual {v3, v8, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_6f1

    .line 383
    .end local v8    # "provinceID":I
    .restart local v29    # "provinceID":I
    :cond_67f
    move/from16 v8, v29

    .end local v29    # "provinceID":I
    .restart local v8    # "provinceID":I
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v8, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_6f1

    .line 388
    .end local v8    # "provinceID":I
    .restart local v29    # "provinceID":I
    :cond_68f
    move/from16 v8, v29

    .end local v29    # "provinceID":I
    .restart local v8    # "provinceID":I
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 390
    .local v3, "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_6f1

    .line 391
    const/4 v4, 0x0

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 392
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 394
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 395
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 397
    if-nez v12, :cond_6df

    .line 398
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v4

    .line 399
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v4, v8, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_6f1

    .line 402
    :cond_6df
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    .line 403
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v4, v8, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    .line 408
    .end local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_6f1
    :goto_6f1
    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v8

    goto/16 :goto_7d5

    .line 411
    .end local v1    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v4    # "provinceID":I
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v8, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v15, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_6f7
    move-object v1, v8

    move-object/from16 v28, v15

    move-object/from16 v19, v23

    const/16 v30, 0x1

    move v8, v4

    move-object v15, v5

    .end local v4    # "provinceID":I
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v1    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v8, "provinceID":I
    .local v15, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 412
    .local v4, "splitProvinceID":I
    iget v3, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v1, v3, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .line 414
    .local v7, "splitKey":Ljava/lang/String;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 416
    if-eqz v7, :cond_7a2

    .line 417
    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object v3, v2

    move v5, v8

    move-object v6, v7

    move-object/from16 v29, v7

    .end local v7    # "splitKey":Ljava/lang/String;
    .local v29, "splitKey":Ljava/lang/String;
    move/from16 v7, v23

    move-object/from16 v23, v1

    move v1, v8

    .end local v8    # "provinceID":I
    .local v1, "provinceID":I
    .local v23, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v8, v25

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_73f

    .line 418
    if-nez v12, :cond_737

    .line 419
    move-object/from16 v12, v29

    .line 420
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v3, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    move-object/from16 v5, v29

    goto/16 :goto_7a6

    .line 423
    :cond_737
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move-object/from16 v5, v29

    .end local v29    # "splitKey":Ljava/lang/String;
    .local v5, "splitKey":Ljava/lang/String;
    invoke-virtual {v3, v1, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_7a6

    .line 428
    .end local v5    # "splitKey":Ljava/lang/String;
    .restart local v29    # "splitKey":Ljava/lang/String;
    :cond_73f
    move-object/from16 v5, v29

    .end local v29    # "splitKey":Ljava/lang/String;
    .restart local v5    # "splitKey":Ljava/lang/String;
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 430
    .restart local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_7a6

    .line 431
    const/4 v6, 0x0

    iput-boolean v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 432
    iput-boolean v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 434
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 435
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 437
    if-nez v12, :cond_78f

    .line 438
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v6

    .line 439
    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v6, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_7a6

    .line 442
    :cond_78f
    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    .line 443
    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v6, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    goto :goto_7a6

    .line 416
    .end local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v5    # "splitKey":Ljava/lang/String;
    .end local v23    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v1, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v7    # "splitKey":Ljava/lang/String;
    .restart local v8    # "provinceID":I
    :cond_7a2
    move-object/from16 v23, v1

    move-object v5, v7

    move v1, v8

    .line 449
    .end local v7    # "splitKey":Ljava/lang/String;
    .end local v8    # "provinceID":I
    .local v1, "provinceID":I
    .restart local v5    # "splitKey":Ljava/lang/String;
    .restart local v23    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7a6
    :goto_7a6
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-nez v3, :cond_7d5

    .line 450
    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7d5

    .line 375
    .end local v1    # "provinceID":I
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v4, "provinceID":I
    .local v5, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v8, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v15, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v23, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7c4
    move v1, v4

    move-object/from16 v28, v15

    move-object/from16 v19, v23

    const/16 v30, 0x1

    move-object v15, v5

    move-object/from16 v23, v8

    .end local v4    # "provinceID":I
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v8    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v1    # "provinceID":I
    .local v15, "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v23, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    goto :goto_7d5

    .line 330
    .end local v1    # "provinceID":I
    .end local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v4    # "provinceID":I
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v23, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7cf
    move v1, v4

    move-object v15, v5

    move-object/from16 v19, v23

    const/16 v30, 0x1

    .line 456
    .end local v4    # "provinceID":I
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v1    # "provinceID":I
    .restart local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7d5
    :goto_7d5
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-gtz v3, :cond_7db

    .line 457
    move-object v3, v12

    goto :goto_7f4

    .line 327
    .end local v14    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_7db
    add-int/lit8 v13, v13, -0x1

    const/4 v7, 0x1

    move v4, v1

    move-object v5, v15

    move-object/from16 v23, v19

    move/from16 v1, p0

    goto/16 :goto_592

    .end local v1    # "provinceID":I
    .end local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v4    # "provinceID":I
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7e6
    move v1, v4

    move-object v15, v5

    move-object/from16 v19, v23

    const/16 v30, 0x1

    .end local v4    # "provinceID":I
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v1    # "provinceID":I
    .restart local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move-object v3, v12

    goto :goto_7f4

    .line 326
    .end local v1    # "provinceID":I
    .end local v12    # "armyKey":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v3, "armyKey":Ljava/lang/String;
    .restart local v4    # "provinceID":I
    .restart local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_7ee
    move v1, v4

    move-object v15, v5

    move-object/from16 v19, v23

    const/16 v30, 0x1

    .line 463
    .end local v4    # "provinceID":I
    .end local v5    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v23    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v1    # "provinceID":I
    .restart local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :goto_7f4
    iget v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v4, :cond_a2c

    .line 464
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object v12, v3

    move v13, v4

    .end local v3    # "armyKey":Ljava/lang/String;
    .restart local v12    # "armyKey":Ljava/lang/String;
    .restart local v13    # "i":I
    :goto_800
    if-ltz v13, :cond_a27

    .line 465
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    move-object v14, v3

    .line 467
    .restart local v14    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v14, :cond_a18

    .line 468
    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v3

    move-object v8, v3

    .line 470
    .local v8, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>()V

    move-object v7, v3

    .line 475
    .local v7, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v3, :cond_844

    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-lez v3, :cond_844

    .line 476
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 478
    .local v3, "tempNum":I
    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v4, v3

    iput v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 479
    iget v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v4, v3

    iput v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 480
    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 482
    .end local v3    # "tempNum":I
    :cond_844
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_860

    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_860

    .line 483
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 485
    .restart local v3    # "tempNum":I
    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v4, v3

    iput v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 486
    iget v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v4, v3

    iput v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 487
    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 489
    .end local v3    # "tempNum":I
    :cond_860
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_87c

    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_87c

    .line 490
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 492
    .restart local v3    # "tempNum":I
    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v4, v3

    iput v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 493
    iget v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v4, v3

    iput v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 494
    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 496
    .end local v3    # "tempNum":I
    :cond_87c
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_898

    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_898

    .line 497
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 499
    .restart local v3    # "tempNum":I
    iget v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v4, v3

    iput v4, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 500
    iget v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v4, v3

    iput v4, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 501
    iput v3, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 504
    .end local v3    # "tempNum":I
    :cond_898
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 505
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 506
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 512
    iget v3, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-lez v3, :cond_a11

    .line 513
    iget v3, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-nez v3, :cond_953

    .line 514
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object v3, v2

    move v5, v1

    move-object/from16 v28, v10

    move-object v10, v7

    .end local v7    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v10, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v28, "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    move/from16 v7, v23

    move-object/from16 v23, v8

    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v23, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    move/from16 v8, v25

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_8ed

    .line 515
    if-nez v12, :cond_8df

    .line 516
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v3

    .line 517
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v3, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_94d

    .line 520
    :cond_8df
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_94d

    .line 525
    :cond_8ed
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 527
    .local v3, "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_94d

    .line 528
    const/4 v4, 0x0

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 529
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 531
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 532
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 534
    if-nez v12, :cond_93b

    .line 535
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v4

    .line 536
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v4, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_94d

    .line 539
    :cond_93b
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    .line 540
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v4, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    .line 545
    .end local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_94d
    :goto_94d
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    goto/16 :goto_a1b

    .line 548
    .end local v23    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v7    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v10, "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_953
    move-object/from16 v23, v8

    move-object/from16 v28, v10

    move-object v10, v7

    .end local v7    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v10, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    iget v4, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    .line 549
    .local v4, "splitProvinceID":I
    iget v3, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v5, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v10, v3, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;->splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .line 551
    .local v8, "splitKey":Ljava/lang/String;
    if-eqz v8, :cond_9f1

    .line 552
    const/4 v7, 0x0

    const/16 v25, 0x0

    move-object v3, v2

    move v5, v1

    move-object v6, v8

    move-object/from16 v29, v8

    .end local v8    # "splitKey":Ljava/lang/String;
    .restart local v29    # "splitKey":Ljava/lang/String;
    move/from16 v8, v25

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_98c

    .line 553
    if-nez v12, :cond_983

    .line 554
    move-object/from16 v12, v29

    .line 555
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v3, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    move-object/from16 v5, v29

    const/4 v6, 0x0

    goto/16 :goto_9f3

    .line 558
    :cond_983
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    move-object/from16 v5, v29

    .end local v29    # "splitKey":Ljava/lang/String;
    .local v5, "splitKey":Ljava/lang/String;
    invoke-virtual {v3, v1, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_9f3

    .line 563
    .end local v5    # "splitKey":Ljava/lang/String;
    .restart local v29    # "splitKey":Ljava/lang/String;
    :cond_98c
    move-object/from16 v5, v29

    .end local v29    # "splitKey":Ljava/lang/String;
    .restart local v5    # "splitKey":Ljava/lang/String;
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 565
    .restart local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_9ef

    .line 566
    const/4 v6, 0x0

    iput-boolean v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 567
    iput-boolean v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 569
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 570
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 572
    if-nez v12, :cond_9dc

    .line 573
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    move-object v12, v7

    .line 574
    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v7, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_9f3

    .line 577
    :cond_9dc
    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    .line 578
    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v7, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->checkMerge(ILjava/lang/String;)V

    goto :goto_9f3

    .line 565
    :cond_9ef
    const/4 v6, 0x0

    goto :goto_9f3

    .line 551
    .end local v3    # "extraRegroup":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v5    # "splitKey":Ljava/lang/String;
    .restart local v8    # "splitKey":Ljava/lang/String;
    :cond_9f1
    move-object v5, v8

    const/4 v6, 0x0

    .line 584
    .end local v8    # "splitKey":Ljava/lang/String;
    .restart local v5    # "splitKey":Ljava/lang/String;
    :goto_9f3
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-nez v3, :cond_a1b

    .line 585
    invoke-interface {v9, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a1b

    .line 512
    .end local v4    # "splitProvinceID":I
    .end local v5    # "splitKey":Ljava/lang/String;
    .end local v23    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v7    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v8, "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v10, "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_a11
    move-object/from16 v23, v8

    move-object/from16 v28, v10

    const/4 v6, 0x0

    move-object v10, v7

    .end local v7    # "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v8    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v10, "armyCompositionSplit":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v23    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    goto :goto_a1b

    .line 467
    .end local v23    # "currentArmyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .local v10, "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_a18
    move-object/from16 v28, v10

    const/4 v6, 0x0

    .line 591
    .end local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_a1b
    :goto_a1b
    iget v3, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    if-gtz v3, :cond_a21

    .line 592
    move-object v3, v12

    goto :goto_a2f

    .line 464
    .end local v14    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_a21
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v10, v28

    goto/16 :goto_800

    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_a27
    move-object/from16 v28, v10

    const/4 v6, 0x0

    .end local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    move-object v3, v12

    goto :goto_a2f

    .line 463
    .end local v12    # "armyKey":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .local v3, "armyKey":Ljava/lang/String;
    .restart local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :cond_a2c
    move-object/from16 v28, v10

    const/4 v6, 0x0

    .line 597
    .end local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :goto_a2f
    add-int/lit8 v11, v11, 0x1

    .line 598
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4
    :try_end_a35
    .catch Ljava/lang/Exception; {:try_start_62a .. :try_end_a35} :catch_a65

    if-lt v11, v4, :cond_a39

    .line 599
    const/4 v4, 0x0

    move v11, v4

    .line 601
    .end local v1    # "provinceID":I
    .end local v3    # "armyKey":Ljava/lang/String;
    .end local v15    # "armyCompositionToCreate":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_a39
    move/from16 v1, p0

    move/from16 v4, v16

    move-object/from16 v8, v19

    move-object/from16 v6, v20

    move-object/from16 v13, v21

    move-object/from16 v7, v22

    move/from16 v12, v24

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v10, v28

    const/4 v5, 0x1

    goto/16 :goto_189

    .line 99
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v20    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "battleWidth":I
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .local v6, "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .local v12, "battleWidth":I
    .local v13, "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v14, "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .local v15, "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    :cond_a50
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v19, v8

    move-object/from16 v28, v10

    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/16 v30, 0x1

    .end local v6    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .end local v12    # "battleWidth":I
    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v20    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "battleWidth":I
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    move/from16 v4, v16

    goto :goto_a7c

    .line 624
    .end local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v9    # "armiesInOwnProvinces":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .end local v11    # "sortedID":I
    .end local v16    # "limit":I
    .end local v18    # "limitOfProvinces":I
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v20    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "battleWidth":I
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :catch_a65
    move-exception v0

    move/from16 v7, p0

    goto/16 :goto_ada

    .line 99
    .restart local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v4, "limit":I
    .restart local v6    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v9    # "armiesInOwnProvinces":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .restart local v11    # "sortedID":I
    .restart local v12    # "battleWidth":I
    .restart local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v18    # "limitOfProvinces":I
    :cond_a6a
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v19, v8

    move-object/from16 v28, v10

    move/from16 v24, v12

    move-object/from16 v21, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/16 v30, 0x1

    .line 605
    .end local v6    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v10    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .end local v12    # "battleWidth":I
    .end local v13    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v14    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v15    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v20    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "battleWidth":I
    .restart local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .restart local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    :goto_a7c
    :try_start_a7c
    iget v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a80
    if-ltz v1, :cond_abf

    .line 606
    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 608
    .local v3, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_aba

    .line 609
    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v5, :cond_ab7

    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v5, :cond_ab7

    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v5, :cond_ab7

    .line 610
    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->REORGANIZE_MERGE_ALL_IN_PROVINCE_WITH_REGIMENTS_BELOW:I

    if-ge v5, v6, :cond_ab4

    .line 611
    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;
    :try_end_aac
    .catch Ljava/lang/Exception; {:try_start_a7c .. :try_end_aac} :catch_ac2

    move/from16 v7, p0

    :try_start_aae
    invoke-static {v7, v5, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->mergeArmy_InProvince(IILjava/lang/String;)V
    :try_end_ab1
    .catch Ljava/lang/Exception; {:try_start_aae .. :try_end_ab1} :catch_ab2

    goto :goto_abc

    .line 616
    .end local v1    # "i":I
    .end local v3    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :catch_ab2
    move-exception v0

    goto :goto_ac5

    .line 610
    .restart local v1    # "i":I
    .restart local v3    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_ab4
    move/from16 v7, p0

    goto :goto_abc

    .line 609
    :cond_ab7
    move/from16 v7, p0

    goto :goto_abc

    .line 608
    :cond_aba
    move/from16 v7, p0

    .line 605
    .end local v3    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :goto_abc
    add-int/lit8 v1, v1, -0x1

    goto :goto_a80

    :cond_abf
    move/from16 v7, p0

    .line 618
    .end local v1    # "i":I
    goto :goto_ac9

    .line 616
    :catch_ac2
    move-exception v0

    move/from16 v7, p0

    :goto_ac5
    move-object v1, v0

    .line 617
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_ac6
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 620
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_ac9
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 621
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 622
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 623
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V
    :try_end_ad5
    .catch Ljava/lang/Exception; {:try_start_ac6 .. :try_end_ad5} :catch_ad6

    .line 626
    .end local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v4    # "limit":I
    .end local v9    # "armiesInOwnProvinces":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    .end local v11    # "sortedID":I
    .end local v18    # "limitOfProvinces":I
    .end local v19    # "armyFourth":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v20    # "sortedProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "armyFirst":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v22    # "civProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "battleWidth":I
    .end local v26    # "armySecond":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v27    # "armyThird":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v28    # "armiesInAnotherTerritory":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyPosition;>;"
    goto :goto_ade

    .line 624
    :catch_ad6
    move-exception v0

    goto :goto_ada

    :catch_ad8
    move-exception v0

    move v7, v1

    :goto_ada
    move-object v1, v0

    .line 625
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 628
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_ade
    return-void

    nop

    :pswitch_data_ae0
    .packed-switch 0x0
        :pswitch_1d4
        :pswitch_1ce
        :pswitch_1c8
    .end packed-switch
.end method
