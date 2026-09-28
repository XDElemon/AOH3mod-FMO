.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResearch;
.super Ljava/lang/Object;
.source "AI_BuildResearch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildResearchBuilding(II)Z
    .registers 19
    .param p0, "civID"    # I
    .param p1, "limitOfBuildings"    # I

    .line 16
    move/from16 v0, p0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 18
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_37

    .line 19
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

    if-ge v2, v3, :cond_36

    .line 20
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v2

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 21
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_36

    .line 22
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeCapitalCity()Z

    .line 27
    :cond_36
    return v4

    .line 30
    :cond_37
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 32
    .local v2, "currentResearch":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v3, v6, :cond_a8

    .line 33
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_41
    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v6, v7, :cond_a5

    .line 34
    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v7, :cond_a2

    .line 35
    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v8

    aget v7, v7, v8

    add-float/2addr v2, v7

    .line 33
    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 32
    .end local v6    # "j":I
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 40
    .end local v3    # "i":I
    :cond_a8
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v3

    .line 42
    .local v3, "maxResearch":F
    const/4 v6, 0x1

    cmpl-float v7, v2, v3

    if-ltz v7, :cond_b2

    .line 43
    return v6

    .line 46
    :cond_b2
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F

    mul-float v7, v7, v8

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(IF)F

    move-result v8

    sub-float/2addr v7, v8

    .line 48
    .local v7, "researchBudgetLeft":F
    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    if-gez v9, :cond_ce

    .line 49
    return v6

    .line 52
    :cond_ce
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 54
    .local v9, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_26b

    .line 55
    invoke-static {v0, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v4

    .line 56
    .local v4, "aiScore":I
    invoke-static {v0, v9, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v10

    .line 59
    .local v10, "bestBuildingID":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_e3
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    const v13, -0x368bdc10    # -999999.0f

    if-ge v11, v12, :cond_148

    .line 60
    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v12

    .line 62
    .local v12, "nProvinceID":I
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v14, v15, v6}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v6

    if-nez v6, :cond_13e

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v6, v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v6

    if-eqz v6, :cond_127

    goto :goto_13e

    .line 66
    :cond_127
    invoke-static {v0, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_Default(II)V

    .line 68
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_144

    .line 69
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_ProvinceMaintenance(I)V

    .line 70
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_DistanceToCapital(I)V

    .line 71
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_GrowthRateResearch(I)V

    goto :goto_144

    .line 63
    :cond_13e
    :goto_13e
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iput v13, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 59
    :cond_144
    :goto_144
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_e3

    .end local v12    # "nProvinceID":I
    :cond_148
    move v6, v2

    move/from16 v2, p1

    .line 76
    .end local v11    # "i":I
    .end local p1    # "limitOfBuildings":I
    .local v2, "limitOfBuildings":I
    .local v6, "currentResearch":F
    :goto_14b
    add-int/lit8 v11, v2, -0x1

    .end local v2    # "limitOfBuildings":I
    .local v11, "limitOfBuildings":I
    if-lez v2, :cond_269

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, "bestProvinceID":I
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_151
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v14

    if-ge v12, v14, :cond_197

    .line 80
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_171

    .line 81
    move v2, v12

    goto :goto_194

    .line 83
    :cond_171
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_194

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    const/16 v15, 0x32

    if-ge v14, v15, :cond_194

    .line 84
    move v2, v12

    .line 79
    :cond_194
    :goto_194
    add-int/lit8 v12, v12, 0x1

    goto :goto_151

    .line 88
    .end local v12    # "i":I
    :cond_197
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    .line 90
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v12, v12, v8

    if-lez v12, :cond_267

    .line 92
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iput v13, v12, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 94
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v12, v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result v12

    if-nez v12, :cond_1c7

    .line 95
    const/4 v5, 0x1

    return v5

    .line 98
    :cond_1c7
    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v12, :cond_225

    .line 99
    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v12, v12, v14

    add-float/2addr v6, v12

    .line 101
    cmpl-float v12, v6, v3

    if-ltz v12, :cond_1fe

    .line 102
    const/4 v5, 0x1

    return v5

    .line 105
    :cond_1fe
    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v12, v12, v14

    invoke-static {v0, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(IF)F

    move-result v12

    sub-float/2addr v7, v12

    .line 107
    cmpg-float v12, v7, v8

    if-gez v12, :cond_225

    .line 108
    const/4 v5, 0x1

    return v5

    .line 117
    :cond_225
    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz v12, :cond_263

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v12, v12, v14

    cmpl-float v12, v12, v8

    if-lez v12, :cond_263

    .line 118
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->balance_StopBuildingConstruction_Research(I)Z

    move-result v12

    if-eqz v12, :cond_261

    .line 119
    const/4 v12, 0x1

    return v12

    .line 118
    :cond_261
    const/4 v12, 0x1

    goto :goto_264

    .line 117
    :cond_263
    const/4 v12, 0x1

    .line 122
    .end local v2    # "bestProvinceID":I
    :goto_264
    move v2, v11

    goto/16 :goto_14b

    .line 114
    .restart local v2    # "bestProvinceID":I
    :cond_267
    const/4 v12, 0x1

    return v12

    .line 124
    .end local v2    # "bestProvinceID":I
    :cond_269
    const/4 v12, 0x1

    return v12

    .line 127
    .end local v4    # "aiScore":I
    .end local v6    # "currentResearch":F
    .end local v10    # "bestBuildingID":I
    .end local v11    # "limitOfBuildings":I
    .local v2, "currentResearch":F
    .restart local p1    # "limitOfBuildings":I
    :cond_26b
    return v4
.end method
