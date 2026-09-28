.class Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;
.source "ScenariosList_NewGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "scenarioID"    # I

    .line 45
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;-><init>(III)V

    return-void
.end method


# virtual methods
.method public setIsHovered(Z)V
    .registers 3
    .param p1, "isHovered"    # Z

    .line 48
    if-eqz p1, :cond_9

    .line 49
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    goto :goto_d

    .line 52
    :cond_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;->activeDescID:I

    .line 55
    :goto_d
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->setIsHovered(Z)V

    .line 56
    return-void
.end method
