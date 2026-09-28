.class Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_Nukes;
.source "InGame_Nukes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 156
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_Nukes;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_19

    .line 163
    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_BuildAtomicBomb()V

    .line 165
    :goto_19
    return-void
.end method

.method public buildElementHover()V
    .registers 2

    .line 169
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;->getHoverBuildAtomicBomb()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$4;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 170
    return-void
.end method
