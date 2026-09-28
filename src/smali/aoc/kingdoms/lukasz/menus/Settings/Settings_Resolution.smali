.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_Resolution.java"


# direct methods
.method public constructor <init>()V
    .registers 25

    .line 38
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 41
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v12, v0, v1

    .line 42
    .local v12, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    .line 44
    .local v13, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 46
    .local v14, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v0, v1

    .line 47
    .local v15, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v16, v0, v1

    .line 49
    .local v16, "menuY":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 51
    .local v17, "buttonYPadding":I
    mul-int/lit8 v18, v17, 0x2

    .line 52
    .local v18, "buttonY":I
    move/from16 v19, v12

    .line 55
    .local v19, "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v1, v12, 0x2

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v18

    move/from16 v21, v13

    move-object v13, v9

    .end local v13    # "titleHeight":I
    .local v21, "titleHeight":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v17, 0x2

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 64
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Resolution"

    invoke-virtual {v1, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v14, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v18

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 67
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Max"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v1, v12, 0x2

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v18

    move/from16 v22, v15

    move-object v15, v9

    .end local v15    # "menuX":I
    .local v22, "menuX":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v17

    add-int v18, v18, v0

    .line 81
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_106
    const/16 v0, 0x1a

    if-ge v15, v0, :cond_17d

    .line 82
    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v1, v12, 0x2

    sub-int v7, v0, v1

    const/4 v8, 0x1

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v18

    move/from16 v23, v12

    move-object v12, v9

    .end local v12    # "paddingLeft":I
    .local v23, "paddingLeft":I
    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 102
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v17

    add-int v18, v18, v0

    .line 81
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v23

    goto :goto_106

    .end local v23    # "paddingLeft":I
    .restart local v12    # "paddingLeft":I
    :cond_17d
    move/from16 v23, v12

    .line 105
    .end local v12    # "paddingLeft":I
    .end local v15    # "i":I
    .restart local v23    # "paddingLeft":I
    const/4 v0, 0x0

    .line 107
    .end local v18    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    move v9, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .local v9, "buttonY":I
    :goto_186
    if-ge v1, v2, :cond_1c2

    .line 108
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    if-ge v9, v0, :cond_1bf

    .line 109
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    move v9, v0

    .line 107
    :cond_1bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_186

    .line 113
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_1c2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v1, v16, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 115
    .local v12, "tMenuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v15, 0x0

    invoke-direct {v0, v15, v15, v14, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v1, v0, v15, v15, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v0, 0xa

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v4, v14

    move v5, v12

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 119
    iput-boolean v15, v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->drawScrollPositionAlways:Z

    .line 120
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

    .line 124
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 125
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 126
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

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

    .line 128
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 130
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 131
    return-void
.end method

.method public getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .registers 15
    .param p1, "id"    # I

    .line 134
    const/16 v0, 0x400

    const/16 v1, 0x500

    const/16 v2, 0x300

    const/16 v3, 0x384

    const/16 v4, 0x41a

    const/16 v5, 0x800

    const/16 v6, 0x1400

    const/16 v7, 0x438

    const/16 v8, 0x640

    const/16 v9, 0x870

    const/16 v10, 0x780

    const/16 v11, 0xa00

    const/16 v12, 0x5a0

    packed-switch p1, :pswitch_data_e2

    .line 189
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v10, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 186
    :pswitch_23
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x320

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 184
    :pswitch_2d
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v1

    .line 182
    :pswitch_33
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 180
    :pswitch_3b
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v2, v1, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v2

    .line 178
    :pswitch_41
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x556

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 176
    :pswitch_49
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v12, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 174
    :pswitch_4f
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v12, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 172
    :pswitch_55
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v8, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 170
    :pswitch_5b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x4b0

    invoke-direct {v0, v8, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 168
    :pswitch_63
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x690

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 166
    :pswitch_6b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x700

    const/16 v2, 0x540

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 164
    :pswitch_75
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x740

    const/16 v2, 0x570

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 162
    :pswitch_7f
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v10, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 160
    :pswitch_85
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v10, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 158
    :pswitch_8b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x600

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 156
    :pswitch_93
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v11, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 154
    :pswitch_99
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v11, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 152
    :pswitch_9f
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v11, v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 150
    :pswitch_a5
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v11, v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 148
    :pswitch_ab
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v11, v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 146
    :pswitch_b1
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0xd70

    invoke-direct {v0, v1, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 144
    :pswitch_b9
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0xf00

    invoke-direct {v0, v1, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 142
    :pswitch_c1
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x1000

    invoke-direct {v0, v1, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 140
    :pswitch_c9
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v6, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 138
    :pswitch_cf
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0xb40

    invoke-direct {v0, v6, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    .line 136
    :pswitch_d7
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v1, 0x1e00

    const/16 v2, 0x10e0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object v0

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_cf
        :pswitch_c9
        :pswitch_c1
        :pswitch_b9
        :pswitch_b1
        :pswitch_ab
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
        :pswitch_93
        :pswitch_8b
        :pswitch_85
        :pswitch_7f
        :pswitch_75
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_41
        :pswitch_3b
        :pswitch_33
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method
