.class Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGame;
.source "Menu_LoadGames_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "id"    # I

    .line 127
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$2;->this$0:Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGame;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 130
    sget-object v0, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGamesKey:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$2;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVED_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 133
    return-void
.end method
