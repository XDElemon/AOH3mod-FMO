.class public Laoc/kingdoms/lukasz/jakowski/Game;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;,
        Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;,
        Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;,
        Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;,
        Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;,
        Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;,
        Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;,
        Laoc/kingdoms/lukasz/jakowski/Game$FlagData;
    }
.end annotation


# static fields
.field public static DRAW_ARMY_MIN_SCALE:F = 0.0f

.field public static DRAW_CITIES_MIN_SCALE:F = 0.0f

.field public static DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F = 0.0f

.field public static DRAW_INNER_BORDERS:F = 0.0f

.field public static DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F = 0.0f

.field public static DRAW_OCCUPIED_SCALE:F = 0.0f

.field public static ENABLE_CALL_VASSALS:Z = false

.field public static FOG_OF_WAR:Z = false

.field private static final HIGHLIGHTED_PROVINCES_ANIMATION_TIME:F = 750.0f

.field private static final HIGHLIGHTED_PROVINCES_ANIMATION_TIME_BACK:F = 350.0f

.field public static HOURS_PER_TURN:I

.field public static MAX_BELOW_ZERO_POINT_X:I

.field public static NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

.field public static NUM_OF_PROVINCES_IN_VIEW:I

.field public static NUM_OF_SEA_PROVINCES_IN_VIEW:I

.field public static NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

.field public static SANDBOX:Z

.field public static SCENARIO_EVENTS:Z

.field public static SPECTATOR_MODE:Z

.field public static activeArmy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;",
            ">;"
        }
    .end annotation
.end field

.field public static activeArmySize:I

.field public static activeCursorID:I

.field public static activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

.field public static advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

.field public static aiAggressivnes:I

.field public static aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

.field public static aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

.field public static aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

.field public static aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

.field public static aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

.field public static aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

.field public static aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

.field public static alliancesSpecial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;",
            ">;"
        }
    .end annotation
.end field

.field public static alliancesSpecialSize:I

.field public static alliancesSpecial_Flag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

.field public static animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

.field public static animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

.field public static armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

.field public static battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

.field public static chooseProvinceMode:Z

.field public static cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

.field public static continents:Laoc/kingdoms/lukasz/map/map/Continents;

.field public static cutProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceCut;",
            ">;"
        }
    .end annotation
.end field

.field public static deltaTime:F

.field public static difficultyID:I

.field public static fDashedLine_Percentage_HighlitedProvinceBorder:F

.field public static flagData:Laoc/kingdoms/lukasz/jakowski/Game$FlagData;

.field public static flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

.field public static gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

.field public static gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

.field public static gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

.field public static gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

.field public static gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

.field public static gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

.field public static generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

.field public static geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

.field public static highTextureSettings:Z

.field public static highlightedProvinceBorder_BackAnimation:Z

.field public static highlightedProvinceBorder_Update:Z

.field public static hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

.field public static hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

.field public static hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

.field public static hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

.field public static hoveredProvinceBG_LoadedID:I

.field public static hoveredShipID:I

.field public static hoveredSiegeID:I

.field public static iActiveProvince:I

.field public static iCivsSize:I

.field public static iHoveredCapitalProvinceID:I

.field public static iHoveredProvinceID:I

.field public static iMaxDistance:F

.field public static iMaxDistanceManhattan:F

.field public static iOldActiveProvinceID:I

.field public static iOldHoveredProvinceID:I

.field public static iProvincesSize:I

.field public static iRegroupArmyProvincesSize:I

.field public static ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

.field public static inViewX_CordsX:I

.field public static inViewX_CordsX_Width:I

.field public static inViewY_CordsY:I

.field public static inViewY_CordsY_Height:I

.field public static invasionArmyMode:Z

.field public static invasionArmyProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static invasionArmyProvincesSize:I

.field public static keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

.field public static lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/Civilization;",
            ">;"
        }
    .end annotation
.end field

.field public static lCursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static lDashedLineTime_Percentage_HighlitedProvinceBorder:J

.field public static lExtraProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/Province;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData10:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData7:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesData9:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesPopulation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;",
            ">;"
        }
    .end annotation
.end field

.field public static lSeaProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lWastelandProvincesInView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

.field public static map:Laoc/kingdoms/lukasz/map/map/Map;

.field public static mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

.field public static mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

.field public static mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

.field public static mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

.field public static mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

.field public static mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

.field public static mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

.field public static mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

.field public static mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

.field public static mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

.field public static mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

.field public static mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

.field public static maxWastelandLvl:I

.field public static menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

.field public static oR:Ljava/util/Random;

.field public static player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

.field public static provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

.field public static regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

.field public static regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

.field public static regroupArmyMode:Z

.field public static regroupArmyProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static regroupArmyShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;",
            ">;"
        }
    .end annotation
.end field

.field public static religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

.field public static reloadScenario:Z

.field public static revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

.field public static revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

.field public static scenarioID:I

.field public static selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

.field public static settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

.field private static simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public static soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

.field public static stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

.field public static terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

.field public static updateProvincesInView:Z

.field public static versionWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 107
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->versionWidth:I

    .line 111
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    .line 116
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiManager:Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;

    .line 120
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValues:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_Values;

    .line 121
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    .line 122
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    .line 123
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesCores:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesCores;

    .line 124
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    .line 125
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    .line 141
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 142
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    .line 143
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    .line 144
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    .line 145
    new-instance v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    .line 146
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapCities;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    .line 147
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapOver;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    .line 148
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapOver;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapOverSea:Laoc/kingdoms/lukasz/map/map/MapOver;

    .line 150
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    .line 152
    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    .line 154
    new-instance v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    .line 155
    new-instance v1, Laoc/kingdoms/lukasz/map/map/Continents;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/Continents;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    .line 156
    new-instance v1, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/GeographicalRegions;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->geographicalRegions:Laoc/kingdoms/lukasz/map/map/GeographicalRegions;

    .line 158
    new-instance v1, Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/GeneralManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 159
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    .line 172
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    .line 181
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    .line 182
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    .line 183
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    .line 184
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    .line 186
    new-instance v1, Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    .line 187
    new-instance v1, Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/ReligionManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    .line 188
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    .line 192
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    .line 194
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    .line 198
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    .line 199
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    .line 200
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    .line 201
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    .line 203
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->ENABLE_CALL_VASSALS:Z

    .line 209
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 210
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    .line 212
    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    .line 226
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    .line 261
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    .line 265
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    .line 294
    const v2, 0x3fa66666    # 1.3f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    .line 295
    const v2, 0x3f19999a    # 0.6f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    .line 296
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    .line 297
    const v2, 0x3e19999a    # 0.15f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_PROVINCES_MIN_SCALE:F

    .line 298
    const/high16 v2, 0x3f000000    # 0.5f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    .line 299
    const/high16 v2, 0x40000000    # 2.0f

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    .line 313
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    .line 331
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    .line 436
    new-instance v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v0, v3}, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;-><init>(IIILjava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->armyRecruit:Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    .line 438
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    .line 439
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 440
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 441
    new-instance v2, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    .line 443
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 444
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 447
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iOldActiveProvinceID:I

    .line 465
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    .line 939
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    .line 940
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    .line 941
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 943
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 963
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    .line 965
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    .line 966
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    .line 1048
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    .line 1050
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    .line 1051
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    .line 1052
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1054
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1202
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    .line 1206
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    .line 1213
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 1374
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    .line 1377
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    .line 1382
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    .line 1384
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/jakowski/RegionManager;-><init>()V

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    .line 1386
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 1388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    .line 1389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    .line 1392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    .line 1394
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 1395
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 1396
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 1397
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 1402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    .line 1403
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1416
    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    .line 1417
    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    .line 1422
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    .line 1492
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    .line 1515
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 1588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    .line 1616
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 2001
    const/16 v1, 0x63

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->maxWastelandLvl:I

    .line 2077
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    .line 2078
    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2290
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2293
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_BackAnimation:Z

    .line 2295
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2674
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    .line 2675
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    .line 2677
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    .line 2678
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    .line 3175
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    .line 3176
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    .line 3201
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V
    .registers 6
    .param p0, "nHA"    # Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    .line 1218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_1b

    .line 1219
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1220
    return-void

    .line 1218
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1224
    .end local v0    # "i":I
    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v2, :cond_3a

    const-string v3, "airhq_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showAirForceQuick(Z)V

    .line 1234
    :cond_3d
    return-void
.end method

.method public static addAllianceSpecial(Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;)V
    .registers 4
    .param p0, "nAlliance"    # Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 391
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 392
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void

    .line 390
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public static final addCivilization(Ljava/lang/String;IZZZZZ)Z
    .registers 24
    .param p0, "nCivTag"    # Ljava/lang/String;
    .param p1, "nProvinceID"    # I
    .param p2, "rebuildCores"    # Z
    .param p3, "addCore"    # Z
    .param p4, "isInGame"    # Z
    .param p5, "updateOwnerOfProvince"    # Z
    .param p6, "loadFlagLater"    # Z

    .line 1848
    move/from16 v11, p1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1849
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, p0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1850
    const/4 v1, 0x0

    return v1

    .line 1848
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1e
    move-object/from16 v12, p0

    .line 1854
    .end local v0    # "i":I
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v13

    .line 1856
    .local v13, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    if-eqz p6, :cond_8f

    .line 1857
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    new-instance v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v5, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v8, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    iget v9, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    const/16 v16, 0x1

    move-object v0, v10

    move-object/from16 v2, p0

    move/from16 v7, p1

    move-object v14, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIIIZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_A()V

    .line 1866
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_FLAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_ae

    .line 1874
    :cond_8f
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v5, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v6, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v8, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    iget v9, v13, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    move-object v0, v14

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    :goto_ae
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1884
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initTechTree()V

    .line 1885
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 1887
    if-eqz p5, :cond_123

    .line 1888
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    .line 1890
    .local v0, "tCivID":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    .line 1891
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_RemoveOldAddNewToCiv(I)V

    .line 1892
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1893
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    .line 1895
    if-lez v0, :cond_123

    .line 1896
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    .line 1898
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildCivilizationsRegion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/Game$4;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 1907
    .end local v0    # "tCivID":I
    :cond_123
    const/4 v0, 0x1

    return v0
.end method

.method public static final addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .registers 2
    .param p0, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 1571
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1572
    return-void

    .line 1575
    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 1576
    return-void
.end method

.method public static final addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .registers 2
    .param p0, "nSimpleTask"    # Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    .line 1579
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1580
    return-void

    .line 1583
    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 1584
    return-void
.end method

.method public static final buildDistanceToCapital()V
    .registers 2

    .line 3315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 3316
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->buildDistanceToCapital()V

    .line 3315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3318
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final buildProsperity_AverageEconomy()V
    .registers 2

    .line 3158
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 3159
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProsperity_AverageEconomy()V

    .line 3158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3161
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static final buildProvinceIsCapital()V
    .registers 3

    .line 1923
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 1924
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_33

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v1, v0, :cond_33

    .line 1925
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1923
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1928
    .end local v0    # "i":I
    :cond_36
    return-void
.end method

.method public static buildSuggestedCivs_ToSmallerMap_OnlyToConvert()V
    .registers 12

    .line 3392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_ed

    .line 3393
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v1

    if-lez v1, :cond_e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggestedCivilizations/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 3394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 3395
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3396
    .local v3, "sOwners":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3398
    .local v5, "sRes":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_76
    array-length v7, v5

    if-ge v6, v7, :cond_e9

    .line 3399
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SUGGESTED_TEST.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    .line 3400
    .local v7, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3398
    .end local v7    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v6, v6, 0x1

    goto :goto_76

    .line 3392
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "sOwners":Ljava/lang/String;
    .end local v5    # "sRes":[Ljava/lang/String;
    .end local v6    # "a":I
    :cond_e9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3404
    .end local v0    # "i":I
    :cond_ed
    return-void
.end method

.method public static final buildWastelandLevels()V
    .registers 4

    .line 2005
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    .local v0, "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_32

    .line 2008
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_2f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2009
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V

    .line 2007
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2014
    .end local v1    # "i":I
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v3, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels(Ljava/util/List;II)V

    .line 2016
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3e

    .line 2017
    nop

    .line 2020
    .end local v0    # "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_42

    .line 2018
    :catch_3e
    move-exception v0

    .line 2019
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2021
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public static final buildWastelandLevels(Ljava/util/List;II)V
    .registers 8
    .param p1, "nLevel"    # I
    .param p2, "nWastelandSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 2025
    .local p0, "tWasteland":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 2027
    .local v0, "rec":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_97

    .line 2028
    :try_start_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ne v2, p1, :cond_86

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    if-lez v2, :cond_2d

    goto :goto_86

    .line 2035
    :cond_2d
    const/4 v2, 0x1

    .line 2037
    .local v2, "incLevel":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 2038
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-ge v4, p1, :cond_61

    .line 2039
    const/4 v2, 0x0

    .line 2040
    goto :goto_64

    .line 2037
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 2044
    .end local v3    # "j":I
    :cond_64
    :goto_64
    if-eqz v2, :cond_7b

    .line 2045
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V

    .line 2046
    const/4 v0, 0x1

    goto :goto_91

    .line 2049
    :cond_7b
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2050
    add-int/lit8 v1, v1, -0x1

    .line 2051
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move p2, v3

    goto :goto_91

    .line 2029
    .end local v2    # "incLevel":Z
    :cond_86
    :goto_86
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2030
    add-int/lit8 v1, v1, -0x1

    .line 2031
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move p2, v2

    .line 2032
    nop

    .line 2027
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 2060
    .end local v0    # "rec":Z
    .end local v1    # "i":I
    :catch_95
    move-exception v0

    goto :goto_a3

    .line 2055
    .restart local v0    # "rec":Z
    :cond_97
    if-eqz v0, :cond_a7

    .line 2056
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->maxWastelandLvl:I

    if-ge p1, v1, :cond_a7

    .line 2057
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels(Ljava/util/List;II)V
    :try_end_a2
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_a2} :catch_95

    goto :goto_a7

    .line 2061
    .local v0, "ex":Ljava/lang/StackOverflowError;
    :goto_a3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 2062
    .end local v0    # "ex":Ljava/lang/StackOverflowError;
    :cond_a7
    :goto_a7
    nop

    .line 2063
    :goto_a8
    return-void
.end method

.method public static canInvestInEconomy(I)Z
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 527
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    int-to-float v1, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public static final centerToRandomMapPosition()V
    .registers 4

    .line 2796
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    .line 2797
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 2799
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomPointToCenterTheMap()Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    .line 2801
    .local v0, "tempPointToCenterTheMap":Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    .line 2802
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v2, v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    .line 2803
    return-void
.end method

.method public static final checkActiveArmy_Fog()Z
    .registers 3

    .line 1352
    const/4 v0, 0x0

    .line 1355
    .local v0, "outUpdate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v1, v2, :cond_2d

    .line 1356
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1357
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1358
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_2e

    .line 1360
    const/4 v0, 0x1

    .line 1362
    add-int/lit8 v1, v1, -0x1

    .line 1355
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1367
    .end local v1    # "i":I
    :cond_2d
    goto :goto_32

    .line 1365
    :catch_2e
    move-exception v1

    .line 1366
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1369
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_32
    return v0
.end method

.method public static final checkClosedSea(I)Z
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 2066
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2067
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_20

    .line 2068
    const/4 v1, 0x1

    return v1

    .line 2066
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2072
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkHoveredArmy_Fog()V
    .registers 2

    .line 954
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_19

    .line 955
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-nez v0, :cond_19

    .line 956
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 959
    :cond_19
    return-void
.end method

.method public static final checkPosOfClickX(F)F
    .registers 3
    .param p0, "nPosX"    # F

    .line 2782
    neg-float v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 2783
    :goto_c
    neg-float v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 2784
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    goto :goto_c

    .line 2786
    :cond_21
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_33

    .line 2787
    :goto_26
    cmpl-float v1, p0, v0

    if-lez v1, :cond_33

    .line 2788
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p0, v1

    goto :goto_26

    .line 2792
    :cond_33
    return p0
.end method

.method public static final clearActiveArmy()V
    .registers 4

    .line 1324
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ub:clr:sz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1327
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showAirForceQuick(Z)V

    :cond_2b
    const-string v0, "ca_hide"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgCaller(Ljava/lang/String;)V

    .line 1328
    return-void
.end method

.method public static final clearAllianceSpecial()V
    .registers 3

    .line 337
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 341
    goto :goto_d

    .line 339
    :catch_9
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 344
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d
    :try_start_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_2b

    .line 345
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 346
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 349
    .end local v0    # "i":I
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    .line 352
    goto :goto_35

    .line 350
    :catch_31
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 353
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public static final countContinentProvinces(I)I
    .registers 4
    .param p0, "nContinentID"    # I

    .line 2961
    const/4 v0, 0x0

    .line 2963
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 2964
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v2

    if-ne v2, p0, :cond_14

    .line 2965
    add-int/lit8 v0, v0, 0x1

    .line 2963
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2969
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public static countFriendlyNeighbors(II)I
    .registers 10
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I

    const/4 v0, 0x0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    if-lez v2, :cond_3c

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    if-eqz v3, :cond_3c

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_3c

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_39

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v7

    goto :goto_35

    :cond_31
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    :goto_35
    if-ne v7, p0, :cond_39

    add-int/lit8 v0, v0, 0x1

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_3c
    return v0
.end method

.method public static countPlayableProvince()I
    .registers 3

    .line 2975
    const/4 v0, 0x0

    .line 2977
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 2978
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-gez v2, :cond_1e

    .line 2979
    add-int/lit8 v0, v0, 0x1

    .line 2977
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2983
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method private static dbgSpid(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIRDBG"

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final dispose()V
    .registers 1

    .line 3469
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->dispose()V

    .line 3470
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->dispose()V

    .line 3471
    return-void
.end method

.method public static final disposeCivilizations()V
    .registers 3

    .line 1931
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    if-eqz v0, :cond_e8

    .line 1932
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 1934
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1936
    :try_start_e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->disposeFlag()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    .line 1939
    goto :goto_1a

    .line 1937
    :catch_16
    move-exception v1

    .line 1938
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1934
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1943
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1944
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->clearData()V

    .line 1943
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1947
    .end local v0    # "i":I
    :cond_2e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1948
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1949
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1950
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1951
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1952
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1953
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1954
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1955
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1956
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1957
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1959
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_66
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_dd

    .line 1960
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1962
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1963
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1965
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1966
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1968
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1969
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1970
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 1973
    .end local v0    # "i":I
    :cond_dd
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1974
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1976
    invoke-static {}, Laoc/kingdoms/lukasz/map/WondersManager;->initProvinceWonders()V

    .line 1978
    :cond_e8
    return-void
.end method

.method public static final disposeCutProvinces()V
    .registers 1

    .line 1985
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1986
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    .line 1987
    return-void
.end method

.method public static final drawActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 10
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2119
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBG_ActiveHoveredProvince()V

    .line 2121
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2124
    :try_start_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_199

    .line 2125
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_f2

    .line 2126
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_19a

    if-eqz v0, :cond_f2

    .line 2128
    :try_start_26
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_9f

    .line 2129
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v3

    const/16 v4, 0x1e

    const/16 v5, 0x37

    const/16 v6, 0xff

    invoke-static {v6, v5, v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 2130
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v7

    invoke-static {v6, v5, v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    .line 2131
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getColorStepID()I

    move-result v8

    invoke-static {v6, v5, v8, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(IIII)F

    move-result v4

    .line 2133
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    const/high16 v6, 0x420c0000    # 35.0f

    if-eqz v5, :cond_6c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v5

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v5, v2

    goto :goto_7b

    :cond_6c
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v5

    add-float/2addr v5, v6

    div-float/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    mul-float v5, v5, v2

    .line 2134
    :goto_7b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_8c

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_8e

    :cond_8c
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_8e
    div-float/2addr v5, v2

    invoke-direct {v0, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 2129
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2138
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_f0

    .line 2141
    :cond_9f
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2142
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_e7

    .line 2147
    :cond_be
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getAlpha()F

    move-result v3

    div-float/2addr v3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_d8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    goto :goto_da

    :cond_d8
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_da
    div-float/2addr v3, v2

    const v2, 0x3f75c28f    # 0.96f

    const v4, 0x3f70a3d7    # 0.94f

    invoke-direct {v0, v2, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2150
    :goto_e7
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_f0} :catch_f1

    .line 2154
    :goto_f0
    goto :goto_f2

    .line 2152
    :catch_f1
    move-exception v0

    .line 2159
    :cond_f2
    :goto_f2
    :try_start_f2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_18f

    .line 2160
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 2161
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    const v2, 0x3ca3d70a    # 0.02f

    const v3, 0x3d4ccccd    # 0.05f

    if-nez v0, :cond_152

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 2162
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_129

    goto :goto_12c

    :cond_129
    const v2, 0x3d4ccccd    # 0.05f

    :goto_12c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_13d

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_13f

    :cond_13d
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_13f
    div-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2163
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;)V

    goto :goto_18f

    .line 2165
    :cond_152
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_156} :catch_190

    if-eq v0, v4, :cond_18f

    .line 2167
    :try_start_158
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_167

    goto :goto_16a

    :cond_167
    const v2, 0x3d4ccccd    # 0.05f

    :goto_16a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_17b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    goto :goto_17d

    :cond_17b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_17d
    div-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 2168
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_18d} :catch_18e

    .line 2171
    goto :goto_18f

    .line 2169
    :catch_18e
    move-exception v0

    .line 2181
    :cond_18f
    :goto_18f
    goto :goto_194

    .line 2179
    :catch_190
    move-exception v0

    .line 2180
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_191
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2183
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_194
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_199} :catch_19a

    .line 2187
    :cond_199
    goto :goto_19e

    .line 2185
    :catch_19a
    move-exception v0

    .line 2186
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2189
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_19e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 2190
    return-void
.end method

.method public static final dropAtomicBomb(II)I
    .registers 10
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 839
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v0

    if-lez v0, :cond_c8

    .line 840
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 841
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    .line 843
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->atomicBombDropped()I

    move-result v0

    .line 845
    .local v0, "iCasualties":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p0, v1, :cond_45

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_c5

    .line 846
    :cond_45
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 847
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 849
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AtomicBombing"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Casualties"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-float v6, v0

    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoAtomic:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 852
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_c5

    .line 853
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->DROP_NUKE:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    .line 857
    :cond_c5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->addNuke(I)V

    .line 861
    .end local v0    # "iCasualties":I
    :cond_c8
    const/4 v0, -0x1

    return v0
.end method

.method public static final exploitEconomy(I)Z
    .registers 4
    .param p0, "iProvinceID"    # I

    .line 541
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4f

    .line 542
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Gain(I)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    .line 544
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Lose(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    .line 546
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterEconomyChange()V

    .line 548
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    .line 550
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_4f
    const/4 v0, 0x0

    return v0
.end method

.method public static findArmy(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .registers 7
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3073
    if-eqz p1, :cond_57

    .line 3074
    :try_start_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3076
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_57

    .line 3077
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1c
    if-ltz v2, :cond_4f

    .line 3078
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_4c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3079
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_52

    return-object v3

    .line 3077
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 3076
    .end local v2    # "j":I
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3084
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "i":I
    :catch_52
    move-exception v0

    .line 3085
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_58

    .line 3086
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_57
    nop

    .line 3088
    :goto_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .registers 7
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3123
    if-eqz p1, :cond_dc

    .line 3124
    :try_start_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3126
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_50

    .line 3127
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_4d

    .line 3128
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_4a

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 3129
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3127
    :cond_4a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3126
    .end local v2    # "j":I
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3134
    .end local v1    # "i":I
    :cond_50
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_56
    if-ltz v1, :cond_9c

    .line 3135
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "j":I
    :goto_66
    if-ltz v2, :cond_99

    .line 3136
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_96

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 3137
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3135
    :cond_96
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 3134
    .end local v2    # "j":I
    :cond_99
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    .line 3142
    .end local v1    # "i":I
    :cond_9c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_dc

    .line 3143
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "j":I
    :goto_ad
    if-ltz v2, :cond_d4

    .line 3144
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_d1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 3145
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-direct {v3, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d0} :catch_d7

    return-object v3

    .line 3143
    :cond_d1
    add-int/lit8 v2, v2, -0x1

    goto :goto_ad

    .line 3142
    .end local v2    # "j":I
    :cond_d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 3150
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "i":I
    :catch_d7
    move-exception v0

    .line 3151
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 3152
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_dc
    nop

    .line 3154
    :goto_dd
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findArmy_IncludeVassals(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .registers 8
    .param p0, "iCivID"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 3093
    if-eqz p1, :cond_ff

    .line 3094
    :try_start_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3096
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_52

    .line 3097
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1c
    if-ltz v2, :cond_4f

    .line 3098
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p0, :cond_4c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3099
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-direct {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V

    return-object v3

    .line 3097
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 3096
    .end local v2    # "j":I
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3104
    .end local v1    # "i":I
    :cond_52
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_53
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v1, v2, :cond_ff

    .line 3105
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_6f
    if-ltz v2, :cond_f6

    .line 3106
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_8f
    if-ltz v3, :cond_f2

    .line 3107
    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, p0, :cond_ef

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 3108
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;-><init>(II)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ee} :catch_fa

    return-object v4

    .line 3106
    :cond_ef
    add-int/lit8 v3, v3, -0x1

    goto :goto_8f

    .line 3105
    .end local v3    # "j":I
    :cond_f2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_6f

    .line 3104
    .end local v2    # "i":I
    :cond_f6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_53

    .line 3114
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "a":I
    :catch_fa
    move-exception v0

    .line 3115
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_100

    .line 3116
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_ff
    nop

    .line 3118
    :goto_100
    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateSuggestedCivs_ToSmallerMap_OnlyToConvert()V
    .registers 19

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SUGGESTED_TEST.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3408
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3409
    .local v2, "sOwners":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3411
    .local v4, "sRes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "a":I
    :goto_2e
    array-length v6, v4

    if-ge v5, v6, :cond_1ae

    .line 3412
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v6, v6, v7

    .line 3413
    .local v6, "tx":I
    add-int/lit8 v7, v5, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v7, v7, v8

    .line 3415
    .local v7, "ty":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_1a2

    .line 3416
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v9

    if-gt v9, v6, :cond_196

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v9

    if-lt v9, v6, :cond_196

    .line 3417
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v9

    if-gt v9, v7, :cond_191

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v9

    if-lt v9, v7, :cond_191

    .line 3419
    invoke-static {v8, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v9

    if-eqz v9, :cond_18c

    .line 3421
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "suggestedCivilizations/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".txt"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_145

    .line 3422
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    .line 3423
    .local v9, "file2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3425
    .local v12, "sOwners2":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 3427
    .local v13, "sRes3":[Ljava/lang/String;
    const/4 v14, 0x1

    .line 3429
    .local v14, "add":Z
    const/4 v15, 0x0

    .local v15, "az":I
    :goto_e2
    move-object/from16 v16, v0

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "file":Lcom/badlogic/gdx/files/FileHandle;
    array-length v0, v13

    if-ge v15, v0, :cond_fe

    .line 3430
    aget-object v0, v13, v15

    add-int/lit8 v17, v5, 0x2

    move-object/from16 v18, v2

    .end local v2    # "sOwners":Ljava/lang/String;
    .local v18, "sOwners":Ljava/lang/String;
    aget-object v2, v4, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 3431
    const/4 v0, 0x0

    move v14, v0

    .line 3429
    :cond_f7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto :goto_e2

    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_fe
    move-object/from16 v18, v2

    .line 3435
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v15    # "az":I
    .restart local v18    # "sOwners":Ljava/lang/String;
    if-eqz v14, :cond_144

    .line 3436
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3437
    .local v0, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v5, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v0, v2, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3439
    .end local v0    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9    # "file2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "sOwners2":Ljava/lang/String;
    .end local v13    # "sRes3":[Ljava/lang/String;
    .end local v14    # "add":Z
    :cond_144
    goto :goto_1a6

    .line 3441
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_145
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 3442
    .local v0, "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v5, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 3446
    .end local v0    # "fileWrite":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1a6

    .line 3419
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_18c
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    goto :goto_19a

    .line 3417
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_191
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    goto :goto_19a

    .line 3416
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_196
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3415
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    :goto_19a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_4c

    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_1a2
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3411
    .end local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v6    # "tx":I
    .end local v7    # "ty":I
    .end local v8    # "j":I
    .restart local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v18    # "sOwners":Ljava/lang/String;
    :goto_1a6
    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto/16 :goto_2e

    .line 3456
    .end local v5    # "a":I
    .end local v16    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v18    # "sOwners":Ljava/lang/String;
    .restart local v0    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v2    # "sOwners":Ljava/lang/String;
    :cond_1ae
    return-void
.end method

.method public static getAllianceSpecialNumOfCivs(I)I
    .registers 4
    .param p0, "allianceID"    # I

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "out":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_53

    .line 361
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 362
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 369
    :cond_53
    :try_start_53
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_63
    if-ltz v1, :cond_88

    .line 370
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_85

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 369
    :cond_85
    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    .line 375
    .end local v1    # "i":I
    :cond_88
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_98
    if-ltz v1, :cond_bd

    .line 376
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_b6} :catch_be

    if-lez v2, :cond_ba

    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 375
    :cond_ba
    add-int/lit8 v1, v1, -0x1

    goto :goto_98

    .line 382
    .end local v1    # "i":I
    :cond_bd
    goto :goto_c2

    .line 380
    :catch_be
    move-exception v1

    .line 381
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 384
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_c2
    return v0
.end method

.method public static final getAtomicBombCasualties(I)F
    .registers 4
    .param p0, "iProvinceID"    # I

    .line 835
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_POPULATION_CASUALTIES:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->CasualtiesNuclearAttacks:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getAtomicBombCost(I)F
    .registers 5
    .param p0, "iCivID"    # I

    .line 885
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_COST_PER_ATOMIC_BOMB:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_AtomicBombCost(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static final getAtomicBombProductionTime(I)I
    .registers 2
    .param p0, "iCivID"    # I

    .line 889
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_PRODUCTION_TIME:F

    float-to-int v0, v0

    return v0
.end method

.method public static getBuildingConstructionCost(IIII)I
    .registers 9
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 641
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 643
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    :goto_8
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v1, v1, p3

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v2, :cond_2d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_BUILDING_COST_PER_RESEARCH_POINT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    mul-float v2, v2, v3

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    add-float/2addr v1, v2

    .line 644
    if-ltz p1, :cond_6a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v2, v2, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    add-float/2addr v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    add-float/2addr v2, v3

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingGroupCost(II)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_6c

    :cond_6a
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_6c
    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 643
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getBuildingConstructionTime(IIII)I
    .registers 8
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 648
    if-ltz p1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 650
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    :goto_8
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTime:[I

    aget v1, v1, p3

    int-to-float v1, v1

    .line 651
    if-ltz p1, :cond_28

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL:F

    mul-float v2, v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionTimeBonus:F

    add-float/2addr v2, v3

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-double v1, v1

    .line 650
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getBuildingGroupCost(II)F
    .registers 3
    .param p0, "iCivID"    # I
    .param p1, "building"    # I

    .line 655
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    packed-switch v0, :pswitch_data_2a

    .line 667
    const/4 v0, 0x0

    return v0

    .line 663
    :pswitch_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    return v0

    .line 660
    :pswitch_18
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    return v0

    .line 657
    :pswitch_21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public static final getCapital_Cost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 829
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getCapital_Income(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 817
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_INCOME_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getCapital_MaxLvl(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 813
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getCapital_MaxResearch(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 825
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MAX_RESEARCH_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getCapital_ProvincesMaintenance(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 821
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_PROVINCES_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .registers 4
    .param p0, "i"    # I

    .line 2914
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2915
    :catch_9
    move-exception v0

    .line 2916
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    return-object v1
.end method

.method public static final getCivID(Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 2922
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2923
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2924
    return v0

    .line 2922
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2928
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 2929
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_31

    if-eqz v1, :cond_2d

    .line 2930
    return v0

    .line 2928
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 2935
    .end local v0    # "i":I
    :cond_30
    goto :goto_32

    .line 2933
    :catch_31
    move-exception v0

    .line 2937
    :goto_32
    const/4 v0, -0x1

    return v0
.end method

.method public static final getCivilizationsInGame()I
    .registers 3

    .line 3048
    const/4 v0, 0x0

    .line 3050
    .local v0, "out":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 3051
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_14

    .line 3052
    add-int/lit8 v0, v0, 0x1

    .line 3050
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3056
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public static final getCivsSize()I
    .registers 1

    .line 2941
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    return v0
.end method

.method public static getCoreCreationCost(I)F
    .registers 8
    .param p0, "iProvinceID"    # I

    .line 673
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 674
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 676
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_COST_DEFAULT:F

    .line 677
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_COST_PER_ECONOMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CORE_COST_PER_LVL:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 679
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    .line 680
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_CORE_COST_PER_POINT:F

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    mul-float v2, v2, v3

    .line 676
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public static getCoreCreationTime(I)I
    .registers 4
    .param p0, "iProvinceID"    # I

    .line 685
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_TIME_DEFAULT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->CORE_CREATION_TIME_PER_TAX_EFFICIENCY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getDevastationOccupiedProvince(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 599
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_LOOTED:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getDevelopInfrastructureCost(I)F
    .registers 6
    .param p0, "nProvinceID"    # I

    .line 565
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 567
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_GOLD:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_GOLD_PER_INFRASTRUCTURE:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    add-float/2addr v2, v4

    mul-float v1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getDevelopInfrastructureCostLegacy(I)F
    .registers 6
    .param p0, "nProvinceID"    # I

    .line 571
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 573
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_LEGACY:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_COST_LEGACY_PER_INFRASTRUCTURE:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DevelopInfrastructureCost:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    add-float/2addr v2, v4

    mul-float v1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getDevelopInfrastructureTime(I)I
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 577
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 579
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_TIME:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->DEVELOP_INFRASTRUCTURE_TIME_PER_INFRASTRUCTURE:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static final getDistanceFromAToB_Km(II)F
    .registers 5
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3309
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DistanceKm:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getDistanceFromProvinceToProvince(II)F
    .registers 5
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3282
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 3283
    .local v0, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 3285
    .local v1, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    invoke-interface {v2, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;->getDistanceFromProvinceToProvince(II)F

    move-result v2

    return v2
.end method

.method public static final getDistanceFromProvinceToProvince_Simpler(II)F
    .registers 10
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3289
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 3290
    .local v0, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 3293
    .local v1, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    :try_start_8
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v6

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2d

    double-to-float v2, v2

    return v2

    .line 3294
    :catch_2d
    move-exception v2

    .line 3295
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 3296
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    return v3
.end method

.method public static final getDistance_PercOfMax(II)F
    .registers 4
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3301
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getDistance_PercOfMax_Simpler(II)F
    .registers 4
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3305
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getExploitEconomy_Gain(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 537
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExploitEconomy_Lose(I)F

    move-result v1

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_ECONOMY_GROWTH:F

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_GAIN_PER_INVEST_COST:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getExploitEconomy_Lose(I)F
    .registers 4
    .param p0, "iProvinceID"    # I

    .line 533
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->EXPLOIT_ECONOMY_MIN_ECONOMY:F

    sub-float/2addr v1, v2

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static final getExtraProvinceInViewID(I)I
    .registers 3
    .param p0, "iID"    # I

    .line 2639
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2640
    :catch_d
    move-exception v0

    .line 2641
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2643
    const/4 v1, 0x0

    return v1
.end method

.method protected static final getFogOfWarName(I)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I

    .line 2740
    packed-switch p0, :pswitch_data_1e

    .line 2746
    :pswitch_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Classic"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2744
    :pswitch_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Discovery"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2742
    :pswitch_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public static getIncomeFromEconomy(I)F
    .registers 8
    .param p0, "iProvinceID"    # I

    .line 621
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 622
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 624
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INCOME_ECONOMY_PER_ECONOMY:F

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_INCOME_ECONOMY:[F

    .line 625
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_INCOME:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4b

    const/4 v4, 0x0

    goto :goto_4f

    :cond_4b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_4f
    add-float/2addr v3, v4

    .line 626
    iget-boolean v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_55

    goto :goto_59

    :cond_55
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_59
    add-float/2addr v3, v6

    .line 625
    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v2, v2, v3

    .line 624
    return v2
.end method

.method public static getIncomeFromEconomy_Invest(I)F
    .registers 8
    .param p0, "iProvinceID"    # I

    .line 630
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 631
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 633
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INCOME_ECONOMY_PER_ECONOMY:F

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_INCOME_ECONOMY:[F

    .line 634
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_INCOME:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4b

    const/4 v4, 0x0

    goto :goto_4f

    :cond_4b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_4f
    add-float/2addr v3, v4

    .line 635
    iget-boolean v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_55

    goto :goto_59

    :cond_55
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_59
    add-float/2addr v3, v6

    .line 634
    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v2, v2, v3

    .line 633
    return v2
.end method

.method public static getIncomeFromVassal(II)F
    .registers 3
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I

    .line 605
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_TributeLevel(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(III)F

    move-result v0

    return v0
.end method

.method public static getIncomeFromVassal(III)F
    .registers 6
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I
    .param p2, "iLevel"    # I

    .line 609
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    aget v1, v1, p2

    mul-float v0, v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static getIncomePopulationTaxation(I)F
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 695
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v0

    return v0
.end method

.method public static getIncomePopulationTaxation(IF)F
    .registers 10
    .param p0, "iProvinceID"    # I
    .param p1, "taxEfficiency"    # F

    .line 699
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 700
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 702
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->BASE_INCOME_POPULATION_INCOME:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->TAX_EFFICIENCY_MAX_POPULATION:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->TAX_EFFICIENCY_POPULATION_DIVIDE:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p1, v4

    mul-float v3, v3, v4

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 704
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_46

    const/4 v5, 0x0

    goto :goto_4a

    :cond_46
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_4a
    add-float/2addr v4, v5

    .line 705
    iget-boolean v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v5, :cond_50

    goto :goto_54

    :cond_50
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v7, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_54
    add-float/2addr v4, v7

    .line 704
    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 702
    return v2
.end method

.method public static getIncomePopulationTaxation_Invest(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 709
    nop

    .line 710
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    add-float/2addr v0, v1

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v0

    .line 711
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceTaxEfficiency(I)F

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(IF)F

    move-result v1

    sub-float/2addr v0, v1

    .line 709
    return v0
.end method

.method public static getIncreasTaxEfficiencyTime(I)I
    .registers 2
    .param p0, "nCivID"    # I

    .line 921
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreaseGrowthRateCost(I)F
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 927
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_COST:F

    .line 928
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_COST_PER_GROWTH_RATE:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    .line 930
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseGrowthRateCost:F

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 927
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static getIncreaseGrowthRateTime(I)I
    .registers 2
    .param p0, "nCivID"    # I

    .line 934
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreaseManpowerCost(I)F
    .registers 6
    .param p0, "nProvinceID"    # I

    .line 895
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_PER_LEVEL:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseManpowerCostLegacy(I)F
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 899
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_LEGACY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_COST_LEGACY_PER_LEVEL:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseManpowerCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseTaxEfficiencyCost(I)F
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 913
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_PER_TAX_EFFICIENCY:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreaseTaxEfficiencyCostLegacy(I)F
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 917
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_LEGACY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_COST_LEGACY_PER_TAX:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncreaseTaxEfficiencyCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    add-float/2addr v1, v3

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static getIncreseManpowerTime(I)I
    .registers 2
    .param p0, "nCivID"    # I

    .line 903
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getIncreseManpower_ManpowerPerMonthInfo(I)F
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 735
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreseManpower_MaximumManpowerInfo(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static getIncreseManpower_MaximumManpowerInfo(I)I
    .registers 7
    .param p0, "iProvinceID"    # I

    .line 728
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 730
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    mul-float v1, v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 731
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_41

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_DIFFERENT_RELIGION:F

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_52

    :cond_4e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_NON_CORE:F

    :goto_52
    add-float/2addr v2, v5

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 730
    return v1
.end method

.method public static getInflationReduceCost_Legacy(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 3025
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static getInvestCost(I)F
    .registers 8
    .param p0, "nProvinceID"    # I

    .line 487
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 490
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_6
    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v2, :cond_87

    .line 491
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_PER_ECONOMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 492
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 491
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_86} :catch_88

    return v1

    .line 496
    :cond_87
    goto :goto_8c

    .line 494
    :catch_88
    move-exception v2

    .line 495
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 498
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_8c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_PER_ECONOMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 499
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 498
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static getInvestCost_Legacy(I)F
    .registers 8
    .param p0, "nProvinceID"    # I

    .line 503
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 506
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_6
    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v2, :cond_87

    .line 507
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY_PER_ECONOMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 508
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_86} :catch_88

    return v1

    .line 512
    :cond_87
    goto :goto_8c

    .line 510
    :catch_88
    move-exception v2

    .line 511
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 514
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_8c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY:F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_COST_LEGACY_PER_ECONOMY:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v1

    .line 515
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_INVEST_COST_PER_LVL:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_INVEST_ECONOMY_COST:[F

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method public static final getInvestEconomyGrowth(I)F
    .registers 2
    .param p0, "iProvinceID"    # I

    .line 483
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_ECONOMY_GROWTH:F

    return v0
.end method

.method public static getInvestTime(I)I
    .registers 2
    .param p0, "nCivID"    # I

    .line 519
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->INVEST_IN_PROVINCE_DAYS:I

    return v0
.end method

.method public static getLegacyPerUniqueResources(I)F
    .registers 5
    .param p0, "iCivID"    # I

    .line 907
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS_MAX:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->LEGACY_PER_UNIQUE_RESOURCE_PER_TECHS:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getLoanExpires()I
    .registers 2

    .line 3011
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_DAYS:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static getLoanExpires_Years()I
    .registers 1

    .line 3007
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_YEARS:I

    return v0
.end method

.method public static getLoanInterest(I)F
    .registers 5
    .param p0, "iCivID"    # I

    .line 3003
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_DEFAULT_INTEREST:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_LOAN_INTEREST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static getLoanInterestValue(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 2999
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanInterest(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getLoanMaxNumber(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 3019
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->MAX_NUMBER_OF_LOANS:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getLoanMonthlyExpenses(F)F
    .registers 2
    .param p0, "fValue"    # F

    .line 3015
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires_Years()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    div-float v0, p0, v0

    return v0
.end method

.method public static getLoanValue(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 2989
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_VALUE_MIN:F

    .line 2991
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 2992
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    add-float/2addr v0, v2

    .line 2991
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2995
    .end local v1    # "i":I
    :cond_23
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_VALUE_BY_ECONOMY:F

    mul-float v1, v1, v0

    return v1
.end method

.method public static getLootValue(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 559
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->LOOT_PROVINCE_PER_PROVINCE_INCOME:F

    mul-float v0, v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getManhattanDistance(II)F
    .registers 3
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3274
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    invoke-interface {v0, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;->getManhattanDistance(II)F

    move-result v0

    return v0
.end method

.method public static final getManhattanDistance_PercOfMax(II)F
    .registers 4
    .param p0, "provA"    # I
    .param p1, "provB"    # I

    .line 3278
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static final getManpowerFromProvincePerMonth_Info(I)F
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 724
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static getManpowerFromVassal_INFO(III)D
    .registers 7
    .param p0, "iCivID"    # I
    .param p1, "iVassalCivID"    # I
    .param p2, "iLevel"    # I

    .line 615
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    add-double/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_BASE:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    aget v2, v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static final getManpowerMaxFromProvinceManpowerLvl(I)I
    .registers 7
    .param p0, "iProvinceID"    # I

    .line 717
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 719
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MANPOWER_LVL:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_PER_PROVINCE_MAX_GROWTH_RATE:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalManpower:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 720
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_41

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_DIFFERENT_RELIGION:F

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    add-float/2addr v2, v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_52

    :cond_4e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_NON_CORE:F

    :goto_52
    add-float/2addr v2, v5

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 719
    return v1
.end method

.method public static final getManpowerPerMonth(ID)D
    .registers 7
    .param p0, "iCivID"    # I
    .param p1, "iManpowerMax"    # D

    .line 739
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, p1, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static final getManpowerRecoveryFromADisbandedArmy(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 745
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_RECOVERY_FROM_DISBANDED_ARMY_DEFAULT:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getMaxAmountOfGold(I)I
    .registers 5
    .param p0, "iCivID"    # I

    .line 3029
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 3031
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MAX_AMOUNT_OF_GOLD_MIN:I

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MAX_AMOUNT_OF_GOLD_PER_INCOME:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getMaxEconomy(I)F
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 523
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->MAX_ECONOMY_GROWTH_RATE:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_Cost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 763
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_GeneralAttack(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 755
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_ATTACK_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_GeneralDefense(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 759
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_DEFENSE_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_MaintenanceCost(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 767
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademyForGenerals_MaxLvl(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 751
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_FOR_GENERALS_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Attack(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 777
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_ATTACK_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Cost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 789
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_Defense(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 781
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_DEFENSE_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_MaintenanceCost(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 793
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_MAINTENANCE_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_MaxLvl(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 773
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getMilitaryAcademy_RegimentsLimit(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 785
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public static final getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .registers 11

    .line 1406
    new-instance v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "neu"

    const/4 v3, 0x0

    const/16 v4, 0xfb

    const/16 v5, 0xfb

    const/16 v6, 0xdd

    const/4 v7, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIII)V

    return-object v10
.end method

.method public static final getNuclearReactor_AtomicBombCost(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 875
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_ATOMIC_BOMB_COST_PER_LEVEL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getNuclearReactor_Cost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 879
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getNuclearReactor_MaxLvl(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 867
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getNuclearReactor_ProductionEfficiency(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 871
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_PRODUCTION_EFFICIENCY_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getProsperityLevel(I)Ljava/lang/String;
    .registers 4
    .param p0, "iCivID"    # I

    .line 3164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS_VALUE:[F

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 3165
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS_VALUE:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    .line 3166
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3164
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3170
    .end local v0    # "i":I
    :cond_28
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_LEVELS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    .registers 2
    .param p0, "ID"    # I

    .line 2861
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/Province;

    return-object v0
.end method

.method public static final getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .registers 2
    .param p0, "ID"    # I

    .line 2865
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    return-object v0
.end method

.method public static final getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;
    .registers 2
    .param p0, "ID"    # I

    .line 2901
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData10:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    return-object v0
.end method

.method public static final getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;
    .registers 2
    .param p0, "ID"    # I

    .line 2869
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData2:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    return-object v0
.end method

.method public static final getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;
    .registers 2
    .param p0, "ID"    # I

    .line 2873
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData3:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    return-object v0
.end method

.method public static final getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
    .registers 2
    .param p0, "ID"    # I

    .line 2877
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData4:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    return-object v0
.end method

.method public static final getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;
    .registers 2
    .param p0, "ID"    # I

    .line 2881
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    return-object v0
.end method

.method public static final getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;
    .registers 2
    .param p0, "ID"    # I

    .line 2885
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData6:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    return-object v0
.end method

.method public static final getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;
    .registers 2
    .param p0, "ID"    # I

    .line 2889
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData7:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    return-object v0
.end method

.method public static final getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;
    .registers 2
    .param p0, "ID"    # I

    .line 2893
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData8:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    return-object v0
.end method

.method public static final getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;
    .registers 2
    .param p0, "ID"    # I

    .line 2897
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesData9:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    return-object v0
.end method

.method public static final getProvinceInViewID(I)I
    .registers 3
    .param p0, "iID"    # I

    .line 2629
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2630
    :catch_d
    move-exception v0

    .line 2631
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2633
    const/4 v1, 0x0

    return v1
.end method

.method public static getProvinceMaintenanceEconomy(II)F
    .registers 4
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 585
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_ECONOMY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getProvinceMaintenanceManpower(II)F
    .registers 4
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 593
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_MANPOWER:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static getProvinceMaintenanceTax(II)F
    .registers 4
    .param p0, "iCivID"    # I
    .param p1, "iProvinceID"    # I

    .line 589
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAINTENANCE_PER_TAX:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
    .registers 2
    .param p0, "ID"    # I

    .line 2905
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesPopulation:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    return-object v0
.end method

.method public static getProvinceTaxEfficiency(I)F
    .registers 4
    .param p0, "iProvinceID"    # I

    .line 691
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_EFFICIENCY:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getProvincesSize()I
    .registers 1

    .line 2909
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    return v0
.end method

.method public static final getRegionID(I)I
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 2949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_2f

    .line 2950
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 2951
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    if-ne v2, p0, :cond_29

    .line 2952
    return v0

    .line 2950
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2949
    .end local v1    # "j":I
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2957
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public static getResearchCost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 3038
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static getResearchCost(IF)F
    .registers 5
    .param p0, "iCivID"    # I
    .param p1, "value"    # F

    .line 3042
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float v0, v0, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_COST:[F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v2

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getSeaProvinceInViewID(I)I
    .registers 3
    .param p0, "iID"    # I

    .line 2649
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2650
    :catch_d
    move-exception v0

    .line 2651
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2653
    const/4 v1, 0x0

    return v1
.end method

.method public static final getSupremeCourt_Corruption(I)F
    .registers 3
    .param p0, "iCivID"    # I

    .line 803
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method public static final getSupremeCourt_Cost(I)F
    .registers 4
    .param p0, "iCivID"    # I

    .line 807
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_COST:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_COST_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static final getSupremeCourt_MaxLvl(I)I
    .registers 3
    .param p0, "iCivID"    # I

    .line 799
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_MAX_LVL:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getVassalsToRelease(I)Ljava/util/List;
    .registers 9
    .param p0, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;",
            ">;"
        }
    .end annotation

    .line 3333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3335
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 3336
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v2, v3, :cond_8b

    .line 3337
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_88

    .line 3338
    const/4 v3, 0x0

    .line 3340
    .local v3, "found":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "k":I
    :goto_42
    if-ltz v4, :cond_6e

    .line 3341
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v7

    if-ne v6, v7, :cond_6b

    .line 3342
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    add-int/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;->iNumOfProvinces:I

    .line 3343
    const/4 v3, 0x1

    .line 3344
    goto :goto_6e

    .line 3340
    :cond_6b
    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    .line 3348
    .end local v4    # "k":I
    :cond_6e
    :goto_6e
    if-nez v3, :cond_88

    .line 3349
    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v6

    invoke-direct {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/Game$VassalsToRelease;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3336
    .end local v3    # "found":Z
    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3335
    .end local v2    # "j":I
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 3355
    .end local v1    # "i":I
    :cond_8f
    return-object v0
.end method

.method public static getVassalsToRelease_Provinces(II)Ljava/util/List;
    .registers 6
    .param p0, "civID"    # I
    .param p1, "releaseCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3361
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 3362
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v2, v3, :cond_60

    .line 3363
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    if-ne v3, p1, :cond_5d

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-nez v3, :cond_5d

    .line 3364
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3365
    goto :goto_60

    .line 3362
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3361
    .end local v2    # "j":I
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3370
    .end local v1    # "i":I
    :cond_63
    return-object v0
.end method

.method public static final getWastelandProvinceInViewID(I)I
    .registers 3
    .param p0, "iID"    # I

    .line 2659
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 2660
    :catch_d
    move-exception v0

    .line 2661
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2663
    const/4 v1, 0x0

    return v1
.end method

.method public static highTextueSettings()Z
    .registers 1

    .line 229
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    return v0
.end method

.method protected static final inViewX(I)Z
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 2695
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_28

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public static final inViewX(II)Z
    .registers 4
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2711
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_18

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected static final inViewX2(I)Z
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 2699
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    if-lt v0, v1, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final inViewX2(II)Z
    .registers 3
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2715
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-lt v0, p0, :cond_a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-gt v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected static final inViewXBelowZero(I)Z
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 2703
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_28

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method protected static final inViewXBelowZero(II)Z
    .registers 4
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2719
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_18

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected static final inViewX_WholeRegion(II)Z
    .registers 4
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2729
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v0

    add-int/2addr v0, p0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-lt v0, v1, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-gt v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected static final inViewX_WholeRegion2(II)Z
    .registers 3
    .param p0, "nMinX"    # I
    .param p1, "nMaxX"    # I

    .line 2733
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-lt p0, v0, :cond_a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected static final inViewY(I)Z
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 2691
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    if-lt v0, v1, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static final inViewY(II)Z
    .registers 3
    .param p0, "nMinY"    # I
    .param p1, "nMaxY"    # I

    .line 2707
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    if-lt v0, p0, :cond_a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    if-gt v0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected static final inViewY_WholeRegion(II)Z
    .registers 3
    .param p0, "nMinY"    # I
    .param p1, "nMaxY"    # I

    .line 2725
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    if-lt p0, v0, :cond_a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final initDifficulty()V
    .registers 4

    .line 268
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-nez v0, :cond_84

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_84

    .line 269
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->BONUS_DURATION:I

    add-int/2addr v0, v1

    .line 271
    .local v0, "turnID":I
    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>(I)V

    .line 273
    .local v1, "bonusDifficulty":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->INCOME_PRODUCTION:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    .line 274
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MONTHLY_INCOME:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 276
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->LEGACY:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    .line 278
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->MANPOWER:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    .line 279
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    .line 280
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RECRUIT_ARMY_TIME:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    .line 281
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->REGIMENTS_LIMIT:[I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 283
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CONSTRUCTION_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    .line 285
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->CORE_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    .line 286
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->RELIGION_COST:[F

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    .line 288
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 290
    .end local v0    # "turnID":I
    .end local v1    # "bonusDifficulty":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    :cond_84
    return-void
.end method

.method public static final initProvinceData()V
    .registers 2

    .line 1771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1772
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    .line 1773
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    .line 1771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1776
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_19
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1777
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V

    .line 1778
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    .line 1776
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1780
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public static invasionArmy_AddProvince(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 992
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 993
    return-void

    .line 996
    :cond_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 997
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2e

    goto :goto_42

    .line 1001
    :cond_2e
    return-void

    .line 1004
    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1005
    return-void

    .line 1008
    :cond_42
    :goto_42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 1012
    goto :goto_58

    .line 1010
    :catch_54
    move-exception v0

    .line 1011
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1013
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_58
    return-void
.end method

.method public static invasionArmy_Clear()V
    .registers 1

    .line 1042
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1043
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    .line 1044
    return-void
.end method

.method public static invasionArmy_RemoveProvince(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 1029
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-ge v0, v1, :cond_24

    .line 1030
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_21

    .line 1031
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1032
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_25

    .line 1033
    return-void

    .line 1029
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1038
    .end local v0    # "i":I
    :cond_24
    goto :goto_29

    .line 1036
    :catch_25
    move-exception v0

    .line 1037
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1039
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method public static invasionArmy_UndoProvince()V
    .registers 2

    .line 1018
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-lez v0, :cond_15

    .line 1019
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1020
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1024
    :cond_15
    goto :goto_1a

    .line 1022
    :catch_16
    move-exception v0

    .line 1023
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1025
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public static final isAlreadyActiveArmy(Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_1a

    .line 1238
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1239
    const/4 v1, 0x1

    return v1

    .line 1237
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1243
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static loadAiValues()V
    .registers 4

    .line 130
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_1e

    .line 133
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 135
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public static loadAlliancesSpecial_Images()V
    .registers 7

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_147

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gfx/flagsXH/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 420
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_143

    .line 422
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gfx/flagsH/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 423
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_143

    .line 425
    :cond_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gfx/flags/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 426
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->FlagTag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v4, v5, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_143

    .line 429
    :cond_12c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial_Flag:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    const-string v4, "gfx/flagsXH/ran.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_143
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 432
    .end local v0    # "i":I
    :cond_147
    return-void
.end method

.method public static final loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    .registers 7
    .param p0, "nTag"    # Ljava/lang/String;

    .line 1739
    const-string v0, "mods/GameCivs/game/civilizations/"

    const-string v1, "game/civilizations/"

    const-string v2, ".json"

    :try_start_6
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1742
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1744
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1745
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto/16 :goto_12d

    .line 1746
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v5, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1748
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1749
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto/16 :goto_12d

    .line 1750
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1752
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1753
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_12d

    .line 1754
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1756
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-object v0, v1

    .line 1757
    .local v0, "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    nop

    .line 1762
    :goto_12d
    return-object v0

    .line 1759
    .end local v0    # "outCivData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_12e
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V
    :try_end_133
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_133} :catch_134

    return-object v0

    .line 1763
    .end local v3    # "json":Lcom/badlogic/gdx/utils/Json;
    :catch_134
    move-exception v0

    .line 1764
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1767
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V

    return-object v0
.end method

.method public static final loadCursor(Z)V
    .registers 6
    .param p0, "resetToDefault"    # Z

    .line 1591
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_175

    .line 1592
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v3, "gfx/cursor/standard.png"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/drag.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/build.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit2.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/x.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/plus.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/economy.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/tax.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/core.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/religion.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/populationGrowth.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/infrastructure.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/recruit3.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/economy2.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v4, "gfx/cursor/nuke.png"

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-interface {v1, v2, v3, v3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    goto :goto_17e

    .line 1611
    :cond_175
    if-eqz p0, :cond_17e

    .line 1612
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    .line 1614
    :cond_17e
    :goto_17e
    return-void
.end method

.method protected static final loadLanguage()V
    .registers 2

    .line 1485
    invoke-static {}, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->loadLanguages()V

    .line 1487
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 1488
    return-void
.end method

.method public static loadLowSettings()V
    .registers 2

    .line 233
    const-string v0, "settings/LoadTexturesHigh.txt"

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 235
    :try_start_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 236
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 237
    .local v0, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    goto :goto_25

    .line 239
    .end local v0    # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    :catch_21
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 241
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_25
    :goto_25
    goto :goto_29

    .line 244
    :cond_26
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    .line 246
    :goto_29
    return-void
.end method

.method public static final loadProvinceBG(I)V
    .registers 2
    .param p0, "nProvinceID"    # I

    .line 1998
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 1999
    return-void
.end method

.method public static final loadProvincesBG()V
    .registers 2

    .line 1990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v1, :cond_f

    .line 1991
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1994
    .end local v0    # "i":I
    :cond_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCutProvinces()V

    .line 1995
    return-void
.end method

.method protected static final loadSettings()V
    .registers 3

    .line 1429
    const-string v0, "settings/Settings.txt"

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    .line 1431
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSettingsDefault()V

    .line 1434
    :try_start_c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1435
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 1437
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 1438
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2a

    .line 1442
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    :cond_29
    goto :goto_2e

    .line 1440
    :catch_2a
    move-exception v0

    .line 1441
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1444
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Map;->updateDrawProvincesFlags()V

    .line 1445
    return-void
.end method

.method public static final loadSettingsDefault()V
    .registers 4

    .line 1462
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_34

    .line 1466
    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DOUBLE_BORDER:Z

    .line 1467
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v2, 0x2

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    .line 1468
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v3, 0x1

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    .line 1469
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    .line 1470
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CLOUDS:Z

    .line 1471
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/16 v1, 0x1e

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    .line 1472
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CIV_NAMES:I

    .line 1473
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->BORDER_EXTRA_WIDTH:F

    .line 1475
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/16 v1, 0x54

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    .line 1478
    :goto_34
    return-void
.end method

.method public static loadSuggestedCivs(I)Ljava/util/List;
    .registers 7
    .param p0, "provinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3378
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "suggestedCivilizations/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 3379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 3380
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3381
    .local v2, "sOwners":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3383
    .local v3, "sRes":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_6a
    array-length v5, v3

    if-ge v4, v5, :cond_75

    .line 3384
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3383
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 3388
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "sOwners":Ljava/lang/String;
    .end local v3    # "sRes":[Ljava/lang/String;
    .end local v4    # "a":I
    :cond_75
    return-object v0
.end method

.method public static final pathContains(III)Z
    .registers 12
    .param p0, "nProvinceID"    # I
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 2751
    const/4 v0, 0x0

    .line 2753
    .local v0, "output":Z
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v2

    .local v2, "iSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_c
    if-ge v1, v2, :cond_6f

    .line 2754
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, p2, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    if-le v7, p2, :cond_29

    const/4 v7, 0x1

    goto :goto_2a

    :cond_29
    const/4 v7, 0x0

    :goto_2a
    if-eq v4, v7, :cond_6a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    sub-int v7, p2, v7

    mul-int v4, v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v4, v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_6a

    .line 2755
    if-nez v0, :cond_69

    const/4 v5, 0x1

    :cond_69
    move v0, v5

    .line 2753
    :cond_6a
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v3, v1

    move v1, v4

    goto :goto_c

    .line 2759
    .end local v2    # "iSize":I
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_6f
    return v0
.end method

.method public static final pathContains_Cut(III)Z
    .registers 12
    .param p0, "nProvinceID"    # I
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 2763
    const/4 v0, 0x0

    .line 2765
    .local v0, "output":Z
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    if-lt p1, v1, :cond_dc

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    if-gt p1, v1, :cond_dc

    .line 2766
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    if-lt p2, v1, :cond_dc

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    if-gt p2, v1, :cond_dc

    .line 2768
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsSize()I

    move-result v2

    .local v2, "iSize":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_58
    if-ge v1, v2, :cond_dc

    .line 2769
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, p2, :cond_6c

    const/4 v4, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    if-le v7, p2, :cond_7d

    const/4 v7, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v7, 0x0

    :goto_7e
    if-eq v4, v7, :cond_d6

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v7

    sub-int/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    sub-int v7, p2, v7

    mul-int v4, v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsY(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v4, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceCut;

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->getPointsX(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ge p1, v4, :cond_d6

    .line 2770
    if-nez v0, :cond_d5

    const/4 v5, 0x1

    :cond_d5
    move v0, v5

    .line 2768
    :cond_d6
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    move v3, v1

    move v1, v4

    goto/16 :goto_58

    .line 2777
    .end local v2    # "iSize":I
    .end local v3    # "j":I
    .end local v4    # "i":I
    :cond_dc
    return v0
.end method

.method public static regroupArmy_AddProvince(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_17

    .line 1082
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_14

    .line 1083
    return-void

    .line 1081
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1087
    .end local v0    # "i":I
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1090
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1092
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .line 1095
    goto :goto_39

    .line 1093
    :catch_35
    move-exception v0

    .line 1094
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1096
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

.method public static regroupArmy_BuildArmyShadow()V
    .registers 8

    .line 1132
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v0, "numOfArmies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v1, v2, :cond_1a

    .line 1136
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1139
    .end local v1    # "i":I
    :cond_1a
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v1, :cond_91

    .line 1140
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1f
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v1, v2, :cond_91

    .line 1141
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v2

    .line 1143
    .local v2, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v2, :cond_8e

    .line 1144
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->sArmy:Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v7, v1, v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v7, v1, v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v3, v1, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v4, v1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8e} :catch_92

    .line 1140
    .end local v2    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1152
    .end local v0    # "numOfArmies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_91
    goto :goto_96

    .line 1150
    :catch_92
    move-exception v0

    .line 1151
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1153
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_96
    return-void
.end method

.method public static regroupArmy_Clear()V
    .registers 1

    .line 1193
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1194
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1195
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1197
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1198
    return-void
.end method

.method public static regroupArmy_Move()V
    .registers 10

    .line 1157
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v0, :cond_8e

    .line 1158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_8e

    .line 1159
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_a6

    .line 1161
    .local v1, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v1, :cond_8a

    .line 1162
    const/4 v2, 0x0

    .line 1165
    .local v2, "extraY":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_25
    if-ge v3, v0, :cond_47

    .line 1166
    :try_start_27
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3b} :catch_42

    if-ne v4, v5, :cond_3f

    .line 1167
    add-int/lit8 v2, v2, 0x1

    .line 1165
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1170
    .end local v3    # "j":I
    :catch_42
    move-exception v3

    .line 1171
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_43
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_48

    .line 1172
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_47
    nop

    .line 1174
    :goto_48
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    .line 1176
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v5, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    rem-int v6, v0, v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v7, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    const/4 v9, 0x0

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 1158
    .end local v1    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    .end local v2    # "extraY":I
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 1181
    .end local v0    # "i":I
    :cond_8e
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1183
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playMove()V

    .line 1184
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1185
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy(ZZ)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a5} :catch_a6

    .line 1189
    :cond_a5
    goto :goto_aa

    .line 1187
    :catch_a6
    move-exception v0

    .line 1188
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1190
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_aa
    return-void
.end method

.method public static regroupArmy_RemoveProvince(I)V
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 1115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-ge v0, v1, :cond_30

    .line 1116
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_2d

    .line 1117
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1118
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1120
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1121
    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_31

    .line 1122
    return-void

    .line 1115
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1127
    .end local v0    # "i":I
    :cond_30
    goto :goto_35

    .line 1125
    :catch_31
    move-exception v0

    .line 1126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1128
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method public static regroupArmy_UndoProvince()V
    .registers 2

    .line 1100
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v0, :cond_21

    .line 1101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1102
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    .line 1104
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_BuildArmyShadow()V

    .line 1106
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyProvinces:Ljava/util/List;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 1110
    :cond_21
    goto :goto_26

    .line 1108
    :catch_22
    move-exception v0

    .line 1109
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1111
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public static final removeActiveArmy(I)V
    .registers 2
    .param p0, "id"    # I

    .line 1331
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1332
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1334
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v0, :cond_15

    .line 1335
    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1337
    :cond_15
    return-void
.end method

.method public static final removeActiveArmy(Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 1340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_26

    .line 1341
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1342
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1343
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1344
    return-void

    .line 1340
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method public static removeAllianceSpecial(I)V
    .registers 2
    .param p0, "id"    # I

    .line 411
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 414
    goto :goto_a

    .line 412
    :catch_6
    move-exception v0

    .line 413
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 415
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public static removeAllianceSpecial(Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 402
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 403
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 404
    return-void

    .line 401
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method public static final removeCivilization(I)V
    .registers 7
    .param p0, "nRemoveCivID"    # I

    .line 1783
    if-nez p0, :cond_3

    .line 1784
    return-void

    .line 1787
    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 1788
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2c

    .line 1789
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    .line 1792
    :cond_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 1793
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearArmiesCivID(I)V

    .line 1792
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1796
    .end local v0    # "i":I
    :cond_3d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1797
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    .line 1801
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_4b
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_8e

    .line 1802
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivID_Just(I)V

    .line 1804
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-le v2, p0, :cond_72

    .line 1805
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    goto :goto_8b

    .line 1807
    :cond_72
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-ne v2, p0, :cond_8b

    .line 1808
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 1801
    :cond_8b
    :goto_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 1812
    .end local v0    # "i":I
    :cond_8e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8f
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_10f

    .line 1813
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-le v2, p0, :cond_ae

    .line 1814
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_Just(I)V

    goto :goto_c2

    .line 1816
    :cond_ae
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, p0, :cond_c2

    .line 1817
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_Just(I)V

    .line 1818
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    .line 1821
    :cond_c2
    :goto_c2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_cb
    if-ltz v2, :cond_105

    .line 1822
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-le v4, p0, :cond_ef

    .line 1823
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sub-int/2addr v5, v3

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    goto :goto_102

    .line 1825
    :cond_ef
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, p0, :cond_102

    .line 1826
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    .line 1821
    :cond_102
    :goto_102
    add-int/lit8 v2, v2, -0x1

    goto :goto_cb

    .line 1830
    .end local v2    # "j":I
    :cond_105
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCores_AfterRemoveCiv(I)V

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 1834
    .end local v0    # "i":I
    :cond_10f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_110
    :try_start_110
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_122

    .line 1835
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->updateAfterRemoveOfCiv(I)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11f} :catch_123

    .line 1834
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 1839
    .end local v0    # "i":I
    :cond_122
    goto :goto_127

    .line 1837
    :catch_123
    move-exception v0

    .line 1838
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1841
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_127
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAfterRemoveCiv(I)V

    .line 1843
    sput-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 1844
    sput-boolean v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 1845
    return-void
.end method

.method public static saveSettings()V
    .registers 4

    .line 1448
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    .line 1450
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager$ConfigJson;

    const-string v2, "Data"

    const-class v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1453
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v2, "settings/Settings.txt"

    if-eqz v1, :cond_1a

    .line 1454
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_20

    .line 1456
    .end local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1a
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 1458
    .restart local v1    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_20
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 1459
    return-void
.end method

.method public static final saveTextueSettings()V
    .registers 3

    .line 250
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v1, "settings/LoadTexturesHigh.txt"

    if-eqz v0, :cond_d

    .line 251
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_13

    .line 253
    .end local v0    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 256
    .restart local v0    # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public static final setActiveArmy(ILjava/lang/String;)V
    .registers 5
    .param p0, "nProvinceID"    # I
    .param p1, "sKey"    # Ljava/lang/String;

    .line 1247
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    .line 1250
    :try_start_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 1252
    .local v0, "tID":I
    if-ltz v0, :cond_3b

    .line 1253
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    .line 1255
    .local v1, "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 1256
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 1257
    iput p0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1258
    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1260
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3b} :catch_3c

    .line 1265
    .end local v0    # "tID":I
    .end local v1    # "nHA":Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    :cond_3b
    goto :goto_3d

    .line 1263
    :catch_3c
    move-exception v0

    .line 1266
    :goto_3d
    return-void
.end method

.method public static setActiveProvinceID(I)V
    .registers 7
    .param p0, "nActiveProvince"    # I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->dbgSpid(I)V

    if-gez p0, :cond_c

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    .line 450
    :cond_c
    sput p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    .line 452
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v0, v1, :cond_39

    .line 453
    sget-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v4, 0x7d0

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    .line 454
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    const v3, 0x44098000    # 550.0f

    mul-float v2, v2, v3

    float-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    goto :goto_3d

    .line 457
    :cond_34
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    goto :goto_3d

    .line 461
    :cond_39
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    .line 463
    :goto_3d
    return-void
.end method

.method public static final setCursorBuild()V
    .registers 3

    .line 1633
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 1634
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1635
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1637
    :cond_1a
    return-void
.end method

.method public static final setCursorCore()V
    .registers 3

    .line 1689
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    .line 1690
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1691
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1693
    :cond_1b
    return-void
.end method

.method public static final setCursorDefault()V
    .registers 3

    .line 1619
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    if-eqz v0, :cond_1a

    .line 1620
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1621
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1623
    :cond_1a
    return-void
.end method

.method public static final setCursorDrag()V
    .registers 3

    .line 1626
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 1627
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1628
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1630
    :cond_1a
    return-void
.end method

.method public static final setCursorEconomy()V
    .registers 3

    .line 1670
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_3d

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3d

    .line 1671
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2e

    .line 1672
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1673
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_3d

    .line 1675
    :cond_2e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1676
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1679
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static final setCursorInfrastructure()V
    .registers 3

    .line 1710
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1b

    .line 1711
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1712
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1714
    :cond_1b
    return-void
.end method

.method public static final setCursorNuke()V
    .registers 3

    .line 1717
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1b

    .line 1718
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1719
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1721
    :cond_1b
    return-void
.end method

.method public static final setCursorPlus()V
    .registers 3

    .line 1663
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1a

    .line 1664
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1665
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1667
    :cond_1a
    return-void
.end method

.method public static final setCursorPopulationGrowth()V
    .registers 3

    .line 1703
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1b

    .line 1704
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1705
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1707
    :cond_1b
    return-void
.end method

.method public static final setCursorRecruit()V
    .registers 3

    .line 1640
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_5f

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5f

    .line 1641
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2e

    .line 1642
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1643
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_5f

    .line 1645
    :cond_2e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_50

    .line 1646
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1647
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    goto :goto_5f

    .line 1649
    :cond_50
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1650
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1653
    :cond_5f
    :goto_5f
    return-void
.end method

.method public static final setCursorReligion()V
    .registers 3

    .line 1696
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 1697
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1698
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1700
    :cond_1b
    return-void
.end method

.method public static final setCursorTax()V
    .registers 3

    .line 1682
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    .line 1683
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1684
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1686
    :cond_1b
    return-void
.end method

.method public static final setCursorX()V
    .registers 3

    .line 1656
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->loadCursor:Z

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    .line 1657
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCursors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Cursor;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 1658
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeCursorID:I

    .line 1660
    :cond_1a
    return-void
.end method

.method public static setHoveredProvinceID(I)V
    .registers 3
    .param p0, "nHoveredProvinceID"    # I

    .line 468
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-eq v0, v1, :cond_1d

    if-ltz p0, :cond_1d

    .line 469
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iOldHoveredProvinceID:I

    .line 471
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    .line 472
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V

    .line 476
    :cond_1d
    sput p0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 477
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    .line 478
    return-void
.end method

.method public static setInvasionArmyMode()V
    .registers 1

    .line 969
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setInvasionArmyMode(Z)V

    .line 970
    return-void
.end method

.method public static setInvasionArmyMode(Z)V
    .registers 2
    .param p0, "nInvasionArmyMode"    # Z

    .line 973
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eq v0, p0, :cond_24

    .line 974
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    .line 976
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_Clear()V

    .line 977
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 979
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_InvasionArmy()V

    .line 981
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_1d

    .line 982
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_InvasionArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_InvasionArmy;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    goto :goto_24

    .line 985
    :cond_1d
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    .line 988
    :cond_24
    :goto_24
    return-void
.end method

.method public static final setProvinceID_HoverAProvince(II)I
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2339
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_61

    .line 2340
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p0

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2342
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    if-gt v2, v1, :cond_5e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    if-lt v2, v1, :cond_5e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_5e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_5e

    .line 2343
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2344
    return v0

    .line 2339
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2349
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p0

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_112

    .line 2350
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .restart local v1    # "tPosX":I
    :goto_90
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_112

    .line 2351
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 2352
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    sub-int/2addr v2, p0

    int-to-float v2, v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2354
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_10e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_10e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_10e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_10e

    .line 2355
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 2356
    return v0

    .line 2350
    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_90

    .line 2363
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_112
    const/4 v0, -0x1

    return v0
.end method

.method protected static final setProvinceID_IsMouseOverAProvinceID(III)Z
    .registers 8
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nProvinceID"    # I

    .line 2367
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sub-int/2addr v0, p0

    int-to-float v0, v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 2369
    .local v0, "tPosX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v0, :cond_59

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-lt v1, v0, :cond_59

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v1, v3, :cond_59

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v1, v3, :cond_59

    .line 2370
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    neg-int v1, v1

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2371
    return v2

    .line 2375
    :cond_59
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float v1, v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_100

    .line 2376
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2377
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float v1, v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v0, v1

    .line 2379
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    if-gt v1, v3, :cond_100

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    if-lt v1, v3, :cond_100

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-gt v1, v3, :cond_100

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    if-lt v1, v3, :cond_100

    .line 2380
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, p1

    invoke-static {p2, v1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 2381
    return v2

    .line 2387
    :cond_100
    const/4 v1, 0x0

    return v1
.end method

.method public static final setProvinceID_Point(II)I
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v1, :cond_37

    .line 2392
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    if-gt v1, p0, :cond_34

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    if-lt v1, p0, :cond_34

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    if-gt v1, p1, :cond_34

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    if-lt v1, p1, :cond_34

    .line 2393
    invoke-static {v0, p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2394
    return v0

    .line 2391
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2399
    .end local v0    # "i":I
    :cond_37
    int-to-float v0, p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    neg-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c1

    .line 2400
    const/4 v0, 0x0

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .local v1, "tPosX":I
    :goto_5f
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I

    if-ge v0, v2, :cond_c1

    .line 2401
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2402
    int-to-float v2, p0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->checkPosOfClickX(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 2404
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-gt v2, v3, :cond_be

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    if-lt v2, v3, :cond_be

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    if-gt v2, p1, :cond_be

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    if-lt v2, p1, :cond_be

    .line 2405
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v0, v2, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2406
    return v0

    .line 2400
    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 2413
    .end local v0    # "i":I
    .end local v1    # "tPosX":I
    :cond_c1
    const/4 v0, -0x1

    return v0
.end method

.method public static setRegroupArmyMode()V
    .registers 1

    .line 1057
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    .line 1058
    return-void
.end method

.method public static setRegroupArmyMode(Z)V
    .registers 2
    .param p0, "nRegroupArmyMode"    # Z

    .line 1061
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eq v0, p0, :cond_27

    .line 1062
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    .line 1064
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_Clear()V

    .line 1065
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    .line 1067
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_RegroupArmy()V

    .line 1069
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_1d

    .line 1070
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RegroupArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RegroupArmy;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    goto :goto_27

    .line 1073
    :cond_1d
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    .line 1074
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyLine:Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_RegroupLine;

    .line 1077
    :cond_27
    :goto_27
    return-void
.end method

.method public static final setUpdateProvincesInView(Z)V
    .registers 1
    .param p0, "nUpdateProvincesInView"    # Z

    .line 2668
    sput-boolean p0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 2669
    return-void
.end method

.method public static final updateActiveArmy_MoveUnits(Ljava/lang/String;II)V
    .registers 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "oldProvinceID"    # I
    .param p2, "newProvinceID"    # I

    const-string v0, "airhq_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1270
    :cond_9
    :try_start_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v0, p1, :cond_32

    .line 1271
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1272
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1274
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    if-gez v0, :cond_32

    .line 1275
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1279
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v0, v1, :cond_f7

    .line 1280
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v1, p1, :cond_f3

    .line 1281
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 1282
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1284
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_79} :catch_f8

    const-string v2, "rebuildProvinceArmy"

    if-ltz v1, :cond_aa

    .line 1285
    :try_start_7d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 1286
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput p2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 1288
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v1

    if-eqz v1, :cond_f2

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1289
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$1;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_f2

    .line 1298
    :cond_aa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v1, :cond_c2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    if-eqz v1, :cond_c2

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v1, :cond_c2

    const-string v3, "airhq_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f2

    :cond_c2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1299
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    .line 1301
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v1, :cond_da

    .line 1302
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    goto :goto_f2

    .line 1304
    :cond_da
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v1

    if-eqz v1, :cond_f2

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1305
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$2;

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game$2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_f2} :catch_f8

    .line 1314
    :cond_f2
    :goto_f2
    return-void

    .line 1279
    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_33

    .line 1320
    .end local v0    # "i":I
    :cond_f7
    goto :goto_fc

    .line 1318
    :catch_f8
    move-exception v0

    .line 1319
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1321
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_fc
    return-void
.end method

.method public static final updateCivilizationIdeology(ILjava/lang/String;)V
    .registers 7
    .param p0, "nCivID"    # I
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 2809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2810
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2811
    return-void

    .line 2809
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2815
    .end local v0    # "i":I
    :cond_19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 2817
    .local v0, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG(Ljava/lang/String;III)V

    .line 2821
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/Game$5;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_46

    .line 2833
    .end local v0    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_4a

    .line 2831
    :catch_46
    move-exception v0

    .line 2832
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2834
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public static final updateCivilizationIdeology_InGame(ILjava/lang/String;)V
    .registers 7
    .param p0, "nCivID"    # I
    .param p1, "nCivTag"    # Ljava/lang/String;

    .line 2838
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 2840
    .local v0, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG(Ljava/lang/String;III)V

    .line 2842
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Laoc/kingdoms/lukasz/jakowski/Game$6;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 2854
    .end local v0    # "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    goto :goto_31

    .line 2852
    :catch_2d
    move-exception v0

    .line 2853
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2855
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public static final updateDaultScenarioID()V
    .registers 4

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    if-ge v0, v1, :cond_3f

    .line 216
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultScenario:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 217
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 218
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    .line 219
    goto :goto_3f

    .line 215
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static updateDrawArmy()V
    .registers 2

    .line 3461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 3462
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 3461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3464
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method protected static final updateDrawProvince2(I)V
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 2505
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2506
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2507
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2508
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2510
    return-void

    .line 2512
    :cond_24
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2513
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2514
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2516
    return-void

    .line 2518
    :cond_3b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewXBelowZero(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2519
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2520
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2522
    return-void

    .line 2526
    :cond_63
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2527
    return-void
.end method

.method public static final updateDrawProvince_CheckExtra(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 2602
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2603
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-ge v0, v1, :cond_29

    .line 2604
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    if-le v0, v1, :cond_29

    .line 2605
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2609
    :cond_29
    return-void
.end method

.method private static final updateDrawRegionProvinces(I)V
    .registers 6
    .param p0, "iID"    # I

    .line 2475
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Region;

    .line 2477
    .local v0, "region":Laoc/kingdoms/lukasz/jakowski/Region;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_WholeRegion(II)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2478
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_WholeRegion(II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 2480
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2482
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2479
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 2485
    .end local v1    # "i":I
    :cond_4f
    return-void

    .line 2487
    :cond_50
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_WholeRegion2(II)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2488
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5f
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_80

    .line 2489
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setTranslateProvincePosX(I)V

    .line 2491
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceInViewLists(I)V

    .line 2488
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 2494
    .end local v1    # "i":I
    :cond_80
    return-void

    .line 2499
    :cond_81
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_82
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_92

    .line 2500
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawProvince2(I)V

    .line 2499
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 2502
    .end local v1    # "i":I
    :cond_92
    return-void
.end method

.method public static final updateGame()V
    .registers 2

    .line 1495
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3c88893b    # 0.016667f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->deltaTime:F

    .line 1497
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->update()V

    .line 1498
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->update()V

    .line 1500
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-gtz v0, :cond_24

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v0, :cond_29

    .line 1501
    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->update()V

    .line 1504
    :cond_29
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_3e

    .line 1505
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1506
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->update()V

    .line 1510
    :cond_3e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->selectedProvinces_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->update()V

    .line 1511
    return-void
.end method

.method public static final updateHighlitghtProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 8
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 2298
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    if-nez v0, :cond_5

    .line 2299
    return-void

    .line 2302
    :cond_5
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_BackAnimation:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v0, :cond_2b

    .line 2304
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x43af0000    # 350.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2306
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_26

    .line 2311
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2314
    return-void

    .line 2316
    :cond_26
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    goto :goto_4d

    .line 2321
    :cond_2b
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x443b8000    # 750.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42be0000    # 95.0f

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2323
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_49

    .line 2324
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->fDashedLine_Percentage_HighlitedProvinceBorder:F

    .line 2328
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highlightedProvinceBorder_Update:Z

    .line 2329
    return-void

    .line 2332
    :cond_49
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Game;->lDashedLineTime_Percentage_HighlitedProvinceBorder:J

    .line 2334
    :goto_4d
    return-void
.end method

.method protected static final updateHoveredProvince_Hover(II)V
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2239
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2240
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2241
    return-void

    .line 2244
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_93

    if-ltz v0, :cond_15

    .line 2245
    return-void

    .line 2249
    :cond_15
    :try_start_15
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_60

    .line 2251
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_40

    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_IsMouseOverAProvinceID(III)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2252
    return-void

    .line 2255
    :cond_40
    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2257
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-gez v0, :cond_83

    .line 2258
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_83

    .line 2263
    :cond_60
    int-to-float v0, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, p1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2265
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_81

    .line 2266
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    goto :goto_83

    .line 2269
    :cond_81
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2273
    :cond_83
    :goto_83
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;->build()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_88} :catch_89

    .line 2279
    goto :goto_92

    .line 2274
    :catch_89
    move-exception v0

    .line 2275
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_8a
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2276
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 2278
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_93

    .line 2282
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_92
    goto :goto_94

    .line 2280
    :catch_93
    move-exception v0

    .line 2283
    :goto_94
    return-void
.end method

.method protected static final updateHoveredProvince_HoverInMapMode(II)V
    .registers 7
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I

    .line 2193
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2194
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2195
    return-void

    .line 2198
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    if-ltz v0, :cond_15

    .line 2199
    return-void

    .line 2203
    :cond_15
    const/4 v0, -0x1

    :try_start_16
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_55

    .line 2205
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_IsMouseOverAProvinceID(III)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2206
    return-void

    .line 2209
    :cond_35
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2211
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-gez v2, :cond_78

    .line 2212
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_78

    .line 2217
    :cond_55
    int-to-float v2, p0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_HoverAProvince(II)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setHoveredProvinceID(I)V

    .line 2219
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v2, :cond_76

    .line 2220
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    goto :goto_78

    .line 2223
    :cond_76
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2227
    :cond_78
    :goto_78
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->buildHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v2

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_88
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_88} :catch_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_88} :catch_89

    goto :goto_94

    .line 2231
    :catch_89
    move-exception v2

    .line 2232
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2233
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    goto :goto_95

    .line 2228
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_8f
    move-exception v2

    .line 2229
    .local v2, "ex":Ljava/lang/NullPointerException;
    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 2230
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 2234
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_94
    nop

    .line 2235
    :goto_95
    return-void
.end method

.method public static final updateInView_CordsXY()V
    .registers 3

    .line 2681
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY:I

    .line 2682
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY_CordsY_Height:I

    .line 2684
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX:I

    .line 2685
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX_CordsX_Width:I

    .line 2686
    return-void
.end method

.method public static final updateMapDistance()V
    .registers 2

    .line 3214
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3215
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    goto :goto_1d

    .line 3245
    :cond_16
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapDistance:Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;

    .line 3271
    :goto_1d
    return-void
.end method

.method public static final updateProvinceBG_ActiveHoveredProvince()V
    .registers 9

    .line 2082
    const-string v0, "/"

    const-string v1, "scales/"

    const-string v2, "data/"

    const-string v3, "map/"

    :try_start_8
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    if-nez v4, :cond_103

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_HOVERED_SEA_PROVINCE:Z

    if-eqz v4, :cond_103

    .line 2083
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v4, :cond_103

    .line 2084
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 2085
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-eq v4, v5, :cond_103

    .line 2086
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v4, :cond_39

    .line 2087
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    .line 2088
    const/4 v4, 0x0

    sput-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2090
    const/4 v4, -0x1

    sput v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG_LoadedID:I

    .line 2093
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x4

    if-ne v5, v7, :cond_64

    const/4 v5, 0x1

    goto :goto_6f

    :cond_64
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v5, v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    :goto_6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 2094
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v2

    if-ne v2, v7, :cond_b3

    goto :goto_be

    :cond_b3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v2, v3

    float-to-int v6, v2

    :goto_be
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 2097
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 2098
    .local v1, "convertedPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 2100
    .end local v1    # "convertedPixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredProvinceBG:Laoc/kingdoms/lukasz/textures/Image;

    .line 2102
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 2103
    const/4 v0, 0x0

    .line 2105
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_102} :catch_104

    .line 2106
    nop

    .line 2115
    .end local v0    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_103
    goto :goto_108

    .line 2113
    :catch_104
    move-exception v0

    .line 2114
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2116
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_108
    return-void
.end method

.method public static final updateProvinceBorder(I)V
    .registers 7
    .param p0, "i"    # I

    .line 1911
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 1912
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p0, v1, :cond_46

    .line 1913
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_42

    const/4 v2, 0x1

    :cond_42
    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    goto :goto_7c

    .line 1916
    :cond_46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_71

    const/4 v2, 0x1

    :cond_71
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    .line 1911
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1919
    .end local v0    # "j":I
    :cond_7f
    return-void
.end method

.method protected static final updateProvinceInViewLists(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 2530
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2532
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_1c

    .line 2533
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 2535
    :cond_1c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2536
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 2539
    :cond_30
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2541
    :goto_39
    return-void
.end method

.method public static final updateProvincesInView()V
    .registers 4

    .line 2420
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    if-nez v0, :cond_5

    .line 2421
    return-void

    .line 2423
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 2426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_23

    .line 2427
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2426
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2430
    .end local v1    # "i":I
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_3e

    .line 2431
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2430
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 2434
    .end local v1    # "i":I
    :cond_3e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3f
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_59

    .line 2435
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2434
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 2438
    .end local v1    # "i":I
    :cond_59
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5a
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_74

    .line 2439
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 2442
    .end local v1    # "i":I
    :cond_74
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2443
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2444
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2445
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2447
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2448
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2449
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2450
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_91
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_ea

    .line 2453
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Region;

    .line 2455
    .local v1, "region":Laoc/kingdoms/lukasz/jakowski/Region;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 2456
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v2

    if-nez v2, :cond_e4

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v2

    if-eqz v2, :cond_cc

    goto :goto_e4

    .line 2459
    :cond_cc
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 2460
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewXBelowZero(II)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 2461
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawRegionProvinces(I)V

    goto :goto_e7

    .line 2457
    :cond_e4
    :goto_e4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawRegionProvinces(I)V

    .line 2452
    .end local v1    # "region":Laoc/kingdoms/lukasz/jakowski/Region;
    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 2467
    .end local v0    # "i":I
    :cond_ea
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2468
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2469
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2470
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2471
    return-void
.end method

.method public static final updateSimpleTask()V
    .registers 3

    .line 1558
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_2b

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 1560
    :try_start_a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->simpleTasks:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "st:cls="

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    .line 1563
    goto :goto_27

    .line 1561
    :catch_23
    move-exception v1

    .line 1562
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_24
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_2b

    .line 1558
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1567
    .end local v0    # "i":I
    :cond_2a
    goto :goto_2f

    .line 1565
    :catch_2b
    move-exception v0

    .line 1566
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1568
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method


# virtual methods
.method public final clearProvincesInView()V
    .registers 4

    .line 2612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 2613
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawProvince(Z)V

    .line 2612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2616
    .end local v0    # "i":I
    :cond_12
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    .line 2617
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    .line 2618
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    .line 2619
    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    .line 2621
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2622
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lSeaProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2623
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lWastelandProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2624
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lExtraProvincesInView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2625
    return-void
.end method

.method public final getProvinceAnimation_Active_Data()Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;
    .registers 2

    .line 2945
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    return-object v0
.end method
