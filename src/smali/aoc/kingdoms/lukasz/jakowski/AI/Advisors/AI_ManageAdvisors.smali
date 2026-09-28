.class public Laoc/kingdoms/lukasz/jakowski/AI/Advisors/AI_ManageAdvisors;
.super Ljava/lang/Object;
.source "AI_ManageAdvisors.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recruitAdvisor(II)Z
    .registers 5
    .param p0, "iCivID"    # I
    .param p1, "iAdvisorType"    # I

    .line 130
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 131
    return v2

    .line 134
    :cond_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_21

    .line 135
    return v2

    .line 138
    :cond_21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 139
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 141
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addRecruitedAdvisors(I)V

    .line 143
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v0, :cond_56

    .line 144
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    .line 147
    :cond_56
    packed-switch p1, :pswitch_data_b2

    .line 164
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 165
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto :goto_b1

    .line 159
    :pswitch_6f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 161
    goto :goto_b1

    .line 154
    :pswitch_85
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 155
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 156
    goto :goto_b1

    .line 149
    :pswitch_9b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 150
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 151
    nop

    .line 170
    :goto_b1
    return v1

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_85
        :pswitch_6f
    .end packed-switch
.end method

.method public static updateAdvisors()V
    .registers 2

    .line 18
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ADVISORS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 20
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_22

    .line 21
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1c

    .line 22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Advisors/AI_ManageAdvisors;->updateAdvisors(I)V

    .line 20
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ADVISORS:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 26
    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2d

    .line 27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ADVISORS:I

    add-int/2addr v0, v1

    .line 30
    :cond_2d
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 31
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_40

    .line 32
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Advisors/AI_ManageAdvisors;->updateAdvisors(I)V

    .line 30
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ADVISORS:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_47

    add-int/2addr v0, v1

    goto :goto_2d

    .line 37
    .end local v0    # "i":I
    :cond_46
    goto :goto_4b

    .line 35
    :catch_47
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 38
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4b
    return-void
.end method

.method public static updateAdvisors(I)V
    .registers 10
    .param p0, "civID"    # I

    .line 41
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 43
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_GOLD_COST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13a

    .line 44
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_LEGACY_COST:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13a

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "toRecruit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2d
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v2, :cond_3b

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_3b
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v5, 0x2

    if-nez v2, :cond_49

    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_49
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v6, 0x3

    if-nez v2, :cond_57

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7c

    .line 61
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 63
    .local v2, "rand":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Advisors/AI_ManageAdvisors;->recruitAdvisor(II)Z

    move-result v7

    if-nez v7, :cond_78

    .line 64
    goto :goto_7c

    .line 67
    :cond_78
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    .end local v2    # "rand":I
    goto :goto_57

    .line 70
    :cond_7c
    :goto_7c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROMOTE_COST_PER_LEVEL:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    cmpl-float v2, v2, v7

    if-lez v2, :cond_137

    .line 73
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v7

    if-ge v2, v7, :cond_9e

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_9e
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v7

    if-ge v2, v7, :cond_af

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_af
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v4

    if-ge v2, v4, :cond_c0

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_c0
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v2, v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v4

    if-ge v2, v4, :cond_d1

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_d1
    :goto_d1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_137

    .line 88
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 90
    .restart local v2    # "rand":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4, v3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->promoteAdvisor(IIZ)Z

    move-result v4

    if-eqz v4, :cond_137

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_13c

    goto :goto_136

    .line 111
    :pswitch_ff
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v5

    if-lt v4, v5, :cond_136

    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_136

    .line 105
    :pswitch_10d
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v5

    if-lt v4, v5, :cond_136

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_136

    .line 99
    :pswitch_11b
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v5

    if-lt v4, v5, :cond_136

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_136

    .line 93
    :pswitch_129
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v5

    if-lt v4, v5, :cond_136

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    .end local v2    # "rand":I
    :cond_136
    :goto_136
    goto :goto_d1

    .line 124
    :cond_137
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 127
    .end local v1    # "toRecruit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13a
    return-void

    nop

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_129
        :pswitch_11b
        :pswitch_10d
        :pswitch_ff
    .end packed-switch
.end method
