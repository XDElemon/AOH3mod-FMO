.class public Laoc/kingdoms/lukasz/jakowski/AI/Legacies/AI_Legacy;
.super Ljava/lang/Object;
.source "AI_Legacy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unlockLegacy(I)V
    .registers 12
    .param p0, "civID"    # I

    .line 40
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget v1, Laoc/kingdoms/lukasz/map/LegacyManager;->minLegacyCost:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_120

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "toUnlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "toUnlockLevel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, "score":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    sget v4, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v3, v4, :cond_a6

    .line 47
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyLevel(I)I

    move-result v4

    .line 49
    .local v4, "level":I
    if-gez v4, :cond_5b

    .line 50
    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_a2

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AI:[I

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 56
    :cond_5b
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a2

    .line 57
    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    add-int/lit8 v6, v4, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a2

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v5, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AI:[I

    add-int/lit8 v6, v4, 0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 60
    add-int/lit8 v5, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_a2
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 65
    .end local v3    # "i":I
    .end local v4    # "level":I
    :cond_a6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11a

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "rand":I
    const/4 v4, 0x0

    .line 69
    .local v4, "bestID":I
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_af
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->UNLOCK_LEGACIES:I

    if-ge v5, v6, :cond_11a

    .line 70
    if-lez v2, :cond_117

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_117

    .line 71
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    move v3, v6

    .line 72
    const/4 v4, 0x0

    .line 74
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "iSize":I
    const/4 v8, 0x0

    .local v8, "currScore":I
    :goto_cb
    if-ge v6, v7, :cond_f5

    .line 75
    sget-object v9, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->AI:[I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v9, v9, v10

    add-int/2addr v8, v9

    .line 77
    if-ge v3, v8, :cond_f2

    .line 78
    move v4, v6

    .line 79
    goto :goto_f5

    .line 74
    :cond_f2
    add-int/lit8 v6, v6, 0x1

    goto :goto_cb

    .line 83
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    .end local v8    # "currScore":I
    :cond_f5
    :goto_f5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockLegacy(I)Z

    .line 85
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v2, v6

    .line 86
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_117
    add-int/lit8 v5, v5, 0x1

    goto :goto_af

    .line 92
    .end local v3    # "rand":I
    .end local v4    # "bestID":I
    .end local v5    # "a":I
    :cond_11a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_120} :catch_121

    .line 97
    .end local v0    # "toUnlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "toUnlockLevel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "score":I
    :cond_120
    goto :goto_125

    .line 95
    :catch_121
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_125
    return-void
.end method

.method public static updateCiv_Legacies()V
    .registers 2

    .line 16
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UNLOCK_LEGACY:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 18
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_22

    .line 19
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 20
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Legacies/AI_Legacy;->unlockLegacy(I)V

    .line 18
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UNLOCK_LEGACY:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 24
    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2d

    .line 25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UNLOCK_LEGACY:I

    add-int/2addr v0, v1

    .line 28
    :cond_2d
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 29
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 30
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Legacies/AI_Legacy;->unlockLegacy(I)V

    .line 28
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_UNLOCK_LEGACY:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    add-int/2addr v0, v1

    goto :goto_2d

    .line 35
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 33
    :catch_47
    move-exception v0

    .line 34
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method
