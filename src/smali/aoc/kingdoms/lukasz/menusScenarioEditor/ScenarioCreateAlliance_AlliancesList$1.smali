.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ScenarioCreateAlliance_AlliancesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 39
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 42
    new-instance v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CREATE_ALLIANCE_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 45
    return-void
.end method
