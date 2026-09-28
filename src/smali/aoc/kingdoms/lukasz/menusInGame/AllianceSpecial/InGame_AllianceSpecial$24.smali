.class Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_HRE_Reform_Red;
.source "InGame_AllianceSpecial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "sDesc"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "imageID"    # I
    .param p8, "reformID"    # I

    .line 721
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;->this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_HRE_Reform_Red;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 724
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_23

    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    if-ne v0, v1, :cond_23

    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 725
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_2e

    .line 728
    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AllianceSpecialReform(II)V

    .line 730
    :goto_2e
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 734
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;->reformID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getHoverReform(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$24;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 735
    return-void
.end method
