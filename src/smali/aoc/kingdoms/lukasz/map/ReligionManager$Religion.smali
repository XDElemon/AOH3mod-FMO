.class public Laoc/kingdoms/lukasz/map/ReligionManager$Religion;
.super Ljava/lang/Object;
.source "ReligionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/ReligionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Religion"
.end annotation


# instance fields
.field public AdministrationBuildingsCost:F

.field public AdvisorCost:F

.field public ArmyMaintenance:F

.field public BuildingSlot:I

.field public Color:[F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public DevelopInfrastructureCost:F

.field public EconomyBuildingsCost:F

.field public GeneralAttack:I

.field public GeneralCost:F

.field public GeneralDefense:I

.field public Icon:Ljava/lang/String;

.field public IncreaseManpowerCost:F

.field public IncreaseTaxEfficiencyCost:F

.field public InvestInEconomyCost:F

.field public MaxManpower:F

.field public MaxNumberOfLoans:I

.field public MilitaryBuildingsCost:F

.field public MonthlyIncome:F

.field public MonthlyLegacy:F

.field public Name:Ljava/lang/String;

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public RecruitArmyCost:F

.field public RecruitmentTime:F

.field public ReligionCost:F

.field public ReligionGroupID:I

.field public TaxEfficiency:F

.field public Tribal:Z

.field public UnitsAttack:I

.field public UnitsDefense:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Tribal:Z

    return-void
.end method
