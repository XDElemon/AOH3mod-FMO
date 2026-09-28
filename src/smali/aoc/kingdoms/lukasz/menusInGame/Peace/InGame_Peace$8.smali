.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;
.source "InGame_Peace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;IIIIIIZI)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "isClickable"    # Z
    .param p10, "imageID"    # I

    .line 325
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;-><init>(Ljava/lang/String;IIIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 328
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_36

    .line 329
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "EnforceDemands"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Confirm"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->setText(Ljava/lang/String;)V

    goto :goto_70

    .line 333
    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v0, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    .line 334
    .local v0, "tCivID":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v2, v2, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    .line 336
    .local v2, "tCivID2":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->enforceDemands(Z)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 337
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Peace(Z)V

    .line 338
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wars()V

    .line 340
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 341
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 343
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "PeaceTreaty"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 347
    .end local v0    # "tCivID":I
    .end local v2    # "tCivID2":I
    :cond_70
    :goto_70
    return-void
.end method

.method public buildElementHover()V
    .registers 8

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    const/4 v3, 0x0

    const-string v4, "SignPeaceTreaty"

    if-nez v2, :cond_3d

    .line 369
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->warPeace:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_85

    .line 375
    :cond_3d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Confirm"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->warPeace:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 381
    :goto_85
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 382
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 351
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    if-eqz v0, :cond_9

    .line 352
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 355
    :cond_9
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getIsHovered()Z
    .registers 2

    .line 360
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->enforceDemandsConfirm:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
