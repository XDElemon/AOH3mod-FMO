.class public Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;
.super Ljava/lang/Object;
.source "AI_InvestInEconomy.java"


# static fields
.field public static final SCORE_CANT_INVEST:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildScore_CoreReligion(I)F
    .registers 5
    .param p0, "provinceID"    # I

    .line 122
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_NON_CORE:F

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-ne v2, v3, :cond_2d

    goto :goto_31

    :cond_2d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_DIFFERENT_RELIGION:F

    :goto_31
    add-float/2addr v0, v1

    return v0
.end method

.method public static final buildScore_InvestInEconomy(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 129
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_ProvinceID(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_Distance(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 152
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_Distance_ProvinceID(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_Distance_ProvinceID(I)V
    .registers 8
    .param p0, "provinceID"    # I

    .line 157
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 158
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_57

    .line 161
    :cond_e
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

    .line 163
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

    .line 165
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 167
    :goto_57
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 173
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 178
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_40

    .line 182
    :cond_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_GROWTH_RATE:I

    int-to-float v2, v2

    .line 183
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

    .line 185
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 187
    :goto_40
    return-void
.end method

.method public static final buildScore_InvestInEconomy_PayOff(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 193
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_PayOff_ProvinceID(I)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_PayOff_ProvinceID(I)V
    .registers 5
    .param p0, "provinceID"    # I

    .line 198
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 199
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_5e

    .line 202
    :cond_e
    nop

    .line 203
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency_FromEconomy(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(IIF)F

    move-result v0

    .line 204
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v2

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(IIF)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 206
    .local v0, "tIncomeProduction":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy_Invest(I)F

    move-result v3

    add-float/2addr v3, v0

    div-float/2addr v2, v3

    const v3, 0x47c35000    # 100000.0f

    sub-float/2addr v3, v2

    iput v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 208
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v3

    mul-float v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 210
    .end local v0    # "tIncomeProduction":F
    :goto_5e
    return-void
.end method

.method public static final buildScore_InvestInEconomy_ProvinceID(I)V
    .registers 7
    .param p0, "provinceID"    # I

    .line 134
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 135
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto/16 :goto_97

    .line 138
    :cond_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v2, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 139
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    if-ltz v3, :cond_6c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 140
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_RESOURCE_MIN:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_RESOURCE_PRICE:I

    int-to-float v3, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    goto :goto_6d

    :cond_6c
    nop

    :goto_6d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_PER_INFRASTRUCTURE:I

    .line 142
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    mul-int v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 144
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 146
    :goto_97
    return-void
.end method

.method public static final investInEconomy(IF)V
    .registers 11
    .param p0, "iCivID"    # I
    .param p1, "minGold"    # F

    .line 18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 19
    return-void

    .line 22
    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 24
    .local v0, "rand":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_RANDOM:I

    if-lt v0, v2, :cond_18c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_RANDOM_IF_PROVINCES_BELOW:I

    if-ge v2, v3, :cond_31

    goto/16 :goto_18c

    .line 39
    :cond_31
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_GROWTH_RATE:I

    if-ge v0, v2, :cond_3b

    .line 40
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_GrowthRate(I)V

    goto :goto_52

    .line 42
    :cond_3b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_DISTANCE:I

    if-ge v0, v2, :cond_45

    .line 43
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_Distance(I)V

    goto :goto_52

    .line 45
    :cond_45
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_PAYOFF:I

    if-ge v0, v2, :cond_4f

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy_PayOff(I)V

    goto :goto_52

    .line 49
    :cond_4f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_InvestInEconomy(I)V

    .line 52
    :goto_52
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->TAKE_LOAN_CHANCE_INVEST_IN_ECONOMY:I

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Loan;->takeLoan_Chance(II)Z

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "tInvested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN:I

    .local v3, "i":I
    :goto_62
    if-lez v3, :cond_18b

    .line 57
    const/4 v4, -0x1

    .line 58
    .local v4, "investInProvinceID":I
    const/4 v5, 0x0

    .line 60
    .local v5, "checkInvestID":I
    :goto_66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_9a

    .line 61
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_97

    .line 62
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_97

    .line 63
    move v4, v5

    .line 64
    goto :goto_9a

    .line 60
    :cond_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 69
    :cond_9a
    :goto_9a
    if-ltz v4, :cond_174

    .line 70
    :goto_9c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_ee

    .line 71
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_eb

    .line 72
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

    if-gez v6, :cond_eb

    .line 75
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb

    .line 76
    move v4, v5

    .line 70
    :cond_eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 81
    :cond_ee
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_RANDOM:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .local v6, "a":I
    :goto_fa
    if-ltz v6, :cond_141

    .line 82
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v7

    if-nez v7, :cond_13e

    .line 85
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_13a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_13e

    .line 86
    :cond_13a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 88
    return-void

    .line 81
    :cond_13e
    add-int/lit8 v6, v6, -0x1

    goto :goto_fa

    .line 93
    .end local v6    # "a":I
    :cond_141
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_14f

    .line 94
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 95
    return-void

    .line 98
    :cond_14f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ne v6, v7, :cond_170

    .line 101
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 102
    return-void

    .line 56
    .end local v4    # "investInProvinceID":I
    .end local v5    # "checkInvestID":I
    :cond_170
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_62

    .line 106
    .restart local v4    # "investInProvinceID":I
    .restart local v5    # "checkInvestID":I
    :cond_174
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 107
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE:I

    if-ge v1, v6, :cond_187

    .line 108
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_GrowthRate;->increaseGrowthRate(IF)V

    goto :goto_18a

    .line 111
    :cond_187
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseManpower;->increaseManpower(IF)V

    .line 114
    :goto_18a
    return-void

    .line 117
    .end local v3    # "i":I
    .end local v4    # "investInProvinceID":I
    .end local v5    # "checkInvestID":I
    :cond_18b
    return-void

    .line 25
    .end local v2    # "tInvested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_18c
    :goto_18c
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
    :goto_1a0
    if-ltz v1, :cond_1c1

    .line 26
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->getRandomProvince(I)I

    move-result v2

    .line 28
    .local v2, "randomProvince":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v3

    if-nez v3, :cond_1b3

    .line 29
    return-void

    .line 32
    :cond_1b3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1be

    .line 33
    return-void

    .line 25
    .end local v2    # "randomProvince":I
    :cond_1be
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a0

    .line 37
    .end local v1    # "i":I
    :cond_1c1
    return-void
.end method
