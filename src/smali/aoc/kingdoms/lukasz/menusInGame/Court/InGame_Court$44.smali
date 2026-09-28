.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$44;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;
.source "InGame_Court.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;IILjava/lang/String;IIIILjava/lang/String;)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "sName"    # Ljava/lang/String;
    .param p5, "imageID"    # I
    .param p6, "iCivID"    # I
    .param p7, "iHireModeID"    # I
    .param p8, "iAdvisorType"    # I
    .param p9, "sIMG"    # Ljava/lang/String;

    .line 1275
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$44;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor;-><init>(IILjava/lang/String;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 1278
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_22

    .line 1279
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_AdvisorRecruit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    if-nez v0, :cond_1b

    .line 1280
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AdvisorRecruit(Z)V

    goto :goto_22

    .line 1283
    :cond_1b
    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    .line 1284
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AdvisorRecruit()V

    .line 1287
    :cond_22
    :goto_22
    return-void
.end method

.method public actionElementPPM()V
    .registers 3

    .line 1291
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_10

    .line 1292
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->FIRE_ID:I

    .line 1293
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->FIRE_ADVISOR:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    .line 1295
    :cond_10
    return-void
.end method
