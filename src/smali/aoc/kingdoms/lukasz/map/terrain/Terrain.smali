.class public Laoc/kingdoms/lukasz/map/terrain/Terrain;
.super Ljava/lang/Object;
.source "Terrain.java"


# instance fields
.field public Ambience:I

.field public BaseEconomy:I

.field public BasePopulation:I

.field public BattleOver:I

.field public BuildCost:F

.field public Color:[F

.field public Defense:I

.field public ImageFile:[Ljava/lang/String;

.field public IncreaseGrowthRateCost:F

.field public MovementSpeed:F

.field public Name:Ljava/lang/String;

.field public PopulationGrowth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    return-void
.end method
