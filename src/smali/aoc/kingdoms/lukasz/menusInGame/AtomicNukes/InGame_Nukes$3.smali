.class Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_AtomicBomb;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;II)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 138
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/button/Button_AtomicBomb;-><init>(II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_19

    .line 145
    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_BuildAtomicBomb()V

    .line 147
    :goto_19
    return-void
.end method
