.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Technology"
.end annotation


# instance fields
.field public AI:I

.field public BattleWidth:I

.field public Discipline:I

.field public GeneralAttack:I

.field public GeneralDefense:I

.field public Gold:I

.field public ID:I

.field public ImageID:I

.field public Legacy:I

.field public MaintainTechnologyName:Z

.field public MaxMorale:I

.field public MaximumLevelOfCapitalCity:I

.field public MaximumLevelOfTheMilitaryAcademy:I

.field public MaximumLevelOfTheMilitaryAcademyForGenerals:I

.field public Name:Ljava/lang/String;

.field public Repeatable:Z

.field public RequiredTech:I

.field public RequiredTech2:I

.field public ResearchCost:I

.field public TreeColumn:I

.field public TreeRow:I

.field public UnitsAttack:I

.field public UnitsDefense:I

.field public UnlocksAccessToTheSea:Z

.field public UnlocksColonization:Z

.field public UnlocksNukes:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaintainTechnologyName:Z

    .line 175
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    .line 176
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    .line 177
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    .line 179
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    .line 180
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    .line 181
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    .line 182
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    .line 183
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    .line 184
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    .line 185
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    .line 187
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    .line 188
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    .line 190
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    .line 191
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    .line 192
    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    return-void
.end method


# virtual methods
.method public getResearchCost()I
    .registers 3

    .line 198
    iget v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->ResearchCost:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->MapResearchCost:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method
