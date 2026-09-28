.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult$12;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;
.source "InGame_SendInsult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;Ljava/lang/String;IIIIIZI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "imageID"    # I

    .line 252
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 255
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;->confirm()V

    .line 256
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 260
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->getHoverInsult(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult$12;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 261
    return-void
.end method

.method public getSFX()I
    .registers 2

    .line 265
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY_CLICK:I

    return v0
.end method
