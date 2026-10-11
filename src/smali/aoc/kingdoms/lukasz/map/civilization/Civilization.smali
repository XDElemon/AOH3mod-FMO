.class public Laoc/kingdoms/lukasz/map/civilization/Civilization;
.super Ljava/lang/Object;
.source "Civilization.java"


# instance fields
.field public advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

.field public aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

.field public aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

.field public aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

.field public aiScore:F

.field public aiUpdateID:I

.field public armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

.field public armyPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyPosition;",
            ">;"
        }
    .end annotation
.end field

.field public canAccessSea:Z

.field public canBuildNuke:Z

.field public canColonize:Z

.field public civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

.field public civBonusesTemporary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;",
            ">;"
        }
    .end annotation
.end field

.field public civColor:Lcom/badlogic/gdx/graphics/Color;

.field public civColorFog:Lcom/badlogic/gdx/graphics/Color;

.field public civColorMap:Lcom/badlogic/gdx/graphics/Color;

.field public civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

.field public civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

.field public civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

.field private civFlag:Laoc/kingdoms/lukasz/textures/Image;

.field public civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

.field public civStability_LostFrom100:F

.field public civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

.field public colonizationProvince:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

.field public diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

.field public eventProvinceID:I

.field public eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

.field public eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

.field public eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

.field public eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

.field public fArmyMaintenance:F

.field private fB:F

.field public fDiplomacy:F

.field public fDiplomacyMax:F

.field private fDiplomacyPerMonth:F

.field public fExpenseVassal:F

.field private fG:F

.field public fGold:F

.field public fIncomeLord:F

.field public fLegacy:F

.field public fLegacyPerMonth:F

.field public fLoansCost:F

.field public fManpower:D

.field public fManpowerMax:D

.field public fManpowerMax_ToLord:D

.field public fManpowerPerMonth:D

.field public fProsperity_AverageEconomy:F

.field private fR:F

.field public fResearchPerMonth:F

.field public fTotalExpensesPerMonth:F

.field public fTotalIncomePerMonth:F

.field public fTotalProvincesValue:F

.field public goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

.field public goodsProduced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public haveAccessSea:Z

.field public iAdvantagesSize:I

.field public iAlternativeTechResearch:I

.field public iArmyImgID:I

.field public iArmyPositionSize:I

.field public iArmyRecruitSize:I

.field public iArmyRecruitSize_Total:I

.field private iB:I

.field public iCapitalNameHeight:I

.field public iCapitalNameWidth:I

.field public iCivBonusesTemporarySize:I

.field public iCivID:I

.field public iCivNameHeight:I

.field public iCivNameLength:I

.field public iCivNameWidth:I

.field public iCivRankID:I

.field public iCivRankPosition:I

.field public iCivRankScore:F

.field public iCivRankScoreArmy:F

.field private iCivRegionsSize:I

.field public iColonizationProvinceSize:I

.field private iG:I

.field public iGeneralsSize:I

.field public iGroupID:I

.field public iIdeologyID:I

.field private iLegaciesSize:I

.field public iLoansSize:I

.field public iMissionsSize:I

.field private iMoveUnitsSize:I

.field public iNukesSize:I

.field private iNumOfProvinces:I

.field private iR:I

.field public iRegiments:I

.field public iRegimentsLimit:I

.field public iUniqueResources:I

.field public inAlliance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inAllianceSize:I

.field public inBattles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFlagNearest:Z

.field public isPlayerAlly:Z

.field public lAdvantages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;",
            ">;"
        }
    .end annotation
.end field

.field public lArmyRecruit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRecruit;",
            ">;>;"
        }
    .end annotation
.end field

.field public lCivNameChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lCivRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;",
            ">;"
        }
    .end annotation
.end field

.field public lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lGeneralsNotAssigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyGeneral;",
            ">;"
        }
    .end annotation
.end field

.field public lMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Missions/Mission;",
            ">;"
        }
    .end annotation
.end field

.field public lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lResearching:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;",
            ">;"
        }
    .end annotation
.end field

.field public lTechResearched:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public largestProducerNum:I

.field public laws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private legacies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;",
            ">;"
        }
    .end annotation
.end field

.field public loans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/Loan;",
            ">;"
        }
    .end annotation
.end field

.field public noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

.field public nukesDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public occupiedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public occupiedProvincesSize:I

.field public realTag:Ljava/lang/String;

.field public ruler:Laoc/kingdoms/lukasz/map/Ruler;

.field public sCivName:Ljava/lang/String;

.field public sCivName_UpperCase:Ljava/lang/String;

.field public sTagsCanForm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

.field public underSiege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public underSiegeSize:I

.field public unitsBest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBestSize:I

.field public unitsBest_FirstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_FirstLineSize:I

.field public unitsBest_Flank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_FlankSize:I

.field public unitsBest_Siege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_SiegeSize:I

.field public unitsBest_Support:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_SupportSize:I

.field private unlockedBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;",
            ">;"
        }
    .end annotation
.end field

.field private unlockedUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private updateRegions:Z

.field public warView_IsAggressor:Z

.field public warView_ParticipatesInWar:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIII)V
    .registers 16
    .param p1, "iCivID"    # I
    .param p2, "sCivTag"    # Ljava/lang/String;
    .param p3, "iPuppetOfCivID"    # I
    .param p4, "iR"    # I
    .param p5, "iG"    # I
    .param p6, "iB"    # I
    .param p7, "iCapitalProvinceID"    # I
    .param p8, "iReligionID"    # I
    .param p9, "iGroupID"    # I

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    .line 84
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    .line 85
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    .line 93
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    .line 94
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    .line 95
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    .line 97
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 99
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 104
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 105
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 106
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 108
    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    .line 113
    const/4 v4, 0x0

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    .line 115
    const/16 v5, 0x3e7

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    .line 116
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    .line 117
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScoreArmy:F

    .line 119
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    .line 120
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    .line 122
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    .line 123
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    .line 125
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    .line 127
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    .line 129
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    .line 130
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    .line 132
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    .line 134
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    .line 135
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    .line 138
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    .line 148
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    .line 151
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    .line 153
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 158
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    .line 160
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    .line 162
    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 163
    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 164
    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 165
    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 168
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    .line 173
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    .line 177
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    .line 179
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    .line 180
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    .line 182
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    .line 183
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    .line 185
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    .line 190
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    .line 197
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    .line 200
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 202
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    .line 203
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    .line 204
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    .line 208
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 209
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 211
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    .line 213
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    .line 214
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    .line 216
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    .line 224
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    .line 227
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 231
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 233
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 234
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    .line 236
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    .line 238
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 240
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    .line 241
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    .line 246
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    .line 250
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    .line 253
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    .line 258
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    .line 266
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    .line 278
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    .line 279
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    .line 280
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    .line 281
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    .line 282
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    .line 293
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    .line 303
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    .line 307
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 309
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    .line 310
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    .line 314
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 381
    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    .line 392
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    .line 396
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    .line 552
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 553
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 557
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    .line 756
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    .line 758
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    .line 759
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    .line 319
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    .line 320
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    .line 321
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    .line 323
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 324
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p3, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    .line 326
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p7, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    .line 328
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    .line 329
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    .line 330
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    .line 332
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p8, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    .line 333
    iput p9, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    .line 335
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 336
    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 338
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    .line 340
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    .line 342
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    .line 343
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIZ)V
    .registers 23
    .param p1, "iCivID"    # I
    .param p2, "sCivTag"    # Ljava/lang/String;
    .param p3, "iPuppetOfCivID"    # I
    .param p4, "iR"    # I
    .param p5, "iG"    # I
    .param p6, "iB"    # I
    .param p7, "iCapitalProvinceID"    # I
    .param p8, "iReligionID"    # I
    .param p9, "iGroupID"    # I
    .param p10, "loadScenario"    # Z

    .line 346
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    .line 84
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    .line 85
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    .line 93
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    .line 94
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    .line 95
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    .line 97
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    .line 99
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    .line 101
    const/4 v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    .line 103
    const/4 v3, 0x0

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 104
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 106
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 108
    new-instance v6, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    .line 113
    const/4 v6, 0x0

    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    .line 115
    const/16 v7, 0x3e7

    iput v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    .line 116
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    .line 117
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScoreArmy:F

    .line 119
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    .line 120
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    .line 122
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    .line 123
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    .line 125
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    .line 127
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    .line 129
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    .line 130
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    .line 132
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    .line 135
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    .line 137
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    .line 138
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    .line 148
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    .line 151
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    .line 153
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 158
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    .line 160
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    .line 162
    new-instance v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 163
    new-instance v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 164
    new-instance v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 165
    new-instance v7, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 168
    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    .line 173
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    .line 177
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    .line 179
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    .line 180
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    .line 182
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    .line 183
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    .line 185
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    .line 190
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    .line 197
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    .line 200
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 202
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    .line 203
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    .line 204
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    .line 208
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 209
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 211
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    .line 213
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    .line 214
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    .line 216
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    .line 224
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    .line 227
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 231
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 233
    iput-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 234
    iput-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    .line 236
    iput-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    .line 238
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 240
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    .line 241
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    .line 246
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    .line 250
    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    .line 253
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    .line 258
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    .line 266
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    .line 278
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    .line 279
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    .line 280
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    .line 281
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    .line 282
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    .line 293
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    .line 303
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    .line 307
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 309
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    .line 310
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    .line 314
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    .line 378
    const/4 v2, 0x0

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 381
    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    .line 392
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    .line 396
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    .line 552
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    .line 553
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    .line 557
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    .line 756
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    .line 758
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    .line 759
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    .line 347
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object v1, v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    .line 348
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    .line 350
    move v2, p1

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 351
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    move v4, p3

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    .line 353
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    move/from16 v5, p7

    iput v5, v3, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    .line 355
    move/from16 v3, p4

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    .line 356
    move/from16 v7, p5

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    .line 357
    move/from16 v8, p6

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    .line 359
    iget-object v9, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    move/from16 v10, p8

    iput v10, v9, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    .line 360
    move/from16 v9, p9

    iput v9, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    .line 362
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput v11, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 363
    iput-boolean v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 364
    return-void
.end method

.method private final buildCivilizationRegion(II)V
    .registers 8
    .param p1, "nProvinceID"    # I
    .param p2, "nCivRegionID"    # I

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 627
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    .line 628
    .local v1, "neighborProvinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 630
    .local v2, "neighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne v3, v4, :cond_40

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    if-nez v3, :cond_40

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v3

    if-gez v3, :cond_40

    .line 631
    const/4 v3, 0x1

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    .line 632
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->addProvince(I)V

    .line 633
    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 635
    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    .line 637
    invoke-direct {p0, v1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCivilizationRegion(II)V

    .line 626
    .end local v2    # "neighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    .end local v0    # "i":I
    .end local v1    # "neighborProvinceID":I
    :cond_43
    return-void
.end method

.method private final buildUnlockTechnologies_TechQueue1(I)V
    .registers 5
    .param p1, "iTechID"    # I

    .line 1909
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_4a

    .line 1910
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1911
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1913
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    .line 1914
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    .line 1917
    :cond_4a
    return-void
.end method

.method private final buildUnlockTechnologies_TechQueue2(I)V
    .registers 5
    .param p1, "iTechID"    # I

    .line 1920
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_50

    .line 1921
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1922
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1924
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    .line 1925
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    .line 1928
    :cond_50
    return-void
.end method

.method private checkAndContinueMove(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V
    .registers 9
    .param p1, "move"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    .prologue
    iget-object v4, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->nextDestinations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    :cond_1d
    return-void
.end method


# virtual methods
.method public final addAdvantage(II)V
    .registers 5
    .param p1, "iAdvantageID"    # I
    .param p2, "iLevel"    # I

    .line 3410
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v0

    if-nez v0, :cond_47

    .line 3411
    if-nez p2, :cond_1b

    .line 3412
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3413
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    goto :goto_47

    .line 3417
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v0, v1, :cond_47

    .line 3418
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_44

    .line 3419
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p2, :cond_44

    .line 3420
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iput p2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    .line 3417
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 3426
    .end local v0    # "i":I
    :cond_47
    :goto_47
    return-void
.end method

.method public final addAggressiveExpansion(F)V
    .registers 6
    .param p1, "fValue"    # F

    .line 4168
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_MAX_VALUE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    .line 4169
    return-void
.end method

.method public final addArmyPosition(ILjava/lang/String;)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 470
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_26

    .line 471
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 472
    return-void

    .line 470
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 476
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 480
    goto :goto_3d

    .line 478
    :catch_39
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 481
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public final addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V
    .registers 3
    .param p1, "nBonus"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    .line 3442
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_2
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 3445
    goto :goto_a

    .line 3443
    :catch_6
    move-exception v0

    .line 3444
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3447
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3448
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    .line 3449
    return-void
.end method

.method public final addColonizationProvince(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 3854
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_18

    .line 3855
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_19

    if-ne v1, p1, :cond_15

    .line 3856
    return-void

    .line 3854
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3861
    .end local v0    # "i":I
    :cond_18
    goto :goto_1d

    .line 3859
    :catch_19
    move-exception v0

    .line 3860
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3863
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3864
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    .line 3865
    return-void
.end method

.method public final addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    .registers 3
    .param p1, "armyGeneral"    # Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 1830
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    .line 1832
    return-void
.end method

.method public final addGold(F)V
    .registers 4
    .param p1, "nGold"    # F

    .line 2850
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    .line 2851
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_2c

    .line 2853
    :cond_22
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2c

    .line 2854
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2856
    :cond_2c
    :goto_2c
    return-void
.end method

.method public final addGoodsProduced(II)V
    .registers 5
    .param p1, "iResourceID"    # I
    .param p2, "value"    # I

    .line 3767
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 3768
    return-void

    .line 3769
    :catch_17
    move-exception v0

    .line 3770
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3773
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 3774
    return-void
.end method

.method public final addInAllianceSpecial(I)V
    .registers 4
    .param p1, "nAllianceID"    # I

    .line 4138
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4139
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4140
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    .line 4142
    :cond_1d
    return-void
.end method

.method public addInBattles(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 4261
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4262
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4264
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1f

    .line 4265
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/Civilization$5;

    const-string v1, "rebuildInGame_Right"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization$5;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 4273
    :cond_1f
    return-void
.end method

.method public final addLegacy(F)V
    .registers 5
    .param p1, "fValue"    # F

    .line 2468
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->MIN_LEGACY_POINTS:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->MAX_LEGACY_POINTS:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2469
    return-void
.end method

.method public final addLegacy(II)Z
    .registers 6
    .param p1, "legacyID"    # I
    .param p2, "levelID"    # I

    .line 1732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v0, v1, :cond_2e

    .line 1733
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_2b

    .line 1734
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    .line 1735
    const/4 v1, 0x0

    return v1

    .line 1732
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1739
    .end local v0    # "i":I
    :cond_2e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    .line 1742
    const/4 v0, 0x1

    return v0
.end method

.method public final addLegacy_Load(II)V
    .registers 6
    .param p1, "legacyID"    # I
    .param p2, "levelID"    # I

    .line 1746
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    .line 1750
    move v0, p2

    .local v0, "a":I
    :goto_13
    if-ltz v0, :cond_25

    .line 1751
    :try_start_15
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(IIIZ)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_20

    .line 1750
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1753
    .end local v0    # "a":I
    :catch_20
    move-exception v0

    .line 1754
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 1755
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_25
    nop

    .line 1756
    :goto_26
    return-void
.end method

.method public final addLoan_Load(Laoc/kingdoms/lukasz/map/Loan;)V
    .registers 4
    .param p1, "nLoan"    # Laoc/kingdoms/lukasz/map/Loan;

    .line 2705
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2706
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 2708
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget v1, p1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2709
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget v1, p1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2710
    return-void
.end method

.method public addNukeProduction()Z
    .registers 4

    .line 3307
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    .line 3308
    return v2

    .line 3311
    :cond_c
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 3312
    return v2

    .line 3315
    :cond_1b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3317
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombProductionTime(I)I

    move-result v0

    .line 3318
    .local v0, "investTime":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3319
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    .line 3321
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivsNukes(I)V

    .line 3323
    const/4 v1, 0x1

    return v1
.end method

.method public addNukeProduction_Load(II)V
    .registers 5
    .param p1, "daysLeft"    # I
    .param p2, "investTime"    # I

    .line 3327
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3328
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    .line 3330
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivsNukes(I)V

    .line 3331
    return-void
.end method

.method public final addOccupiedProvince(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 4487
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4488
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4489
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 4491
    :cond_1d
    return-void
.end method

.method public final addProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_17

    .line 425
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 426
    return-void

    .line 424
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    .line 432
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 434
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->checkProvince(II)V

    .line 435
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince_Full(II)V

    .line 436
    return-void
.end method

.method public final addProvince_Just(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_17

    .line 403
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 404
    return-void

    .line 402
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    .line 410
    return-void
.end method

.method public final addProvince_LoadScenario(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_17

    .line 414
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 415
    return-void

    .line 413
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    .line 421
    return-void
.end method

.method public final addRecruitArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)V
    .registers 6
    .param p1, "nArmyRecruit"    # Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1366
    const/4 v0, -0x1

    .line 1368
    .local v0, "nID":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_20

    .line 1369
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v2, v3, :cond_1d

    .line 1370
    move v0, v1

    .line 1371
    goto :goto_20

    .line 1368
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1375
    .end local v1    # "i":I
    :cond_20
    :goto_20
    if-ltz v0, :cond_2e

    .line 1376
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1379
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v1, "nListArmyRecruit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/army/ArmyRecruit;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .end local v1    # "nListArmyRecruit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/army/ArmyRecruit;>;"
    :goto_3b
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1386
    return-void
.end method

.method public final addRecruitArmy_LoadUpdateSize()V
    .registers 4

    .line 1389
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v0, v1, :cond_1c

    .line 1391
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1390
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1393
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public final addResearchProgress(F)V
    .registers 3
    .param p1, "nProgress"    # F

    .line 2067
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V

    .line 2068
    return-void
.end method

.method public final addResearchProgress(IF)V
    .registers 7
    .param p1, "iTechID"    # I
    .param p2, "nProgress"    # F

    .line 2071
    if-ltz p1, :cond_79

    .line 2072
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_5a

    .line 2073
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_57

    .line 2074
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    add-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    .line 2076
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_56

    .line 2077
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/events/AirTechEvents;->onTechCompleted(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    .line 2079
    :cond_56
    return-void

    .line 2072
    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2083
    .end local v0    # "i":I
    :cond_5a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    add-float/2addr v1, p2

    iput v1, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    .line 2086
    :cond_79
    return-void
.end method

.method public final addTagsCanForm(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"    # Ljava/lang/String;

    .line 3999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 4000
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4001
    return-void

    .line 3999
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4005
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4006
    return-void
.end method

.method public addTechnology(IZ)V
    .registers 8
    .param p1, "iTechID"    # I
    .param p2, "loadScenario"    # Z

    .line 2089
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    if-nez v0, :cond_1c

    if-eqz p2, :cond_1b9

    .line 2090
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2091
    if-nez p2, :cond_30

    .line 2092
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    .line 2095
    :cond_30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 2096
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 2099
    .end local v0    # "i":I
    :cond_55
    const/4 v0, 0x0

    .line 2101
    .local v0, "updateBestUnits":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7c

    .line 2102
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    const/4 v0, 0x1

    .line 2101
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2106
    .end local v2    # "i":I
    :cond_7c
    if-nez p2, :cond_83

    if-eqz v0, :cond_83

    .line 2107
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    .line 2110
    :cond_83
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_8a
    if-ltz v2, :cond_a1

    .line 2111
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_9e

    .line 2112
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2113
    goto :goto_a1

    .line 2110
    :cond_9e
    add-int/lit8 v2, v2, -0x1

    goto :goto_8a

    .line 2117
    .end local v2    # "i":I
    :cond_a1
    :goto_a1
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    const/4 v2, -0x1

    if-nez v1, :cond_b2

    .line 2118
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    .line 2120
    :cond_b2
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 2122
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTechnologyBonuses(I)V

    .line 2124
    if-nez p2, :cond_1a6

    .line 2125
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    if-eqz v1, :cond_d3

    .line 2126
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 2129
    :cond_d3
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    if-eqz v1, :cond_ef

    .line 2130
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2133
    :cond_ef
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 2135
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_1a6

    .line 2136
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v1

    const-string v2, "rebuildTechTree"

    if-eqz v1, :cond_118

    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v1, :cond_118

    .line 2137
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$2;

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$2;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 2146
    :cond_118
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v1

    if-eqz v1, :cond_128

    .line 2147
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$3;

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$3;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 2156
    :cond_128
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_14a

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    if-ne v1, v2, :cond_14a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-eq v1, v2, :cond_14a

    .line 2157
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$4;

    const-string v2, "rebuildBuildings2SavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$4;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 2169
    :cond_14a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 2170
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 2172
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ResearchCompleted"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_180

    .line 2174
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTechnology2:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    goto :goto_184

    .line 2176
    :cond_180
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoTechnology:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 2179
    :goto_184
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19f

    .line 2180
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechQueue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    .line 2183
    :cond_19f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    .line 2187
    :cond_1a6
    if-nez p2, :cond_1b9

    .line 2188
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_1b9

    .line 2189
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_UnlockedTechnology;->unlockedTechnology(II)V

    .line 2193
    .end local v0    # "updateBestUnits":Z
    :cond_1b9
    return-void
.end method

.method public final addUnderSiege(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 4456
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4457
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4458
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 4460
    :cond_1d
    return-void
.end method

.method public final addVassal(I)V
    .registers 4
    .param p1, "nCivID"    # I

    .line 983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 984
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_1a

    .line 985
    return-void

    .line 983
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 989
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    .line 993
    goto :goto_3a

    .line 991
    :catch_36
    move-exception v0

    .line 992
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 994
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public final adoptReform(II)V
    .registers 5
    .param p1, "lawID"    # I
    .param p2, "lawID2"    # I

    .line 3818
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 3819
    return-void

    .line 3820
    :catch_a
    move-exception v0

    .line 3821
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3824
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    .line 3825
    return-void
.end method

.method public final areInAllianceSpecial(I)Z
    .registers 5
    .param p1, "civID"    # I

    .line 4146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_20

    .line 4147
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4148
    const/4 v1, 0x1

    return v1

    .line 4146
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4152
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public armyExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_1a

    .line 539
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1b

    if-eqz v1, :cond_17

    .line 540
    const/4 v1, 0x1

    return v1

    .line 538
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 545
    .end local v0    # "i":I
    :cond_1a
    goto :goto_1f

    .line 543
    :catch_1b
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 547
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final armyMovingToProvince_MoveUnits(I)I
    .registers 6
    .param p1, "provinceID"    # I

    .line 1299
    const/4 v0, 0x0

    .line 1301
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_3a

    .line 1302
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v2

    if-ne v2, p1, :cond_37

    .line 1303
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    .line 1305
    .local v2, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v2, :cond_37

    .line 1306
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v0, v3

    .line 1301
    .end local v2    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1311
    .end local v1    # "i":I
    :cond_3a
    return v0
.end method

.method public final assignGeneralToArmy(III)V
    .registers 6
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "generalID"    # I

    .line 1855
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v0, :cond_19

    .line 1856
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 1859
    :cond_19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 1861
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1862
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1865
    goto :goto_3e

    .line 1863
    :catch_3a
    move-exception v0

    .line 1864
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1866
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method public final assignGeneralToArmy(II)Z
    .registers 6
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I

    .line 1835
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    if-lez v0, :cond_1f

    .line 1836
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->assignGeneralToArmy(IILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1839
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public final assignGeneralToArmy(IILjava/lang/String;)Z
    .registers 7
    .param p1, "nProvinceID"    # I
    .param p2, "nArmyID"    # I
    .param p3, "generalKey"    # Ljava/lang/String;

    .line 1843
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1d

    .line 1844
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1845
    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->assignGeneralToArmy(III)V

    .line 1846
    return v1

    .line 1843
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1850
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final buildCapitalCity_Bonuses()V
    .registers 5

    .line 2979
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    if-lez v0, :cond_28

    .line 2980
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 2981
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 2983
    :cond_28
    return-void
.end method

.method public final buildColonizationProvince()V
    .registers 4

    .line 3882
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 3886
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationStartedTurnID()I

    move-result v1

    if-ltz v1, :cond_52

    .line 3887
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getSettlementEstablishmentProgress(I)F

    move-result v1

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_35

    .line 3888
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetColonizationData()V

    goto :goto_52

    .line 3891
    :cond_35
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 3892
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_52} :catch_56

    .line 3885
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3899
    .end local v0    # "i":I
    :cond_55
    goto :goto_5a

    .line 3897
    :catch_56
    move-exception v0

    .line 3898
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3901
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    .line 3902
    return-void
.end method

.method public final buildLaws()V
    .registers 4

    .line 3809
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_17

    .line 3812
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3811
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3814
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public final buildMilitaryAcademyForGenerals_Bonuses()V
    .registers 4

    .line 2883
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    if-lez v0, :cond_33

    .line 2884
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 2885
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 2886
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2888
    :cond_33
    return-void
.end method

.method public final buildMilitaryAcademy_Bonuses()V
    .registers 4

    .line 2918
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    if-lez v0, :cond_42

    .line 2919
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 2920
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 2921
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2922
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 2924
    :cond_42
    return-void
.end method

.method public final buildNuclearReactor_Bonuses()V
    .registers 4

    .line 2951
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    if-lez v0, :cond_15

    .line 2952
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 2954
    :cond_15
    return-void
.end method

.method public final buildOccupiedProvinces()V
    .registers 4

    .line 4504
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 4507
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-eqz v1, :cond_27

    .line 4508
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4506
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4512
    .end local v0    # "i":I
    :cond_2a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 4513
    return-void
.end method

.method public final buildSupremeCourt_Bonuses()V
    .registers 5

    .line 2988
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    .line 2989
    return-void
.end method

.method public buildTechTree()V
    .registers 5

    .line 1955
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1956
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1957
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_21

    .line 1960
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1963
    .end local v0    # "i":I
    :cond_21
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v0, v1, :cond_59

    .line 1964
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    if-ltz v0, :cond_37

    .line 1965
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    goto :goto_7a

    .line 1967
    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    if-ltz v0, :cond_7a

    .line 1968
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    goto :goto_7a

    .line 1972
    :cond_59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    if-ltz v0, :cond_7a

    .line 1973
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    .line 1977
    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7b
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v0, v1, :cond_ac

    .line 1978
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_80
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 1979
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v2, v2, v1

    if-gez v2, :cond_a6

    .line 1980
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-direct {v3, v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 1977
    .end local v1    # "j":I
    :cond_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 1985
    .end local v0    # "i":I
    :cond_ac
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ad
    sget v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v0, v1, :cond_e2

    .line 1986
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_b2
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_df

    .line 1987
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    if-gez v2, :cond_dc

    .line 1988
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-direct {v3, v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1986
    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 1985
    .end local v1    # "j":I
    :cond_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 1993
    .end local v0    # "i":I
    :cond_e2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e3
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_fc

    .line 1994
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 1995
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    .line 1993
    :cond_f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    .line 1999
    .end local v0    # "i":I
    :cond_fc
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    .line 2000
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initMaxLaws()V

    .line 2001
    return-void
.end method

.method public buildTechTree_Load()V
    .registers 5

    .line 2004
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2005
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v0, v1, :cond_3c

    .line 2008
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 2009
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v2, v2, v1

    if-gez v2, :cond_36

    .line 2010
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-direct {v3, v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2007
    .end local v1    # "j":I
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2015
    .end local v0    # "i":I
    :cond_3c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3d
    sget v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v0, v1, :cond_72

    .line 2016
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_42
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 2017
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    if-gez v2, :cond_6c

    .line 2018
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-direct {v3, v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2016
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 2015
    .end local v1    # "j":I
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 2023
    .end local v0    # "i":I
    :cond_72
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_73
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_ca

    .line 2024
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 2025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a2

    .line 2026
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2025
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 2029
    .end local v1    # "i":I
    :cond_a2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a3
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c7

    .line 2030
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2029
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 2023
    .end local v1    # "i":I
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 2035
    .end local v0    # "t":I
    :cond_ca
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cb
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_e3

    .line 2036
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2037
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTechnologyBonuses(I)V

    .line 2035
    :cond_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    .line 2041
    .end local v0    # "i":I
    :cond_e3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    .line 2042
    return-void
.end method

.method public final buildTechTree_UnlockTechnologies(I)V
    .registers 4
    .param p1, "iTechID"    # I

    .line 1900
    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1902
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1904
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    .line 1905
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    .line 1906
    return-void
.end method

.method public final buildUnderSiege()V
    .registers 4

    .line 4473
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 4476
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4477
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4475
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4481
    .end local v0    # "i":I
    :cond_2a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 4482
    return-void
.end method

.method public final canUnlockAdvantage(II)Z
    .registers 7
    .param p1, "iAdvantageID"    # I
    .param p2, "iLevel"    # I

    .line 3396
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 3397
    return v0

    .line 3400
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_29

    .line 3401
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v2, p1, :cond_26

    .line 3402
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v2, v0

    if-lt v2, p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    .line 3400
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3406
    .end local v1    # "i":I
    :cond_29
    return v3
.end method

.method public final cancelMove(Ljava/lang/String;)Z
    .registers 12
    .param p1, "key"    # Ljava/lang/String;

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_141

    .line 1186
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 1187
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v1, :cond_23

    .line 1188
    return v2

    .line 1191
    :cond_23
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getProgressPerc()F

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_LOCKED_MOVE:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_b3

    .line 1192
    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v8, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    move-object v3, v1

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    .line 1194
    .local v1, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 1195
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 1196
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 1197
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 1198
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 1200
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .end local v1    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    goto/16 :goto_13b

    .line 1203
    :cond_b3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    .line 1205
    .local v1, "tID":I
    if-ltz v1, :cond_116

    .line 1206
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 1207
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v2, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 1208
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v2, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 1211
    :cond_116
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 1213
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 1215
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 1217
    .end local v1    # "tID":I
    :goto_13b
    const/4 v1, 0x1

    return v1

    .line 1185
    :cond_13d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1221
    .end local v0    # "i":I
    :cond_141
    return v2
.end method

.method public final cancelRecruitArmy(I)Z
    .registers 10
    .param p1, "nProvinceID"    # I

    .line 1401
    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_a9

    .line 1402
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v3, p1, :cond_a5

    .line 1403
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1405
    .local v3, "tRemoveID":I
    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 1406
    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_aa

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    :try_start_51
    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 1407
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1409
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7a

    .line 1410
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1411
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1414
    :cond_7a
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1415
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_7d
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v4, v5, :cond_95

    .line 1416
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1415
    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 1419
    .end local v4    # "o":I
    :cond_95
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_a4

    .line 1420
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_a4} :catch_aa

    .line 1422
    :cond_a4
    return v2

    .line 1401
    .end local v3    # "tRemoveID":I
    :cond_a5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_5

    .line 1427
    .end local v1    # "i":I
    :cond_a9
    goto :goto_ae

    .line 1425
    :catch_aa
    move-exception v1

    .line 1426
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1429
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_ae
    return v0
.end method

.method public final cancelRecruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z
    .registers 3
    .param p1, "nArmyRecruit"    # Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1396
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelRecruitArmy(I)Z

    move-result v0

    return v0
.end method

.method public final cancelRecruitArmy_All()V
    .registers 7

    .line 1434
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_8d

    .line 1435
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_14
    if-ltz v1, :cond_89

    .line 1436
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 1437
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_8e

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    :try_start_41
    invoke-virtual {p0, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 1438
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1440
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6a

    .line 1441
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1442
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1445
    :cond_6a
    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1446
    const/4 v2, 0x0

    .local v2, "o":I
    :goto_6e
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, v3, :cond_86

    .line 1447
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_83} :catch_8e

    .line 1446
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1435
    .end local v2    # "o":I
    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1434
    .end local v1    # "j":I
    :cond_89
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 1453
    .end local v0    # "i":I
    :cond_8d
    goto :goto_92

    .line 1451
    :catch_8e
    move-exception v0

    .line 1452
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1454
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method protected final civRegionsContainsProvince(I)Z
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    if-ge v0, v1, :cond_18

    .line 644
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->containsProvince(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 645
    const/4 v1, 0x1

    return v1

    .line 643
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 649
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final civStability_NumOfProvinces()I
    .registers 5

    .line 4244
    const/4 v0, 0x0

    .line 4246
    .local v0, "score":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 4247
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v2, :cond_17

    .line 4248
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 4250
    :cond_17
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-eq v2, v3, :cond_2b

    .line 4251
    add-int/lit8 v0, v0, 0x1

    .line 4246
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4255
    .end local v1    # "i":I
    :cond_2e
    return v0
.end method

.method public final clearArmyPosition()V
    .registers 2

    .line 532
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    .line 534
    return-void
.end method

.method public final clearCivRegions()V
    .registers 4

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 654
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    .end local v0    # "i":I
    :cond_16
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    .line 659
    return-void
.end method

.method public final clearCivRegions_Just()V
    .registers 2

    .line 662
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    .line 664
    return-void
.end method

.method public final clearColonizationProvince()V
    .registers 2

    .line 3905
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3906
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    .line 3907
    return-void
.end method

.method public final clearMoveUnits()V
    .registers 2

    .line 1244
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1245
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    .line 1246
    return-void
.end method

.method public final clearTagsCanForm()V
    .registers 2

    .line 3995
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3996
    return-void
.end method

.method public final createCivilizationRegion(I)V
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 610
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    :try_start_15
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 615
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_2a

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 619
    .end local v0    # "i":I
    :cond_29
    goto :goto_2b

    .line 617
    :catch_2a
    move-exception v0

    .line 621
    :goto_2b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    .line 622
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCivilizationRegion(II)V

    .line 623
    return-void
.end method

.method public final decayAggressiveExpansion()V
    .registers 3

    .line 4172
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DECAY_PER_TICK:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    .line 4173
    return-void
.end method

.method public final disposeFlag()V
    .registers 2

    .line 601
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_10

    .line 602
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 605
    :cond_10
    return-void
.end method

.method public final expandColony(I)V
    .registers 11
    .param p1, "provinceID"    # I

    .line 3935
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AUTO_EXPAND_CHANCE:I

    if-ge v0, v1, :cond_1bf

    .line 3936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3938
    .local v0, "possibleExpand":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 3939
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_63

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_63

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_63

    .line 3940
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3938
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3944
    .end local v1    # "i":I
    :cond_66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1bc

    .line 3945
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3946
    .local v1, "possibleScore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 3948
    .local v2, "bestID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e5

    .line 3949
    const/4 v4, 0x0

    .line 3950
    .local v4, "score":I
    const/4 v5, 0x1

    .line 3952
    .local v5, "isLastNeutral":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_d7

    .line 3953
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-ne v7, v8, :cond_b7

    .line 3954
    add-int/lit8 v4, v4, 0xa

    goto :goto_d4

    .line 3956
    :cond_b7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-nez v7, :cond_d4

    .line 3957
    const/4 v5, 0x0

    .line 3952
    :cond_d4
    :goto_d4
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 3961
    .end local v6    # "j":I
    :cond_d7
    if-eqz v5, :cond_db

    .line 3962
    add-int/lit16 v4, v4, 0x1f4

    .line 3965
    :cond_db
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3948
    .end local v4    # "score":I
    .end local v5    # "isLastNeutral":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 3968
    .end local v3    # "i":I
    :cond_e5
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_e6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_106

    .line 3969
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_103

    .line 3970
    move v2, v3

    .line 3968
    :cond_103
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 3974
    .end local v3    # "i":I
    :cond_106
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AUTO_EXPAND_POPULATION:I

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/map/ColonizationManager;->establishSettlement(III)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 3975
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_1b9

    .line 3976
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 3977
    const/4 v3, 0x0

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 3979
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "SettlementEstablished"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Population"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 3985
    :cond_1b9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3988
    .end local v1    # "possibleScore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "bestID":I
    :cond_1bc
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3990
    .end local v0    # "possibleExpand":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1bf
    return-void
.end method

.method public final getActiveTechResearch()I
    .registers 2

    .line 2047
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    return v0
.end method

.method public final getAdditionalExpenses()F
    .registers 3

    .line 2613
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getAdvantageLvl(I)I
    .registers 4
    .param p1, "iAdvantageID"    # I

    .line 3386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v0, v1, :cond_1f

    .line 3387
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_1c

    .line 3388
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return v1

    .line 3386
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3392
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getAdvantagePoints()I
    .registers 2

    .line 4282
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    return v0
.end method

.method public getAggressiveExpansion()F
    .registers 2

    .line 4298
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    return v0
.end method

.method public getAlternativeTechResearch()I
    .registers 2

    .line 4400
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    return v0
.end method

.method public getArmyPosition(I)I
    .registers 4
    .param p1, "i"    # I

    .line 515
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 516
    :catch_b
    move-exception v0

    .line 517
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 518
    const/4 v1, -0x1

    return v1
.end method

.method public getArmyPositionKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"    # I

    .line 524
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 525
    :catch_b
    move-exception v0

    .line 526
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 527
    const-string v1, ""

    return-object v1
.end method

.method public getArmyRecruitSize()I
    .registers 2

    .line 1712
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    return v0
.end method

.method public final getArmyRegimentSize()I
    .registers 2

    .line 3269
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    return v0
.end method

.method public final getArmySize()I
    .registers 6

    .line 3255
    const/4 v0, 0x0

    .line 3257
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_56

    .line 3258
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 3259
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, v4, :cond_50

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 3260
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v0, v3

    .line 3258
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3257
    .end local v2    # "j":I
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3265
    .end local v1    # "i":I
    :cond_56
    return v0
.end method

.method public getAvailableToResearch(I)Z
    .registers 5
    .param p1, "iTechID"    # I

    .line 2245
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    if-nez v0, :cond_14

    .line 2246
    return v1

    .line 2249
    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_37

    .line 2250
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2251
    return v1

    .line 2255
    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_5a

    .line 2256
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2257
    return v1

    .line 2261
    :cond_5a
    # B3b: 国别门禁（非本国科技不可研究）
    const/16 v0, 0x20
    if-ge p1, v0, :b3b_nlow
    const/4 v0, 0x1
    return v0
    :b3b_nlow
    const/16 v0, 0x4a
    if-le p1, v0, :b3b_chk
    const/4 v0, 0x1
    return v0
    :b3b_chk
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z
    move-result v0
    if-eqz v0, :b3b_no
    const/4 v0, 0x1
    return v0
    :b3b_no
    const/4 v0, 0x0
    return v0
.end method

.method public final getAverageGrowthRate()F
    .registers 4

    .line 3115
    const/4 v0, 0x0

    .line 3117
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 3118
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 3117
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3121
    .end local v1    # "i":I
    :cond_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method public final getAverageTaxEfficiency()F
    .registers 4

    .line 3185
    const/4 v0, 0x0

    .line 3187
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 3188
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 3187
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3191
    .end local v1    # "i":I
    :cond_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method public final getB()F
    .registers 2

    .line 834
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    return v0
.end method

.method public final getB_Int()I
    .registers 2

    .line 822
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iB:I

    return v0
.end method

.method public getBalance()F
    .registers 3

    .line 219
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBattleTacticsID()I
    .registers 2

    .line 4362
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    return v0
.end method

.method public getBuildingsMaintenance()F
    .registers 4

    .line 2670
    const/4 v0, 0x0

    .line 2672
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 2673
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v2

    add-float/2addr v0, v2

    .line 2672
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2676
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public getCapitalLevel()I
    .registers 2

    .line 4338
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    return v0
.end method

.method public final getCapitalProvinceID()I
    .registers 2

    .line 870
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    return v0
.end method

.method public getCivID()I
    .registers 2

    .line 949
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    return v0
.end method

.method public getCivLegacy(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
    .registers 4
    .param p1, "i"    # I

    .line 1793
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1794
    :catch_9
    move-exception v0

    .line 1798
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    return-object v0
.end method

.method public final getCivName()Ljava/lang/String;
    .registers 2

    .line 848
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCivNameCharacter(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 715
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCivNameHeight()I
    .registers 2

    .line 711
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameHeight:I

    return v0
.end method

.method public final getCivNameLength()I
    .registers 2

    .line 719
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    return v0
.end method

.method public final getCivNameWidth()I
    .registers 2

    .line 707
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameWidth:I

    return v0
.end method

.method public final getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
    .registers 3
    .param p1, "i"    # I

    .line 667
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    return-object v0
.end method

.method public final getCivRegionsSize()I
    .registers 2

    .line 671
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    return v0
.end method

.method public final getCivTag()Ljava/lang/String;
    .registers 2

    .line 945
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor(F)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "fAlpha"    # F

    .line 838
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getConstructedBuildings()I
    .registers 4

    .line 2370
    const/4 v0, 0x0

    .line 2372
    .local v0, "out":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_17

    .line 2373
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v0, v2

    .line 2372
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2376
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public final getCorruption()F
    .registers 3

    .line 2842
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDiplomacyPerMonth()F
    .registers 4

    .line 2543
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_COST_PER_MONTH:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_COST_PER_MONTH:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getEconomyTotal()F
    .registers 4

    .line 3125
    const/4 v0, 0x0

    .line 3127
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 3128
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 3127
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3131
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public final getEconomyTotal_CivRank()F
    .registers 8

    .line 3135
    const/4 v0, 0x0

    .line 3137
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_45

    .line 3138
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    goto :goto_24

    :cond_20
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_NON_CORE:F

    :goto_24
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    if-ne v5, v6, :cond_3a

    goto :goto_3e

    :cond_3a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_DIFFERENT_RELIGION:F

    :goto_3e
    add-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 3137
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3141
    .end local v1    # "i":I
    :cond_45
    return v0
.end method

.method public getExtraAggressiveness()I
    .registers 2

    .line 4354
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    return v0
.end method

.method public final getFlag()Laoc/kingdoms/lukasz/textures/Image;
    .registers 2

    .line 597
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_b

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    :goto_d
    return-object v0
.end method

.method public final getG()F
    .registers 2

    .line 830
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    return v0
.end method

.method public final getG_Int()I
    .registers 2

    .line 818
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iG:I

    return v0
.end method

.method public getGeneralNotAssigned(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    .registers 3
    .param p1, "i"    # I

    .line 1826
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    return-object v0
.end method

.method public final getGeneralsNotAssignedSize()I
    .registers 2

    .line 3251
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGoodsProduced(I)I
    .registers 3
    .param p1, "iResourceID"    # I

    .line 3778
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 3779
    :catch_d
    move-exception v0

    .line 3780
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3783
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 3785
    const/4 v0, 0x0

    return v0
.end method

.method public final getIdeologyID()I
    .registers 2

    .line 733
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    return v0
.end method

.method public getIncomeBuildings()F
    .registers 4

    .line 2650
    const/4 v0, 0x0

    .line 2652
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 2653
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    add-float/2addr v0, v2

    .line 2652
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2656
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public getIncomeEconomy()F
    .registers 4

    .line 2629
    const/4 v0, 0x0

    .line 2631
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2632
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    add-float/2addr v0, v2

    .line 2631
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2635
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public getIncomeProduction()F
    .registers 4

    .line 2639
    const/4 v0, 0x0

    .line 2641
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2642
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    add-float/2addr v0, v2

    .line 2641
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2645
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public getIncomeTaxation()F
    .registers 4

    .line 2619
    const/4 v0, 0x0

    .line 2621
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2622
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v0, v2

    .line 2621
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2625
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public final getInflation()F
    .registers 3

    .line 2830
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getInflation_Just()F
    .registers 2

    .line 2834
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    return v0
.end method

.method public getInfrastructure()I
    .registers 4

    .line 2360
    const/4 v0, 0x0

    .line 2362
    .local v0, "out":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 2363
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    add-int/2addr v0, v2

    .line 2362
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2366
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public getLegaciesSize()I
    .registers 2

    .line 1718
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    return v0
.end method

.method public getLegaciesUnlocked()I
    .registers 4

    .line 1802
    const/4 v0, 0x0

    .line 1804
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v1, v2, :cond_16

    .line 1805
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1804
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1808
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public getLegaciesUnlocked(I)I
    .registers 6
    .param p1, "groupID"    # I

    .line 1812
    const/4 v0, 0x0

    .line 1814
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v1, v2, :cond_2c

    .line 1815
    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GroupID:I

    if-ne v2, p1, :cond_29

    .line 1816
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1814
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1820
    .end local v1    # "i":I
    :cond_2c
    return v0
.end method

.method public getLegacyLevel(I)I
    .registers 4
    .param p1, "legacyID"    # I

    .line 1722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v0, v1, :cond_1f

    .line 1723
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_1c

    .line 1724
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return v1

    .line 1722
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1728
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getLegacyPerMonth()F
    .registers 4

    .line 4024
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_LEGACY_PER_POINT:F

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public final getManpowerMax_Provinces_INFO()F
    .registers 4

    .line 2514
    const/4 v0, 0x0

    .line 2516
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 2517
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 2518
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 2516
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2521
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    return v1
.end method

.method public final getManpowerMax_Vassals_INFO()F
    .registers 7

    .line 2525
    const/4 v0, 0x0

    .line 2527
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 2528
    float-to-double v2, v0

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 2527
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2531
    .end local v1    # "i":I
    :cond_27
    return v0
.end method

.method public final getMaxMorale()F
    .registers 4

    .line 3085
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MORALE_BASE_VALUE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_MORALE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v2

    aget v1, v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public final getMaxReinforce()I
    .registers 7

    .line 3095
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_MIN_MANPOWER:I

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_d

    .line 3096
    const/4 v0, 0x0

    return v0

    .line 3099
    :cond_d
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_PER_MONTH:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_REINFORCE_SPEED:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v5

    aget v4, v4, v5

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMilitaryAcademyForGeneralsLevel()I
    .registers 2

    .line 4306
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    return v0
.end method

.method public getMilitaryAcademyLevel()I
    .registers 2

    .line 4314
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    return v0
.end method

.method public getMilitaryLevel()I
    .registers 2

    .line 4392
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    return v0
.end method

.method public final getMoraleRecoveryPerMonth()F
    .registers 5

    .line 3089
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MORALE_RECOVERY_PER_MONTH:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_ARMY_MORALE_RECOVERY_PER_POINT:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public final getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .registers 3
    .param p1, "i"    # I

    .line 1249
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    return-object v0
.end method

.method public final getMoveUnitsSize()I
    .registers 2

    .line 1275
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    return v0
.end method

.method public getNuclearReactorLevel()I
    .registers 2

    .line 4330
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    return v0
.end method

.method public getNukes()I
    .registers 2

    .line 4366
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    return v0
.end method

.method public final getNumOfProvinces()I
    .registers 2

    .line 852
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    return v0
.end method

.method public final getPopulationTotal()J
    .registers 6

    .line 3105
    const-wide/16 v0, 0x0

    .line 3107
    .local v0, "out":J
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1b

    .line 3108
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 3107
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 3111
    .end local v2    # "i":I
    :cond_1b
    return-wide v0
.end method

.method public final getProvinceID(I)I
    .registers 4
    .param p1, "i"    # I

    .line 857
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 858
    :catch_d
    move-exception v0

    .line 861
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method public getProvinceMaintenance()F
    .registers 4

    .line 2660
    const/4 v0, 0x0

    .line 2662
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 2663
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v0, v2

    .line 2662
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2666
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public final getProvinces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    return-object v0
.end method

.method public getPuppetOfCivID()I
    .registers 2

    .line 962
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    return v0
.end method

.method public final getR()F
    .registers 2

    .line 826
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    return v0
.end method

.method public final getRGB(F)Lcom/badlogic/gdx/graphics/Color;
    .registers 6
    .param p1, "fAlpha"    # F

    .line 842
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getR_Int()I
    .registers 2

    .line 814
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iR:I

    return v0
.end method

.method public getRecruitArmyInProgress(Ljava/lang/String;)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1690
    const/4 v0, 0x0

    .line 1692
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_3f

    .line 1693
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1694
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1692
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1698
    .end local v1    # "i":I
    :cond_3f
    return v0
.end method

.method public getRecruitArmyInProvinceID(I)I
    .registers 5
    .param p1, "nProvinceID"    # I

    .line 1677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v0, v1, :cond_1c

    .line 1678
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1d

    if-ne v1, p1, :cond_19

    .line 1679
    return v0

    .line 1677
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1684
    .end local v0    # "i":I
    :cond_1c
    goto :goto_21

    .line 1682
    :catch_1d
    move-exception v0

    .line 1683
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1686
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    const/4 v0, -0x1

    return v0
.end method

.method public final getRegimentsLimit_FromAllianceSpecial()F
    .registers 5

    .line 3029
    const/4 v0, 0x0

    .line 3031
    .local v0, "sum":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v1, v2, :cond_42

    .line 3032
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_3f

    .line 3033
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v2, :cond_3f

    .line 3034
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_EMPEROR_REGIMENTS:F

    add-float/2addr v0, v2

    .line 3031
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3039
    .end local v1    # "i":I
    :cond_42
    return v0
.end method

.method public final getRegimentsLimit_Manpower()I
    .registers 6

    .line 3019
    const-wide/16 v0, 0x0

    .line 3021
    .local v0, "sum":D
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1e

    .line 3022
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v3

    .line 3021
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 3025
    .end local v2    # "i":I
    :cond_1e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_MANPOWER_LEVEL:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v2, v2

    return v2
.end method

.method public final getReligionID()I
    .registers 2

    .line 741
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    return v0
.end method

.method public final getResearchFromBuildings()F
    .registers 4

    .line 2443
    const/4 v0, 0x0

    .line 2445
    .local v0, "fOut":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 2446
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    add-float/2addr v0, v2

    .line 2445
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2449
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public getResearchLevel()I
    .registers 2

    .line 4384
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    return v0
.end method

.method public getResearchProgress(I)F
    .registers 6
    .param p1, "iTechID"    # I

    .line 2279
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_37

    .line 2280
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_34

    .line 2281
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v2

    div-float/2addr v1, v2

    return v1

    .line 2279
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2285
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public getResearchedTechnologies()I
    .registers 4

    .line 2348
    const/4 v0, 0x0

    .line 2350
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1e

    .line 2351
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2352
    add-int/lit8 v0, v0, 0x1

    .line 2350
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2356
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method public getSupremeCourtLevel()I
    .registers 2

    .line 4322
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    return v0
.end method

.method public final getTaxEfficiencyTotal()F
    .registers 4

    .line 3155
    const/4 v0, 0x0

    .line 3157
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 3158
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 3157
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3161
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public final getTaxEfficiencyTotal_CivRank()F
    .registers 8

    .line 3145
    const/4 v0, 0x0

    .line 3147
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_45

    .line 3148
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    goto :goto_24

    :cond_20
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_NON_CORE:F

    :goto_24
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    if-ne v5, v6, :cond_3a

    goto :goto_3e

    :cond_3a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_DIFFERENT_RELIGION:F

    :goto_3e
    add-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 3147
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3151
    .end local v1    # "i":I
    :cond_45
    return v0
.end method

.method public getTaxationLevel()I
    .registers 2

    .line 4376
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    return v0
.end method

.method public getTechResearched(I)Z
    .registers 4
    .param p1, "iTechID"    # I

    .line 2266
    const/4 v0, 0x1

    if-gez p1, :cond_4

    .line 2267
    return v0

    .line 2270
    :cond_4
    :try_start_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 2271
    :catch_11
    move-exception v1

    .line 2272
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2275
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public final getTotalGenerals()I
    .registers 6

    .line 3235
    const/4 v0, 0x0

    .line 3237
    .local v0, "outGenerals":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_59

    .line 3238
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 3239
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, v4, :cond_53

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 3240
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v3, :cond_53

    .line 3241
    add-int/lit8 v0, v0, 0x1

    .line 3238
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3237
    .end local v2    # "j":I
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3247
    .end local v1    # "i":I
    :cond_59
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final getTotalIncome()F
    .registers 5

    .line 3195
    const/4 v0, 0x0

    .line 3197
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_24

    .line 3198
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 3197
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3201
    .end local v1    # "i":I
    :cond_24
    return v0
.end method

.method public final getTotalIncomeFromEconomy()F
    .registers 4

    .line 3215
    const/4 v0, 0x0

    .line 3217
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_15

    .line 3218
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 3217
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3221
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public final getTotalIncomeFromProduction()F
    .registers 4

    .line 3225
    const/4 v0, 0x0

    .line 3227
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_15

    .line 3228
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 3227
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3231
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public final getTotalLoot()F
    .registers 4

    .line 3205
    const/4 v0, 0x0

    .line 3207
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_15

    .line 3208
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v2

    add-float/2addr v0, v2

    .line 3207
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3211
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public final getTotalProvinceIncome()F
    .registers 4

    .line 3165
    const/4 v0, 0x0

    .line 3167
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_19

    .line 3168
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v2

    add-float/2addr v0, v2

    .line 3167
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3171
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public final getTotalProvinceIncomeTax()F
    .registers 4

    .line 3175
    const/4 v0, 0x0

    .line 3177
    .local v0, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_17

    .line 3178
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v0, v2

    .line 3177
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3181
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public final getUnitsBest_AttackDefense()I
    .registers 6

    .line 2413
    const/4 v0, 0x0

    .line 2416
    .local v0, "out":I
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_ac

    .line 2417
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_a8

    .line 2418
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense()I

    move-result v3
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a6} :catch_ad

    add-int/2addr v2, v3

    move v0, v2

    .line 2416
    :cond_a8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 2423
    .end local v1    # "i":I
    :cond_ac
    goto :goto_b1

    .line 2421
    :catch_ad
    move-exception v1

    .line 2422
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2425
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_b1
    return v0
.end method

.method public getUnlockedUnitsFirstLine()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    .line 4416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4418
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_33

    .line 4419
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v2, :cond_30

    .line 4420
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4418
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 4424
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public getUnlockedUnitsFlank()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    .line 4428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4430
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_33

    .line 4431
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v3, v2, :cond_30

    .line 4432
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4430
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 4436
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public getUnlockedUnitsSupport()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    .line 4440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4442
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_80

    .line 4443
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    .line 4444
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v2, :cond_7d

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-nez v2, :cond_7d

    .line 4445
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4442
    :cond_7d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 4450
    .end local v1    # "i":I
    :cond_80
    return-object v0
.end method

.method public final getUpdateRegions()Z
    .registers 2

    .line 723
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    return v0
.end method

.method public getWarPlayDefensiveUntilTurnID()I
    .registers 2

    .line 4346
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    return v0
.end method

.method public getWarWeariness()F
    .registers 2

    .line 4290
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    return v0
.end method

.method public final haveAdvantage(II)Z
    .registers 6
    .param p1, "iAdvantageID"    # I
    .param p2, "iLevel"    # I

    .line 3365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_23

    .line 3366
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_20

    .line 3367
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    if-lt v1, p2, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    return v2

    .line 3365
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3371
    .end local v0    # "i":I
    :cond_23
    return v2
.end method

.method public final haveAdvantageMaxLvl(I)Z
    .registers 7
    .param p1, "iAdvantageID"    # I

    .line 3376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_30

    .line 3377
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_2d

    .line 3378
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    return v2

    .line 3376
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3382
    .end local v0    # "i":I
    :cond_30
    return v2
.end method

.method public final initGoodsProduced()V
    .registers 4

    .line 3789
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_17

    .line 3792
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3791
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3794
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public final initMaxLaws()V
    .registers 6

    .line 3829
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_7d

    .line 3830
    sget-object v1, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_12
    if-lez v1, :cond_7a

    .line 3831
    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 3832
    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v2, :cond_53

    .line 3833
    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v1

    if-ltz v2, :cond_53

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    if-eq v2, v3, :cond_53

    .line 3834
    goto :goto_77

    .line 3838
    :cond_53
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/LawsManager;->updateCivBonuses(IIIF)V

    .line 3839
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3840
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/LawsManager;->updateCivBonuses(IIIF)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_76} :catch_7e

    .line 3841
    goto :goto_7a

    .line 3830
    :cond_77
    :goto_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 3829
    .end local v1    # "j":I
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3847
    .end local v0    # "i":I
    :cond_7d
    goto :goto_82

    .line 3845
    :catch_7e
    move-exception v0

    .line 3846
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3848
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method public initTechTree()V
    .registers 4

    .line 1947
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_17

    .line 1950
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1952
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public final isArmyMovingToProvince(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "armyKey"    # Ljava/lang/String;
    .param p2, "toProvinceID"    # I

    .line 1265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_28

    .line 1266
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v1

    if-ne v1, p2, :cond_25

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1267
    const/4 v1, 0x1

    return v1

    .line 1265
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1271
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public final isArmyMovingToProvince_MoveUnits(I)Z
    .registers 4
    .param p1, "provinceID"    # I

    .line 1279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_18

    .line 1280
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 1281
    const/4 v1, 0x1

    return v1

    .line 1279
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1285
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isBuildingResearched(II)Z
    .registers 6
    .param p1, "building"    # I
    .param p2, "buildingID"    # I

    .line 2383
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2384
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->building:I

    if-ne v2, p1, :cond_23

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->buildingID:I

    if-ne v2, p2, :cond_23

    .line 2385
    return v1

    .line 2383
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2389
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final isInMoveUnits_ArmyKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_1a

    .line 1290
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1291
    const/4 v1, 0x1

    return v1

    .line 1289
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1295
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isRecruitArmyInProgress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_33

    .line 1703
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1704
    const/4 v1, 0x1

    return v1

    .line 1702
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1708
    .end local v0    # "i":I
    :cond_33
    return v2
.end method

.method public isUnitBest(II)Z
    .registers 6
    .param p1, "unitID"    # I
    .param p2, "armyID"    # I

    .line 2403
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2404
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v2, p1, :cond_23

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    if-ne v2, p2, :cond_23

    .line 2405
    return v1

    .line 2403
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2409
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public isUnitResearched(II)Z
    .registers 6
    .param p1, "unitID"    # I
    .param p2, "armyID"    # I

    .line 2393
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2394
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v2, p1, :cond_23

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    if-ne v2, p2, :cond_23

    .line 2395
    return v1

    .line 2393
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2399
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final loadFlag()Z
    .registers 8

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flagsXH/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_58

    .line 563
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_2a6

    .line 565
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 566
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_2a6

    .line 568
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flagsH/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 569
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_2a6

    .line 571
    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 572
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_2a6

    .line 574
    :cond_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gfx/flags/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 575
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 576
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    goto/16 :goto_2a6

    .line 578
    :cond_19e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 579
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 580
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    goto/16 :goto_2a6

    .line 582
    :cond_1ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mods/GameCivs/gfx/flagsH/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_241

    .line 583
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_2a6

    .line 585
    :cond_241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_28e

    .line 586
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_2a6

    .line 589
    :cond_28e
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "gfx/flagsXH/ran.png"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v5, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    .line 590
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    .line 593
    :goto_2a6
    return v3
.end method

.method public loadScenario_A()V
    .registers 3

    .line 367
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    .line 369
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    .line 370
    return-void
.end method

.method public loadScenario_B()V
    .registers 1

    .line 373
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    .line 374
    return-void
.end method

.method public final moveCapital(I)Z
    .registers 4
    .param p1, "toProvinceID"    # I

    .line 888
    if-ltz p1, :cond_30

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge p1, v0, :cond_30

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-eq p1, v0, :cond_30

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_30

    .line 889
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->MOVE_CAPITAL_COST:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_30

    .line 890
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->MOVE_CAPITAL_COST:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 892
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    .line 894
    const/4 v0, 0x1

    return v0

    .line 898
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public final moveCapital_ToLargestProvince()V
    .registers 5

    .line 874
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_34

    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, "tBestID":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-lez v1, :cond_2d

    .line 878
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 879
    move v0, v1

    .line 877
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 883
    .end local v1    # "i":I
    :cond_2d
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    .line 885
    .end local v0    # "tBestID":I
    :cond_34
    return-void
.end method

.method public final newMove(IILjava/lang/String;IZ)Z
    .registers 24
    .param p1, "fromProvinceID"    # I
    .param p2, "toProvinceID"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "extraArmyY"    # I
    .param p5, "retreat"    # Z

    .line 1040
    move-object/from16 v1, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    const/4 v13, 0x0

    move/from16 v14, p2

    if-ne v10, v14, :cond_e

    .line 1041
    return v13

    .line 1044
    :cond_e
    if-eqz v11, :cond_28

    const-string v0, "airhq_"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v15, "AIRDBG"

    const-string v2, "nm_air"

    invoke-static {v15, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->handleProvinceClick(I)V

    const/4 v0, 0x0

    return v0

    :cond_28
    :try_start_28
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 1046
    .local v0, "armyID":I
    if-ltz v0, :cond_319

    .line 1047
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_47

    .line 1048
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->isArmyInBattle(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1049
    return v13

    .line 1055
    :cond_47
    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v15, 0x2

    const/4 v9, 0x1

    if-ne v2, v3, :cond_bc

    .line 1056
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;-><init>(IIILjava/lang/String;IZZ)V

    move-object/from16 v9, v16

    .line 1058
    .local v9, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v15, :cond_b8

    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW_PLAYER:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b8

    .line 1059
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1060
    new-instance v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/16 v16, 0x1

    move-object v2, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .local v17, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;-><init>(IIILjava/lang/String;IZZ)V

    move-object v2, v15

    .line 1062
    .local v2, "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v3, v13, :cond_b0

    .line 1063
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v4

    if-ge v3, v4, :cond_b0

    .line 1064
    .end local v2    # "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    nop

    .line 1065
    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .local v2, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    move-object v9, v2

    goto :goto_b2

    .line 1068
    .end local v2    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_b0
    move-object/from16 v9, v17

    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :goto_b2
    goto/16 :goto_11b

    .line 1059
    :cond_b4
    move-object/from16 v17, v9

    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    goto/16 :goto_119

    .line 1058
    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_b8
    move-object/from16 v17, v9

    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    goto/16 :goto_119

    .line 1072
    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_bc
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/4 v9, 0x0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    move-object/from16 v9, v16

    .line 1074
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v15, :cond_117

    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_117

    .line 1075
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 1076
    new-instance v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/16 v16, 0x1

    move-object v2, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    move-object v2, v15

    .line 1078
    .local v2, "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v3, v13, :cond_119

    .line 1079
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v4

    if-ge v3, v4, :cond_119

    .line 1080
    .end local v2    # "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    move-object v9, v2

    .line 1081
    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    goto :goto_11b

    .line 1075
    :cond_114
    move-object/from16 v17, v9

    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    goto :goto_119

    .line 1074
    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_117
    move-object/from16 v17, v9

    .line 1088
    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_119
    :goto_119
    move-object/from16 v9, v17

    .end local v17    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :goto_11b
    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v13, :cond_317

    const/16 v5, 0x2

    nop

    move-object/from16 v15, v9

    move/from16 v5, v14

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->nextDestinations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getRouteProvinceID(I)I

    move-result v7

    if-lez v7, :cond_137

    goto :goto_13c

    :cond_137
    move-object/from16 v9, v15

    move/from16 v14, v5

    goto :goto_175

    :goto_13c
    move/from16 v14, v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v6, v2, :cond_15a

    new-instance v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;

    move v3, v6

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, v14

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;-><init>(IIILjava/lang/String;IZZ)V

    goto :goto_16b

    :cond_15a
    new-instance v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move v3, v6

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, v14

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    :goto_16b
    move-object/from16 v9, v2

    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-gt v2, v13, :cond_175

    move-object/from16 v9, v15

    move/from16 v14, v5

    :cond_175
    :goto_175
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_1ce

    iget v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v3, 0x1

    :goto_17e
    if-ge v3, v2, :cond_1ce

    invoke-virtual {v9, v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getRouteProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v6

    if-eqz v6, :cond_1cb

    const/4 v7, 0x1

    if-ne v3, v7, :cond_194

    move/from16 v7, p1

    goto :goto_19a

    :cond_194
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getRouteProvinceID(I)I

    move-result v7

    :goto_19a
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v8

    if-nez v8, :cond_1cb

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    const/4 v10, 0x0

    :goto_1ab
    if-ge v10, v15, :cond_1c9

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v4

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-nez v12, :cond_1c6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1ab

    :cond_1c6
    move/from16 v12, p5

    goto :goto_1cb

    :cond_1c9
    const/4 v2, 0x0

    return v2

    :cond_1cb
    :goto_1cb
    add-int/lit8 v3, v3, 0x1

    goto :goto_17e

    :cond_1ce
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_1d0
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v15, v2, :cond_2e6

    .line 1090
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    .line 1091
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v2, :cond_1f2

    .line 1092
    const/4 v2, 0x0

    return v2

    .line 1095
    :cond_1f2
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v2

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v3

    if-ne v2, v3, :cond_245

    .line 1096
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 1097
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 1098
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 1099
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 1100
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 1102
    invoke-virtual {v1, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    goto/16 :goto_2e6

    .line 1105
    :cond_245
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getProgressPerc()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_LOCKED_MOVE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2de

    .line 1106
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v4

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v7, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    move-object/from16 v2, v16

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v2, v16

    .line 1108
    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .local v2, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v3, v13, :cond_2dc

    .line 1109
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 1110
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 1111
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 1112
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 1113
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 1115
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v15, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput-boolean v12, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 1118
    return v13

    .line 1121
    :cond_2dc
    const/4 v3, 0x0

    return v3

    .line 1125
    .end local v2    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .restart local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_2de
    invoke-virtual {v1, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 1129
    goto :goto_2e6

    .line 1089
    :cond_2e2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1d0

    .line 1133
    .end local v15    # "i":I
    :cond_2e6
    :goto_2e6
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    .line 1136
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v12, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 1137
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v13}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 1138
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 1140
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateIsUnderSiege()V
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_316} :catch_31a

    .line 1142
    return v13

    .line 1145
    :cond_317
    const/4 v2, 0x0

    return v2

    .line 1150
    .end local v0    # "armyID":I
    .end local v9    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    :cond_319
    goto :goto_31e

    .line 1148
    :catch_31a
    move-exception v0

    .line 1149
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1152
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_31e
    const/4 v2, 0x0

    return v2
.end method

.method public final recruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z
    .registers 8
    .param p1, "nArmyRecruit"    # Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->isAirUnitID(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1316
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e4

    .line 1317
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_36

    .line 1318
    return v0

    .line 1321
    :cond_36
    const/4 v1, -0x1

    .line 1323
    .local v1, "nID":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v2

    iput v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    .line 1324
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentTime(IIII)I

    move-result v2

    iput v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    .line 1326
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 1327
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6f} :catch_e5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    :try_start_74
    invoke-virtual {p0, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 1329
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_78
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, v3, :cond_95

    .line 1330
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v3, v4, :cond_92

    .line 1331
    move v1, v2

    .line 1332
    goto :goto_95

    .line 1329
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 1336
    .end local v2    # "i":I
    :cond_95
    :goto_95
    if-ltz v1, :cond_a3

    .line 1337
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 1340
    :cond_a3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    .local v2, "nListArmyRecruit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/army/ArmyRecruit;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    .end local v2    # "nListArmyRecruit":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laoc/kingdoms/lukasz/map/army/ArmyRecruit;>;"
    :goto_b0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1348
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bb
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, v3, :cond_d3

    .line 1350
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 1353
    .end local v2    # "i":I
    :cond_d3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_e2

    .line 1354
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_e2} :catch_e5

    .line 1356
    :cond_e2
    const/4 v0, 0x1

    return v0

    .line 1360
    .end local v1    # "nID":I
    :cond_e4
    goto :goto_e9

    .line 1358
    :catch_e5
    move-exception v1

    .line 1359
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1362
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_e9
    return v0
.end method

.method public final reduceInflation()Z
    .registers 6

    .line 2811
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5a

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5a

    .line 2812
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInflationReduceCost_Legacy(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_32

    .line 2813
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInflationReduceCost_Legacy(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2814
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    goto :goto_58

    .line 2817
    :cond_32
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    div-float/2addr v0, v2

    .line 2819
    .local v0, "maxDecrease":F
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    .line 2820
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 2823
    .end local v0    # "maxDecrease":F
    :goto_58
    const/4 v0, 0x1

    return v0

    .line 2826
    :cond_5a
    const/4 v0, 0x0

    return v0
.end method

.method public final reduceWarWeariness()Z
    .registers 7

    .line 4182
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_GOLD:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 4183
    return v2

    .line 4186
    :cond_c
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_LEGACY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_17

    .line 4187
    return v2

    .line 4190
    :cond_17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_26

    .line 4191
    return v2

    .line 4194
    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    .line 4196
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_GOLD:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 4197
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_LEGACY:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    .line 4199
    const/4 v0, 0x1

    return v0
.end method

.method public final removeAllArmies()V
    .registers 4

    .line 4205
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_1e

    .line 4206
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmyCivID(I)V

    .line 4205
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 4209
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4210
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    .line 4211
    return-void
.end method

.method public final removeArmyPosition(ILjava/lang/String;)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_32

    .line 486
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 487
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_33

    .line 489
    return-void

    .line 485
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v0    # "i":I
    :cond_32
    goto :goto_37

    .line 492
    :catch_33
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 495
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method public final removeColonizationProvince(I)V
    .registers 4
    .param p1, "iProvinceID"    # I

    .line 3869
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_25

    .line 3870
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 3871
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3872
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_26

    .line 3873
    return-void

    .line 3869
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3878
    .end local v0    # "i":I
    :cond_25
    goto :goto_2a

    .line 3876
    :catch_26
    move-exception v0

    .line 3877
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3879
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public final removeInAllianceSpecial(I)V
    .registers 4
    .param p1, "nAllianceID"    # I

    .line 4156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_24

    .line 4157
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_21

    .line 4158
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4159
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    .line 4160
    return-void

    .line 4156
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4163
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method public removeInBattles(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 4276
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4277
    return-void
.end method

.method public final removeMove(I)V
    .registers 12
    .param p1, "i"    # I

    .line 1157
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, "tID":I
    const/4 v1, 0x0

    if-ltz v0, :cond_7b

    .line 1160
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 1161
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 1162
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 1163
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    goto :goto_c8

    .line 1166
    :cond_7b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v2

    .line 1168
    .local v2, "armyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v2, :cond_c8

    .line 1169
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 1170
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 1171
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v1, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 1172
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v1, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c8} :catch_c9

    .line 1178
    .end local v0    # "tID":I
    .end local v2    # "armyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_c8
    :goto_c8
    goto :goto_cd

    .line 1176
    :catch_c9
    move-exception v0

    .line 1177
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1180
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cd
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-nez v1, :cond_12e

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    if-nez v1, :cond_12e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_12e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v7

    iget v1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v9, 0x0

    :goto_f8
    if-ge v9, v1, :cond_11c

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getRouteProvinceID(I)I

    move-result v3

    if-lez v3, :cond_119

    if-eq v3, v7, :cond_119

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_119

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince()V

    :cond_119
    add-int/lit8 v9, v9, 0x1

    goto :goto_f8

    :cond_11c
    move-object v9, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    invoke-direct {p0, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->checkAndContinueMove(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    return-void

    :cond_12e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1181
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    .line 1182
    return-void
.end method

.method public final removeMove(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelMove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final removeOccupiedProvince(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 4494
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 4495
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 4496
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4497
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    .line 4498
    return-void

    .line 4494
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4501
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public final removeProvince(I)V
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1f

    .line 440
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1c

    .line 441
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    .line 443
    goto :goto_1f

    .line 439
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    .line 449
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->removeProvince(I)V

    .line 450
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    .line 451
    return-void
.end method

.method public final removeTagsCanForm(I)V
    .registers 3
    .param p1, "i"    # I

    .line 4009
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4010
    return-void
.end method

.method public final removeTagsCanForm(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"    # Ljava/lang/String;

    .line 4013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 4014
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4015
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4016
    return-void

    .line 4013
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4019
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public final removeUnderSiege(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 4463
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 4464
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_26

    .line 4465
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4466
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    .line 4467
    return-void

    .line 4463
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4470
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public final removeVassal(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 998
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 999
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_2d

    .line 1000
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1001
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_31

    .line 1002
    return-void

    .line 998
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1007
    .end local v0    # "i":I
    :cond_30
    goto :goto_35

    .line 1005
    :catch_31
    move-exception v0

    .line 1006
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1008
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public final repayLoan(I)Z
    .registers 5
    .param p1, "i"    # I

    .line 2735
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-ge p1, v0, :cond_5d

    .line 2736
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/Loan;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/Loan;->getLoanValueLeft()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2738
    .local v0, "toRepay":F
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_5d

    .line 2739
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sub-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2741
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2743
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2744
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 2746
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-nez v1, :cond_5b

    .line 2747
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2749
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->removeCivUpdateLoans(I)V

    .line 2750
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5e

    .line 2753
    :cond_5b
    const/4 v1, 0x1

    return v1

    .line 2758
    .end local v0    # "toRepay":F
    :cond_5d
    goto :goto_62

    .line 2756
    :catch_5e
    move-exception v0

    .line 2757
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2760
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_62
    const/4 v0, 0x0

    return v0
.end method

.method public final resetGoodsProduced()V
    .registers 4

    .line 3798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_12

    .line 3799
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_13

    .line 3798
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3803
    .end local v0    # "i":I
    :cond_12
    goto :goto_17

    .line 3801
    :catch_13
    move-exception v0

    .line 3802
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3804
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_17
    return-void
.end method

.method public final setActiveTechResearch(I)V
    .registers 4
    .param p1, "iTechID"    # I

    .line 2051
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    .line 2053
    if-gez p1, :cond_7

    .line 2054
    return-void

    .line 2057
    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_21

    .line 2058
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_1e

    .line 2059
    return-void

    .line 2057
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2063
    .end local v0    # "i":I
    :cond_21
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2064
    return-void
.end method

.method public setAdvantagePoints(I)V
    .registers 3
    .param p1, "iAdvantagePoints"    # I

    .line 4286
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    .line 4287
    return-void
.end method

.method public setAggressiveExpansion(F)V
    .registers 3
    .param p1, "aggressiveExpansion"    # F

    .line 4302
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    .line 4303
    return-void
.end method

.method public setAlternativeTechResearch(I)V
    .registers 2
    .param p1, "iAlternativeTechResearch"    # I

    .line 4404
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    .line 4405
    return-void
.end method

.method public final setB(I)V
    .registers 5
    .param p1, "nB"    # I

    .line 780
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iB:I

    .line 781
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    .line 783
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 784
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 785
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 787
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateVassalsColors()V

    .line 788
    return-void
.end method

.method public final setBattleTacticsID(I)V
    .registers 5
    .param p1, "nBattleTactics"    # I

    .line 4030
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    .line 4031
    return-void
.end method

.method public setCapitalLevel(I)V
    .registers 3
    .param p1, "iCapitalLevel"    # I

    .line 4342
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    .line 4343
    return-void
.end method

.method public final setCapitalProvinceID(I)V
    .registers 4
    .param p1, "nCapitalProvinceID"    # I

    .line 903
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    if-ltz v0, :cond_38

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne v0, v1, :cond_38

    .line 904
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 905
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 906
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 908
    :cond_38
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    .line 910
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne v0, v1, :cond_7c

    .line 911
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 912
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 913
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 914
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 916
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    .line 918
    :cond_7c
    return-void
.end method

.method public final setCivID(I)V
    .registers 3
    .param p1, "iCivID"    # I

    .line 953
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 954
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    .line 955
    return-void
.end method

.method public final setCivID_Just(I)V
    .registers 2
    .param p1, "iCivID"    # I

    .line 958
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    .line 959
    return-void
.end method

.method public final setCivName(Ljava/lang/String;)V
    .registers 7
    .param p1, "sCivName"    # Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 678
    const-string p1, "AB"

    .line 680
    :cond_8
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    .line 682
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 684
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 686
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameWidth:I

    .line 687
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameHeight:I

    .line 690
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    .line 692
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    .line 694
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 695
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 698
    .end local v1    # "i":I
    :cond_5c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    .line 701
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 702
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    .line 703
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    .line 704
    return-void
.end method

.method public final setCivTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "sCivTag"    # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    .line 922
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    .line 924
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public final setCorruption(F)V
    .registers 5
    .param p1, "fCorruption"    # F

    .line 2846
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_MAX:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    .line 2847
    return-void
.end method

.method public final setDiplomacyPerMonth(F)V
    .registers 2
    .param p1, "fDiplomacyPerMonth"    # F

    .line 2547
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    .line 2548
    return-void
.end method

.method public setExtraAggressiveness(I)V
    .registers 3
    .param p1, "extraAggressiveness"    # I

    .line 4358
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    .line 4359
    return-void
.end method

.method public final setG(I)V
    .registers 5
    .param p1, "nG"    # I

    .line 771
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iG:I

    .line 772
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    .line 774
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 775
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 776
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 777
    return-void
.end method

.method public final setIdeologyID(I)V
    .registers 2
    .param p1, "iIdeologyID"    # I

    .line 737
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    .line 738
    return-void
.end method

.method public final setInflation(F)V
    .registers 5
    .param p1, "fInflation"    # F

    .line 2838
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_MAX:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    .line 2839
    return-void
.end method

.method public final setManpower(D)V
    .registers 7
    .param p1, "nManpower"    # D

    .line 3359
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    .line 3360
    return-void
.end method

.method public setMilitaryAcademyForGeneralsLevel(I)V
    .registers 3
    .param p1, "iMilitaryAcademyForGeneralsLevel"    # I

    .line 4310
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    .line 4311
    return-void
.end method

.method public setMilitaryAcademyLevel(I)V
    .registers 3
    .param p1, "iMilitaryAcademyLevel"    # I

    .line 4318
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    .line 4319
    return-void
.end method

.method public setMilitaryLevel(I)V
    .registers 3
    .param p1, "iMilitaryLevel"    # I

    .line 4396
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    .line 4397
    return-void
.end method

.method public setNuclearReactorLevel(I)V
    .registers 3
    .param p1, "iNuclearReactorLevel"    # I

    .line 4334
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    .line 4335
    return-void
.end method

.method public setNukes(I)V
    .registers 3
    .param p1, "iNukes"    # I

    .line 4370
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    .line 4371
    return-void
.end method

.method public final setPuppetOfCivID(I)V
    .registers 4
    .param p1, "nPuppetOfCivID"    # I

    .line 966
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq p1, v0, :cond_17

    .line 967
    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeVassal(I)V

    .line 970
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    .line 972
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-eq v0, v1, :cond_30

    .line 973
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addVassal(I)V

    .line 976
    :cond_30
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    .line 977
    return-void
.end method

.method public final setR(I)V
    .registers 5
    .param p1, "nR"    # I

    .line 762
    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iR:I

    .line 763
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    .line 765
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 766
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 767
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 768
    return-void
.end method

.method public final setReligionID(I)V
    .registers 3
    .param p1, "iReligionID"    # I

    .line 745
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    .line 746
    return-void
.end method

.method public final setReligionID_UpdateBonuses(I)V
    .registers 7
    .param p1, "nReligionID"    # I

    .line 749
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V

    .line 750
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    .line 751
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V

    .line 752
    return-void
.end method

.method public setResearchLevel(I)V
    .registers 3
    .param p1, "iResearchLevel"    # I

    .line 4388
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    .line 4389
    return-void
.end method

.method public setSupremeCourtLevel(I)V
    .registers 3
    .param p1, "iSupremeCourtLevel"    # I

    .line 4326
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    .line 4327
    return-void
.end method

.method public setTaxationLevel(I)V
    .registers 3
    .param p1, "iTaxationLevel"    # I

    .line 4380
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    .line 4381
    return-void
.end method

.method public final setTechnologyResearched(IZ)V
    .registers 5
    .param p1, "iTechID"    # I
    .param p2, "researched"    # Z

    .line 1931
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1933
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 1934
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    .line 1937
    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz v0, :cond_26

    .line 1938
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    .line 1941
    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    if-eqz v0, :cond_34

    .line 1942
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    .line 1944
    :cond_34
    return-void
.end method

.method public final setUpdateRegions(Z)V
    .registers 2
    .param p1, "updateRegions"    # Z

    .line 727
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    .line 728
    return-void
.end method

.method public setWarPlayDefensiveUntilTurnID(I)V
    .registers 3
    .param p1, "untilTurnID"    # I

    .line 4350
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    .line 4351
    return-void
.end method

.method public setWarWeariness(F)V
    .registers 3
    .param p1, "warWeariness"    # F

    .line 4294
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    .line 4295
    return-void
.end method

.method public final takeLoan()Z
    .registers 6

    .line 2682
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanMaxNumber(I)I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 2683
    const/4 v0, 0x0

    return v0

    .line 2686
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanInterestValue(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 2688
    .local v0, "fValue":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/Loan;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/map/Loan;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2689
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 2691
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2693
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2694
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2696
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_INFLATION:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setInflation(F)V

    .line 2698
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLoans(I)V

    .line 2699
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2701
    return v4
.end method

.method public final unlockLegacy(I)Z
    .registers 8
    .param p1, "legacyID"    # I

    .line 1759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_a3

    .line 1760
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_9f

    .line 1761
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v1, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    if-ge v1, v4, :cond_9e

    .line 1762
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v5, v3

    aget v4, v4, v5

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4a

    .line 1763
    return v2

    .line 1766
    :cond_4a
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v4, v3

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 1768
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    .line 1769
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {p1, v1, v2}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(III)V

    .line 1770
    return v3

    .line 1773
    :cond_9e
    return v2

    .line 1759
    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1777
    .end local v0    # "i":I
    :cond_a3
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b7

    .line 1778
    return v2

    .line 1781
    :cond_b7
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 1783
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    .line 1786
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {p1, v2, v0}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(III)V

    .line 1788
    return v3
.end method

.method public final updateArmyImgID()V
    .registers 5

    .line 4036
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    .line 4037
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID_Player()V

    .line 4038
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_42

    .line 4040
    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 4041
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyEnemy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4042
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_42

    .line 4044
    :cond_27
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4045
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyAlly:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4046
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_42

    .line 4049
    :cond_3c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4050
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 4052
    :goto_42
    return-void
.end method

.method public final updateArmyImgID_Player()V
    .registers 2

    .line 4055
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->armyImgID:I

    packed-switch v0, :pswitch_data_5a

    .line 4117
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_59

    .line 4113
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer14:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4114
    goto :goto_59

    .line 4109
    :pswitch_13
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer13:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4110
    goto :goto_59

    .line 4105
    :pswitch_18
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer12:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4106
    goto :goto_59

    .line 4101
    :pswitch_1d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer11:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4102
    goto :goto_59

    .line 4097
    :pswitch_22
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer10:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4098
    goto :goto_59

    .line 4093
    :pswitch_27
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer9:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4094
    goto :goto_59

    .line 4089
    :pswitch_2c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer8:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4090
    goto :goto_59

    .line 4085
    :pswitch_31
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer7:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4086
    goto :goto_59

    .line 4081
    :pswitch_36
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer6:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4082
    goto :goto_59

    .line 4077
    :pswitch_3b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer5:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4078
    goto :goto_59

    .line 4073
    :pswitch_40
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer4:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4074
    goto :goto_59

    .line 4069
    :pswitch_45
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer3:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4070
    goto :goto_59

    .line 4065
    :pswitch_4a
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4066
    goto :goto_59

    .line 4061
    :pswitch_4f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer1:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4062
    goto :goto_59

    .line 4057
    :pswitch_54
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    .line 4058
    nop

    .line 4121
    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public final updateArmyMaintenance()V
    .registers 8

    .line 2594
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    .line 2596
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_46

    .line 2597
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 2599
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_17
    if-ltz v3, :cond_43

    .line 2600
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 2602
    .local v4, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_40

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2603
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    add-float/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    .line 2599
    .end local v4    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2596
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "j":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2608
    .end local v1    # "i":I
    :cond_46
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_ARMY_MAINTENANCE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v5

    aget v4, v4, v5

    add-float/2addr v2, v4

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v1, v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v2, v2

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    .line 2609
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->ARMY_MAINTENANCE_OVER_REGIMENTS_LIMIT_MODIFIER:F

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    mul-float v1, v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    .line 2610
    return-void
.end method

.method public updateArmyPosition(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nProvinceID"    # I

    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_23

    .line 500
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 501
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iput p2, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    .line 502
    return-void

    .line 499
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p2, p1}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    .line 510
    goto :goto_3a

    .line 508
    :catch_36
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 511
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public final updateArmyRegimentSize()I
    .registers 7

    .line 3273
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    .line 3275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_3c

    .line 3276
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 3278
    .local v1, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 3279
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 3281
    .local v3, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, v5, :cond_36

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3282
    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    .line 3278
    .end local v3    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3275
    .end local v1    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v2    # "j":I
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3287
    .end local v0    # "i":I
    :cond_3c
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    return v0
.end method

.method public final updateBestUnits()V
    .registers 8

    .line 2289
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2291
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2292
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2293
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2295
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    .line 2296
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    .line 2297
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    .line 2298
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    .line 2299
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    .line 2301
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "jSize":I
    :goto_26
    sget v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v0, v2, :cond_9e

    .line 2302
    const/4 v2, -0x1

    .line 2304
    .local v2, "bestID":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2c
    if-ge v3, v1, :cond_8c

    .line 2305
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v4, v0, :cond_89

    .line 2306
    if-gez v2, :cond_3e

    .line 2307
    move v2, v3

    goto :goto_89

    .line 2309
    :cond_3e
    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->UnitLevel:I

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->UnitLevel:I

    if-ge v4, v5, :cond_89

    .line 2310
    move v2, v3

    .line 2304
    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2315
    .end local v3    # "j":I
    :cond_8c
    if-ltz v2, :cond_9b

    .line 2316
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2301
    .end local v2    # "bestID":I
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2320
    .end local v0    # "i":I
    .end local v1    # "jSize":I
    :cond_9e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    .line 2322
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_aa
    if-ltz v0, :cond_15f

    .line 2323
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v2, :cond_15b

    .line 2324
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v2, :cond_f6

    .line 2325
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15b

    .line 2327
    :cond_f6
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v2, v1, :cond_11a

    .line 2328
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15b

    .line 2331
    :cond_11a
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v2, :cond_14e

    .line 2332
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15b

    .line 2335
    :cond_14e
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2322
    :cond_15b
    :goto_15b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_aa

    .line 2341
    .end local v0    # "i":I
    :cond_15f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    .line 2342
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    .line 2343
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    .line 2344
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    .line 2345
    return-void
.end method

.method public final updateBuildingLimit()V
    .registers 3

    .line 3293
    const/4 v0, 0x0

    .local v0, "o":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 3294
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 3293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3296
    .end local v0    # "o":I
    :cond_15
    return-void
.end method

.method public final updateCivStability()V
    .registers 6

    .line 4216
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_67

    .line 4217
    const/4 v0, 0x0

    .line 4218
    .local v0, "score":F
    const/4 v1, 0x0

    .line 4220
    .local v1, "numOfProvinces":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 4221
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v3, :cond_22

    .line 4222
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_NON_CORE:F

    add-float/2addr v0, v3

    .line 4224
    add-int/lit8 v1, v1, 0x1

    .line 4227
    :cond_22
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_47

    .line 4228
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_DIFFERENT_RELIGION:F

    add-float/2addr v0, v3

    .line 4230
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_47

    .line 4231
    add-int/lit8 v1, v1, 0x1

    .line 4220
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4236
    .end local v2    # "i":I
    :cond_4a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_MAX_VALUE:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_MAX_PER_PROVINCE:F

    int-to-float v4, v1

    mul-float v3, v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    .line 4237
    .end local v0    # "score":F
    .end local v1    # "numOfProvinces":I
    goto :goto_6a

    .line 4239
    :cond_67
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    .line 4241
    :goto_6a
    return-void
.end method

.method public final updateCivilizationBonuses_Temporary()V
    .registers 4

    .line 3453
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_36

    .line 3454
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_37

    if-gt v1, v2, :cond_33

    .line 3456
    :try_start_14
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_22

    .line 3459
    goto :goto_26

    .line 3457
    :catch_22
    move-exception v1

    .line 3458
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_23
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3461
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_26
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3462
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_37

    .line 3453
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3467
    .end local v0    # "i":I
    :cond_36
    goto :goto_3b

    .line 3465
    :catch_37
    move-exception v0

    .line 3466
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3468
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public final updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    .registers 7
    .param p1, "nBonus"    # Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    .param p2, "mod"    # F

    .line 3471
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 3472
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 3475
    :cond_12
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    .line 3476
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    .line 3479
    :cond_23
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3d

    .line 3480
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 3481
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3484
    :cond_3d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_57

    .line 3485
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    .line 3486
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3489
    :cond_57
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_71

    .line 3490
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    .line 3491
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3494
    :cond_71
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_82

    .line 3495
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 3498
    :cond_82
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9c

    .line 3499
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 3500
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3502
    :cond_9c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b6

    .line 3503
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    .line 3504
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3506
    :cond_b6
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d0

    .line 3507
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 3508
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3510
    :cond_d0
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f5

    .line 3511
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    .line 3513
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 3514
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3517
    :cond_f5
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10f

    .line 3518
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    .line 3520
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 3523
    :cond_10f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_129

    .line 3524
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    .line 3526
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 3529
    :cond_129
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_143

    .line 3530
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 3532
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 3535
    :cond_143
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15d

    .line 3536
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    .line 3538
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 3541
    :cond_15d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16e

    .line 3542
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    .line 3545
    :cond_16e
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17f

    .line 3546
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    .line 3549
    :cond_17f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_190

    .line 3550
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    .line 3553
    :cond_190
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a1

    .line 3554
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    .line 3557
    :cond_1a1
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1bb

    .line 3558
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    .line 3560
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 3563
    :cond_1bb
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1cc

    .line 3564
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 3567
    :cond_1cc
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1dd

    .line 3568
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 3571
    :cond_1dd
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1ee

    .line 3572
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    .line 3575
    :cond_1ee
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1ff

    .line 3576
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    .line 3579
    :cond_1ff
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_222

    .line 3580
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    .line 3582
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 3583
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3586
    :cond_222
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_245

    .line 3587
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    .line 3589
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 3590
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3592
    :cond_245
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_256

    .line 3593
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    .line 3596
    :cond_256
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_267

    .line 3597
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 3599
    :cond_267
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_278

    .line 3600
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    .line 3604
    :cond_278
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_289

    .line 3605
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    .line 3607
    :cond_289
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_29a

    .line 3608
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    .line 3610
    :cond_29a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ab

    .line 3611
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    .line 3614
    :cond_2ab
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2bc

    .line 3615
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    .line 3617
    :cond_2bc
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2cd

    .line 3618
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    .line 3621
    :cond_2cd
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2de

    .line 3622
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    .line 3624
    :cond_2de
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2ef

    .line 3625
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    .line 3628
    :cond_2ef
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_300

    .line 3629
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    .line 3631
    :cond_300
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_311

    .line 3632
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    .line 3635
    :cond_311
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-eqz v0, :cond_323

    .line 3636
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 3638
    :cond_323
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v0, :cond_335

    .line 3639
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 3642
    :cond_335
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-eqz v0, :cond_347

    .line 3643
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 3645
    :cond_347
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-eqz v0, :cond_359

    .line 3646
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 3649
    :cond_359
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36a

    .line 3650
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    .line 3653
    :cond_36a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37b

    .line 3654
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    .line 3657
    :cond_37b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_38c

    .line 3658
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 3661
    :cond_38c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39d

    .line 3662
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    .line 3665
    :cond_39d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    if-eqz v0, :cond_3af

    .line 3666
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    .line 3669
    :cond_3af
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    if-eqz v0, :cond_3c1

    .line 3670
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 3673
    :cond_3c1
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3d2

    .line 3674
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    .line 3677
    :cond_3d2
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3e3

    .line 3678
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    .line 3681
    :cond_3e3
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    if-eqz v0, :cond_41a

    .line 3682
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    .line 3684
    const/4 v0, 0x0

    .local v0, "o":I
    :goto_3f6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_41a

    .line 3685
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 3684
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f6

    .line 3689
    .end local v0    # "o":I
    :cond_41a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_42b

    .line 3690
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    .line 3692
    :cond_42b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43c

    .line 3693
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    .line 3697
    :cond_43c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_44d

    .line 3698
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    .line 3700
    :cond_44d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_465

    .line 3701
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    .line 3703
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3705
    :cond_465
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_476

    .line 3706
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    .line 3709
    :cond_476
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_492

    .line 3710
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    .line 3711
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 3714
    :cond_492
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4a3

    .line 3715
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    .line 3718
    :cond_4a3
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4b4

    .line 3719
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    .line 3721
    :cond_4b4
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4c5

    .line 3722
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    .line 3725
    :cond_4c5
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4d6

    .line 3726
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 3729
    :cond_4d6
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4e7

    .line 3730
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    .line 3733
    :cond_4e7
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    if-eqz v0, :cond_4f9

    .line 3734
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    .line 3737
    :cond_4f9
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_50a

    .line 3738
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    .line 3741
    :cond_50a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_51b

    .line 3742
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    .line 3745
    :cond_51b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_533

    .line 3746
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    .line 3747
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3750
    :cond_533
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_54b

    .line 3751
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    iget v2, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    .line 3752
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3755
    :cond_54b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    if-eqz v0, :cond_560

    .line 3756
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    int-to-float v1, v1

    iget v2, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 3757
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 3760
    :cond_560
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    .line 3761
    return-void
.end method

.method public final updateCivilizationTAG()V
    .registers 3

    .line 941
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologyID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setIdeologyID(I)V

    .line 942
    return-void
.end method

.method public final updateCivilizationTAG(Ljava/lang/String;III)V
    .registers 5
    .param p1, "nCivTag"    # Ljava/lang/String;
    .param p2, "iR"    # I
    .param p3, "iG"    # I
    .param p4, "iB"    # I

    .line 928
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivTag(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    .line 931
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    .line 932
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    .line 934
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    .line 935
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    .line 937
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    .line 938
    return-void
.end method

.method public final updateColonizationProvince()V
    .registers 11

    .line 3913
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_ac

    .line 3914
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getSettlementEstablishmentProgress(I)F

    move-result v1

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a8

    .line 3915
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_79

    .line 3916
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SETTLEMENT_ESTABLISHED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SettlementEstablished"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    .line 3917
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    .line 3916
    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 3920
    :cond_79
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->expandColony(I)V

    .line 3922
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetColonizationData()V

    .line 3924
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3925
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a8} :catch_ad

    .line 3913
    :cond_a8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 3931
    .end local v0    # "i":I
    :cond_ac
    goto :goto_b1

    .line 3929
    :catch_ad
    move-exception v0

    .line 3930
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3932
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method

.method public final updateColorMap()V
    .registers 5

    .line 791
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 792
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1f

    .line 795
    :cond_d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorMixed_2(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    .line 798
    :goto_1f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 799
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 800
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 801
    return-void
.end method

.method public final updateDiplomacyPerMonth()V
    .registers 4

    .line 2537
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_PER_MONTH_BASE_VALUE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getDiplomacyPoints_RankStar(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    .line 2539
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MAX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MAX_PER_PROVINCE:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    .line 2540
    return-void
.end method

.method public final updateIncome()V
    .registers 5

    .line 2553
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 2554
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_BASE_INCOME:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    goto :goto_1f

    .line 2557
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_BASE_INCOME_VASSAL:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 2560
    :goto_1f
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 2563
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 2564
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2562
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2567
    .end local v1    # "i":I
    :cond_4a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4b
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v1, v2, :cond_9b

    .line 2568
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_98

    .line 2569
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v2, :cond_98

    .line 2570
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getIncome_Emperor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 2567
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 2575
    .end local v1    # "i":I
    :cond_9b
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2576
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2578
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_cf

    .line 2579
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(II)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    .line 2580
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    goto :goto_d1

    .line 2582
    :cond_cf
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    .line 2584
    :goto_d1
    return-void
.end method

.method public final updateInfrastructureMax()V
    .registers 3

    .line 3299
    const/4 v0, 0x0

    .local v0, "o":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 3300
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 3299
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3302
    .end local v0    # "o":I
    :cond_15
    return-void
.end method

.method public final updateLegacyPerMonth()V
    .registers 5

    .line 2455
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 2457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 2458
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyLegacy:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 2457
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2461
    .end local v0    # "i":I
    :cond_21
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MONTHLY_LEGACY:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRivalsLegacy(I)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 2463
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 2464
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_LEGACY:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v3

    aget v1, v1, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    .line 2465
    return-void
.end method

.method public final updateLoans()V
    .registers 4

    .line 2713
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-lez v0, :cond_5f

    .line 2714
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_5f

    .line 2715
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    if-lt v1, v2, :cond_5c

    .line 2716
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2717
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    .line 2719
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2720
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    .line 2722
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-nez v1, :cond_5c

    .line 2723
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    .line 2725
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->removeCivUpdateLoans(I)V

    .line 2726
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2714
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2731
    .end local v0    # "i":I
    :cond_5f
    return-void
.end method

.method public final updateManpowerPerMonth()V
    .registers 8

    .line 2474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    .line 2475
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    float-to-double v2, v2

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2478
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 2479
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_3c

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    :try_start_25
    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2480
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_3c

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    :try_start_36
    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_38} :catch_3c

    .line 2478
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2484
    .end local v2    # "i":I
    :cond_3b
    goto :goto_3d

    .line 2482
    :catch_3c
    move-exception v2

    .line 2486
    :goto_3d
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MANPOWER_MAX:[I

    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2488
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_85

    .line 2489
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_ManpowerLevel(I)I

    move-result v5

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    .line 2490
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2493
    :cond_85
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_BASE:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2494
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c8

    .line 2497
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    add-double/2addr v1, v4

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2496
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 2500
    .end local v0    # "i":I
    :cond_c8
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRivalsManpower(I)I

    move-result v2

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2502
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_dc
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_130

    .line 2503
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_12d

    .line 2504
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v1, :cond_12d

    .line 2505
    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getManpower_Emperor(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    .line 2502
    :cond_12d
    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 2510
    .end local v0    # "i":I
    :cond_130
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerPerMonth(ID)D

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_MANPOWER:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v4

    aget v2, v2, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    .line 2511
    return-void
.end method

.method public final updateMilitaryLevel(I)V
    .registers 3
    .param p1, "nMilitaryLevel"    # I

    .line 2799
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 2800
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryLevel(I)V

    .line 2802
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 2803
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyMaintenance()V

    .line 2804
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 2806
    :cond_12
    return-void
.end method

.method public final updateMorale_Reinforce()V
    .registers 18

    .line 3045
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMaxMorale()F

    move-result v1

    .line 3046
    .local v1, "maxMorale":F
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoraleRecoveryPerMonth()F

    move-result v2

    .line 3048
    .local v2, "moraleRecovery":F
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMaxReinforce()I

    move-result v3

    .line 3050
    .local v3, "maxReinforce":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v4, v4

    .line 3052
    .local v4, "maxRegimentSize":F
    const/4 v5, 0x0

    .line 3054
    .local v5, "reinforceCost":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1f
    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v8, 0x1

    if-ge v6, v7, :cond_83

    .line 3055
    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 3057
    .local v7, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2d
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v10

    if-ge v9, v10, :cond_81

    .line 3058
    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    .line 3060
    .local v10, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v11

    if-nez v11, :cond_7e

    iget-boolean v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v11, :cond_7e

    iget-boolean v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v11, :cond_7e

    iget v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v12

    if-ne v11, v12, :cond_7e

    iget-object v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 3061
    invoke-virtual {v10, v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale_Regiments(FF)V

    .line 3063
    iget-wide v11, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_MIN_MANPOWER:I

    int-to-double v13, v13

    cmpl-double v15, v11, v13

    if-lez v15, :cond_7b

    .line 3064
    invoke-virtual {v10, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateReinforce(IF)F

    move-result v11

    add-float/2addr v5, v11

    .line 3065
    int-to-double v11, v3

    iget-wide v13, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v3, v11

    goto :goto_7e

    .line 3068
    :cond_7b
    iget v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    .line 3069
    goto :goto_81

    .line 3057
    .end local v10    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_7e
    :goto_7e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 3054
    .end local v7    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v9    # "j":I
    :cond_81
    :goto_81
    add-int/2addr v6, v8

    goto :goto_1f

    .line 3075
    .end local v6    # "i":I
    :cond_83
    iget v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sub-float/2addr v6, v5

    iput v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 3077
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v6, v7, :cond_f6

    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_f6

    .line 3078
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rf:I

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v10, v5, v9

    float-to-int v10, v10

    add-int/2addr v7, v10

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rf:I

    .line 3080
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REINFORCE_ARMY_COST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ReinforceCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v12, 0x42c7cccd    # 99.9f

    cmpl-float v12, v5, v12

    if-lez v12, :cond_cc

    goto :goto_d8

    :cond_cc
    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_d6

    const/16 v8, 0x64

    goto :goto_d8

    :cond_d6
    const/16 v8, 0xa

    :goto_d8
    invoke-static {v5, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    mul-float v9, v9, v5

    float-to-int v8, v9

    move-object v10, v7

    move/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification_Reinforce(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 3082
    :cond_f6
    return-void
.end method

.method public final updateMoveInBattle(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inBattle"    # Z

    .line 1026
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_23

    .line 1027
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1028
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_24

    .line 1029
    return-void

    .line 1026
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1035
    .end local v0    # "i":I
    :cond_23
    goto :goto_28

    .line 1033
    :catch_24
    move-exception v0

    .line 1034
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1036
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method public final updateMoveUnits_Load(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;ZZ)V
    .registers 7
    .param p1, "civMoveUnits"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    .param p2, "nInRetreat"    # Z
    .param p3, "nInBattle"    # Z

    .line 1253
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_3c

    .line 1254
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    iget-object v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1255
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->m:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 1257
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 1258
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p3, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 1259
    return-void

    .line 1253
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1262
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method public updateNukeProduction(I)V
    .registers 7
    .param p1, "turns"    # I

    .line 3334
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    if-lez v0, :cond_87

    .line 3335
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v2, p1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    .line 3337
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_87

    .line 3338
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3339
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    .line 3341
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    .line 3343
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v2, :cond_7a

    .line 3344
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 3345
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 3347
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AnAtomicBombHasBeenBuilt"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "AtomicBombs"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoAtomic:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 3351
    :cond_7a
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    if-nez v0, :cond_87

    .line 3352
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeCivsNukes(I)V

    .line 3356
    :cond_87
    return-void
.end method

.method public final updateNumOfProvinces()V
    .registers 3

    .line 454
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    .line 456
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank(I)I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 457
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    .line 459
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    .line 460
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 461
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 462
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 464
    :cond_3c
    return-void
.end method

.method public final updateProsperity_AverageEconomy()V
    .registers 8

    .line 4126
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v0

    .line 4128
    .local v0, "popTotal":J
    const/4 v2, 0x0

    .line 4130
    .local v2, "out":F
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_b
    if-ltz v3, :cond_2e

    .line 4131
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    int-to-float v5, v5

    long-to-float v6, v0

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    .line 4130
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 4134
    .end local v3    # "i":I
    :cond_2e
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    .line 4135
    return-void
.end method

.method public final updateProvinceBorder()V
    .registers 3

    .line 4410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 4411
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    .line 4410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4413
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public final updateProvincesIncomeAndExpenses()V
    .registers 3

    .line 2766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2767
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2766
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2770
    .end local v0    # "i":I
    :cond_15
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 2771
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    .line 2772
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 2773
    return-void
.end method

.method public final updateRecruitArmy(II)V
    .registers 11
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 1457
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 1459
    .local v0, "armyRecruit":Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    .line 1461
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    if-lez v1, :cond_19

    .line 1462
    return-void

    .line 1465
    :cond_19
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b8

    .line 1467
    :try_start_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v1

    .line 1469
    .local v1, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v1, :cond_cc

    .line 1470
    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    if-ltz v3, :cond_2b3

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    if-ltz v3, :cond_2b3

    .line 1472
    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_2b3

    .line 1473
    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 1475
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1477
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_84

    .line 1478
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1479
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1482
    :cond_84
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1483
    const/4 v3, 0x0

    .local v3, "o":I
    :goto_87
    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v3, v4, :cond_9f

    .line 1484
    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1483
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 1487
    .end local v3    # "o":I
    :cond_9f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 1489
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_cb

    .line 1490
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 1491
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    .line 1492
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 1494
    :cond_cb
    return-void

    .line 1500
    :cond_cc
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 1501
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1503
    .local v3, "nProvinceID":I
    if-ltz v3, :cond_1cd

    .line 1504
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_158

    .line 1505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v4, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_144

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_144

    .line 1509
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    if-ltz v5, :cond_13f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_13f

    .line 1510
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    move v3, v5

    goto :goto_144

    .line 1513
    :cond_13f
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    move v3, v5

    .line 1517
    :cond_144
    :goto_144
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    invoke-direct {v5, v6, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    .line 1518
    .local v5, "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    iput-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 1520
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 1523
    .end local v4    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v5    # "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_158
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1527
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_185

    .line 1528
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1529
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1532
    :cond_185
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1533
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_188
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v4, v5, :cond_1a0

    .line 1534
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1533
    add-int/lit8 v4, v4, 0x1

    goto :goto_188

    .line 1537
    .end local v4    # "o":I
    :cond_1a0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 1539
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_1cc

    .line 1540
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 1541
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    .line 1542
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 1544
    :cond_1cc
    return-void

    .line 1546
    .end local v3    # "nProvinceID":I
    :cond_1cd
    goto/16 :goto_2b3

    .line 1548
    :cond_1cf
    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    .line 1550
    .restart local v3    # "nProvinceID":I
    if-ltz v3, :cond_2b3

    .line 1551
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_245

    .line 1552
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v4, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_231

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_231

    .line 1556
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    if-ltz v5, :cond_22c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    if-ne v5, v6, :cond_22c

    .line 1557
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    move v3, v5

    goto :goto_231

    .line 1560
    :cond_22c
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    move v3, v5

    .line 1564
    :cond_231
    :goto_231
    new-instance v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    invoke-direct {v5, v6, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    .line 1565
    .restart local v5    # "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    iput-object v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 1567
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 1570
    .end local v4    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v5    # "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_245
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1572
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_26b

    .line 1573
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1574
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1577
    :cond_26b
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1578
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_26e
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v4, v5, :cond_286

    .line 1579
    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1578
    add-int/lit8 v4, v4, 0x1

    goto :goto_26e

    .line 1582
    .end local v4    # "o":I
    :cond_286
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 1584
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_2b2

    .line 1585
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 1586
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v5, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    .line 1587
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_2b2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b2} :catch_2b4

    .line 1589
    :cond_2b2
    return-void

    .line 1596
    .end local v1    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .end local v3    # "nProvinceID":I
    :cond_2b3
    :goto_2b3
    goto :goto_2b8

    .line 1594
    :catch_2b4
    move-exception v1

    .line 1595
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1599
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2b8
    :goto_2b8
    const/4 v1, 0x0

    .local v1, "o":I
    :goto_2b9
    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_35f

    .line 1600
    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_35b

    .line 1601
    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 1603
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1605
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_313

    .line 1606
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1607
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1610
    :cond_313
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1611
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_316
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, v3, :cond_32e

    .line 1612
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1611
    add-int/lit8 v2, v2, 0x1

    goto :goto_316

    .line 1615
    .end local v2    # "a":I
    :cond_32e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 1617
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_35a

    .line 1618
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 1619
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    .line 1620
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 1622
    :cond_35a
    return-void

    .line 1599
    :cond_35b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b9

    .line 1626
    .end local v1    # "o":I
    :cond_35f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_413

    .line 1627
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    .line 1629
    .local v1, "recruitInProvinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_38b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_395

    :cond_38b
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_3f0

    .line 1630
    :cond_395
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    if-ltz v3, :cond_3c0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_3c0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_3c0

    .line 1631
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_3f0

    .line 1634
    :cond_3c0
    const/4 v1, -0x1

    .line 1636
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_3c2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_3f0

    .line 1637
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_3ed

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_3ed

    .line 1638
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    .line 1639
    goto :goto_3f0

    .line 1636
    :cond_3ed
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c2

    .line 1645
    .end local v3    # "p":I
    :cond_3f0
    :goto_3f0
    if-ltz v1, :cond_413

    .line 1646
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v3, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    .line 1650
    .local v4, "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 1654
    .end local v1    # "recruitInProvinceID":I
    .end local v3    # "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v4    # "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_413
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1656
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_439

    .line 1657
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1658
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    .line 1661
    :cond_439
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1662
    const/4 v1, 0x0

    .local v1, "o":I
    :goto_43c
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_454

    .line 1663
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    .line 1662
    add-int/lit8 v1, v1, 0x1

    goto :goto_43c

    .line 1666
    .end local v1    # "o":I
    :cond_454
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 1668
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_480

    .line 1669
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    .line 1670
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    .line 1671
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    .line 1673
    :cond_480
    return-void
.end method

.method public final updateRegimentsLimit()V
    .registers 4

    .line 3012
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENTS_LIMIT_BASE_VALUE:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_PER_VASSAL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 3013
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRegimentsLimit_FromAllianceSpecial()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRegimentsLimit_Manpower()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3015
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-ne v1, v2, :cond_37

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3b

    :cond_37
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_VASSAL:F

    :goto_3b
    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    .line 3016
    return-void
.end method

.method public final updateResearchLevel(I)V
    .registers 3
    .param p1, "nResearchLevel"    # I

    .line 2790
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 2791
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setResearchLevel(I)V

    .line 2793
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 2794
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 2796
    :cond_f
    return-void
.end method

.method public final updateResearchPerMonth()V
    .registers 6

    .line 2431
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 2432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 2433
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 2432
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2436
    .end local v1    # "i":I
    :cond_1e
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->BASE_RESEARCH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MONTHLY_RESEARCH:[F

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 2438
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_RESEARCH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_RESEARCH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v4

    aget v3, v3, v4

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v1, v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 2439
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    .line 2440
    return-void
.end method

.method public final updateTaxationLevel(I)V
    .registers 4
    .param p1, "nTaxationLevel"    # I

    .line 2776
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v0

    if-eq v0, p1, :cond_27

    .line 2777
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTaxationLevel(I)V

    .line 2779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2780
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2779
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2783
    .end local v0    # "i":I
    :cond_1e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    .line 2784
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    .line 2785
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 2787
    :cond_27
    return-void
.end method

.method public updateTechnologyBonuses(I)V
    .registers 6
    .param p1, "iTechID"    # I

    .line 2196
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    if-eqz v0, :cond_1d

    .line 2197
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    .line 2200
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    if-eqz v0, :cond_3a

    .line 2201
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 2203
    :cond_3a
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    if-eqz v0, :cond_57

    .line 2204
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 2207
    :cond_57
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    if-eqz v0, :cond_74

    .line 2208
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 2210
    :cond_74
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    if-eqz v0, :cond_91

    .line 2211
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 2214
    :cond_91
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_b2

    .line 2215
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    .line 2217
    :cond_b2
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    if-eqz v0, :cond_d1

    .line 2218
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    .line 2221
    :cond_d1
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    if-eqz v0, :cond_ee

    .line 2222
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    .line 2224
    :cond_ee
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    if-eqz v0, :cond_10b

    .line 2225
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    .line 2227
    :cond_10b
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-eqz v0, :cond_128

    .line 2228
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    .line 2231
    :cond_128
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_137

    .line 2232
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    .line 2235
    :cond_137
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz v0, :cond_145

    .line 2236
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    .line 2239
    :cond_145
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    if-eqz v0, :cond_153

    .line 2240
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    .line 2242
    :cond_153
    return-void
.end method

.method public final updateTotalIncomePerMonth()V
    .registers 4

    .line 2587
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    .line 2588
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateVassalsIncome()V

    .line 2590
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    .line 2591
    return-void
.end method

.method public final updateTotalProvincesValue()V
    .registers 4

    .line 3431
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    .line 3433
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1d

    .line 3434
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    .line 3433
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3436
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public final updateVassalsColors()V
    .registers 3

    .line 806
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v0, v1, :cond_1d

    .line 807
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public final updateVassalsIncome()V
    .registers 4

    .line 1012
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    .line 1014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 1015
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_29

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1019
    .end local v0    # "i":I
    :cond_28
    goto :goto_2d

    .line 1017
    :catch_29
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1020
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method public final updateWarWeariness(F)V
    .registers 4
    .param p1, "fValue"    # F

    .line 4178
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WAR_WEARINESS_MAX:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setWarWeariness(F)V

    .line 4179
    return-void
.end method

.method public final update_ChanceOfGeneral_NotAssigned()V
    .registers 11

    .line 1870
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_8d

    .line 1871
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    if-ne v1, v2, :cond_89

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1872
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_7c

    .line 1873
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GeneralDied"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->general:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 1876
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$1;

    const-string v2, "rebuildGenerals"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$1;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1888
    :cond_7c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1889
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8e

    .line 1870
    :cond_89
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    .line 1894
    .end local v0    # "i":I
    :cond_8d
    goto :goto_92

    .line 1892
    :catch_8e
    move-exception v0

    .line 1893
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1895
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method public final upgradeCapitalCity()Z
    .registers 6

    .line 2959
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_7e

    .line 2960
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2962
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 2963
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 2965
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalLevel(I)V

    .line 2967
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v4

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 2968
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    .line 2970
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2972
    return v1

    .line 2975
    :cond_7e
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeMilitaryAcademy()Z
    .registers 5

    .line 2893
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_b7

    .line 2894
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2896
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 2897
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 2898
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2899
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 2901
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyLevel(I)V

    .line 2903
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 2904
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    .line 2905
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2906
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 2908
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2909
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    .line 2911
    return v1

    .line 2914
    :cond_b7
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeMilitaryAcademyForGenerals()Z
    .registers 5

    .line 2861
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_96

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 2862
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2864
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 2865
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 2866
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2868
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyForGeneralsLevel(I)V

    .line 2870
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    .line 2871
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    .line 2872
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    .line 2874
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2876
    return v1

    .line 2879
    :cond_96
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeNuclearReactor()Z
    .registers 5

    .line 2929
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 2930
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2932
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 2934
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNuclearReactorLevel(I)V

    .line 2936
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 2938
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_51
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_65

    .line 2939
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2938
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 2942
    .end local v0    # "i":I
    :cond_65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 2944
    return v1

    .line 2947
    :cond_6f
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeSupremeCourt()Z
    .registers 5

    .line 2992
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_61

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 2993
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 2995
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setSupremeCourtLevel(I)V

    .line 2997
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    .line 2999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 3000
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    .line 2999
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 3003
    .end local v0    # "i":I
    :cond_57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 3005
    return v1

    .line 3008
    :cond_61
    const/4 v0, 0x0

    return v0
.end method
