.class public Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Menu_LoadSaveScenario.java"


# static fields
.field public static goToMenu:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iNumOfSteps:I

.field public iStepID:I

.field public loadingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 29
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    .line 25
    const/16 v1, 0x1a

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

    .line 30
    iput v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 36
    const-string v0, "Saving Scenario #1"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    .line 37
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

    .line 45
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadAction()V

    .line 46
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_b0

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d40c0c1

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v2, v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
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

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v3

    const v3, 0x3f733333    # 0.95f

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 59
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 61
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->getPosY()I

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

    .line 63
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 66
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 69
    :cond_b0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
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

    .line 71
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

    .line 72
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 74
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 76
    iget v0, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    int-to-float v0, v0

    const v2, 0x3f6147ae    # 0.88f

    mul-float v0, v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iNumOfSteps:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3df5c28f    # 0.12f

    add-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    .line 78
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

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

    .line 79
    return-void
.end method

.method public final loadAction()V
    .registers 5

    .line 89
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    if-nez v1, :cond_11

    .line 90
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_1()V

    .line 92
    const-string v1, "Saving Scenario #2"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 94
    :cond_11
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    if-ne v1, v0, :cond_21

    .line 95
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_2()V

    .line 97
    const-string v1, "Saving Scenario #3"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 99
    :cond_21
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_3()V

    .line 102
    const-string v1, "Saving Scenario #4"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 104
    :cond_32
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_43

    .line 105
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_4()V

    .line 107
    const-string v1, "Saving Scenario #5"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 109
    :cond_43
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_54

    .line 110
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_5()V

    .line 112
    const-string v1, "Saving Scenario #6"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 114
    :cond_54
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_65

    .line 115
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_6()V

    .line 117
    const-string v1, "Saving Scenario #7"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 119
    :cond_65
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_76

    .line 120
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_7()V

    .line 122
    const-string v1, "Saving Scenario #8"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 124
    :cond_76
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_87

    .line 125
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_8()V

    .line 127
    const-string v1, "Saving Scenario #9"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 129
    :cond_87
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_99

    .line 130
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_9()V

    .line 132
    const-string v1, "Saving Scenario #10"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 134
    :cond_99
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_ab

    .line 135
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_10()V

    .line 137
    const-string v1, "Saving Scenario #11"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 139
    :cond_ab
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_bd

    .line 140
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_11()V

    .line 142
    const-string v1, "Saving Scenario #12"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 144
    :cond_bd
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_cf

    .line 145
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_12()V

    .line 147
    const-string v1, "Saving Scenario #13"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 149
    :cond_cf
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_e1

    .line 150
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_13()V

    .line 152
    const-string v1, "Saving Scenario #14"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 154
    :cond_e1
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_f3

    .line 155
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_14()V

    .line 157
    const-string v1, "Saving Scenario #15"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 159
    :cond_f3
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_105

    .line 160
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_15()V

    .line 162
    const-string v1, "Saving Scenario #16"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 164
    :cond_105
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_117

    .line 165
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_16()V

    .line 167
    const-string v1, "Saving Scenario #17"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 169
    :cond_117
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_129

    .line 170
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_17()V

    .line 172
    const-string v1, "Saving Scenario #18"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 174
    :cond_129
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_13b

    .line 175
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_18()V

    .line 177
    const-string v1, "Saving Scenario #19"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 179
    :cond_13b
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_14d

    .line 180
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_19()V

    .line 182
    const-string v1, "Saving Scenario #20"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 184
    :cond_14d
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_15f

    .line 185
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_20()V

    .line 187
    const-string v1, "Saving Scenario #21"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 189
    :cond_15f
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_170

    .line 190
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_21()V

    .line 192
    const-string v1, "Saving Scenario #22"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 194
    :cond_170
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_181

    .line 195
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_22()V

    .line 197
    const-string v1, "Saving Scenario #23"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 199
    :cond_181
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_192

    .line 200
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_23()V

    .line 202
    const-string v1, "Saving Scenario #24"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 204
    :cond_192
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1a3

    .line 205
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_24()V

    .line 207
    const-string v1, "Saving Scenario #25"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 209
    :cond_1a3
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1b4

    .line 210
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveScenario_25()V

    .line 212
    const-string v1, "Saving Scenario #26"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 214
    :cond_1b4
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1c0

    .line 217
    const-string v1, "Saving Scenario #27"

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->setLoadText(Ljava/lang/String;)V

    goto :goto_1cd

    .line 219
    :cond_1c0
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1cd

    .line 220
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1cd} :catch_1ce

    .line 225
    :cond_1cd
    :goto_1cd
    goto :goto_1ea

    .line 222
    :catch_1ce
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving Scenario: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    .line 224
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 227
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1ea
    iget v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->iStepID:I

    .line 228
    return-void
.end method

.method public setLoadText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSaveScenario;->loadingName:Ljava/lang/String;

    .line 83
    return-void
.end method
