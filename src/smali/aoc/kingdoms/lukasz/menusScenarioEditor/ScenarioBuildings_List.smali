.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioBuildings_List.java"


# instance fields
.field public iProvinceID:I


# direct methods
.method public constructor <init>()V
    .registers 27

    .line 29
    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 27
    const/4 v12, 0x0

    iput v12, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 32
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v0, 0x2

    .line 33
    .local v14, "paddingLeft":I
    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 35
    .local v15, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x4

    .line 36
    .local v16, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v17, v0, v1

    .line 38
    .local v17, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v0, 0x2

    .line 39
    .local v18, "buttonYPadding":I
    move/from16 v0, v18

    .line 41
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v19

    .line 43
    .local v19, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v20, v1, 0x4

    .line 45
    .local v20, "textPosX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_40

    .line 46
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    iput v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    goto :goto_43

    .line 49
    :cond_40
    const/4 v1, -0x1

    iput v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    .line 52
    :goto_43
    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    const/16 v21, 0x1

    if-ltz v1, :cond_10f

    .line 54
    const/4 v1, 0x0

    move/from16 v25, v1

    move v1, v0

    move/from16 v0, v25

    .local v0, "i":I
    .local v1, "buttonY":I
    :goto_4f
    :try_start_4f
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_104

    if-ge v0, v2, :cond_102

    .line 55
    const/4 v2, 0x0

    move/from16 v22, v1

    move v10, v2

    .end local v1    # "buttonY":I
    .local v10, "j":I
    .local v22, "buttonY":I
    :goto_57
    :try_start_57
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v10, v1, :cond_f4

    .line 56
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v1, :cond_ed

    .line 57
    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    if-nez v1, :cond_af

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v1, v1, v10

    if-ltz v1, :cond_af

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v2, v2, v10

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_af

    :cond_ac
    move/from16 v23, v10

    goto :goto_ef

    .line 58
    :cond_af
    :goto_af
    new-instance v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    mul-int/lit8 v1, v14, 0x2

    sub-int v8, v19, v1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v4, v0

    move v5, v10

    move v6, v14

    move/from16 v7, v22

    move-object v12, v9

    move/from16 v9, v23

    move/from16 v23, v10

    .end local v10    # "j":I
    .local v23, "j":I
    move/from16 v10, v24

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;ZIIIIIZZ)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_e8} :catch_fd

    add-int v1, v1, v18

    add-int v22, v22, v1

    goto :goto_ef

    .line 56
    .end local v23    # "j":I
    .restart local v10    # "j":I
    :cond_ed
    move/from16 v23, v10

    .line 55
    .end local v10    # "j":I
    .restart local v23    # "j":I
    :goto_ef
    add-int/lit8 v10, v23, 0x1

    const/4 v12, 0x0

    .end local v23    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_57

    :cond_f4
    move/from16 v23, v10

    .line 54
    .end local v10    # "j":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v22

    const/4 v12, 0x0

    goto/16 :goto_4f

    .line 116
    .end local v0    # "i":I
    :catch_fd
    move-exception v0

    move-object v1, v0

    move/from16 v0, v22

    goto :goto_10a

    .line 118
    .end local v22    # "buttonY":I
    .restart local v1    # "buttonY":I
    :cond_102
    move v9, v1

    goto :goto_110

    .line 116
    :catch_104
    move-exception v0

    move/from16 v25, v1

    move-object v1, v0

    move/from16 v0, v25

    .line 117
    .local v0, "buttonY":I
    .local v1, "ex":Ljava/lang/Exception;
    :goto_10a
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v9, v0

    goto :goto_110

    .line 52
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_10f
    move v9, v0

    .line 122
    .end local v0    # "buttonY":I
    .local v9, "buttonY":I
    :goto_110
    new-instance v6, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v6

    move v3, v15

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v4, v15, v17

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v15

    mul-int/lit8 v1, v17, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v11, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->iProvinceID:I

    if-ltz v1, :cond_12f

    const/4 v8, 0x1

    goto :goto_130

    :cond_12f
    const/4 v8, 0x0

    :goto_130
    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, v16

    move/from16 v5, v19

    move v6, v0

    move-object v7, v13

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 123
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

    .line 134
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 137
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 138
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

    .line 128
    add-int v0, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v1, p3, v1

    add-int v1, v1, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    add-int v2, p5, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move-object v10, p1

    move/from16 v11, p4

    invoke-static {p1, v0, v1, v11, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 129
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v5, p2, p6

    add-int v6, p3, p7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, p5, v0

    const/4 v9, 0x1

    move-object v3, p1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    .line 130
    return-void
.end method

.method public updateLanguage()V
    .registers 4

    .line 144
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 145
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioBuildings_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_16

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_16
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 146
    return-void
.end method
