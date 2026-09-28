.class Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.source "Scenarios_Campaign_Horizontal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "flipX"    # Z

    .line 67
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal;

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

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 71
    return-void
.end method

.method public updateLanguage()V
    .registers 3

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_Horizontal$1;->setText(Ljava/lang/String;)V

    .line 76
    return-void
.end method
