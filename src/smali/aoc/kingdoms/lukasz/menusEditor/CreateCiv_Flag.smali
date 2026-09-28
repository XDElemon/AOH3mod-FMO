.class public Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "CreateCiv_Flag.java"


# direct methods
.method public constructor <init>()V
    .registers 33

    .line 29
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 33
    .local v12, "paddingLeft":I
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 35
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v14, v1, 0xa

    .line 36
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v15, v1, 0xa

    .line 38
    .local v15, "menuY":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    .line 41
    .local v16, "menuW":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    .line 42
    .local v17, "buttonYPadding":I
    move/from16 v1, v17

    .line 44
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v28, v2, 0x4

    .line 45
    .local v28, "textPosX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v29, v2, 0x2c

    .line 48
    .local v29, "buttonH":I
    new-instance v11, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Back"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v2, v12, 0x2

    sub-int v9, v16, v2

    const/4 v10, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move v7, v12

    move v8, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v1, v2

    .line 64
    new-instance v11, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$2;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v18, 0x1

    const-string v4, "<<"

    move-object v2, v11

    move v8, v1

    move/from16 v10, v29

    move/from16 v30, v14

    move-object v14, v11

    .end local v14    # "menuX":I
    .local v30, "menuX":I
    move/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v23, v12, v3

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v16, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v25, v3, v4

    const/16 v27, 0x1

    const-string v20, ""

    const/16 v21, 0x1

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v22, v28

    move/from16 v24, v1

    move/from16 v26, v29

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$4;

    sub-int v3, v16, v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v23, v3, v4

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const-string v20, ">>"

    const/16 v22, -0x1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$4;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v1, v2

    .line 129
    const/4 v2, 0x1

    move v14, v2

    .local v14, "i":I
    :goto_bf
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    if-ge v14, v2, :cond_119

    .line 130
    new-instance v11, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$5;

    mul-int/lit8 v2, v12, 0x2

    sub-int v9, v16, v2

    const/16 v18, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    move-object v2, v11

    move-object/from16 v3, p0

    move/from16 v6, v28

    move v7, v12

    move v8, v1

    move/from16 v10, v29

    move/from16 v31, v15

    move-object v15, v11

    .end local v15    # "menuY":I
    .local v31, "menuY":I
    move/from16 v11, v18

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$5;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v1, v2

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 129
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v31

    goto :goto_bf

    .end local v31    # "menuY":I
    .restart local v15    # "menuY":I
    :cond_119
    move/from16 v31, v15

    .line 180
    .end local v14    # "i":I
    .end local v15    # "menuY":I
    .restart local v31    # "menuY":I
    const/4 v2, 0x0

    move v14, v1

    move v1, v2

    .local v1, "i":I
    .local v14, "buttonY":I
    :goto_11e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c6

    .line 181
    new-instance v15, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$6;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v11, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    move-object v2, v15

    move-object/from16 v3, p0

    move/from16 v6, v28

    move v7, v12

    move v8, v14

    move/from16 v10, v29

    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$6;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v23, v12, v3

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v16, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x3

    sub-int v25, v3, v4

    const/16 v27, 0x1

    const-string v20, ""

    const/16 v21, 0x1

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v22, v28

    move/from16 v24, v14

    move/from16 v26, v29

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$8;

    sub-int v3, v16, v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v23, v3, v4

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const-string v20, "UP"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$8;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 253
    new-instance v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$9;

    sub-int v3, v16, v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v23, v3, v4

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const-string v20, "X"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$9;-><init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 285
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v14, v2

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11e

    .line 288
    .end local v1    # "i":I
    :cond_1c6
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CustomizeFlag"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, v7

    move v4, v13

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v31

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v13

    mul-int/lit8 v15, v31, 0x2

    sub-int v6, v1, v15

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v30

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 289
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 295
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 296
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 297
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 298
    return-void
.end method
