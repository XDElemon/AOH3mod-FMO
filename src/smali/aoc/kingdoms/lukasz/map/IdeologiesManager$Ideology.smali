.class public Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;
.super Ljava/lang/Object;
.source "IdeologiesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/IdeologiesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ideology"
.end annotation


# instance fields
.field public AI_BUILD_BUILDING:I

.field public AI_BUILD_DEVELOP_INFRASTRUCTURE:I

.field public AI_BUILD_INCREASE_GROWTH_RATE:I

.field public AI_BUILD_INCREASE_MANPOWER:I

.field public AI_BUILD_INCREASE_TAX_EFFICIENCY:I

.field public AI_BUILD_INVEST_IN_ECONOMY:I

.field public AI_BUILD_SCORE:[I

.field public AI_BUILD_SCORE_TOTAL:I

.field public AI_EXTRA_AGGRESSIVENESS:I

.field public AI_PEACE_ORDER:[I

.field public AI_PEACE_ORDER2:[I

.field public AI_PEACE_ORDER_CHANCE:I

.field public AI_PEACE_ORDER_CHANCE2:I

.field public AdministrationBuildingsCost:F

.field public AdvisorCost:F

.field public ArmyMaintenance:F

.field public BuildingSlot:I

.field public CITY_STATE:Z

.field public Color:[F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public DevelopInfrastructureCost:F

.field public EconomyBuildingsCost:F

.field public Extra_Tag:Ljava/lang/String;

.field public GOV_GROUP_ID:I

.field public GeneralAttack:I

.field public GeneralCost:F

.field public GeneralDefense:I

.field public IncreaseManpowerCost:F

.field public IncreaseTaxEfficiencyCost:F

.field public InvestInEconomyCost:F

.field public KingsImages:Z

.field public MUST_BE_CHANGED:Z

.field public MaxManpower:F

.field public MaxNumberOfLoans:I

.field public MilitaryBuildingsCost:F

.field public MonthlyIncome:F

.field public MonthlyLegacy:F

.field public Name:Ljava/lang/String;

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public REQUIRED_TECHNOLOGY:I

.field public REVOLUTIONISTS:Z

.field public RecruitArmyCost:F

.field public RecruitmentTime:F

.field public ReligionCost:F

.field public RulerRoman:Z

.field public RulerTitle:Ljava/lang/String;

.field public STARTING_ARMY:F

.field public TRIBAL:Z

.field public TaxEfficiency:F

.field public UnitsAttack:I

.field public UnitsDefense:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->RulerTitle:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->KingsImages:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    .line 69
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->MUST_BE_CHANGED:Z

    .line 70
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    .line 71
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->CITY_STATE:Z

    .line 75
    const/16 v1, 0x32

    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE:I

    .line 76
    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE2:I

    .line 78
    const/16 v2, 0x9

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER:[I

    .line 79
    new-array v2, v2, [I

    fill-array-data v2, :array_64

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER2:[I

    .line 81
    const/16 v2, 0xf

    new-array v2, v2, [I

    fill-array-data v2, :array_7a

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE:[I

    .line 82
    iput v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE_TOTAL:I

    .line 84
    const/16 v2, 0x19

    iput v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INVEST_IN_ECONOMY:I

    .line 85
    const/16 v2, 0x28

    iput v2, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_TAX_EFFICIENCY:I

    .line 86
    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_MANPOWER:I

    .line 87
    const/16 v1, 0x3c

    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_GROWTH_RATE:I

    .line 88
    const/16 v1, 0x43

    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_DEVELOP_INFRASTRUCTURE:I

    .line 89
    const/16 v1, 0x64

    iput v1, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_BUILDING:I

    .line 91
    iput v0, p0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_EXTRA_AGGRESSIVENESS:I

    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_7a
    .array-data 4
        0x46
        0x32
        0x28
        0x3c
        0x28
        0x41
        0x3c
        0x1e
        0x28
        0x37
        0x32
        0x2d
        0x1e
        0x32
        0x28
    .end array-data
.end method
