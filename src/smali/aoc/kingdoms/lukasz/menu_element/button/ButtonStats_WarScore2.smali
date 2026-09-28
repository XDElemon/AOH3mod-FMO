.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonStats_WarScore2.java"


# instance fields
.field public fPerc:F

.field private iAggressor:I

.field private iDefender:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I
    .param p6, "iAggressor"    # I
    .param p7, "iDefender"    # I

    .line 20
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 15
    const v0, 0x3eb33333    # 0.35f

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    .line 21
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 23
    move/from16 v0, p6

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->iAggressor:I

    .line 24
    move/from16 v1, p7

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->iDefender:I

    .line 25
    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .registers 4
    .param p0, "clickable"    # Z
    .param p1, "isHovered"    # Z
    .param p2, "isActive"    # Z

    .line 59
    if-eqz p0, :cond_11

    if-eqz p2, :cond_8

    const v0, 0x3f59999a    # 0.85f

    goto :goto_14

    :cond_8
    if-eqz p1, :cond_e

    const v0, 0x3f333333    # 0.7f

    goto :goto_14

    :cond_e
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_14

    :cond_11
    const v0, 0x3e4ccccd    # 0.2f

    :goto_14
    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 16
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 30
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 32
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->iAggressor:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 34
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v0, v0, v3

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 35
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v0, v0, v3

    float-to-int v6, v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 36
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v0, v0, v3

    float-to-int v6, v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 37
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v0, v0, v3

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->iDefender:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 41
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 42
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v5, v0, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 43
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v5, v0, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 44
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v5, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f48f5c3    # 0.785f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fPerc:F

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    add-int v6, v0, p3

    const/4 v7, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f733333    # 0.95f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int v6, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 64
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 65
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 69
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStats_WarScore2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
