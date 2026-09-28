.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;
.super Ljava/lang/Object;
.source "CivilizationAdvisorsPool.java"


# instance fields
.field public generateYear:I

.field public iAdvisorType:I

.field public lAdvisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/advisors/Advisor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iAdvisorType"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    .line 15
    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    .line 28
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    .line 29
    return-void
.end method

.method public static final buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .registers 10
    .param p0, "advisor"    # Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .param p1, "iAdvisorType"    # I

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "random":I
    const/16 v1, 0xabe

    const/16 v2, 0x1388

    const v3, 0x461c4000    # 10000.0f

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez p1, :cond_f1

    .line 79
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x4

    .line 80
    .end local v0    # "random":I
    .local v5, "random":I
    packed-switch v5, :pswitch_data_402

    .line 94
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GROWTH_RATE_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GROWTH_RATE_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    goto :goto_94

    .line 91
    :pswitch_35
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_GROWTH_RATE_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_GROWTH_RATE_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    .line 92
    goto :goto_94

    .line 88
    :pswitch_4d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    .line 89
    goto :goto_94

    .line 85
    :pswitch_65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROVINCE_MAINTENANCE_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROVINCE_MAINTENANCE_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    .line 86
    goto :goto_94

    .line 82
    :pswitch_7d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_TAX_EFFICIENCY_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_TAX_EFFICIENCY_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    .line 83
    nop

    .line 98
    :goto_94
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    .line 99
    .end local v5    # "random":I
    .restart local v0    # "random":I
    packed-switch v0, :pswitch_data_40e

    .line 107
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUITMENT_TIME_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUITMENT_TIME_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    .line 108
    goto/16 :goto_400

    .line 104
    :pswitch_bf
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_MANPOWER_COST_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_MANPOWER_COST_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    .line 105
    goto/16 :goto_400

    .line 101
    :pswitch_d8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_TIME_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_TIME_RANDOM:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    .line 102
    goto/16 :goto_400

    .line 111
    :cond_f1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_220

    .line 114
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v7, 0xdac

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x64

    .line 116
    .end local v0    # "random":I
    .restart local v5    # "random":I
    const/16 v0, 0x61

    if-le v5, v0, :cond_122

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_COST_MIN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_COST_RANDOM:F

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    goto/16 :goto_1ab

    .line 120
    :cond_122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v0, v6

    rem-int/lit8 v5, v0, 0x5

    .line 121
    packed-switch v5, :pswitch_data_416

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PRODUCTION_EFFICIENCY_MIN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PRODUCTION_EFFICIENCY_RANDOM:F

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    goto :goto_1ab

    .line 132
    :pswitch_14b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_DEVELOP_INFRASTRUCTURE_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_DEVELOP_INFRASTRUCTURE_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    .line 133
    goto :goto_1ab

    .line 129
    :pswitch_163
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_TAX_EFFICIENCY_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_TAX_EFFICIENCY_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    .line 130
    goto :goto_1ab

    .line 126
    :pswitch_17b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INVEST_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INVEST_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    .line 127
    goto :goto_1ab

    .line 123
    :pswitch_193
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    .line 124
    nop

    .line 140
    :goto_1ab
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 141
    .end local v5    # "random":I
    .restart local v0    # "random":I
    packed-switch v0, :pswitch_data_422

    .line 152
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONVERT_RELIGION_COST_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONVERT_RELIGION_COST_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    .line 153
    goto/16 :goto_400

    .line 149
    :pswitch_1d6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCOME_PRODUCTION_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCOME_PRODUCTION_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    .line 150
    goto/16 :goto_400

    .line 146
    :pswitch_1ee
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CORE_COST_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CORE_COST_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    .line 147
    goto/16 :goto_400

    .line 143
    :pswitch_207
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LOAN_INTEREST_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LOAN_INTEREST_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    .line 144
    goto/16 :goto_400

    .line 156
    :cond_220
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p1, v5, :cond_30d

    .line 159
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0x3

    .line 160
    .end local v0    # "random":I
    .local v3, "random":I
    packed-switch v3, :pswitch_data_42c

    .line 168
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_RANDOM2:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    goto :goto_27b

    .line 165
    :pswitch_24d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LEGACY_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LEGACY_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    .line 166
    goto :goto_27b

    .line 162
    :pswitch_264
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v0, v5

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    .line 163
    nop

    .line 172
    :goto_27b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 173
    .end local v3    # "random":I
    .restart local v0    # "random":I
    packed-switch v0, :pswitch_data_434

    .line 184
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_IMPROVE_RELATIONS_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_IMPROVE_RELATIONS_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    .line 185
    goto/16 :goto_400

    .line 181
    :pswitch_2a5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_RANDOM:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2c1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_RANDOM:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v4

    :cond_2c1
    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    .line 182
    goto/16 :goto_400

    .line 178
    :pswitch_2c7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_RANDOM:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2e3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_RANDOM:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v4

    :cond_2e3
    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    .line 179
    goto/16 :goto_400

    .line 175
    :pswitch_2ea
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_RANDOM:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_306

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_RANDOM:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float v6, v2, v4

    :cond_306
    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    .line 176
    goto/16 :goto_400

    .line 191
    :cond_30d
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v5, v7

    rem-int/lit8 v5, v5, 0x5

    .line 192
    .end local v0    # "random":I
    .restart local v5    # "random":I
    packed-switch v5, :pswitch_data_43e

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MAINTENANCE_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MAINTENANCE_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    goto :goto_3a9

    .line 203
    :pswitch_337
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float v7, v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    .line 204
    goto :goto_3a9

    .line 200
    :pswitch_34f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUIT_ARMY_COST_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUIT_ARMY_COST_RANDOM:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    .line 201
    goto :goto_3a9

    .line 197
    :pswitch_367
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_MIN:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_RANDOM:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_382

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_RANDOM:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    :cond_382
    add-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    .line 198
    goto :goto_3a9

    .line 194
    :pswitch_388
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_MIN:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_RANDOM:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_3a3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_RANDOM:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    :cond_3a3
    add-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    .line 195
    nop

    .line 210
    :goto_3a9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    .line 211
    .end local v5    # "random":I
    .restart local v0    # "random":I
    packed-switch v0, :pswitch_data_44a

    .line 219
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_SIEGE_EFFECTIVENESS_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_SIEGE_EFFECTIVENESS_RANDOM:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    goto :goto_400

    .line 216
    :pswitch_3d2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MOVEMENT_SPEED_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MOVEMENT_SPEED_RANDOM:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    .line 217
    goto :goto_400

    .line 213
    :pswitch_3e9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_MANPOWER_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_MANPOWER_RANDOM:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    .line 214
    nop

    .line 224
    :goto_400
    return-object p0

    nop

    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_65
        :pswitch_4d
        :pswitch_35
    .end packed-switch

    :pswitch_data_40e
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_bf
    .end packed-switch

    :pswitch_data_416
    .packed-switch 0x0
        :pswitch_193
        :pswitch_17b
        :pswitch_163
        :pswitch_14b
    .end packed-switch

    :pswitch_data_422
    .packed-switch 0x0
        :pswitch_207
        :pswitch_1ee
        :pswitch_1d6
    .end packed-switch

    :pswitch_data_42c
    .packed-switch 0x0
        :pswitch_264
        :pswitch_24d
    .end packed-switch

    :pswitch_data_434
    .packed-switch 0x0
        :pswitch_2ea
        :pswitch_2c7
        :pswitch_2a5
    .end packed-switch

    :pswitch_data_43e
    .packed-switch 0x0
        :pswitch_388
        :pswitch_367
        :pswitch_34f
        :pswitch_337
    .end packed-switch

    :pswitch_data_44a
    .packed-switch 0x0
        :pswitch_3e9
        :pswitch_3d2
    .end packed-switch
.end method

.method public static final generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .registers 9
    .param p0, "iCivID"    # I
    .param p1, "iAdvisorType"    # I

    .line 59
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v0

    .local v0, "advIMG":I
    goto :goto_10

    .line 63
    .end local v0    # "advIMG":I
    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v0, p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v0

    .line 66
    .restart local v0    # "advIMG":I
    :goto_10
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 67
    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    .line 69
    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 66
    invoke-static {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .line 318
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    .line 320
    return-void
.end method

.method public final generateAdvisors(ILjava/lang/String;)V
    .registers 12
    .param p1, "iCivID"    # I
    .param p2, "sIMG"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->getPoolOfAdvisors(I)I

    move-result v1

    if-ge v0, v1, :cond_81

    .line 36
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 37
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v1

    .local v1, "advIMG":I
    goto :goto_20

    .line 40
    .end local v1    # "advIMG":I
    :cond_18
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-virtual {v1, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v1

    .line 43
    .restart local v1    # "advIMG":I
    :goto_20
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 44
    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    .line 46
    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v1, v5, p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v8

    .line 53
    .local v2, "advID":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v1    # "advIMG":I
    .end local v2    # "advID":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 55
    .end local v0    # "i":I
    :cond_81
    return-void
.end method

.method public getPoolOfAdvisors(I)I
    .registers 4
    .param p1, "iCivID"    # I

    .line 314
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_DEFAULT_POOL:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final recruitAdvisorID(II)Z
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "id"    # I

    .line 246
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_12c

    .line 247
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    .line 248
    return v1

    .line 251
    :cond_19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_29

    .line 252
    return v1

    .line 255
    :cond_29
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 256
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 258
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addRecruitedAdvisors(I)V

    .line 260
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_5e

    .line 261
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    .line 264
    :cond_5e
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_12e

    .line 287
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_109

    .line 288
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto/16 :goto_109

    .line 280
    :pswitch_7b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 281
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 283
    :cond_90
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 284
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 285
    goto/16 :goto_122

    .line 273
    :pswitch_ab
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 274
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 276
    :cond_c0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 277
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 278
    goto :goto_122

    .line 266
    :pswitch_da
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_ef

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 269
    :cond_ef
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 270
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 271
    goto :goto_122

    .line 290
    :cond_109
    :goto_109
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 291
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 302
    :goto_122
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    .line 305
    return v1

    .line 308
    :cond_12c
    return v1

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_da
        :pswitch_ab
        :pswitch_7b
    .end packed-switch
.end method

.method public final updatePoolOfAdvisors(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 228
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 229
    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    .line 230
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    goto :goto_38

    .line 233
    :cond_11
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_REGENERATE_YEARS:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    if-gt v0, v2, :cond_29

    .line 234
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    .line 237
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    goto :goto_38

    .line 239
    :cond_29
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->getPoolOfAdvisors(I)I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 240
    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    .line 243
    :cond_38
    :goto_38
    return-void
.end method
