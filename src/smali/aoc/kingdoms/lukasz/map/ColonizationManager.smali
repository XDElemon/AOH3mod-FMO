.class public Laoc/kingdoms/lukasz/map/ColonizationManager;
.super Ljava/lang/Object;
.source "ColonizationManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static establishSettlement(III)Z
    .registers 9
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I
    .param p2, "numOfSettlers"    # I

    .line 14
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 15
    return v0

    .line 18
    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_89

    .line 19
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD:Z

    if-nez v1, :cond_89

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL:Z

    if-eqz v1, :cond_35

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-eqz v1, :cond_35

    goto :goto_89

    .line 22
    :cond_35
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS:Z

    if-eqz v1, :cond_43

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID:I

    if-ge v1, v2, :cond_89

    :cond_43
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    if-nez v1, :cond_89

    .line 23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Law"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NoColonization"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->law:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 24
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "NoColonization.d"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 25
    return v0

    .line 29
    :cond_89
    :goto_89
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 31
    .local v1, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_94

    .line 32
    return v0

    .line 34
    :cond_94
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getNumberOfSettlers(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move p2, v2

    .line 36
    if-gtz p2, :cond_a0

    .line 37
    return v0

    .line 40
    :cond_a0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_MAX_SETTLERS:I

    mul-int v2, v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move p2, v2

    .line 42
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 44
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 45
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 47
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    .line 48
    invoke-virtual {v1, p0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 50
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    .line 51
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_GROWTH_RATE_EXTRA:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    .line 53
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addColonizationProvince(I)V

    .line 55
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f8
    if-ltz v2, :cond_132

    .line 56
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, p0, :cond_12f

    .line 57
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeAllSettlers()V

    .line 59
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez v4, :cond_12f

    .line 60
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v4, :cond_12c

    .line 61
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 63
    :cond_12c
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12f} :catch_134

    .line 55
    :cond_12f
    add-int/lit8 v2, v2, -0x1

    goto :goto_f8

    .line 70
    .end local v1    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v2    # "i":I
    :cond_132
    nop

    .line 72
    return v3

    .line 67
    :catch_134
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 69
    return v0
.end method

.method public static establishSettlement_Gold(II)Z
    .registers 6
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 96
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 98
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_c

    .line 99
    const/4 v1, 0x0

    return v1

    .line 102
    :cond_c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    sub-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 104
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 106
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 107
    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 109
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    .line 110
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 112
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    .line 113
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_GROWTH_RATE_EXTRA:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    .line 115
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addColonizationProvince(I)V

    .line 117
    const/4 v1, 0x1

    return v1
.end method

.method public static final getNumberOfSettlers(II)I
    .registers 6
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "numOfSettlers":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 80
    .local v1, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_21

    .line 81
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_1e

    .line 82
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getNumberOfSettlers()I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 86
    .end local v2    # "i":I
    :cond_21
    return v0
.end method

.method public static final getSettlementEstablishmentProgress(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 90
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationStartedTurnID()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_TIME:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
