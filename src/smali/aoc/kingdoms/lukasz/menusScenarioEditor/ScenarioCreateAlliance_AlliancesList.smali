.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioCreateAlliance_AlliancesList.java"


# direct methods
.method public constructor <init>()V
    .registers 31

    .line 24
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v1, 0x2

    .line 28
    .local v12, "paddingLeft":I
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 30
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x4

    .line 31
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v15, v1, v2

    .line 33
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 34
    .local v16, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 36
    .local v1, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    .line 39
    .local v17, "menuWidth":I
    new-instance v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "CreateAlliance"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v2, v12, 0x2

    sub-int v7, v17, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v2, v9

    move-object/from16 v3, p0

    move v5, v12

    move v6, v1

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 49
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_5e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_e0

    .line 50
    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x4

    mul-int/lit8 v2, v12, 0x2

    sub-int v2, v17, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v9, v2, v3

    const/16 v18, 0x1

    move-object v2, v10

    move-object/from16 v3, p0

    move v7, v12

    move v8, v1

    move/from16 v28, v14

    move-object v14, v10

    .end local v14    # "menuX":I
    .local v28, "menuX":I
    move/from16 v10, v18

    move/from16 v29, v11

    .end local v11    # "i":I
    .local v29, "i":I
    invoke-direct/range {v2 .. v11}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Remove"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v17, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v12

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v3, v4

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v26, 0x1

    const/16 v22, -0x1

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v24, v1

    move/from16 v27, v29

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 49
    add-int/lit8 v11, v29, 0x1

    move/from16 v14, v28

    .end local v29    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_5e

    .end local v28    # "menuX":I
    .restart local v14    # "menuX":I
    :cond_e0
    move/from16 v28, v14

    .line 92
    .end local v11    # "i":I
    .end local v14    # "menuX":I
    .restart local v28    # "menuX":I
    new-instance v7, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, ""

    const/high16 v3, 0x3f800000    # 1.0f

    move v9, v1

    .end local v1    # "buttonY":I
    .local v9, "buttonY":I
    move-object v1, v7

    move v4, v13

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v13, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v13

    mul-int/lit8 v2, v15, 0x2

    sub-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v28

    move/from16 v5, v17

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 93
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

    .line 104
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 107
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 108
    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iX"    # I
    .param p3, "iY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iTranslateX"    # I
    .param p7, "iTranslateY"    # I

    .line 98
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 99
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 100
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 114
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 115
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Alliances"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 116
    return-void
.end method
