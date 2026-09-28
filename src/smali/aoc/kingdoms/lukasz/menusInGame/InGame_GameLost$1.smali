.class Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.source "InGame_GameLost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "flipX"    # Z

    .line 36
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_GameLost;

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

    .line 39
    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 40
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 45
    return-void
.end method
