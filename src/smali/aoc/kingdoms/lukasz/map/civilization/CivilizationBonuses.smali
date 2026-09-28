.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
.super Ljava/lang/Object;
.source "CivilizationBonuses.java"


# instance fields
.field public AdministrationBuildingsCost:F

.field public AdvisorCost:F

.field public AdvisorMaxLevel:I

.field public AdvisorPoolSize:I

.field public AggressiveExpansion:F

.field public AllCharactersLifeExpectancy:I

.field public ArmyMaintenance:F

.field public ArmyMoraleRecovery:F

.field public ArmyMovementSpeed:F

.field public BattleWidth:I

.field public BuildingSlot:I

.field public BuildingsMaintenanceCost:F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public Corruption:F

.field public Devastation:F

.field public DevelopInfrastructureCost:F

.field public DiplomacyPoints:F

.field public Discipline:F

.field public DiseaseDeathRate:F

.field public EconomyBuildingsCost:F

.field public GeneralAttack:I

.field public GeneralCost:F

.field public GeneralDefense:I

.field public GrowthRate:F

.field public ImproveRelationsModifier:F

.field public IncomeEconomy:F

.field public IncomeFromVassals:F

.field public IncomeProduction:F

.field public IncomeTaxation:F

.field public IncreaseGrowthRateCost:F

.field public IncreaseManpowerCost:F

.field public IncreaseTaxEfficiencyCost:F

.field public Inflation:F

.field public InvestInEconomyCost:F

.field public LoanInterest:F

.field public Loot:F

.field public MaintenanceCost:F

.field public ManpowerRecoveryFromADisbandedArmy:F

.field public ManpowerRecoverySpeed:F

.field public MaxInfrastructure:I

.field public MaxManpower:F

.field public MaxManpower_Percentage:F

.field public MaxMorale:F

.field public MaxNumOfAlliances:I

.field public MaxNumberOfLoans:I

.field public MaximumAmountOfGold:F

.field public MaximumAmountOfGold_Percentage:F

.field public MaximumLevelOfCapitalCity:I

.field public MaximumLevelOfNuclearReactor:I

.field public MaximumLevelOfTheMilitaryAcademy:I

.field public MaximumLevelOfTheMilitaryAcademyForGenerals:I

.field public MaximumLevelOfTheSupremeCourt:I

.field public MilitaryBuildingsCost:F

.field public MonthlyIncome:F

.field public MonthlyLegacy:F

.field public MonthlyLegacy_Percentage:F

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public RecruitArmyCost:F

.field public RecruitArmyFirstLineCost:F

.field public RecruitArmySecondLineCost:F

.field public RecruitmentTime:F

.field public RegimentsLimit:I

.field public ReinforcementSpeed:F

.field public ReligionCost:F

.field public Research:F

.field public ResearchPoints:F

.field public RevolutionaryRisk:F

.field public SiegeEffectiveness:F

.field public TaxEfficiency:F

.field public TechnologyCost:F

.field public TempTurnID:I

.field public UnitsAttack:I

.field public UnitsDefense:I

.field public WarScoreCost:F

.field public WonderConstructionCost:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 5
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "nTemporary_TurnID"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 8
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 9
    return-void
.end method
