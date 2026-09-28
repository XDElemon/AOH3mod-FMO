.class Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGameX;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "id"    # I

    .line 136
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$3;->this$0:Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGameX;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List;->savedGamesKey:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Menu_LoadGames_List$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->deleteSavedGameKey:Ljava/lang/String;

    .line 141
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->DELETE_SAVE:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    .line 142
    return-void
.end method
