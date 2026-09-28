.class public Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Scenarios_Campaign_VerticalScenarios.java"


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private iXPos:I

.field private iYPos:I


# direct methods
.method public constructor <init>()V
    .registers 19

    .line 25
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 20
    const/4 v9, 0x0

    iput v9, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iXPos:I

    .line 21
    iput v9, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iYPos:I

    .line 22
    const/16 v0, 0x1e0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    .line 23
    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iHeight:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 28
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    .line 30
    .local v11, "paddingTopBot":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x4

    .line 33
    .local v12, "buttonPaddingY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    neg-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iYPos:I

    .line 34
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v1, v11, 0x2

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    .line 35
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iHeight:I

    .line 37
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iXPos:I

    .line 39
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iYPos:I

    .line 41
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    .line 42
    .local v13, "buttonPadding":I
    move v14, v11

    .line 43
    .local v14, "buttonX":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    .line 45
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .line 47
    .local v1, "activeX":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_67
    if-ltz v2, :cond_bc

    .line 48
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    if-eqz v3, :cond_b9

    .line 49
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    invoke-direct {v3, v14, v0, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;-><init>(III)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v2, v3, :cond_a7

    .line 52
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 55
    :cond_a7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v3, v13

    add-int/2addr v0, v3

    .line 47
    :cond_b9
    add-int/lit8 v2, v2, -0x1

    goto :goto_67

    .line 59
    .end local v2    # "i":I
    :cond_bc
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-ge v0, v2, :cond_106

    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "tW":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d8

    .line 64
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v4, v13

    add-int/2addr v2, v4

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 67
    .end local v3    # "i":I
    :cond_d8
    sub-int/2addr v2, v13

    .line 69
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 71
    .end local v0    # "buttonY":I
    .local v3, "buttonY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_df
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_103

    .line 72
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 74
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    :cond_103
    move v7, v1

    move v15, v3

    goto :goto_108

    .line 59
    .end local v2    # "tW":I
    .end local v3    # "buttonY":I
    .local v0, "buttonY":I
    :cond_106
    move v15, v0

    move v7, v1

    .line 78
    .end local v0    # "buttonY":I
    .end local v1    # "activeX":I
    .local v7, "activeX":I
    .local v15, "buttonY":I
    :goto_108
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    iget v1, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v2, v15

    invoke-direct {v0, v9, v9, v1, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget v2, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iXPos:I

    iget v4, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v16, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v17, v7

    .end local v7    # "activeX":I
    .local v17, "activeX":I
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 82
    iput-boolean v9, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->drawScrollPositionAlways2:Z

    .line 84
    move/from16 v1, v17

    .end local v17    # "activeX":I
    .restart local v1    # "activeX":I
    if-eqz v1, :cond_13a

    .line 85
    neg-int v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->setMenuPosY(I)V

    .line 87
    :cond_13a
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 91
    iget v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iXPos:I

    add-int/2addr v0, p2

    iget v1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iYPos:I

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iWidth:I

    iget v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios_Campaign_VerticalScenarios;->iHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 96
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 98
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 99
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 104
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 106
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_Scenarios()V

    .line 107
    return-void
.end method
