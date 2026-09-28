.class public Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;
.super Ljava/lang/Object;
.source "AI_DevelopInfrastructure.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildScore_Economy(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 144
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_Economy_ProvinceID(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_Economy_ProvinceID(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 149
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_18

    .line 150
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_5e

    .line 153
    :cond_18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_DEVELOP_INFRASTRUCTURE_ECONOMY:I

    int-to-float v2, v2

    .line 154
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    .line 155
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v4, v4, v3

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v4, v3

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 157
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 159
    :goto_5e
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

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_InvestInEconomy_Distance_ProvinceID(I)V

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

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_18

    .line 129
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_61

    .line 132
    :cond_18
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

    .line 134
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

    .line 136
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 138
    :goto_61
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate(I)V
    .registers 3
    .param p0, "iCivID"    # I

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 103
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static final buildScore_InvestInEconomy_GrowthRate_ProvinceID(I)V
    .registers 6
    .param p0, "provinceID"    # I

    .line 108
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_18

    .line 109
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    goto :goto_4a

    .line 112
    :cond_18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_BASE:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->SCORE_INVEST_ECONOMY_GROWTH_RATE:I

    int-to-float v2, v2

    .line 113
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

    .line 115
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->buildScore_CoreReligion(I)F

    move-result v2

    mul-float v1, v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    .line 117
    :goto_4a
    return-void
.end method

.method public static final developInfrastructure(IF)V
    .registers 10
    .param p0, "iCivID"    # I
    .param p1, "minGold"    # F

    .line 11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 13
    .local v0, "rand":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_RANDOM:I

    if-ge v0, v1, :cond_44

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

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->addDevelopInfrastructure()Z

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
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_GROWTH_RATE:I

    if-ge v0, v1, :cond_4e

    .line 29
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_InvestInEconomy_GrowthRate(I)V

    goto :goto_5b

    .line 31
    :cond_4e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_DISTANCE:I

    if-ge v0, v1, :cond_58

    .line 32
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_InvestInEconomy_Distance(I)V

    goto :goto_5b

    .line 35
    :cond_58
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->buildScore_Economy(I)V

    .line 38
    :goto_5b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "tInvested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;->INVEST_LIMIT_PER_TURN:I

    .local v2, "i":I
    :goto_64
    if-lez v2, :cond_17e

    .line 41
    const/4 v3, -0x1

    .line 42
    .local v3, "investInProvinceID":I
    const/4 v4, 0x0

    .line 44
    .local v4, "checkInvestID":I
    :goto_68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_9c

    .line 45
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_99

    .line 47
    move v3, v4

    .line 48
    goto :goto_9c

    .line 44
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 53
    :cond_9c
    :goto_9c
    if-ltz v3, :cond_17a

    .line 54
    :goto_9e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_f0

    .line 55
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ed

    .line 56
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_ed

    .line 59
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ed

    .line 60
    move v3, v4

    .line 54
    :cond_ed
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 65
    :cond_f0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_RANDOM:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .local v5, "a":I
    :goto_fc
    if-ltz v5, :cond_147

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->addDevelopInfrastructure()Z

    move-result v6

    if-nez v6, :cond_144

    .line 67
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCost(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_12a

    .line 68
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    return-void

    .line 72
    :cond_12a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCostLegacy(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_144

    .line 73
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    return-void

    .line 65
    :cond_144
    add-int/lit8 v5, v5, -0x1

    goto :goto_fc

    .line 80
    .end local v5    # "a":I
    :cond_147
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_155

    .line 81
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 82
    return-void

    .line 85
    :cond_155
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ne v5, v6, :cond_176

    .line 88
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    return-void

    .line 40
    .end local v3    # "investInProvinceID":I
    .end local v4    # "checkInvestID":I
    :cond_176
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_64

    .line 93
    .restart local v3    # "investInProvinceID":I
    .restart local v4    # "checkInvestID":I
    :cond_17a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    return-void

    .line 97
    .end local v2    # "i":I
    .end local v3    # "investInProvinceID":I
    .end local v4    # "checkInvestID":I
    :cond_17e
    return-void
.end method
