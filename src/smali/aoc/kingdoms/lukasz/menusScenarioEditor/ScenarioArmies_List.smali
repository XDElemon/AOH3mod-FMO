.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioArmies_List.java"


# direct methods
.method public constructor <init>()V
    .registers 41

    .line 33
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v12, v1, v2

    .line 37
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    .line 39
    .local v13, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 41
    .local v14, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v1, 0x2

    .line 42
    .local v15, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v16, v1, v2

    .line 44
    .local v16, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    .line 45
    .local v17, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 46
    .local v1, "buttonY":I
    move v2, v12

    .line 48
    .local v2, "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 50
    .local v11, "textTitleH":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_6e

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_70

    :cond_6e
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_70
    move/from16 v18, v3

    .line 51
    .local v18, "buttonH":I
    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    float-to-int v10, v3

    .line 54
    .local v10, "c0W":I
    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 56
    .end local v2    # "buttonX":I
    .local v19, "buttonX":I
    new-instance v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Clear"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v20, v14, v3

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v3, v2

    move-object/from16 v4, p0

    move v8, v12

    move v9, v1

    move/from16 v22, v10

    .end local v10    # "c0W":I
    .local v22, "c0W":I
    move/from16 v10, v20

    move/from16 v20, v13

    move v13, v11

    .end local v11    # "textTitleH":I
    .local v13, "textTitleH":I
    .local v20, "titleHeight":I
    move/from16 v11, v21

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 72
    invoke-static {v1, v14, v13}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v1, v2

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, "tempAdded":I
    const/4 v3, 0x0

    .line 80
    .local v3, "nCivID":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_e9

    .line 81
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    move/from16 v21, v3

    goto :goto_eb

    .line 80
    :cond_e9
    move/from16 v21, v3

    .line 84
    .end local v3    # "nCivID":I
    .local v21, "nCivID":I
    :goto_eb
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_ed
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v10, v3, :cond_1e4

    .line 85
    const/4 v3, 0x0

    move v9, v3

    .local v9, "j":I
    :goto_f3
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v9, v3, :cond_1db

    .line 86
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v3, :cond_1d0

    .line 87
    invoke-static/range {v21 .. v21}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 90
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v3, v4

    const/16 v24, 0x1

    move-object v3, v8

    move-object/from16 v4, p0

    move v5, v10

    move v6, v9

    move v7, v12

    move-object v11, v8

    move v8, v1

    move/from16 v36, v9

    .end local v9    # "j":I
    .local v36, "j":I
    move/from16 v9, v23

    move/from16 v37, v10

    .end local v10    # "i":I
    .local v37, "i":I
    move/from16 v10, v24

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$3;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v35, 0x1

    const/16 v27, 0x1

    const-string v28, "+"

    const/16 v30, -0x1

    move-object/from16 v23, v3

    move-object/from16 v24, p0

    move/from16 v25, v37

    move/from16 v26, v36

    move/from16 v32, v1

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$4;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v27, 0x0

    const-string v28, "-"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    goto :goto_1d4

    .line 87
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_1cb
    move/from16 v36, v9

    move/from16 v37, v10

    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    goto :goto_1d4

    .line 86
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_1d0
    move/from16 v36, v9

    move/from16 v37, v10

    .line 85
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    :goto_1d4
    add-int/lit8 v9, v36, 0x1

    move/from16 v10, v37

    const/4 v11, 0x1

    .end local v36    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_f3

    .end local v37    # "i":I
    .restart local v10    # "i":I
    :cond_1db
    move/from16 v36, v9

    move/from16 v37, v10

    .line 84
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v37    # "i":I
    add-int/lit8 v10, v37, 0x1

    const/4 v11, 0x1

    .end local v37    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_ed

    :cond_1e4
    move/from16 v37, v10

    .line 249
    .end local v10    # "i":I
    const-string v11, "None"

    if-nez v2, :cond_21e

    .line 250
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v14, v3

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v6, -0x1

    move-object v3, v10

    move v7, v12

    move v8, v1

    move/from16 v24, v2

    move-object v2, v10

    .end local v2    # "tempAdded":I
    .local v24, "tempAdded":I
    move/from16 v10, v23

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_220

    .line 249
    .end local v24    # "tempAdded":I
    .restart local v2    # "tempAdded":I
    :cond_21e
    move/from16 v24, v2

    .line 253
    .end local v2    # "tempAdded":I
    .restart local v24    # "tempAdded":I
    :goto_220
    const/4 v2, 0x0

    .line 256
    .end local v24    # "tempAdded":I
    .restart local v2    # "tempAdded":I
    invoke-static {v1, v14, v13}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    .line 259
    const/4 v3, 0x0

    move v10, v3

    .restart local v10    # "i":I
    :goto_23d
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v10, v3, :cond_336

    .line 260
    const/4 v3, 0x0

    move v9, v3

    .restart local v9    # "j":I
    :goto_243
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v9, v3, :cond_32e

    .line 261
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_324

    .line 262
    invoke-static/range {v21 .. v21}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v3

    if-eqz v3, :cond_31f

    .line 263
    add-int/lit8 v2, v2, 0x1

    .line 265
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$5;

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v3, v4

    const/16 v24, 0x1

    move-object v3, v8

    move-object/from16 v4, p0

    move v5, v10

    move v6, v9

    move v7, v12

    move-object/from16 v38, v8

    move v8, v1

    move/from16 v36, v9

    .end local v9    # "j":I
    .restart local v36    # "j":I
    move/from16 v9, v23

    move/from16 v37, v10

    .end local v10    # "i":I
    .restart local v37    # "i":I
    move/from16 v10, v24

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    move-object/from16 v3, v38

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$6;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v35, 0x1

    const/16 v27, 0x1

    const-string v28, "+"

    const/16 v30, -0x1

    move-object/from16 v23, v3

    move-object/from16 v24, p0

    move/from16 v25, v37

    move/from16 v26, v36

    move/from16 v32, v1

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$7;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v27, 0x0

    const-string v28, "-"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    goto :goto_328

    .line 262
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_31f
    move/from16 v36, v9

    move/from16 v37, v10

    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    goto :goto_328

    .line 261
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_324
    move/from16 v36, v9

    move/from16 v37, v10

    .line 260
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    :goto_328
    add-int/lit8 v9, v36, 0x1

    move/from16 v10, v37

    .end local v36    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_243

    .end local v37    # "i":I
    .restart local v10    # "i":I
    :cond_32e
    move/from16 v36, v9

    move/from16 v37, v10

    .line 259
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v37    # "i":I
    add-int/lit8 v10, v37, 0x1

    .end local v37    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_23d

    :cond_336
    move/from16 v37, v10

    .line 396
    .end local v10    # "i":I
    if-nez v2, :cond_36e

    .line 397
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v14, v3

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v6, -0x1

    move-object v3, v10

    move v7, v12

    move v8, v1

    move/from16 v24, v2

    move-object v2, v10

    .end local v2    # "tempAdded":I
    .restart local v24    # "tempAdded":I
    move/from16 v10, v23

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_370

    .line 396
    .end local v24    # "tempAdded":I
    .restart local v2    # "tempAdded":I
    :cond_36e
    move/from16 v24, v2

    .line 400
    .end local v2    # "tempAdded":I
    .restart local v24    # "tempAdded":I
    :goto_370
    const/4 v2, 0x0

    .line 403
    .end local v24    # "tempAdded":I
    .restart local v2    # "tempAdded":I
    invoke-static {v1, v14, v13}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    .line 406
    const/4 v3, 0x0

    move v10, v3

    .restart local v10    # "i":I
    :goto_38d
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v10, v3, :cond_486

    .line 407
    const/4 v3, 0x0

    move v9, v3

    .restart local v9    # "j":I
    :goto_393
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v9, v3, :cond_47e

    .line 408
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_474

    .line 409
    invoke-static/range {v21 .. v21}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isUnitBest(II)Z

    move-result v3

    if-eqz v3, :cond_46f

    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 412
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$8;

    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v23, v3, v4

    const/16 v24, 0x1

    move-object v3, v8

    move-object/from16 v4, p0

    move v5, v10

    move v6, v9

    move v7, v12

    move-object/from16 v39, v8

    move v8, v1

    move/from16 v36, v9

    .end local v9    # "j":I
    .restart local v36    # "j":I
    move/from16 v9, v23

    move/from16 v37, v10

    .end local v10    # "i":I
    .restart local v37    # "i":I
    move/from16 v10, v24

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$8;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V

    move-object/from16 v3, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$9;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v35, 0x1

    const/16 v27, 0x1

    const-string v28, "+"

    const/16 v30, -0x1

    move-object/from16 v23, v3

    move-object/from16 v24, p0

    move/from16 v25, v37

    move/from16 v26, v36

    move/from16 v32, v1

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$9;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    new-instance v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$10;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v31, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v33, v4, v5

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v34, v4, 0x2

    const/16 v27, 0x0

    const-string v28, "-"

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v35}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$10;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIZLjava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v3, v3, v17

    add-int/2addr v1, v3

    goto :goto_478

    .line 409
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_46f
    move/from16 v36, v9

    move/from16 v37, v10

    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    goto :goto_478

    .line 408
    .end local v36    # "j":I
    .end local v37    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    :cond_474
    move/from16 v36, v9

    move/from16 v37, v10

    .line 407
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v36    # "j":I
    .restart local v37    # "i":I
    :goto_478
    add-int/lit8 v9, v36, 0x1

    move/from16 v10, v37

    .end local v36    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_393

    .end local v37    # "i":I
    .restart local v10    # "i":I
    :cond_47e
    move/from16 v36, v9

    move/from16 v37, v10

    .line 406
    .end local v9    # "j":I
    .end local v10    # "i":I
    .restart local v37    # "i":I
    add-int/lit8 v10, v37, 0x1

    .end local v37    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_38d

    :cond_486
    move/from16 v37, v10

    .line 543
    .end local v10    # "i":I
    if-nez v2, :cond_4be

    .line 544
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v9, v14, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v6, -0x1

    move-object v3, v10

    move v7, v12

    move v8, v1

    move/from16 v23, v2

    move-object v2, v10

    .end local v2    # "tempAdded":I
    .local v23, "tempAdded":I
    move v10, v11

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v10, v1

    goto :goto_4c1

    .line 543
    .end local v23    # "tempAdded":I
    .restart local v2    # "tempAdded":I
    :cond_4be
    move/from16 v23, v2

    .end local v2    # "tempAdded":I
    .restart local v23    # "tempAdded":I
    move v10, v1

    .line 547
    .end local v1    # "buttonY":I
    .local v10, "buttonY":I
    :goto_4c1
    const/4 v11, 0x0

    .line 549
    .end local v23    # "tempAdded":I
    .local v11, "tempAdded":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v16

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 551
    .local v9, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v14, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    const-string v1, ""

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-direct {v2, v1, v8, v8, v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v1, p0

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    move v6, v9

    move-object v7, v0

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v25, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v8, v23

    move/from16 v23, v9

    .end local v9    # "menuHeight":I
    .local v23, "menuHeight":I
    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 555
    iput-boolean v0, v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->drawScrollPositionAlways:Z

    .line 556
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 560
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 561
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 562
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 564
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 565
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 576
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_12

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public updateLanguage()V
    .registers 4

    .line 569
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 571
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_22

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_22

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_22
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LandUnits"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 572
    return-void
.end method
