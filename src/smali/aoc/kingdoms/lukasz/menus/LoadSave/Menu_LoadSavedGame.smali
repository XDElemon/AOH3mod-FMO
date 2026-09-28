.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSavedGame.java"


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 39
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    .line 37
    const/16 v1, 0xfa

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    .line 49
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    .line 40
    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Loading"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " #1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->setLoadText(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 55
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadAction()V

    .line 56
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b0

    .line 57
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d40c0c1

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 58
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 61
    sget-object v3, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v5, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int v6, p3, v0

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    const v3, 0x3f733333    # 0.95f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 69
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 71
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->getPosY()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    sget v7, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 73
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 76
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 79
    :cond_b0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 81
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 82
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 86
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    int-to-float v0, v0

    const v2, 0x3f6147ae    # 0.88f

    mul-float v0, v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iNumOfSteps:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3df5c28f    # 0.12f

    add-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 88
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int v5, p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    add-int v6, p3, v0

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e19999a    # 0.15f

    invoke-direct {v7, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 89
    return-void
.end method

.method public final loadAction()V
    .registers 6

    .line 99
    const-string v0, "Loading"

    const/4 v1, 0x1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->setLoadText(Ljava/lang/String;)V

    .line 102
    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_384

    :pswitch_2d
    goto/16 :goto_357

    .line 700
    :pswitch_2f
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afNewGame:Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 701
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 703
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 705
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 708
    new-instance v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$2;

    const-string v3, "LoadGame_RebuildMenus"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$2;-><init>(Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_79

    const/4 v3, 0x1

    sput-boolean v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afSuspended:Z

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAllFromProvinces()V

    const-string v2, "AIRDBG"

    const-string v3, "AF_CALL:loadfinal"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Airforce()Z

    const/4 v3, 0x0

    sput-boolean v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afSuspended:Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAllDivisions()V

    const-string v2, "AIRDBG"

    const-string v3, "AF_CALL:resync_load"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const-string v0, "ld:after"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ldArmyCount(Ljava/lang/String;)V

    .line 722
    goto/16 :goto_357

    .line 695
    :pswitch_80
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->initNewGame()V

    .line 696
    goto/16 :goto_357

    .line 690
    :pswitch_85
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->loadStats(Ljava/lang/String;Z)V

    .line 691
    goto/16 :goto_357

    .line 685
    :pswitch_98
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Budget()V

    .line 686
    goto/16 :goto_357

    .line 680
    :pswitch_9d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_Colonization;->initData()V

    .line 681
    goto/16 :goto_357

    .line 676
    :pswitch_a2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuild_ProvincesOccupied()V

    .line 677
    goto/16 :goto_357

    .line 672
    :pswitch_a7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuild_ProvincesUnderSiege()V

    .line 673
    goto/16 :goto_357

    .line 668
    :pswitch_ac
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadBuildColonization()V

    .line 669
    goto/16 :goto_357

    .line 663
    :pswitch_b1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Diplomacy()V

    .line 664
    goto/16 :goto_357

    .line 658
    :pswitch_b6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_CreateNewArmy()V

    .line 659
    goto/16 :goto_357

    .line 654
    :pswitch_bb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AI_Merge()V

    .line 655
    goto/16 :goto_357

    .line 649
    :pswitch_c0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_RebelsMoveUnits()V

    .line 650
    goto/16 :goto_357

    .line 645
    :pswitch_c5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Rebels()V

    .line 646
    goto/16 :goto_357

    .line 640
    :pswitch_ca
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData_Load2()V

    .line 641
    goto/16 :goto_357

    .line 635
    :pswitch_d1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    const-string v0, "ld:prev59"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ldArmyCount(Ljava/lang/String;)V

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_59()V

    .line 636
    const-string v0, "ld:post59"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ldArmyCount(Ljava/lang/String;)V

    goto/16 :goto_357

    .line 631
    :pswitch_e2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_58()V

    .line 632
    goto/16 :goto_357

    .line 627
    :pswitch_e9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_57()V

    .line 628
    goto/16 :goto_357

    .line 623
    :pswitch_f0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_56()V

    .line 624
    goto/16 :goto_357

    .line 618
    :pswitch_f7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_InitCivsData_CoresReligionGenerals()V

    .line 619
    goto/16 :goto_357

    .line 614
    :pswitch_fc
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvinceData()V

    .line 615
    goto/16 :goto_357

    .line 609
    :pswitch_101
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_UpdateDiplomacyPerMonth()V

    .line 610
    goto/16 :goto_357

    .line 605
    :pswitch_106
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildIncome()V

    .line 606
    goto/16 :goto_357

    .line 601
    :pswitch_10d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsStability()V

    .line 602
    goto/16 :goto_357

    .line 597
    :pswitch_114
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildArmyPosition()V

    .line 598
    goto/16 :goto_357

    .line 593
    :pswitch_11b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V

    .line 594
    goto/16 :goto_357

    .line 589
    :pswitch_122
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities()V

    .line 590
    goto/16 :goto_357

    .line 585
    :pswitch_129
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V

    .line 586
    goto/16 :goto_357

    .line 580
    :pswitch_12e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildManpower()V

    .line 581
    goto/16 :goto_357

    .line 575
    :pswitch_135
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGovernmentBuildings_LoadSavedGame()V

    .line 576
    goto/16 :goto_357

    .line 568
    :pswitch_13c
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->initUniqueCivsGoods()V

    .line 570
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    .line 571
    goto/16 :goto_357

    .line 564
    :pswitch_144
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    .line 565
    goto/16 :goto_357

    .line 559
    :pswitch_149
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsMoveUnits()V

    .line 560
    goto/16 :goto_357

    .line 554
    :pswitch_14e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapBattles_Update()V

    .line 555
    goto/16 :goto_357

    .line 550
    :pswitch_153
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapBattles()V

    .line 551
    goto/16 :goto_357

    .line 545
    :pswitch_158
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_64()V

    .line 546
    goto/16 :goto_357

    .line 540
    :pswitch_15f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_62(Z)V

    .line 541
    goto/16 :goto_357

    .line 535
    :pswitch_166
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_60()V

    .line 536
    goto/16 :goto_357

    .line 530
    :pswitch_16d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats3()V

    .line 531
    goto/16 :goto_357

    .line 526
    :pswitch_172
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats2()V

    .line 527
    goto/16 :goto_357

    .line 522
    :pswitch_177
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Stats()V

    .line 523
    goto/16 :goto_357

    .line 518
    :pswitch_17c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadPlayer_Data()V

    .line 519
    goto/16 :goto_357

    .line 514
    :pswitch_181
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_UpdatePlayersCivID()V

    .line 515
    goto/16 :goto_357

    .line 509
    :pswitch_186
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Vassals()Z

    .line 510
    goto/16 :goto_357

    .line 503
    :pswitch_18b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildVassals()V

    .line 504
    goto/16 :goto_357

    .line 499
    :pswitch_192
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData_Load()V

    .line 500
    goto/16 :goto_357

    .line 494
    :pswitch_199
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsNukesProduction()V

    .line 495
    goto/16 :goto_357

    .line 489
    :pswitch_19e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildAlliancesSpecial()V

    .line 490
    goto/16 :goto_357

    .line 485
    :pswitch_1a5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadAlliancesSpecial_Images()V

    .line 486
    goto/16 :goto_357

    .line 481
    :pswitch_1aa
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_AllianceSpecial()V

    .line 482
    goto/16 :goto_357

    .line 475
    :pswitch_1af
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelationsDamage()V

    .line 476
    goto/16 :goto_357

    .line 471
    :pswitch_1b4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelationsImprove()V

    .line 472
    goto/16 :goto_357

    .line 467
    :pswitch_1b9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRivals()V

    .line 468
    goto/16 :goto_357

    .line 463
    :pswitch_1be
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveGuarantee()V

    .line 464
    goto/16 :goto_357

    .line 459
    :pswitch_1c3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveMilitaryAccess()V

    .line 460
    goto/16 :goto_357

    .line 455
    :pswitch_1c8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveNonAggression()V

    .line 456
    goto/16 :goto_357

    .line 451
    :pswitch_1cd
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveTruce()V

    .line 452
    goto/16 :goto_357

    .line 447
    :pswitch_1d2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveDefensive()V

    .line 448
    goto/16 :goto_357

    .line 443
    :pswitch_1d7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveAlliances()V

    .line 444
    goto/16 :goto_357

    .line 438
    :pswitch_1dc
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelations2()V

    .line 439
    goto/16 :goto_357

    .line 434
    :pswitch_1e1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveRelations()V

    .line 435
    goto/16 :goto_357

    .line 429
    :pswitch_1e6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveWars_BuildData()V

    .line 430
    goto/16 :goto_357

    .line 425
    :pswitch_1eb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSaveWars()V

    .line 426
    goto/16 :goto_357

    .line 419
    :pswitch_1f0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData3()V

    .line 420
    goto/16 :goto_357

    .line 415
    :pswitch_1f5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData2()V

    .line 416
    goto/16 :goto_357

    .line 411
    :pswitch_1fa
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsData()V

    .line 412
    goto/16 :goto_357

    .line 406
    :pswitch_1ff
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsVariables2()V

    .line 407
    goto/16 :goto_357

    .line 402
    :pswitch_204
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsEventsVariables()V

    .line 403
    goto/16 :goto_357

    .line 396
    :pswitch_209
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesPlagues()V

    .line 397
    goto/16 :goto_357

    .line 392
    :pswitch_20e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_MapPlagues()V

    .line 393
    goto/16 :goto_357

    .line 386
    :pswitch_213
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRecruitArmy()V

    .line 387
    goto/16 :goto_357

    .line 382
    :pswitch_218
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRecruitArmyCreate()V

    .line 383
    goto/16 :goto_357

    .line 374
    :pswitch_21d
    sget v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesArmy_MoreFiles(I)Z

    move-result v0

    if-eqz v0, :cond_357

    .line 375
    return-void

    .line 367
    :pswitch_22a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsGeneralsNotAssigned()V

    .line 368
    goto/16 :goto_357

    .line 362
    :pswitch_22f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsMilitary()V

    .line 363
    goto/16 :goto_357

    .line 358
    :pswitch_234
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsMilitaryBonuses()V

    .line 359
    goto/16 :goto_357

    .line 354
    :pswitch_239
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsInnovation()V

    .line 355
    goto/16 :goto_357

    .line 350
    :pswitch_23e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsInnovationBonuses()V

    .line 351
    goto/16 :goto_357

    .line 346
    :pswitch_243
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsEconomy()V

    .line 347
    goto/16 :goto_357

    .line 342
    :pswitch_248
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsEconomyBonuses()V

    .line 343
    goto/16 :goto_357

    .line 338
    :pswitch_24d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsAdm()V

    .line 339
    goto/16 :goto_357

    .line 334
    :pswitch_252
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsAdvisorsAdmBonuses()V

    .line 335
    goto/16 :goto_357

    .line 330
    :pswitch_257
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRulers_Bonuses()V

    .line 331
    goto/16 :goto_357

    .line 326
    :pswitch_25c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsRulers()V

    .line 327
    goto/16 :goto_357

    .line 320
    :pswitch_261
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsGoldenAges()V

    .line 321
    goto/16 :goto_357

    .line 316
    :pswitch_266
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsTemporaryBonuses()V

    .line 317
    goto/16 :goto_357

    .line 308
    :pswitch_26b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceWonderConstruction()V

    .line 309
    goto/16 :goto_357

    .line 304
    :pswitch_270
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceReligionConversion()V

    .line 305
    goto/16 :goto_357

    .line 300
    :pswitch_275
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceCoreCreation()V

    .line 301
    goto/16 :goto_357

    .line 296
    :pswitch_27a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestInfrastructure()V

    .line 297
    goto/16 :goto_357

    .line 292
    :pswitch_27f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestGrowthRate()V

    .line 293
    goto/16 :goto_357

    .line 288
    :pswitch_284
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestManpower()V

    .line 289
    goto/16 :goto_357

    .line 284
    :pswitch_289
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestTax()V

    .line 285
    goto/16 :goto_357

    .line 280
    :pswitch_28e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceInvestDaysLeft()V

    .line 281
    goto/16 :goto_357

    .line 274
    :pswitch_293
    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 276
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceConstructionBuilding()V

    .line 277
    goto/16 :goto_357

    .line 268
    :pswitch_29a
    sget v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvincesBuildings(I)Z

    move-result v0

    if-eqz v0, :cond_357

    .line 269
    return-void

    .line 264
    :pswitch_2a7
    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I

    .line 265
    goto/16 :goto_357

    .line 260
    :pswitch_2ab
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLoans()V

    .line 261
    goto/16 :goto_357

    .line 256
    :pswitch_2b0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLegacies()V

    .line 257
    goto/16 :goto_357

    .line 252
    :pswitch_2b5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsResearchProgress()V

    .line 253
    goto/16 :goto_357

    .line 240
    :pswitch_2ba
    new-instance v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;

    const-string v3, "buildCivilizationsRegions"

    invoke-direct {v2, p0, v3}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;-><init>(Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;Ljava/lang/String;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 246
    goto/16 :goto_357

    .line 236
    :pswitch_2c6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvincePopulationData()V

    .line 237
    goto/16 :goto_357

    .line 232
    :pswitch_2cb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Population()V

    .line 233
    goto/16 :goto_357

    .line 225
    :pswitch_2d0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels()V

    .line 226
    goto/16 :goto_357

    .line 221
    :pswitch_2d5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_7()V

    .line 222
    goto/16 :goto_357

    .line 217
    :pswitch_2dc
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProvinceIsCapital()V

    .line 218
    goto/16 :goto_357

    .line 212
    :pswitch_2e1
    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->buildProvinceUnderSiege_Load()V

    .line 213
    goto/16 :goto_357

    .line 208
    :pswitch_2e6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->buildProvinceCores()V

    .line 209
    goto/16 :goto_357

    .line 204
    :pswitch_2eb
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData10()V

    .line 205
    goto/16 :goto_357

    .line 200
    :pswitch_2f0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData9()V

    .line 201
    goto/16 :goto_357

    .line 196
    :pswitch_2f5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData8()V

    .line 197
    goto/16 :goto_357

    .line 192
    :pswitch_2fa
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData7()V

    .line 193
    goto/16 :goto_357

    .line 188
    :pswitch_2ff
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData6()V

    .line 189
    goto :goto_357

    .line 184
    :pswitch_303
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData5()V

    .line 185
    goto :goto_357

    .line 180
    :pswitch_307
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData4()V

    .line 181
    goto :goto_357

    .line 176
    :pswitch_30b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData3()V

    .line 177
    goto :goto_357

    .line 172
    :pswitch_30f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData2()V

    .line 173
    goto :goto_357

    .line 168
    :pswitch_313
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_ProvinceData()V

    .line 169
    goto :goto_357

    .line 162
    :pswitch_317
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    .line 163
    goto :goto_357

    .line 158
    :pswitch_31b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_BuildTechTree()V

    .line 159
    goto :goto_357

    .line 153
    :pswitch_31f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsUnlockedAdvantages()V

    .line 154
    goto :goto_357

    .line 149
    :pswitch_323
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsLaws()V

    .line 150
    goto :goto_357

    .line 145
    :pswitch_327
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_CivsUnlockedTechnologies()V

    .line 146
    goto :goto_357

    .line 141
    :pswitch_32b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_InitCivsData()V

    .line 142
    goto :goto_357

    .line 134
    :pswitch_32f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs4()V

    .line 135
    goto :goto_357

    .line 130
    :pswitch_333
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs3()V

    .line 131
    goto :goto_357

    .line 126
    :pswitch_337
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs2()V

    .line 127
    goto :goto_357

    .line 122
    :pswitch_33b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_B()V

    .line 123
    goto :goto_357

    .line 118
    :pswitch_341
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_A()V

    .line 119
    goto :goto_357

    .line 114
    :pswitch_347
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Civs()V

    .line 115
    goto :goto_357

    .line 110
    :pswitch_34b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->loadSave_Details()V

    .line 111
    goto :goto_357

    .line 104
    :pswitch_34f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearData()V

    .line 106
    sput v3, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavingGame;->SAVE_FILE_ID:I
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_356} :catch_358

    .line 107
    nop

    .line 733
    :cond_357
    :goto_357
    goto :goto_37e

    .line 730
    :catch_358
    move-exception v2

    .line 731
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 732
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 735
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_37e
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->iStepID:I

    .line 736
    return-void

    :pswitch_data_384
    .packed-switch 0x0
        :pswitch_34f
        :pswitch_34b
        :pswitch_347
        :pswitch_341
        :pswitch_33b
        :pswitch_337
        :pswitch_333
        :pswitch_32f
        :pswitch_32b
        :pswitch_327
        :pswitch_323
        :pswitch_31f
        :pswitch_31b
        :pswitch_317
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_313
        :pswitch_30f
        :pswitch_30b
        :pswitch_307
        :pswitch_303
        :pswitch_2ff
        :pswitch_2fa
        :pswitch_2f5
        :pswitch_2f0
        :pswitch_2eb
        :pswitch_2e6
        :pswitch_2e1
        :pswitch_2dc
        :pswitch_2d5
        :pswitch_2d0
        :pswitch_2d
        :pswitch_2cb
        :pswitch_2c6
        :pswitch_2ba
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2b5
        :pswitch_2b0
        :pswitch_2ab
        :pswitch_2a7
        :pswitch_29a
        :pswitch_293
        :pswitch_28e
        :pswitch_289
        :pswitch_284
        :pswitch_27f
        :pswitch_27a
        :pswitch_275
        :pswitch_270
        :pswitch_26b
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_266
        :pswitch_261
        :pswitch_2d
        :pswitch_25c
        :pswitch_257
        :pswitch_252
        :pswitch_24d
        :pswitch_2d
        :pswitch_248
        :pswitch_243
        :pswitch_23e
        :pswitch_239
        :pswitch_234
        :pswitch_22f
        :pswitch_22a
        :pswitch_2d
        :pswitch_21d
        :pswitch_2d
        :pswitch_218
        :pswitch_213
        :pswitch_2d
        :pswitch_20e
        :pswitch_209
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_204
        :pswitch_1ff
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_1fa
        :pswitch_1f5
        :pswitch_1f0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_1eb
        :pswitch_1e6
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_1e1
        :pswitch_1dc
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_1d7
        :pswitch_1d2
        :pswitch_1cd
        :pswitch_1c8
        :pswitch_1c3
        :pswitch_1be
        :pswitch_1b9
        :pswitch_1b4
        :pswitch_1af
        :pswitch_1aa
        :pswitch_1a5
        :pswitch_19e
        :pswitch_199
        :pswitch_2d
        :pswitch_192
        :pswitch_18b
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_186
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_181
        :pswitch_17c
        :pswitch_177
        :pswitch_172
        :pswitch_16d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_166
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_15f
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_158
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_153
        :pswitch_14e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_149
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_144
        :pswitch_13c
        :pswitch_2d
        :pswitch_135
        :pswitch_2d
        :pswitch_12e
        :pswitch_129
        :pswitch_122
        :pswitch_11b
        :pswitch_114
        :pswitch_10d
        :pswitch_106
        :pswitch_101
        :pswitch_fc
        :pswitch_f7
        :pswitch_f0
        :pswitch_e9
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_e2
        :pswitch_2d
        :pswitch_d1
        :pswitch_ca
        :pswitch_c5
        :pswitch_2d
        :pswitch_2d
        :pswitch_c0
        :pswitch_2d
        :pswitch_2d
        :pswitch_bb
        :pswitch_2d
        :pswitch_2d
        :pswitch_b6
        :pswitch_2d
        :pswitch_b1
        :pswitch_2d
        :pswitch_ac
        :pswitch_2d
        :pswitch_a7
        :pswitch_2d
        :pswitch_a2
        :pswitch_2d
        :pswitch_9d
        :pswitch_2d
        :pswitch_2d
        :pswitch_98
        :pswitch_2d
        :pswitch_2d
        :pswitch_85
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_80
        :pswitch_2f
    .end packed-switch
.end method

.method public setLoadText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadingName:Ljava/lang/String;

    .line 93
    return-void
.end method
