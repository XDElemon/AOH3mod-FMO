.class public Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;
.super Ljava/lang/Object;
.source "RendererGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;
    }
.end annotation


# static fields
.field public static animationNukes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;",
            ">;"
        }
    .end annotation
.end field

.field public static iAnimationNukesSize:I

.field public static rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    .line 32
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 1
    .param p0, "x0"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 25
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->defaultDrawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public static final addNuke(I)V
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 549
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    .line 551
    return-void
.end method

.method private static final defaultDrawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 569
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmyAlpha()V

    .line 570
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->drawProvNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 572
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 574
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->oDrawMoveUnits:Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawMoveUnits;->drawMoveUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 576
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v0, :cond_1e

    .line 577
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvincesArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_21

    .line 581
    :cond_1e
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawMapModeDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 584
    :goto_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 585
    return-void
.end method

.method private static final drawCapitalFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V
    .registers 13
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nProvinceID"    # I
    .param p2, "nScale"    # F
    .param p3, "fAlpha"    # F

    .line 598
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosX(IF)I

    move-result v6

    .line 599
    .local v6, "nPosX":I
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->getDrawPosY(IF)I

    move-result v7

    .line 601
    .local v7, "nPosY":I
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 603
    const/4 v8, 0x0

    .line 605
    .local v8, "flagImgID":I
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 607
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v3, v7, -0x1

    const/16 v4, 0x46

    const/16 v5, 0x2e

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 611
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 613
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 615
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 616
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 618
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/16 v4, 0x44

    const/16 v5, 0x2c

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 624
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 626
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v3, v7, -0x1

    const/16 v4, 0x46

    const/16 v5, 0x2e

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 629
    return-void
.end method

.method public static final drawCapitalFlags(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 5
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nScale"    # F

    .line 590
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 591
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 592
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->drawCapitalFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    .line 590
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 595
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public static final drawNukeAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 555
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 556
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 558
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererAnimationNuke;->remove:Z

    if-eqz v1, :cond_2a

    .line 559
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 560
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->animationNukes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->iAnimationNukesSize:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2e

    .line 555
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 565
    .end local v0    # "i":I
    :cond_2d
    goto :goto_32

    .line 563
    :catch_2e
    move-exception v0

    .line 564
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 566
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public static final getDrawPosX(IF)I
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    .line 632
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDrawPosY(IF)I
    .registers 4
    .param p0, "nProvinceID"    # I
    .param p1, "nScale"    # F

    .line 636
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static final updateRenderer()V
    .registers 1

    .line 55
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_ae

    .line 80
    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 81
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto/16 :goto_b5

    .line 223
    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 224
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto/16 :goto_b5

    .line 404
    :cond_3c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 405
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    .line 406
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame_Scenarios()Z

    move-result v0

    if-nez v0, :cond_a6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame_ScenariosCampaign()Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_a6

    .line 429
    :cond_6d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceNamePoints()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 430
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_b5

    .line 463
    :cond_7d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-nez v0, :cond_9e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInCloudsMenu()Z

    move-result v0

    if-nez v0, :cond_9e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLost()Z

    move-result v0

    if-eqz v0, :cond_96

    goto :goto_9e

    .line 513
    :cond_96
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_b5

    .line 464
    :cond_9e
    :goto_9e
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_b5

    .line 407
    :cond_a6
    :goto_a6
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    goto :goto_b5

    .line 57
    :cond_ae
    :goto_ae
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    .line 546
    :goto_b5
    return-void
.end method
