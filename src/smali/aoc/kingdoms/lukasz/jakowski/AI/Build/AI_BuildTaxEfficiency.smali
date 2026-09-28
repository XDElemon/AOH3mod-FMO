.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildTaxEfficiency;
.super Ljava/lang/Object;
.source "AI_BuildTaxEfficiency.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBuilding(IILjava/util/List;)Z
    .registers 12
    .param p0, "civID"    # I
    .param p1, "limitOfBuildings"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)Z"
        }
    .end annotation

    .line 12
    .local p2, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore(ILjava/util/List;)I

    move-result v0

    .line 13
    .local v0, "aiScore":I
    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v1

    .line 16
    .local v1, "bestBuildingID":I
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildTaxEfficiency;->updateScore(III)V

    .line 18
    :goto_1b
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "limitOfBuildings":I
    .local v2, "limitOfBuildings":I
    const/4 v3, 0x1

    if-lez p1, :cond_121

    .line 19
    const/4 p1, 0x0

    .line 21
    .local p1, "bestProvinceID":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_22
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    const/16 v6, 0x64

    if-ge v4, v5, :cond_7e

    .line 22
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_50

    .line 23
    move p1, v4

    goto :goto_7b

    .line 25
    :cond_50
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_7b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_7b

    .line 26
    move p1, v4

    .line 21
    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 30
    .end local v4    # "i":I
    :cond_7e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result p1

    .line 32
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_120

    .line 34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    const v7, -0x368bdc10    # -999999.0f

    iput v7, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v4, v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result v4

    if-nez v4, :cond_b5

    .line 37
    return v3

    .line 40
    :cond_b5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_e2

    .line 41
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_BUILDING_CHANCE:I

    if-ge v4, v6, :cond_e2

    .line 42
    invoke-static {p0, p2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsAIScore_BestID(ILjava/util/List;I)I

    move-result v4

    .line 44
    .local v4, "bestBuildingID_2":I
    if-eq v1, v4, :cond_e1

    .line 45
    move v1, v4

    .line 46
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-static {p0, v6, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildTaxEfficiency;->updateScore(III)V

    .line 48
    .end local v4    # "bestBuildingID_2":I
    :cond_e1
    nop

    .line 56
    :cond_e2
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    if-eqz v4, :cond_11d

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v4, v4, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11d

    .line 57
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->balance_StopBuildingConstruction(I)Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 58
    return v3

    .line 61
    .end local p1    # "bestProvinceID":I
    :cond_11d
    move p1, v2

    goto/16 :goto_1b

    .line 53
    .restart local p1    # "bestProvinceID":I
    :cond_120
    return v3

    .line 63
    .end local p1    # "bestProvinceID":I
    :cond_121
    return v3
.end method

.method public static updateScore(III)V
    .registers 7
    .param p0, "civID"    # I
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    .line 70
    .local v1, "nProvinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_2f

    .line 74
    :cond_28
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_Default(II)V

    .line 76
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->buildProvince_AIBuildScore_GrowthRateTaxEfficiency(I)V

    goto :goto_38

    .line 71
    :cond_2f
    :goto_2f
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const v3, -0x368bdc10    # -999999.0f

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 67
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    .end local v1    # "nProvinceID":I
    :cond_3b
    return-void
.end method
