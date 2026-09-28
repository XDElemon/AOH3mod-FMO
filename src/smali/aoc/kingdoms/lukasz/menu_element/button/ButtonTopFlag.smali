.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonTopFlag.java"


# instance fields
.field private ANIMATION_TIME:I

.field private currentTime:J

.field private flagImgID:I

.field public inAnimation:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 17
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "isClickable"    # Z

    .line 30
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    .line 24
    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    .line 26
    const/16 v0, 0x2ee

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    .line 31
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->iTextPositionX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v8, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 33
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 35
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->updateLanguage()V

    .line 36
    return-void
.end method


# virtual methods
.method public actionElementPPM()V
    .registers 3

    .line 170
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-lez v0, :cond_39

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 171
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 173
    :cond_39
    return-void
.end method

.method protected drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 39
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 40
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 46
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    if-eqz v0, :cond_66

    .line 47
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 48
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    .line 51
    :cond_13
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {p1, p2, v0, v1, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 55
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 57
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    sub-long/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->ANIMATION_TIME:I

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_69

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    .line 59
    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    goto :goto_69

    .line 63
    :cond_66
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 65
    :cond_69
    :goto_69
    return-void
.end method

.method protected drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 72
    move-object v0, p0

    move-object v7, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_BELOW:Z

    if-eqz v1, :cond_5c

    .line 73
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 76
    :cond_5c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    const-string v8, "u_maskScaleY"

    const-string v9, "u_maskScale"

    const v10, 0x84c0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f1

    .line 77
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 79
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 80
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 82
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_176

    .line 85
    :cond_f1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 87
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v8, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 91
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 92
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 94
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 97
    :goto_176
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 100
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->ENABLE_VASSAL_LORD_FLAG:Z

    if-eqz v1, :cond_2c6

    .line 101
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v2

    if-eq v1, v2, :cond_2c6

    .line 102
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    if-eqz v1, :cond_231

    .line 103
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 105
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 106
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 108
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_2be

    .line 111
    :cond_231
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 113
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 114
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v8, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 117
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 118
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v10}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 120
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMaskLord:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 123
    :goto_2be
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 124
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 128
    :cond_2c6
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 131
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_330

    if-eqz p4, :cond_39d

    .line 132
    :cond_330
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 133
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_X:[I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->INGAME_FLAG_PADDING_Y:[I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 135
    :cond_39d
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 148
    return-void
.end method

.method public getFlagCivID()I
    .registers 2

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 3
    .param p1, "isHovered"    # Z

    .line 161
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 163
    if-eqz p1, :cond_b

    .line 164
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    .line 166
    :cond_b
    return-void
.end method

.method public updateLanguage()V
    .registers 8

    .line 152
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 153
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v4, v4, v1

    sub-int/2addr v2, v4

    if-lez v2, :cond_5f

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->EXTRA_RANDOM:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->getFlagCivID()I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v4, v4, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    rem-int v1, v2, v4

    :cond_5f
    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->flagImgID:I

    .line 155
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->inAnimation:Z

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;->currentTime:J

    .line 157
    return-void
.end method
