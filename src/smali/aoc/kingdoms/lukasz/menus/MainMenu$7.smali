.class Laoc/kingdoms/lukasz/menus/MainMenu$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Z

    .line 246
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menus/MainMenu$7;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 248
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->steamFriends:Lcom/codedisaster/steamworks/SteamFriends;

    const v1, 0x3198e0

    sget-object v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->None:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    invoke-virtual {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends;->activateGameOverlayToStore(ILcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;)V

    .line 249
    return-void
.end method
