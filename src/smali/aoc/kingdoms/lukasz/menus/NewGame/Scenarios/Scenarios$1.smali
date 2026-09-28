.class Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.source "Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "flipX"    # Z

    .line 64
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 67
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    if-nez v0, :cond_23

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    if-eqz v0, :cond_9

    goto :goto_23

    .line 75
    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 77
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    .line 78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_33

    .line 68
    :cond_23
    :goto_23
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    .line 70
    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 80
    :goto_33
    return-void
.end method

.method public updateLanguage()V
    .registers 3

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "PLAY"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;->setText(Ljava/lang/String;)V

    .line 85
    return-void
.end method
