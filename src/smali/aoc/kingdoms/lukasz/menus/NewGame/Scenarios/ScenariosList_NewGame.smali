.class public Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenariosList_NewGame.java"


# static fields
.field public static iYPos:I


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private iXPos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    .line 24
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 19
    const/4 v9, 0x0

    iput v9, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    .line 21
    const/16 v0, 0x1e0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    .line 22
    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 27
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    .line 29
    .local v11, "paddingTopBot":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x4

    .line 31
    .local v12, "buttonPaddingY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    neg-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    .line 32
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v12, 0x2

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    .line 35
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    .line 37
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    .line 38
    .local v13, "buttonPadding":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    .line 39
    .local v0, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x3

    .line 41
    .local v14, "buttonY":I
    const/4 v1, 0x0

    .line 43
    .local v1, "activeX":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_5b
    if-ltz v2, :cond_b0

    .line 44
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    if-nez v3, :cond_ad

    .line 45
    new-instance v3, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;

    invoke-direct {v3, v8, v0, v14, v2}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame$1;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;III)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v2, v3, :cond_9b

    .line 60
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

    .line 63
    :cond_9b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v3, v13

    add-int/2addr v0, v3

    .line 43
    :cond_ad
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b

    .line 67
    .end local v2    # "i":I
    :cond_b0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-ge v0, v2, :cond_fa

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "tW":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_cc

    .line 72
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v4, v13

    add-int/2addr v2, v4

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 75
    .end local v3    # "i":I
    :cond_cc
    sub-int/2addr v2, v13

    .line 77
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 79
    .end local v0    # "buttonX":I
    .local v3, "buttonX":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_f7

    .line 80
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 82
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3

    :cond_f7
    move v7, v1

    move v15, v3

    goto :goto_fc

    .line 67
    .end local v2    # "tW":I
    .end local v3    # "buttonX":I
    .local v0, "buttonX":I
    :cond_fa
    move v15, v0

    move v7, v1

    .line 86
    .end local v0    # "buttonX":I
    .end local v1    # "activeX":I
    .local v7, "activeX":I
    .local v15, "buttonX":I
    :goto_fc
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getButtonHeight()I

    move-result v1

    mul-int/lit8 v2, v14, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getButtonHeight()I

    move-result v0

    mul-int/lit8 v1, v14, 0x2

    add-int v5, v0, v1

    const/16 v16, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v17, v7

    .end local v7    # "activeX":I
    .local v17, "activeX":I
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 88
    iput-boolean v9, v8, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->drawScrollPositionAlways:Z

    .line 90
    move/from16 v1, v17

    .end local v17    # "activeX":I
    .restart local v1    # "activeX":I
    if-eqz v1, :cond_132

    .line 91
    neg-int v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->setMenuPosX(I)V

    .line 93
    :cond_132
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

    .line 97
    iget v0, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iXPos:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iWidth:I

    iget v3, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iHeight:I

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 104
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 105
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 110
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_Scenarios()V

    .line 113
    return-void
.end method
