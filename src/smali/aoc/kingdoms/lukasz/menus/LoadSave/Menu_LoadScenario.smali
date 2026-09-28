.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadScenario.java"


# static fields
.field public static editorMode:Z

.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 34
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    .line 28
    const/16 v1, 0x3d

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    .line 44
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 41
    const-string v0, "Loading Scenario #1"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    .line 42
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

    .line 50
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadScenario()V

    .line 51
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b0

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d40c0c1

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 53
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
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

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    const v3, 0x3f733333    # 0.95f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 63
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 66
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->getPosY()I

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

    .line 68
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 71
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 74
    :cond_b0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 75
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

    .line 76
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

    .line 77
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 79
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 81
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    int-to-float v0, v0

    const v2, 0x3f6147ae    # 0.88f

    mul-float v0, v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iNumOfSteps:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3df5c28f    # 0.12f

    add-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 83
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

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

    .line 84
    return-void
.end method

.method public final loadScenario()V
    .registers 5

    .line 94
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    if-nez v1, :cond_34

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PB39:LS step0 sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "PB39"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearData()V

    .line 97
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1()V

    .line 99
    const-string v1, "Loading Scenario #2 Wasteland"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 101
    :cond_34
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    if-ne v1, v0, :cond_44

    .line 102
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_2()V

    .line 104
    const-string v1, "Loading Scenario #3 Civilizations"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 106
    :cond_44
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_57

    .line 107
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3(Z)V

    .line 109
    const-string v1, "Loading Scenario #3A Civilizations Names"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 111
    :cond_57
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_68

    .line 112
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_A()V

    .line 114
    const-string v1, "Loading Scenario #3B Flags"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 116
    :cond_68
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_79

    .line 117
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_B()V

    .line 119
    const-string v1, "Loading Scenario #3C Civilization\'s Provinces"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 121
    :cond_79
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8a

    .line 122
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_3_C()V

    .line 124
    const-string v1, "Loading Scenario #4"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 126
    :cond_8a
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9b

    .line 127
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_4()V

    .line 129
    const-string v1, "Loading Scenario #5"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 131
    :cond_9b
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_ac

    .line 132
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_5()V

    .line 134
    const-string v1, "Loading Scenario #6"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 136
    :cond_ac
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_be

    .line 137
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_6()V

    .line 139
    const-string v1, "Loading Scenario #7"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 141
    :cond_be
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_d0

    .line 142
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_7()V

    .line 144
    const-string v1, "Loading Scenario #8"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 146
    :cond_d0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e2

    .line 147
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_8()V

    .line 149
    const-string v1, "Loading Scenario #9"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 151
    :cond_e2
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_f4

    .line 152
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_9()V

    .line 154
    const-string v1, "Loading Scenario #10"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 156
    :cond_f4
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_106

    .line 157
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_10()V

    .line 159
    const-string v1, "Loading Scenario #11"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 161
    :cond_106
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_118

    .line 162
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_11()V

    .line 164
    const-string v1, "Loading Scenario #12"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 166
    :cond_118
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_12a

    .line 167
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_12()V

    .line 169
    const-string v1, "Loading Scenario #13"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 171
    :cond_12a
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_13c

    .line 172
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_13()V

    .line 174
    const-string v1, "Loading Scenario #14"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 176
    :cond_13c
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_14e

    .line 177
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_14()V

    .line 179
    const-string v1, "Loading Scenario #15"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 181
    :cond_14e
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_160

    .line 182
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_15()V

    .line 184
    const-string v1, "Loading Scenario #16"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 186
    :cond_160
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_172

    .line 187
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_16()V

    .line 189
    const-string v1, "Loading Scenario #17"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 191
    :cond_172
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_184

    .line 192
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_17()V

    .line 194
    const-string v1, "Loading Scenario #18"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 196
    :cond_184
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_196

    .line 197
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_18()V

    .line 199
    const-string v1, "Loading Scenario #19"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 201
    :cond_196
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1a8

    .line 202
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_19()V

    .line 204
    const-string v1, "Loading Scenario #20"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 206
    :cond_1a8
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1ba

    .line 207
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_20()V

    .line 209
    const-string v1, "Loading Scenario #21"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 211
    :cond_1ba
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1cc

    .line 212
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_21()V

    .line 214
    const-string v1, "Loading Scenario #22"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 216
    :cond_1cc
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1de

    .line 217
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_22()V

    .line 219
    const-string v1, "Loading Scenario #23"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 221
    :cond_1de
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1f0

    .line 222
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_23()V

    .line 224
    const-string v1, "Loading Scenario #24"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 226
    :cond_1f0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_202

    .line 227
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_24()V

    .line 229
    const-string v1, "Loading Scenario #25"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 231
    :cond_202
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_216

    .line 232
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_25(Z)V

    .line 234
    const-string v1, "Loading Scenario #26"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 236
    :cond_216
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_228

    .line 237
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_26()V

    .line 239
    const-string v1, "Loading Scenario #27"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 241
    :cond_228
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_23a

    .line 242
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_27()V

    .line 244
    const-string v1, "Loading Scenario #28"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 246
    :cond_23a
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_24c

    .line 247
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_28()V

    .line 249
    const-string v1, "Loading Scenario #29"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 251
    :cond_24c
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_25e

    .line 252
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_29()V

    .line 254
    const-string v1, "Loading Scenario #30"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 256
    :cond_25e
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_270

    .line 257
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_30()V

    .line 259
    const-string v1, "Loading Scenario #31"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 261
    :cond_270
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x21

    if-ne v1, v2, :cond_282

    .line 262
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_31()V

    .line 264
    const-string v1, "Loading Scenario #32"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 266
    :cond_282
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_294

    .line 267
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_32()V

    .line 269
    const-string v1, "Loading Scenario #33"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 271
    :cond_294
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2a6

    .line 272
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_33()V

    .line 274
    const-string v1, "Loading Scenario #34"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 276
    :cond_2a6
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x24

    if-ne v1, v2, :cond_2b8

    .line 277
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_34()V

    .line 279
    const-string v1, "Loading Scenario #35"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 281
    :cond_2b8
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2ca

    .line 282
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_35()V

    .line 284
    const-string v1, "Loading Scenario #36"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 286
    :cond_2ca
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2de

    .line 287
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_36(Z)V

    .line 289
    const-string v1, "Loading Scenario #37"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 291
    :cond_2de
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2f0

    .line 292
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_37()V

    .line 294
    const-string v1, "Loading Scenario #38"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 296
    :cond_2f0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_304

    .line 297
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_38(Z)V

    .line 299
    const-string v1, "Loading Scenario #39"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 301
    :cond_304
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_318

    .line 302
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_39(Z)V

    .line 304
    const-string v1, "Loading Scenario #40"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 306
    :cond_318
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_32c

    .line 307
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_40(Z)V

    .line 309
    const-string v1, "Loading Scenario #41"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 311
    :cond_32c
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_340

    .line 312
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_41(Z)V

    .line 314
    const-string v1, "Loading Scenario #42"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 316
    :cond_340
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_352

    .line 317
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_42()V

    .line 319
    const-string v1, "Loading Scenario #43"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 321
    :cond_352
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_364

    .line 322
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_43()V

    .line 324
    const-string v1, "Loading Scenario #44"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 326
    :cond_364
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_376

    .line 327
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_44()V

    .line 329
    const-string v1, "Loading Scenario #45"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 331
    :cond_376
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_388

    .line 332
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_45()V

    .line 334
    const-string v1, "Loading Scenario #46"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 336
    :cond_388
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_39a

    .line 337
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_46()V

    .line 339
    const-string v1, "Loading Scenario #47"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 341
    :cond_39a
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x31

    if-ne v1, v2, :cond_3ac

    .line 342
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_47()V

    .line 344
    const-string v1, "Loading Scenario #48"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 346
    :cond_3ac
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x32

    if-ne v1, v2, :cond_3be

    .line 347
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V

    .line 349
    const-string v1, "Loading Scenario #49"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 351
    :cond_3be
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_3d2

    .line 352
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_49(Z)V

    .line 354
    const-string v1, "Loading Scenario #50"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 356
    :cond_3d2
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x34

    if-ne v1, v2, :cond_3e6

    .line 357
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_50(Z)V

    .line 359
    const-string v1, "Loading Scenario #51"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 361
    :cond_3e6
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x35

    if-ne v1, v2, :cond_3fa

    .line 362
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_51(Z)V

    .line 364
    const-string v1, "Loading Scenario #52"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 366
    :cond_3fa
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_40c

    .line 367
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_52()V

    .line 369
    const-string v1, "Loading Scenario #53"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 371
    :cond_40c
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x37

    if-ne v1, v2, :cond_41e

    .line 372
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_53()V

    .line 374
    const-string v1, "Loading Scenario #54"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 376
    :cond_41e
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_430

    .line 377
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_54()V

    .line 379
    const-string v1, "Loading Scenario #55"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 382
    :cond_430
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x39

    if-ne v1, v2, :cond_442

    .line 383
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_55()V

    .line 385
    const-string v1, "Loading Scenario #56"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 387
    :cond_442
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_454

    .line 388
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_56()V

    .line 390
    const-string v1, "Loading Scenario #57"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 392
    :cond_454
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_466

    .line 393
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_57()V

    .line 395
    const-string v1, "Loading Scenario #58"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 397
    :cond_466
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_478

    .line 398
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_58()V

    .line 400
    const-string v1, "Loading Scenario #59"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 402
    :cond_478
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_498

    .line 403
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    .line 404
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_59()V

    .line 406
    const-string v1, "Loading Scenario #60"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_512

    .line 408
    :cond_498
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_4a9

    .line 409
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_60()V

    .line 411
    const-string v1, "Loading Scenario #61"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_512

    .line 413
    :cond_4a9
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_4ba

    .line 414
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_61()V

    .line 416
    const-string v1, "Loading Scenario #62"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_512

    .line 418
    :cond_4ba
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_4cd

    .line 419
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    sget-boolean v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_62(Z)V

    .line 421
    const-string v1, "Loading Scenario #63"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_512

    .line 423
    :cond_4cd
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x41

    if-ne v1, v2, :cond_4de

    .line 424
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_63()V

    .line 426
    const-string v1, "Loading Scenario #64"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_512

    .line 428
    :cond_4de
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x42

    if-ne v1, v2, :cond_4ef

    .line 429
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_64()V

    .line 431
    const-string v1, "Loading Scenario #65"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_512

    .line 433
    :cond_4ef
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_512

    .line 434
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    .line 435
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    .line 436
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    .line 438
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    .line 440
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    :try_end_512
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_512} :catch_513

    .line 445
    :cond_512
    :goto_512
    goto :goto_52f

    .line 442
    :catch_513
    move-exception v1

    .line 443
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadScenario: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 444
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 447
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_52f
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->iStepID:I

    .line 448
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->loadingName:Ljava/lang/String;

    .line 88
    return-void
.end method
