.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;
.super Ljava/lang/Object;
.source "AI_Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;
    }
.end annotation


# static fields
.field public static averageCostOfBuilding:F

.field public static averageCostOfBuilding_Capital:F

.field public static capitalBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static constructionCost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static defensive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static economy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static gold:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static growthRate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static legacy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static manpower:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static minCostOfBuilding:I

.field public static productionEfficiency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static provinceMaintenance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static recruitArmyCost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static research:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static resourceBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static rest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static taxEfficiency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const v0, 0x98967f

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    .line 24
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    .line 25
    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->capitalBuildings:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->resourceBuildings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static balance_StopBuildingConstruction(I)Z
    .registers 3
    .param p0, "civID"    # I

    .line 345
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsMaintenanceCost_UnderConstruction(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MIN_BALANCE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static balance_StopBuildingConstruction_Research(I)Z
    .registers 3
    .param p0, "civID"    # I

    .line 349
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsMaintenanceCost_UnderConstruction(I)F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESEARCH_MIN_BALANCE:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static final build(I)V
    .registers 4
    .param p0, "civID"    # I

    .line 65
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_38

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->CHOOSE_BUILD_TYPE_LIMIT:I

    if-ge v0, v1, :cond_38

    .line 68
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->chooseBuildingType(I)I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build(II)Z

    move-result v1

    if-nez v1, :cond_28

    .line 69
    goto :goto_38

    .line 72
    :cond_28
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_39

    cmpg-float v1, v1, v2

    if-gez v1, :cond_35

    .line 73
    goto :goto_38

    .line 67
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 80
    .end local v0    # "i":I
    :cond_38
    :goto_38
    goto :goto_3d

    .line 78
    :catch_39
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public static final build(II)Z
    .registers 4
    .param p0, "civID"    # I
    .param p1, "typeID"    # I

    .line 88
    packed-switch p1, :pswitch_data_180

    .line 193
    const/4 v0, 0x0

    return v0

    .line 184
    :pswitch_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS:Z

    if-eqz v0, :cond_13

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID:I

    if-ge v0, v1, :cond_1b

    :cond_13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    if-eqz v0, :cond_20

    .line 185
    :cond_1b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_ColonizationTribal;->colonize(I)Z

    move-result v0

    return v0

    .line 188
    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build(II)Z

    move-result v0

    return v0

    .line 181
    :pswitch_2d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResource;->buildBuilding(II)Z

    move-result v0

    return v0

    .line 178
    :pswitch_36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;->buildBuilding(II)Z

    move-result v0

    return v0

    .line 171
    :pswitch_3f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 173
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 175
    :cond_50
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildRest;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 164
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 165
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 166
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 168
    :cond_6a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildConstructionCost;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 157
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 158
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 159
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 161
    :cond_84
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildProductionEfficiency;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 149
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_8d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 150
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 151
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 154
    :cond_9e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildEconomy;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 142
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_a7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 143
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 144
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 146
    :cond_b8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildGrowthRate;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 135
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_c1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 137
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 139
    :cond_d2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildRecruitArmyCost;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 128
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_db
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 130
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 132
    :cond_ec
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildDefensive;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 121
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_f5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 122
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 123
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 125
    :cond_106
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildManpower;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 114
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_10f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 115
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 116
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 118
    :cond_120
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildProvinceMaintenance;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 107
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_129
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 108
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 109
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 111
    :cond_13a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildTaxEfficiency;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 100
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_143
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 101
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_154

    .line 102
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 104
    :cond_154
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildLegacy;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 93
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_15d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    .restart local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 95
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result v1

    return v1

    .line 97
    :cond_16e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildGold;->buildBuilding(IILjava/util/List;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    :pswitch_177
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResearch;->buildResearchBuilding(II)Z

    move-result v0

    return v0

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_177
        :pswitch_15d
        :pswitch_143
        :pswitch_129
        :pswitch_10f
        :pswitch_f5
        :pswitch_db
        :pswitch_c1
        :pswitch_a7
        :pswitch_8d
        :pswitch_73
        :pswitch_59
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
        :pswitch_5
    .end packed-switch
.end method

.method public static final buildProvince_AIBuildScore_Default(II)V
    .registers 9
    .param p0, "civID"    # I
    .param p1, "nProvinceID"    # I

    .line 234
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 236
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsLimit_FreeSlots()I

    move-result v1

    if-gtz v1, :cond_11

    .line 238
    const v1, -0x368bdc10    # -999999.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    goto/16 :goto_e7

    .line 241
    :cond_11
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MIN:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 243
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_40

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    if-ne v1, v2, :cond_40

    .line 244
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 247
    :cond_40
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_75

    .line 248
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v3, v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    sub-float/2addr v3, v5

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 251
    :cond_75
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTION_COST:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL:F

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 253
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_GROWTH_RATE:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 255
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_INFRASTRUCTURE:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 257
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    int-to-float v3, v3

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    sub-float/2addr v5, v2

    mul-float v1, v1, v5

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 259
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v1, :cond_d0

    .line 260
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_NON_CORE:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 263
    :cond_d0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v1, v2, :cond_e7

    .line 264
    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DIFFERENT_RELIGION:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 267
    :cond_e7
    :goto_e7
    return-void
.end method

.method public static final buildProvince_AIBuildScore_DistanceToCapital(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 278
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 279
    return-void
.end method

.method public static final buildProvince_AIBuildScore_Economy(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 286
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_ECONOMY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 287
    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateManpower(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 306
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 307
    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateResearch(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 302
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 303
    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateTaxEfficiency(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 310
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 311
    return-void
.end method

.method public static final buildProvince_AIBuildScore_Manpower(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 290
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_MANPOWER:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 291
    return-void
.end method

.method public static final buildProvince_AIBuildScore_ProvinceMaintenance(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 272
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_28

    .line 273
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 275
    :cond_28
    return-void
.end method

.method public static final buildProvince_AIBuildScore_ProvinceValue(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 314
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_VALUE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 315
    return-void
.end method

.method public static final buildProvince_AIBuildScore_ResourcePrice(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 294
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    if-ltz v0, :cond_25

    .line 295
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 299
    :cond_25
    return-void
.end method

.method public static final buildProvince_AIBuildScore_TaxEfficiency(I)V
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 282
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_TAX_EFFICIENCY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    .line 283
    return-void
.end method

.method public static final build_NoBuildings(II)Z
    .registers 4
    .param p0, "civID"    # I
    .param p1, "typeID"    # I

    .line 197
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 199
    .local v0, "rand":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_NEXT_TYPE:I

    if-ge v0, v1, :cond_f

    goto :goto_3c

    .line 202
    :cond_f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

    if-ge v0, v1, :cond_1e

    .line 203
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->investInEconomy(IF)V

    goto :goto_3c

    .line 205
    :cond_1e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

    if-ge v0, v1, :cond_2d

    .line 206
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->increaseTaxEfficiency(IF)V

    goto :goto_3c

    .line 208
    :cond_2d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

    if-ge v0, v1, :cond_3c

    .line 209
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResource;->buildBuilding(II)Z

    move-result v1

    return v1

    .line 212
    :cond_3c
    :goto_3c
    const/4 v1, 0x1

    return v1
.end method

.method public static chooseBuildingType(I)I
    .registers 6
    .param p0, "civID"    # I

    .line 216
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE_TOTAL:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 218
    .local v0, "randomValue":I
    const/4 v1, 0x0

    .line 220
    .local v1, "score":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_44

    .line 221
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 223
    if-ge v0, v1, :cond_41

    .line 224
    return v2

    .line 220
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 228
    .end local v2    # "i":I
    :cond_44
    const/4 v2, 0x0

    return v2
.end method

.method public static getBuildingsAIScore(ILjava/util/List;)I
    .registers 6
    .param p0, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)I"
        }
    .end annotation

    .line 320
    .local p1, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "out":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_29

    .line 323
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->AI:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 326
    .end local v1    # "i":I
    :cond_29
    return v0
.end method

.method public static getBuildingsAIScore_BestID(ILjava/util/List;I)I
    .registers 8
    .param p0, "civID"    # I
    .param p2, "aiScore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;I)I"
        }
    .end annotation

    .line 330
    .local p1, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 332
    .local v0, "rand":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "currentScore":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 333
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->AI:[I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 334
    if-lt v2, v0, :cond_2e

    .line 335
    return v1

    .line 332
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 339
    .end local v1    # "i":I
    .end local v2    # "currentScore":I
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public static getBuildingsMaintenanceCost_UnderConstruction(I)F
    .registers 4
    .param p0, "civID"    # I

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 359
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v2, :cond_1d

    .line 360
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction_MaintenanceCosts()F

    move-result v2

    add-float/2addr v0, v2

    .line 358
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 364
    .end local v1    # "i":I
    :cond_20
    neg-float v1, v0

    return v1
.end method

.method public static final getLimitOfBuildings(I)I
    .registers 2
    .param p0, "typeID"    # I

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_LIMIT:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;
    .registers 8
    .param p0, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation

    .line 370
    .local p1, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 373
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_67

    .line 374
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    .line 376
    .local v3, "building":Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;
    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {v1, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 377
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v4, :cond_41

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    if-ne v4, v5, :cond_64

    .line 378
    :cond_41
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v4, :cond_61

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    if-ne v4, v5, :cond_64

    .line 379
    :cond_61
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v3    # "building":Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;
    :cond_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 385
    .end local v2    # "i":I
    :cond_67
    return-object v0
.end method

.method public static final initBuildings()V
    .registers 9

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "numOfBuildings":I
    const/4 v1, 0x0

    .line 395
    .local v1, "numOfBuildingsCapital":I
    :try_start_2
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    .local v2, "i":I
    :goto_4
    sget v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v2, v3, :cond_26

    .line 396
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_23

    .line 397
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->resourceBuildings:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v5, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 395
    .end local v3    # "j":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 401
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_27
    sget v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v2, v3, :cond_5a4

    .line 402
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2c
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5a0

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "added":Z
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_66

    .line 405
    add-int/lit8 v1, v1, 0x1

    .line 406
    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v3

    add-float/2addr v5, v6

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    .line 408
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->capitalBuildings:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v6, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59c

    .line 411
    :cond_66
    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_88

    .line 412
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v5, v5, v3

    float-to-int v5, v5

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    .line 415
    :cond_88
    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v3

    add-float/2addr v5, v6

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    .line 416
    add-int/lit8 v0, v0, 0x1

    .line 418
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    const/4 v6, 0x0

    if-eqz v5, :cond_c3

    .line 419
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c3

    .line 420
    const/4 v4, 0x1

    .line 421
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_c3
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    if-eqz v5, :cond_ea

    .line 426
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ea

    .line 427
    const/4 v4, 0x1

    .line 428
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_ea
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz v5, :cond_13b

    .line 433
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_13b

    .line 434
    const/4 v4, 0x1

    .line 436
    const/4 v5, 0x1

    .line 437
    .local v5, "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "a":I
    :goto_110
    if-ltz v7, :cond_12f

    .line 438
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_12c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_12c

    .line 439
    const/4 v5, 0x0

    .line 440
    goto :goto_12f

    .line 437
    :cond_12c
    add-int/lit8 v7, v7, -0x1

    goto :goto_110

    .line 443
    .end local v7    # "a":I
    :cond_12f
    :goto_12f
    if-eqz v5, :cond_13b

    .line 444
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v5    # "innerAdd":Z
    :cond_13b
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    if-eqz v5, :cond_162

    .line 450
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_162

    .line 451
    const/4 v4, 0x1

    .line 452
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_162
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz v5, :cond_187

    .line 457
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v5, v5, v3

    if-lez v5, :cond_187

    .line 458
    const/4 v4, 0x1

    .line 459
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_187
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v5, :cond_1d6

    .line 464
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v5, v5, v3

    if-lez v5, :cond_1d6

    .line 465
    const/4 v4, 0x1

    .line 467
    const/4 v5, 0x1

    .line 468
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_1ab
    if-ltz v7, :cond_1ca

    .line 469
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_1c7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_1c7

    .line 470
    const/4 v5, 0x0

    .line 471
    goto :goto_1ca

    .line 468
    :cond_1c7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1ab

    .line 474
    .end local v7    # "a":I
    :cond_1ca
    :goto_1ca
    if-eqz v5, :cond_1d6

    .line 475
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v5    # "innerAdd":Z
    :cond_1d6
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz v5, :cond_225

    .line 481
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v5, v5, v3

    if-lez v5, :cond_225

    .line 482
    const/4 v4, 0x1

    .line 484
    const/4 v5, 0x1

    .line 485
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_1fa
    if-ltz v7, :cond_219

    .line 486
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_216

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_216

    .line 487
    const/4 v5, 0x0

    .line 488
    goto :goto_219

    .line 485
    :cond_216
    add-int/lit8 v7, v7, -0x1

    goto :goto_1fa

    .line 491
    .end local v7    # "a":I
    :cond_219
    :goto_219
    if-eqz v5, :cond_225

    .line 492
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v5    # "innerAdd":Z
    :cond_225
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    if-eqz v5, :cond_24a

    .line 498
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v5, v5, v3

    if-lez v5, :cond_24a

    .line 499
    const/4 v4, 0x1

    .line 500
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_24a
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz v5, :cond_29b

    .line 505
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_29b

    .line 506
    const/4 v4, 0x1

    .line 508
    const/4 v5, 0x1

    .line 509
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_270
    if-ltz v7, :cond_28f

    .line 510
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_28c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_28c

    .line 511
    const/4 v5, 0x0

    .line 512
    goto :goto_28f

    .line 509
    :cond_28c
    add-int/lit8 v7, v7, -0x1

    goto :goto_270

    .line 515
    .end local v7    # "a":I
    :cond_28f
    :goto_28f
    if-eqz v5, :cond_29b

    .line 516
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v5    # "innerAdd":Z
    :cond_29b
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz v5, :cond_2c2

    .line 522
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2c2

    .line 523
    const/4 v4, 0x1

    .line 524
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_2c2
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz v5, :cond_2e9

    .line 529
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2e9

    .line 530
    const/4 v4, 0x1

    .line 531
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_2e9
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz v5, :cond_30e

    .line 536
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v5, v5, v3

    if-gez v5, :cond_30e

    .line 537
    const/4 v4, 0x1

    .line 538
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_30e
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    if-eqz v5, :cond_35f

    .line 543
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_35f

    .line 544
    const/4 v4, 0x1

    .line 546
    const/4 v5, 0x1

    .line 547
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_334
    if-ltz v7, :cond_353

    .line 548
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_350

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_350

    .line 549
    const/4 v5, 0x0

    .line 550
    goto :goto_353

    .line 547
    :cond_350
    add-int/lit8 v7, v7, -0x1

    goto :goto_334

    .line 553
    .end local v7    # "a":I
    :cond_353
    :goto_353
    if-eqz v5, :cond_35f

    .line 554
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v5    # "innerAdd":Z
    :cond_35f
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz v5, :cond_3b0

    .line 560
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3b0

    .line 561
    const/4 v4, 0x1

    .line 563
    const/4 v5, 0x1

    .line 564
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_385
    if-ltz v7, :cond_3a4

    .line 565
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_3a1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_3a1

    .line 566
    const/4 v5, 0x0

    .line 567
    goto :goto_3a4

    .line 564
    :cond_3a1
    add-int/lit8 v7, v7, -0x1

    goto :goto_385

    .line 570
    .end local v7    # "a":I
    :cond_3a4
    :goto_3a4
    if-eqz v5, :cond_3b0

    .line 571
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v5    # "innerAdd":Z
    :cond_3b0
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz v5, :cond_401

    .line 577
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_401

    .line 578
    const/4 v4, 0x1

    .line 580
    const/4 v5, 0x1

    .line 581
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_3d6
    if-ltz v7, :cond_3f5

    .line 582
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_3f2

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_3f2

    .line 583
    const/4 v5, 0x0

    .line 584
    goto :goto_3f5

    .line 581
    :cond_3f2
    add-int/lit8 v7, v7, -0x1

    goto :goto_3d6

    .line 587
    .end local v7    # "a":I
    :cond_3f5
    :goto_3f5
    if-eqz v5, :cond_401

    .line 588
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v5    # "innerAdd":Z
    :cond_401
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz v5, :cond_452

    .line 594
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_452

    .line 595
    const/4 v4, 0x1

    .line 597
    const/4 v5, 0x1

    .line 598
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_427
    if-ltz v7, :cond_446

    .line 599
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_443

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_443

    .line 600
    const/4 v5, 0x0

    .line 601
    goto :goto_446

    .line 598
    :cond_443
    add-int/lit8 v7, v7, -0x1

    goto :goto_427

    .line 604
    .end local v7    # "a":I
    :cond_446
    :goto_446
    if-eqz v5, :cond_452

    .line 605
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    .end local v5    # "innerAdd":Z
    :cond_452
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz v5, :cond_4a3

    .line 611
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4a3

    .line 612
    const/4 v4, 0x1

    .line 614
    const/4 v5, 0x1

    .line 615
    .restart local v5    # "innerAdd":Z
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .restart local v7    # "a":I
    :goto_478
    if-ltz v7, :cond_497

    .line 616
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v2, :cond_494

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v3, :cond_494

    .line 617
    const/4 v5, 0x0

    .line 618
    goto :goto_497

    .line 615
    :cond_494
    add-int/lit8 v7, v7, -0x1

    goto :goto_478

    .line 621
    .end local v7    # "a":I
    :cond_497
    :goto_497
    if-eqz v5, :cond_4a3

    .line 622
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v5    # "innerAdd":Z
    :cond_4a3
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz v5, :cond_4ca

    .line 628
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v5, v5, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4ca

    .line 629
    const/4 v4, 0x1

    .line 630
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_4ca
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz v5, :cond_4f1

    .line 635
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4f1

    .line 636
    const/4 v4, 0x1

    .line 637
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_4f1
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v5, :cond_518

    .line 642
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_518

    .line 643
    const/4 v4, 0x1

    .line 644
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_518
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz v5, :cond_53f

    .line 649
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_53f

    .line 650
    const/4 v4, 0x1

    .line 651
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_53f
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz v5, :cond_590

    .line 656
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v5, v5, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_590

    .line 657
    const/4 v4, 0x1

    .line 659
    const/4 v5, 0x1

    .line 660
    .restart local v5    # "innerAdd":Z
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "a":I
    :goto_565
    if-ltz v6, :cond_584

    .line 661
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v7, v2, :cond_581

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v7, v3, :cond_581

    .line 662
    const/4 v5, 0x0

    .line 663
    goto :goto_584

    .line 660
    :cond_581
    add-int/lit8 v6, v6, -0x1

    goto :goto_565

    .line 666
    .end local v6    # "a":I
    :cond_584
    :goto_584
    if-eqz v5, :cond_590

    .line 667
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v7, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v5    # "innerAdd":Z
    :cond_590
    if-nez v4, :cond_59c

    .line 673
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v6, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v4    # "added":Z
    :cond_59c
    :goto_59c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2c

    .line 401
    .end local v3    # "j":I
    :cond_5a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    .line 679
    .end local v2    # "i":I
    :cond_5a4
    sget v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    int-to-float v3, v0

    div-float/2addr v2, v3

    sput v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    .line 680
    sget v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    int-to-float v3, v1

    div-float/2addr v2, v3

    sput v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F
    :try_end_5b0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b0} :catch_5b1

    .line 683
    .end local v0    # "numOfBuildings":I
    .end local v1    # "numOfBuildingsCapital":I
    goto :goto_5b5

    .line 681
    :catch_5b1
    move-exception v0

    .line 682
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 684
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5b5
    return-void
.end method

.method public static final logBuilding(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)V"
        }
    .end annotation

    .line 689
    .local p1, "tList":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method public static final logBuildings()V
    .registers 2

    .line 695
    const-string v0, "Gold"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 696
    const-string v0, "Legacy"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 698
    const-string v0, "Research"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 700
    const-string v0, "Manpower"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 701
    const-string v0, "Defensive"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 702
    const-string v0, "RecruitArmyCost"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 704
    const-string v0, "TaxEfficiency"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 705
    const-string v0, "GrowthRate"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 706
    const-string v0, "Economy"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 707
    const-string v0, "ProductionEfficiency"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 709
    const-string v0, "ProvinceMaintenance"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 710
    const-string v0, "ConstructionCost"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 712
    const-string v0, "Rest"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minCostOfBuilding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "averageCostOfBuilding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "averageCostOfBuilding_Capital: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 717
    return-void
.end method
