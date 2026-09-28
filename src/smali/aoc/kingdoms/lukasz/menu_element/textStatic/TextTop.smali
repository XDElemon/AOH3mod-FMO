.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "TextTop.java"


# static fields
.field public static final ANIMATION_T:I = 0x3e8

.field public static final EXTRA_WIDTH_BOX_PADDING:I

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public WIDTH_LAST_TURN_UPDATE:I

.field public fontID2:I

.field public iTextHeight:I

.field public iTextHeight2:I

.field public iTextPosX:I

.field public iTextWidth:I

.field public iTextWidth2:I

.field public imageID:I

.field public lastValue:F

.field public sText:Ljava/lang/String;

.field public sText2:Ljava/lang/String;

.field public sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

.field public textPosY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    .line 40
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "imageID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I

    .line 51
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    .line 28
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    .line 43
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    .line 47
    const v0, -0x368c6e9b

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lastValue:F

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    .line 52
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 54
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    .line 55
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setPosX(I)V

    .line 56
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setPosY(I)V

    .line 58
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setHeight(I)V

    .line 60
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setText2(Ljava/lang/String;)V

    .line 63
    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    .line 64
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    .line 65
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    .line 67
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    .line 68
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 77
    move-object v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getPosX()I

    move-result v1

    add-int v11, v1, p2

    .line 78
    .end local p2    # "iTranslateX":I
    .local v11, "iTranslateX":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getPosY()I

    move-result v1

    add-int v12, v1, p3

    .line 80
    .end local p3    # "iTranslateY":I
    .local v12, "iTranslateY":I
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 82
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 85
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 88
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    const/high16 v14, 0x3e800000    # 0.25f

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 89
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 90
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 92
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 93
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v12

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 95
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 97
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 99
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 101
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 105
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 107
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 109
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 111
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 112
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 114
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v1

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v1, :cond_152

    if-nez v10, :cond_152

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsActiveButton()Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 117
    :cond_152
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 120
    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 121
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 123
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 124
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 125
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 129
    :cond_1aa
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_2b9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_2b9

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    if-ltz v1, :cond_2b9

    .line 130
    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    const-wide/16 v13, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_225

    .line 131
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v8

    div-float/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 133
    .local v7, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 134
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v11, v2

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 135
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v11, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 137
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v13

    cmp-long v5, v1, v3

    if-gez v5, :cond_223

    .line 138
    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    .line 139
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    .line 141
    .end local v7    # "drawPerc":F
    :cond_223
    goto/16 :goto_2b4

    .line 143
    :cond_225
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v8

    div-float/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 145
    .restart local v7    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 146
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v2

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 147
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 149
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v13

    cmp-long v5, v1, v3

    if-gez v5, :cond_2b4

    .line 150
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    .line 151
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    .line 155
    .end local v7    # "drawPerc":F
    :cond_2b4
    :goto_2b4
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 158
    :cond_2b9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getImageID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    add-int/2addr v2, v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getImageID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v12

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 160
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    add-int v4, v11, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    add-int v5, v12, v1

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 161
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    add-int v4, v11, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    add-int/2addr v1, v12

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->TEXT_TOP_BOT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 162
    return-void
.end method

.method public final extraWidth()I
    .registers 3

    .line 237
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 165
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 169
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getImageID()I
    .registers 2

    .line 173
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    return v0
.end method

.method public getIsActiveButton()Z
    .registers 2

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 247
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 242
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 252
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    .line 254
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    .line 255
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    .line 256
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    .line 196
    :try_start_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 198
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    .line 199
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    .line 201
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 202
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    .line 205
    :cond_36
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    add-int/lit16 v1, v1, 0x16d

    if-le v0, v1, :cond_52

    .line 206
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    .line 207
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    .line 211
    :cond_52
    goto :goto_57

    .line 209
    :catch_53
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText2"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    .line 219
    :try_start_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 221
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    .line 222
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    .line 224
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_36

    .line 225
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 229
    :cond_36
    goto :goto_3b

    .line 227
    :catch_37
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 230
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method

.method public final setWidthOfButton()V
    .registers 2

    .line 233
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    .line 234
    return-void
.end method
