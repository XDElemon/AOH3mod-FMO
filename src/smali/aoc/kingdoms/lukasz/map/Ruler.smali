.class public Laoc/kingdoms/lukasz/map/Ruler;
.super Ljava/lang/Object;
.source "Ruler.java"


# instance fields
.field public BornDay:I

.field public BornMonth:I

.field public BornYear:I

.field public ImageID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public isRandom:Z

.field public kingImage:Z

.field public rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIZZ)V
    .registers 12
    .param p1, "iCivID"    # I
    .param p2, "Name"    # Ljava/lang/String;
    .param p3, "ImageID"    # Ljava/lang/String;
    .param p4, "BornDay"    # I
    .param p5, "BornMonth"    # I
    .param p6, "BornYear"    # I
    .param p7, "ReignYear"    # I
    .param p8, "isRandom"    # Z
    .param p9, "kingImage"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    .line 29
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->ImageID:Ljava/lang/String;

    .line 31
    iput-boolean p9, p0, Laoc/kingdoms/lukasz/map/Ruler;->kingImage:Z

    .line 33
    const/4 v0, 0x1

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    .line 34
    iput p5, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    .line 35
    iput p6, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    .line 37
    iput-boolean p8, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    .line 39
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/Ruler;->initRulerBonuses(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;)V
    .registers 4
    .param p1, "saveRuler"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    .line 46
    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->n:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->ImageID:Ljava/lang/String;

    .line 48
    iget-boolean v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->k:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->kingImage:Z

    .line 50
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->d:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    .line 51
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    .line 52
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    .line 54
    iget-boolean v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->r:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    .line 55
    return-void
.end method

.method private final initRulerBonuses(I)V
    .registers 9
    .param p1, "iCivID"    # I

    .line 66
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 71
    .local v0, "iRandom":I
    const v1, 0x461c4000    # 10000.0f

    const/high16 v2, 0x42c80000    # 100.0f

    packed-switch v0, :pswitch_data_272

    .line 107
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PROVINCE_MAINTENANCE_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PROVINCE_MAINTENANCE_RANDOM:F

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    goto/16 :goto_146

    .line 104
    :pswitch_32
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_MANPOWER_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_MANPOWER_COST_RANDOM:F

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    .line 105
    goto/16 :goto_146

    .line 101
    :pswitch_4d
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVASTATION_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVASTATION_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    .line 102
    goto/16 :goto_146

    .line 98
    :pswitch_67
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVELOP_INFRASTRUCTURE_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVELOP_INFRASTRUCTURE_COST_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 99
    goto/16 :goto_146

    .line 95
    :pswitch_82
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_TAX_EFFICIENCY_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_TAX_EFFICIENCY_COST_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 96
    goto/16 :goto_146

    .line 92
    :pswitch_9d
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INVEST_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INVEST_COST_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 93
    goto/16 :goto_146

    .line 89
    :pswitch_b8
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_CONSTRUCTION_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_CONSTRUCTION_COST_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 90
    goto :goto_146

    .line 86
    :pswitch_d2
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_GROWTH_RATE_COST_MIN:F

    neg-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_GROWTH_RATE_COST_RANDOM:F

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 87
    goto :goto_146

    .line 83
    :pswitch_ec
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PRODUCTION_EFFICIENCY_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PRODUCTION_EFFICIENCY_RANDOM:F

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 84
    goto :goto_146

    .line 80
    :pswitch_105
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_TAX_EFFICIENCY_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_TAX_EFFICIENCY_RANDOM:F

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 81
    goto :goto_146

    .line 73
    :pswitch_11e
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_INCOME_MIN:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_INCOME_RANDOM:F

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 75
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_146

    .line 76
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    const v4, 0x3c23d70a    # 0.01f

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 112
    :cond_146
    :goto_146
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 114
    packed-switch v0, :pswitch_data_28a

    .line 134
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_LEGACY_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_LEGACY_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    goto/16 :goto_204

    .line 131
    :pswitch_16a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_LOAN_INTEREST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_LOAN_INTEREST_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 132
    goto/16 :goto_204

    .line 128
    :pswitch_185
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_IMPROVE_RELATIONS_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_IMPROVE_RELATIONS_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 129
    goto :goto_204

    .line 125
    :pswitch_19e
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERAL_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERAL_COST_RANDOM:F

    mul-float v5, v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    .line 126
    goto :goto_204

    .line 122
    :pswitch_1b8
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RESEARCH_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RESEARCH_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 123
    goto :goto_204

    .line 119
    :pswitch_1d1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RECRUITMENT_TIME_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RECRUITMENT_TIME_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 120
    goto :goto_204

    .line 116
    :pswitch_1eb
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MAX_MANPOWER_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MAX_MANPOWER_RANDOM:F

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 117
    nop

    .line 140
    :goto_204
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_THIRD_BONUS_CHANCE:I

    if-ge v1, v2, :cond_26c

    .line 141
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 143
    packed-switch v0, :pswitch_data_29a

    .line 154
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_DEFENSE_MIN:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_DEFENSE_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    goto :goto_26c

    .line 151
    :pswitch_230
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_ATTACK_MIN:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_ATTACK_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 152
    goto :goto_26c

    .line 148
    :pswitch_244
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_DEFENSE_MIN:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_DEFENSE_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 149
    goto :goto_26c

    .line 145
    :pswitch_258
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_ATTACK_MIN:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_ATTACK_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 146
    nop

    .line 160
    :cond_26c
    :goto_26c
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/Ruler;->updateCivBonuses(II)V

    .line 161
    return-void

    nop

    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_105
        :pswitch_ec
        :pswitch_d2
        :pswitch_b8
        :pswitch_9d
        :pswitch_82
        :pswitch_67
        :pswitch_4d
        :pswitch_32
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x0
        :pswitch_1eb
        :pswitch_1d1
        :pswitch_1b8
        :pswitch_19e
        :pswitch_185
        :pswitch_16a
    .end packed-switch

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_258
        :pswitch_244
        :pswitch_230
    .end packed-switch
.end method


# virtual methods
.method public final initRulerBonuses_Load(ILaoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "bonuses"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 58
    iput-object p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/Ruler;->updateCivBonuses(II)V

    .line 61
    return-void
.end method

.method public final updateCivBonuses(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "mod"    # I

    .line 164
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V

    .line 165
    return-void
.end method
