.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationBonusesSerializer;
.super Ljava/lang/Object;
.source "CivilizationBonusesSerializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    .registers 8
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 95
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 96
    .local v0, "bonuses":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    const-string v1, "TempTurnID"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 97
    const-string v1, "MonthlyIncome"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 98
    const-string v1, "TaxEfficiency"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 99
    const-string v1, "ProvinceMaintenance"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 100
    const-string v1, "BuildingsMaintenanceCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    .line 101
    const-string v1, "GrowthRate"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 102
    const-string v1, "MaintenanceCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 103
    const-string v1, "ProductionEfficiency"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 104
    const-string v1, "IncomeProduction"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 105
    const-string v1, "IncomeTaxation"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    .line 106
    const-string v1, "IncomeEconomy"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    .line 107
    const-string v1, "MonthlyLegacy"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    .line 108
    const-string v1, "MonthlyLegacy_Percentage"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    .line 109
    const-string v1, "MaxManpower"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 110
    const-string v1, "MaxManpower_Percentage"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    .line 111
    const-string v1, "ManpowerRecoverySpeed"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    .line 112
    const-string v1, "ReinforcementSpeed"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    .line 113
    const-string v1, "ArmyMoraleRecovery"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    .line 114
    const-string v1, "WarScoreCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    .line 115
    const-string v1, "ArmyMaintenance"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    .line 116
    const-string v1, "RecruitmentTime"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 117
    const-string v1, "RecruitArmyCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 118
    const-string v1, "RecruitArmyFirstLineCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    .line 119
    const-string v1, "RecruitArmySecondLineCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    .line 120
    const-string v1, "Research"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    .line 121
    const-string v1, "ResearchPoints"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 122
    const-string v1, "TechnologyCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    .line 123
    const-string v1, "ConstructionCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 124
    const-string v1, "AdministrationBuildingsCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 125
    const-string v1, "MilitaryBuildingsCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 126
    const-string v1, "EconomyBuildingsCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 127
    const-string v1, "WonderConstructionCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    .line 128
    const-string v1, "ConstructionTime"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 129
    const-string v1, "BuildingSlot"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    .line 130
    const-string v1, "MaxInfrastructure"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    .line 131
    const-string v1, "InvestInEconomyCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 132
    const-string v1, "IncreaseManpowerCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    .line 133
    const-string v1, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 134
    const-string v1, "DevelopInfrastructureCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 135
    const-string v1, "IncreaseGrowthRateCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 136
    const-string v1, "GeneralAttack"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 137
    const-string v1, "GeneralDefense"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 138
    const-string v1, "UnitsAttack"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 139
    const-string v1, "UnitsDefense"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 140
    const-string v1, "MaxMorale"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 141
    const-string v1, "ArmyMovementSpeed"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 142
    const-string v1, "SiegeEffectiveness"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 143
    const-string v1, "ImproveRelationsModifier"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 144
    const-string v1, "IncomeFromVassals"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    .line 145
    const-string v1, "LoanInterest"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 146
    const-string v1, "AggressiveExpansion"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    .line 147
    const-string v1, "MaxNumOfAlliances"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    .line 148
    const-string v1, "RevolutionaryRisk"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    .line 149
    const-string v1, "CoreCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 150
    const-string v1, "ReligionCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    .line 151
    const-string v1, "AdvisorCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    .line 152
    const-string v1, "GeneralCost"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    .line 153
    const-string v1, "AdvisorMaxLevel"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    .line 154
    const-string v1, "AdvisorPoolSize"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    .line 155
    const-string v1, "MaxNumberOfLoans"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    .line 156
    const-string v1, "DiseaseDeathRate"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    .line 157
    const-string v1, "DiplomacyPoints"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    .line 158
    const-string v1, "Devastation"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    .line 159
    const-string v1, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    .line 160
    const-string v1, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    .line 161
    const-string v1, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    .line 162
    const-string v1, "MaximumLevelOfNuclearReactor"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfNuclearReactor:I

    .line 163
    const-string v1, "MaximumLevelOfCapitalCity"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    .line 164
    const-string v1, "BattleWidth"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 165
    const-string v1, "Discipline"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    .line 166
    const-string v1, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    .line 167
    const-string v1, "MaximumAmountOfGold"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    .line 168
    const-string v1, "MaximumAmountOfGold_Percentage"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    .line 169
    const-string v1, "Loot"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    .line 170
    const-string v1, "AllCharactersLifeExpectancy"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    .line 171
    const-string v1, "RegimentsLimit"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 172
    const-string v1, "Inflation"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    .line 173
    const-string v1, "Corruption"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    .line 174
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonusesSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;Ljava/lang/Class;)V
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "bonuses"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    if-eqz v0, :cond_19

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    const v1, 0xf4240

    if-eq v0, v1, :cond_19

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TempTurnID"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_19
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MonthlyIncome"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_2b
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "TaxEfficiency"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_3c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ProvinceMaintenance"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_4d
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5e

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "BuildingsMaintenanceCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_5e
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "GrowthRate"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_6f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_80

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaintenanceCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_80
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_91

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ProductionEfficiency"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_91
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncomeProduction"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_a2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b3

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncomeTaxation"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_b3
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncomeEconomy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_c4
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d5

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MonthlyLegacy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_d5
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e6

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MonthlyLegacy_Percentage"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_e6
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f7

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaxManpower"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_f7
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_108

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaxManpower_Percentage"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_108
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_119

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ManpowerRecoverySpeed"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_119
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12a

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ReinforcementSpeed"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_12a
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13b

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ArmyMoraleRecovery"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_13b
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "WarScoreCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_14c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15d

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ArmyMaintenance"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_15d
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16e

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitmentTime"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_16e
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitArmyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_17f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_190

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitArmyFirstLineCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_190
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a1

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitArmySecondLineCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    :cond_1a1
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Research"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_1b2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1c3

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ResearchPoints"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :cond_1c3
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d4

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "TechnologyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_1d4
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e5

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ConstructionCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_1e5
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f6

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "AdministrationBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_1f6
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_207

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MilitaryBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_207
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_218

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "EconomyBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_218
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_229

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "WonderConstructionCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_229
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23a

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ConstructionTime"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_23a
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    if-eqz v0, :cond_249

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BuildingSlot"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    :cond_249
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    if-eqz v0, :cond_258

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaxInfrastructure"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_258
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_269

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "InvestInEconomyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_269
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27a

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseManpowerCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_27a
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_28b

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_28b
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_29c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "DevelopInfrastructureCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_29c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ad

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseGrowthRateCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_2ad
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-eqz v0, :cond_2bc

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "GeneralAttack"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_2bc
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v0, :cond_2cb

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "GeneralDefense"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_2cb
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-eqz v0, :cond_2da

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "UnitsAttack"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_2da
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-eqz v0, :cond_2e9

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "UnitsDefense"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_2e9
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2fa

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaxMorale"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_2fa
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_30b

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ArmyMovementSpeed"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_30b
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_31c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "SiegeEffectiveness"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_31c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_32d

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ImproveRelationsModifier"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_32d
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33e

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncomeFromVassals"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_33e
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "LoanInterest"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_34f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_360

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "AggressiveExpansion"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_360
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    if-eqz v0, :cond_36f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaxNumOfAlliances"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_36f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_380

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RevolutionaryRisk"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_380
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_391

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "CoreCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_391
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3a2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ReligionCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_3a2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b3

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "AdvisorCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_3b3
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c4

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "GeneralCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_3c4
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    if-eqz v0, :cond_3d3

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "AdvisorMaxLevel"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_3d3
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    if-eqz v0, :cond_3e2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "AdvisorPoolSize"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_3e2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    if-eqz v0, :cond_3f1

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaxNumberOfLoans"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_3f1
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_402

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "DiseaseDeathRate"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_402
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_413

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "DiplomacyPoints"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_413
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_424

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Devastation"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_424
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-eqz v0, :cond_433

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_433
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    if-eqz v0, :cond_442

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :cond_442
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    if-eqz v0, :cond_451

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_451
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfNuclearReactor:I

    if-eqz v0, :cond_460

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfNuclearReactor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaximumLevelOfNuclearReactor"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_460
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    if-eqz v0, :cond_46f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "MaximumLevelOfCapitalCity"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_46f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    if-eqz v0, :cond_47e

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "BattleWidth"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_47e
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Discipline"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_48f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4a0

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_4a0
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4b1

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaximumAmountOfGold"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_4b1
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4c2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaximumAmountOfGold_Percentage"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_4c2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d3

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Loot"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_4d3
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    if-eqz v0, :cond_4e2

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "AllCharactersLifeExpectancy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_4e2
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    if-eqz v0, :cond_4f1

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "RegimentsLimit"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_4f1
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_502

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Inflation"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_502
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_513

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Corruption"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_513
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 91
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 7
    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonusesSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;Ljava/lang/Class;)V

    return-void
.end method
