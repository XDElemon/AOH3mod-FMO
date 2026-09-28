.class public Laoc/kingdoms/lukasz/menu_element/IconCourt;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "IconCourt.java"


# instance fields
.field public id:I

.field public imageID:I

.field public widthDraw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 25
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "id"    # I
    .param p8, "widthDraw"    # I

    .line 26
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 27
    move/from16 v13, p2

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->imageID:I

    .line 28
    move/from16 v14, p7

    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    .line 29
    move/from16 v15, p8

    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    .line 31
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 32
    return-void
.end method

.method public static getColor_gradientFull()Lcom/badlogic/gdx/graphics/Color;
    .registers 5

    .line 121
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3ee66666    # 0.45f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;
    .registers 5

    .line 117
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 36
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v1, v2

    .line 37
    .local v1, "posX":I
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v9, v2, p3

    .line 39
    .local v9, "posY":I
    sget-boolean v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v2, :cond_1a0

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "extraX":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    .local v3, "perc":F
    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_ANIMATION_TIME:I

    int-to-long v13, v6

    add-long/2addr v4, v13

    sget-wide v13, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v6, v4, v13

    if-ltz v6, :cond_49

    .line 44
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    sub-long/2addr v4, v13

    long-to-float v4, v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_ANIMATION_TIME:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 45
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    neg-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    add-int v2, v4, v5

    move v13, v2

    move v14, v3

    goto :goto_4b

    .line 43
    :cond_49
    move v13, v2

    move v14, v3

    .line 48
    .end local v2    # "extraX":I
    .end local v3    # "perc":F
    .local v13, "extraX":I
    .local v14, "perc":F
    :goto_4b
    add-int/lit8 v2, v13, 0x1

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    add-int/2addr v2, v3

    add-int v15, v1, v2

    .line 50
    .end local v1    # "posX":I
    .local v15, "posX":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v14, v11

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move v3, v15

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 53
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    mul-float v5, v5, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 54
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move v3, v15

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 56
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v5, v5, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move v3, v15

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 59
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e19999a    # 0.15f

    mul-float v5, v5, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    move v3, v15

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 62
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    mul-float v2, v14, v10

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v4, v9, 0x1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 64
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v2, -0x2

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 66
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    sub-int/2addr v15, v1

    .line 68
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    if-eqz v13, :cond_176

    .line 71
    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 72
    .local v1, "nColor":Lcom/badlogic/gdx/graphics/Color;
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, v14

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 74
    .end local v1    # "nColor":Lcom/badlogic/gdx/graphics/Color;
    .local v6, "nColor":Lcom/badlogic/gdx/graphics/Color;
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-super/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int/2addr v1, v15

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->iTextHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 75
    .end local v6    # "nColor":Lcom/badlogic/gdx/graphics/Color;
    goto :goto_19a

    .line 77
    :cond_176
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-super/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int/2addr v1, v15

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v9

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->iTextHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 80
    :goto_19a
    add-int/lit8 v1, v13, 0x1

    sub-int v1, v15, v1

    move v13, v1

    .end local v15    # "posX":I
    .local v1, "posX":I
    goto :goto_1a1

    .line 39
    .end local v13    # "extraX":I
    .end local v14    # "perc":F
    :cond_1a0
    move v13, v1

    .line 83
    .end local v1    # "posX":I
    .local v13, "posX":I
    :goto_1a1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 84
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v13

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 86
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v12, v12, v12, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 88
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    add-int/2addr v2, v9

    add-int/lit8 v4, v2, -0x1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 91
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 93
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v1, v2, :cond_234

    .line 94
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v13

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 96
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v9, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 99
    :cond_234
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_23c

    if-eqz v8, :cond_266

    .line 100
    :cond_23c
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 101
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v13

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 104
    :cond_266
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v1, v2, :cond_28d

    .line 105
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationSidebarActive:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_2b5

    .line 108
    :cond_28d
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_295

    if-eqz v8, :cond_2b5

    .line 109
    :cond_295
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationSidebar:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 113
    :cond_2b5
    :goto_2b5
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 114
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 135
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_49

    if-eqz p4, :cond_9

    goto :goto_49

    .line 142
    :cond_9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_99

    .line 136
    :cond_49
    :goto_49
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 137
    .local v0, "imgW":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 139
    .local v1, "imgH":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getImageID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosX()I

    move-result v3

    add-int/2addr v3, p2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->widthDraw:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x2

    sub-int v4, v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v3, v5

    move-object v3, p1

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 140
    .end local v0    # "imgW":I
    .end local v1    # "imgH":I
    nop

    .line 164
    :goto_99
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 4
    .param p1, "isActive"    # Z

    .line 126
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    if-ne v0, v1, :cond_9

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 130
    :cond_9
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 181
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->id:I

    return v0
.end method

.method public getImageID()I
    .registers 2

    .line 176
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt;->imageID:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 168
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    if-eqz v0, :cond_e

    .line 169
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 172
    :cond_e
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v0

    return v0
.end method
