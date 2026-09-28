.class public Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;
.super Ljava/lang/Object;
.source "AdvisorSerializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/advisors/Advisor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .registers 8
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 78
    new-instance v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    .line 79
    .local v0, "advisor":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    const-string v1, "sName"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 81
    const-string v1, "iYearOfBirth"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 82
    const-string v1, "iMonthOfBirth"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 83
    const-string v1, "iDayOfBirth"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 85
    const-string v1, "sIMG"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 86
    const-string v1, "imageID"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 87
    const-string v1, "iLevel"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    .line 89
    const-string v1, "TaxEfficiency"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    .line 90
    const-string v1, "ProvinceMaintenance"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    .line 91
    const-string v1, "GrowthRate"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    .line 93
    const-string v1, "ProductionEfficiency"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    .line 94
    const-string v1, "IncomeProduction"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    .line 96
    const-string v1, "MonthlyLegacy"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    .line 98
    const-string v1, "MaxManpower"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    .line 100
    const-string v1, "ArmyMaintenance"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    .line 101
    const-string v1, "RecruitmentTime"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    .line 103
    const-string v1, "RecruitArmyCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    .line 105
    const-string v1, "Research"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    .line 107
    const-string v1, "ConstructionCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    .line 108
    const-string v1, "AdministrationBuildingsCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    .line 109
    const-string v1, "MilitaryBuildingsCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    .line 110
    const-string v1, "EconomyBuildingsCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    .line 112
    const-string v1, "ConstructionTime"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    .line 114
    const-string v1, "InvestInEconomyCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    .line 115
    const-string v1, "IncreaseManpowerCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    .line 116
    const-string v1, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    .line 117
    const-string v1, "IncreaseGrowthRateCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    .line 118
    const-string v1, "DevelopInfrastructureCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    .line 120
    const-string v1, "GeneralAttack"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    .line 121
    const-string v1, "GeneralDefense"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    .line 123
    const-string v1, "UnitsAttack"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    .line 124
    const-string v1, "UnitsDefense"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    .line 126
    const-string v1, "MaxMorale"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    .line 127
    const-string v1, "ArmyMovementSpeed"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    .line 129
    const-string v1, "SiegeEffectiveness"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    .line 131
    const-string v1, "ImproveRelationsModifier"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    .line 132
    const-string v1, "LoanInterest"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    .line 134
    const-string v1, "CoreCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    .line 135
    const-string v1, "ReligionCost"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    .line 137
    const-string v1, "RegimentsLimit"

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    .line 139
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/advisors/Advisor;Ljava/lang/Class;)V
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "advisor"    # Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 23
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "TaxEfficiency"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_15
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_26

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ProvinceMaintenance"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_26
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "GrowthRate"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_37
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_48

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ProductionEfficiency"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_48
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_59

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncomeProduction"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :cond_59
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6a

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MonthlyLegacy"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_6a
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7b

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaxManpower"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_7b
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8c

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ArmyMaintenance"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_8c
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9d

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitmentTime"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_9d
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ae

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "RecruitArmyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_ae
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bf

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "Research"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_bf
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d0

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ConstructionCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_d0
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e1

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "AdministrationBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_e1
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f2

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MilitaryBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_f2
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_103

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "EconomyBuildingsCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    :cond_103
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_114

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ConstructionTime"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_114
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_125

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "InvestInEconomyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    :cond_125
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_136

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseManpowerCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_136
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_147

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_147
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_158

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "IncreaseGrowthRateCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_158
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_169

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "DevelopInfrastructureCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    :cond_169
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17a

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "GeneralAttack"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_17a
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18b

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "GeneralDefense"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_18b
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19c

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "UnitsAttack"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_19c
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1ad

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "UnitsDefense"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_1ad
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1be

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "MaxMorale"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_1be
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1cf

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ArmyMovementSpeed"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_1cf
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e0

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "SiegeEffectiveness"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_1e0
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f1

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "ImproveRelationsModifier"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_1f1
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_202

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "LoanInterest"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_202
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_213

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "CoreCost"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_213
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_224

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "ReligionCost"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_224
    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz v0, :cond_233

    iget v0, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RegimentsLimit"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_233
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 74
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 6
    check-cast p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/advisors/Advisor;Ljava/lang/Class;)V

    return-void
.end method
