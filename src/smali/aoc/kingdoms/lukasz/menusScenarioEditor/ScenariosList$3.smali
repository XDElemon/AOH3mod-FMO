.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;
.source "ScenariosList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "scenarioID"    # I

    .line 97
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Author:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sAuthor:Ljava/lang/String;

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    .line 102
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Name:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sName:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenariosList$3;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    .line 105
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    .line 108
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CIVILIZATIONS:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    .line 109
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 110
    return-void
.end method
