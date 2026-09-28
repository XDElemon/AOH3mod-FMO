.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_DisbandArmies;
.super Ljava/lang/Object;
.source "AI_DisbandArmies.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateDisbandArmies()V
    .registers 2

    .line 19
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DISBAND_ARMIES:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 21
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 24
    :try_start_19
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_DisbandArmies;->updateDisbandArmies(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 27
    goto :goto_21

    .line 25
    :catch_1d
    move-exception v1

    .line 26
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 21
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DISBAND_ARMIES:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 31
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 32
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DISBAND_ARMIES:I

    add-int/2addr v0, v1

    .line 35
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 36
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 38
    :try_start_42
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_DisbandArmies;->updateDisbandArmies(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 41
    goto :goto_4a

    .line 39
    :catch_46
    move-exception v1

    .line 40
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 35
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_DISBAND_ARMIES:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 44
    :cond_50
    return-void
.end method

.method public static updateDisbandArmies(I)V
    .registers 12
    .param p0, "civID"    # I

    .line 47
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 49
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-nez v1, :cond_188

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_188

    .line 50
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->MILITARY_SPENDINGS_PERC_OF_MAX_INCOME_DISBAND:F

    mul-float v1, v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    const/4 v3, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c1

    .line 53
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->MILITARY_SPENDINGS_PERC_OF_MAX_INCOME_DISBAND:F

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    .line 56
    .local v1, "maintenanceCostToDisband":F
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 60
    :try_start_37
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelRecruitArmy_All()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 63
    goto :goto_3f

    .line 61
    :catch_3b
    move-exception v2

    .line 62
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 64
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3f
    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_42
    if-ltz v2, :cond_c1

    .line 65
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 67
    .local v4, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v4, :cond_be

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "possibleToDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    iget-object v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v6, "toDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :goto_65
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_a9

    .line 74
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 76
    .local v7, "disbandID":I
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MaintenanceCost:F

    sub-float/2addr v1, v9

    .line 79
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    cmpg-float v9, v1, v8

    if-gez v9, :cond_a8

    .line 82
    goto :goto_a9

    .line 84
    .end local v7    # "disbandID":I
    :cond_a8
    goto :goto_65

    .line 86
    :cond_a9
    :goto_a9
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v9, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->disbandRegiment(Ljava/lang/String;Ljava/util/List;)Z

    .line 87
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 89
    cmpg-float v7, v1, v8

    if-gez v7, :cond_be

    .line 90
    goto :goto_c1

    .line 64
    .end local v4    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v5    # "possibleToDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v6    # "toDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :cond_be
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .line 97
    .end local v1    # "maintenanceCostToDisband":F
    .end local v2    # "i":I
    :cond_c1
    :goto_c1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->DISBAND_ARMIES_IF_BALANCE_BELOW:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_188

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->DISBAND_ARMIES_IF_BALANCE_BELOW:F

    .line 102
    .local v1, "balance":F
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v2

    if-eq v2, v3, :cond_da

    .line 103
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMilitaryLevel(I)V

    .line 106
    :cond_da
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_e3

    .line 107
    return-void

    .line 111
    :cond_e3
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 115
    :try_start_ea
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelRecruitArmy_All()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_ee

    .line 118
    goto :goto_f2

    .line 116
    :catch_ee
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 122
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_f2
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v2

    .line 124
    .local v2, "currentBalance":F
    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_f9
    if-ltz v4, :cond_188

    .line 125
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 127
    .local v3, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v3, :cond_184

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v5    # "possibleToDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .restart local v6    # "toDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :goto_11c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16f

    .line 134
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 136
    .restart local v7    # "disbandID":I
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MaintenanceCost:F

    add-float/2addr v2, v8

    .line 139
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    cmpl-float v8, v2, v1

    if-lez v8, :cond_16e

    .line 144
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->disbandRegiment(Ljava/lang/String;Ljava/util/List;)Z

    .line 145
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 146
    return-void

    .line 148
    .end local v7    # "disbandID":I
    :cond_16e
    goto :goto_11c

    .line 152
    :cond_16f
    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->disbandRegiment(Ljava/lang/String;Ljava/util/List;)Z

    .line 153
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 155
    cmpl-float v7, v2, v1

    if-lez v7, :cond_184

    .line 156
    return-void

    .line 124
    .end local v3    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v5    # "possibleToDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v6    # "toDisband":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    :cond_184
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_f9

    .line 162
    .end local v1    # "balance":F
    .end local v2    # "currentBalance":F
    .end local v4    # "i":I
    :cond_188
    return-void
.end method
