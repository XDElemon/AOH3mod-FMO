.class public Laoc/kingdoms/lukasz/map/advisors/Advisor;
.super Ljava/lang/Object;
.source "Advisor.java"


# instance fields
.field public AdministrationBuildingsCost:F

.field public ArmyMaintenance:F

.field public ArmyMovementSpeed:F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public DevelopInfrastructureCost:F

.field public EconomyBuildingsCost:F

.field public GeneralAttack:F

.field public GeneralDefense:F

.field public GrowthRate:F

.field public ImproveRelationsModifier:F

.field public IncomeProduction:F

.field public IncreaseGrowthRateCost:F

.field public IncreaseManpowerCost:F

.field public IncreaseTaxEfficiencyCost:F

.field public InvestInEconomyCost:F

.field public LoanInterest:F

.field public MaxManpower:F

.field public MaxMorale:F

.field public MilitaryBuildingsCost:F

.field public MonthlyLegacy:F

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public RecruitArmyCost:F

.field public RecruitmentTime:F

.field public RegimentsLimit:I

.field public ReligionCost:F

.field public Research:F

.field public SiegeEffectiveness:F

.field public TaxEfficiency:F

.field public UnitsAttack:F

.field public UnitsDefense:F

.field public iDayOfBirth:I

.field public iLevel:I

.field public iMonthOfBirth:I

.field public iYearOfBirth:I

.field public imageID:I

.field public sIMG:Ljava/lang/String;

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 13
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 14
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 16
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 18
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 8
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iYearOfBirth"    # I
    .param p4, "sIMG"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 13
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 14
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 16
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 18
    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    .line 25
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    .line 26
    iput p2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    .line 27
    iput p3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    .line 29
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    .line 31
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 32
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDaysInMonth(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 33
    return-void
.end method
