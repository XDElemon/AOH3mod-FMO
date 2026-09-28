.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonFlag_Stats.java"


# instance fields
.field private flagImgID:I

.field private statsFlagID:I


# direct methods
.method public constructor <init>(III)V
    .registers 17
    .param p1, "statsFlagID"    # I
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 31
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    .line 27
    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->statsFlagID:I

    .line 32
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getButtonWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getButtonHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, ""

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 34
    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->statsFlagID:I

    .line 35
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->updateLanguage()V

    .line 36
    return-void
.end method

.method public static getButtonHeight()I
    .registers 2

    .line 80
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getButtonWidth()I
    .registers 2

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 91
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getFlagCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 92
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 41
    return-void
.end method

.method protected drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_BELOW:Z

    if-eqz v0, :cond_47

    .line 49
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagBelow:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 52
    :cond_47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 55
    :try_start_4c
    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->lFlags:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getFlagCivID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 56
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_b6} :catch_b7

    .line 61
    goto :goto_b8

    .line 59
    :catch_b7
    move-exception v0

    .line 63
    :goto_b8
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 66
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 68
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_117

    if-eqz p4, :cond_173

    .line 69
    :cond_117
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->flagMask:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->flagOver:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 72
    :cond_173
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    return-void
.end method

.method public getCurrent()I
    .registers 2

    .line 96
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->statsFlagID:I

    return v0
.end method

.method public getFlagCivID()I
    .registers 2

    .line 44
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->statsFlagID:I

    return v0
.end method

.method public updateLanguage()V
    .registers 7

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 86
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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->getFlagCivID()I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v3, v4, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->FLAG_GROUP:[I

    aget v1, v4, v1

    sub-int/2addr v3, v1

    rem-int v1, v2, v3

    :cond_5f
    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;->flagImgID:I

    .line 87
    return-void
.end method
