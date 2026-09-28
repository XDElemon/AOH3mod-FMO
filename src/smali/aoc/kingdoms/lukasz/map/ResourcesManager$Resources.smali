.class public Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resources"
.end annotation


# instance fields
.field public AdministrationBuildingsCost:F

.field public AggressiveExpansion:F

.field public ArmyMaintenance:F

.field public ArmyMovementSpeed:F

.field public BattleWidth:I

.field public Color:[F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public EconomyBuildingsCost:F

.field public GeneralAttack:I

.field public GeneralDefense:I

.field public GroupID:I

.field public GrowthRate:F

.field public ID:I

.field public ImageID:I

.field public ImproveRelationsModifier:F

.field public IncomeFromVassals:F

.field public IncomeProduction:F

.field public IncreaseManpowerCost:F

.field public InvestInEconomyCost:F

.field public LoanInterest:F

.field public ManpowerRecoverySpeed:F

.field public MaxManpower:F

.field public MaxMorale:F

.field public MilitaryBuildingsCost:F

.field public MonthlyIncome:F

.field public MonthlyLegacy:F

.field public Name:Ljava/lang/String;

.field public Price:F

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public RecruitArmyCost:F

.field public RecruitArmyFirstLineCost:F

.field public RecruitArmySecondLineCost:F

.field public RecruitmentTime:F

.field public RegimentsLimit:I

.field public RequiredTechID:I

.field public ResearchPoints:F

.field public RevolutionaryRisk:F

.field public SiegeEffectiveness:F

.field public TaxEfficiency:F

.field public TechnologyCost:F

.field public UnitsAttack:I

.field public UnitsDefense:I

.field public uniqueBuildingID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    return-void
.end method
