.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ScenarioCreateAllianceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 131
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;

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
    .registers 2

    .line 134
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->editAlliance:Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->incTypeOfAlliance()V

    .line 135
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos()V

    .line 136
    return-void
.end method
