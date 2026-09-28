.class public Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;
.super Ljava/lang/Object;
.source "AI_IncreaseTaxEfficiency.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildScore_InvestInEconomy_Distance(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 123
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_InvestInEconomy_Distance_ProvinceID(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_Distance_ProvinceID(I)V
    .registers 8
    .param p0, "provinceID"    # I

    .line 128
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE_W_GR:F

    .line 130
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_DISTANCE_W_DIS:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    mul-float v4, v4, v6

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 132
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 133
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 108
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 113
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_GROWTH_RATE:I

    int-to-float v2, v2

    .line 114
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 116
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 117
    return-void
.end method

.method public static final buildScore_Invest_PayOff(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 139
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_Invest_PayOff_ProvinceID(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_Invest_PayOff_ProvinceID(I)V
    .registers 4
    .param p0, "provinceID"    # I

    .line 144
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation_Invest(I)F

    move-result v2

    div-float/2addr v1, v2

    const v2, 0x47c35000    # 100000.0f

    sub-float/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 146
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 147
    return-void
.end method

.method public static final increaseTaxEfficiency(IF)V
    .registers 11
    .param p0, "iCivID"    # I
    .param p1, "minGold"    # F

    .line 11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 13
    .local v0, "rand":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_RANDOM:I

    if-ge v0, v2, :cond_44

    .line 14
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN_RANDOM_LIMIT:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_43

    .line 15
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->getRandomProvince(I)I

    move-result v2

    .line 17
    .local v2, "randomProvince":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v3

    if-nez v3, :cond_35

    .line 18
    return-void

    .line 21
    :cond_35
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_40

    .line 22
    return-void

    .line 14
    .end local v2    # "randomProvince":I
    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 26
    .end local v1    # "i":I
    :cond_43
    return-void

    .line 28
    :cond_44
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE:I

    if-ge v0, v2, :cond_4e

    .line 29
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_InvestInEconomy_GrowthRate(I)V

    goto :goto_5b

    .line 31
    :cond_4e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE:I

    if-ge v0, v2, :cond_58

    .line 32
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_InvestInEconomy_Distance(I)V

    goto :goto_5b

    .line 35
    :cond_58
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->buildScore_Invest_PayOff(I)V

    .line 38
    :goto_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, "tInvested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN:I

    .local v3, "i":I
    :goto_64
    if-lez v3, :cond_199

    .line 41
    const/4 v4, -0x1

    .line 42
    .local v4, "investInProvinceID":I
    const/4 v5, 0x0

    .line 44
    .local v5, "checkInvestID":I
    :goto_68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_9c

    .line 45
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_99

    .line 47
    move v4, v5

    .line 48
    goto :goto_9c

    .line 44
    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 53
    :cond_9c
    :goto_9c
    if-ltz v4, :cond_195

    .line 54
    :goto_9e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_f0

    .line 55
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_ed

    .line 56
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_ed

    .line 59
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ed

    .line 60
    move v4, v5

    .line 54
    :cond_ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 66
    :cond_f0
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_RANDOM:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .local v6, "a":I
    :goto_fc
    if-ltz v6, :cond_162

    .line 67
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v7

    if-nez v7, :cond_15f

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12a

    .line 69
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    return-void

    .line 73
    :cond_12a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_144

    .line 74
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 76
    return-void

    .line 79
    :cond_144
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE:I

    if-ge v7, v8, :cond_15f

    .line 80
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    .line 66
    :cond_15f
    add-int/lit8 v6, v6, -0x1

    goto :goto_fc

    .line 85
    .end local v6    # "a":I
    :cond_162
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_170

    .line 86
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 87
    return-void

    .line 90
    :cond_170
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ne v6, v7, :cond_191

    .line 93
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 94
    return-void

    .line 40
    .end local v4    # "investInProvinceID":I
    .end local v5    # "checkInvestID":I
    :cond_191
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_64

    .line 98
    .restart local v4    # "investInProvinceID":I
    .restart local v5    # "checkInvestID":I
    :cond_195
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 99
    return-void

    .line 102
    .end local v3    # "i":I
    .end local v4    # "investInProvinceID":I
    .end local v5    # "checkInvestID":I
    :cond_199
    return-void
.end method
