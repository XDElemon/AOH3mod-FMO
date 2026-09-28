.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_UIScale.java"


# direct methods
.method public constructor <init>()V
    .registers 26

    .line 26
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v14, v1, v2

    .line 30
    .local v14, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    .line 32
    .local v15, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 34
    .local v2, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v1, v3

    .line 35
    .local v16, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v17, v1, v3

    .line 37
    .local v17, "menuY":I
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 39
    .local v18, "buttonYPadding":I
    mul-int/lit8 v1, v18, 0x2

    .line 40
    .local v1, "buttonY":I
    move/from16 v19, v14

    .line 43
    .local v19, "buttonX":I
    new-instance v13, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Back"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v4, v14, 0x2

    sub-int v10, v3, v4

    const/4 v11, 0x1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v3, v13

    move-object/from16 v4, p0

    move v8, v14

    move v9, v1

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v20, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v18, 0x2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 52
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "UIScale"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v6, v4, 0x4

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v9, v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v10, v4, v8

    const-string v11, ""

    move-object v4, v3

    move v8, v1

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 55
    new-instance v12, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v4, v14, 0x2

    sub-int v10, v3, v4

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    const/4 v11, 0x0

    if-nez v3, :cond_d4

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-nez v3, :cond_d4

    const/16 v21, 0x1

    goto :goto_d6

    :cond_d4
    const/16 v21, 0x0

    :goto_d6
    const-string v5, "0"

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/16 v22, 0x1

    const/16 v23, 0x44

    move-object v3, v12

    move-object/from16 v4, p0

    move v8, v14

    move v9, v1

    move/from16 v11, v22

    move-object/from16 v24, v12

    move/from16 v12, v23

    move/from16 v22, v15

    move-object v15, v13

    .end local v15    # "titleHeight":I
    .local v22, "titleHeight":I
    move/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v3, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v18

    add-int/2addr v1, v3

    .line 68
    new-instance v13, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$3;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v4, v14, 0x2

    sub-int v10, v3, v4

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v3, :cond_11c

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-nez v3, :cond_11c

    const/16 v21, 0x1

    goto :goto_11e

    :cond_11c
    const/16 v21, 0x0

    :goto_11e
    const-string v5, "1"

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x5a

    move-object v3, v13

    move-object/from16 v4, p0

    move v8, v14

    move v9, v1

    move-object/from16 v23, v15

    move-object v15, v13

    move/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v18

    add-int/2addr v1, v3

    .line 81
    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$4;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v4, v14, 0x2

    sub-int v10, v3, v4

    const/16 v12, 0x6e

    sget-boolean v13, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    const-string v5, "2"

    move-object v3, v15

    move-object/from16 v4, p0

    move v9, v1

    invoke-direct/range {v3 .. v13}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale$4;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v18

    add-int v10, v1, v3

    .line 95
    .end local v1    # "buttonY":I
    .local v10, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v3, v17, 0x2

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 97
    .local v11, "tMenuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v12, 0x0

    invoke-direct {v1, v12, v12, v2, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v3, v1, v12, v12, v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v4, v1, 0xa

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v5, v1, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v13, v2

    .end local v2    # "menuWidth":I
    .local v13, "menuWidth":I
    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v13

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 101
    iput-boolean v12, v1, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->drawScrollPositionAlways:Z

    .line 102
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 106
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 107
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 108
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_UIScale;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 113
    return-void
.end method
