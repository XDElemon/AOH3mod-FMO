.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonStatsRectIMG_Active.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public iconHeight:I

.field public iconWidth:I

.field public id:I

.field public imageID:I

.field public maxIconWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    .line 15
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 23
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxIconWidth"    # I
    .param p8, "id"    # I

    .line 25
    move-object v12, p0

    move/from16 v13, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 26
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 28
    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->imageID:I

    .line 30
    move/from16 v0, p8

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->id:I

    .line 32
    move/from16 v1, p7

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    .line 34
    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getImageScale(I)F

    move-result v2

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v2, v2, v3

    .line 35
    .local v2, "iconScale":F
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconWidth:I

    .line 36
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconHeight:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .registers 24
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxIconWidth"    # I
    .param p8, "id"    # I
    .param p9, "fontID"    # I

    .line 39
    move-object v12, p0

    move/from16 v13, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 40
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p9

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 42
    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->imageID:I

    .line 44
    move/from16 v0, p8

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->id:I

    .line 46
    move/from16 v1, p7

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    .line 48
    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getImageScale(I)F

    move-result v2

    const v3, 0x3f99999a    # 1.2f

    mul-float v2, v2, v3

    .line 49
    .local v2, "iconScale":F
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconWidth:I

    .line 50
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconHeight:I

    .line 51
    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .registers 4
    .param p0, "clickable"    # Z
    .param p1, "isHovered"    # Z
    .param p2, "isActive"    # Z

    .line 94
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
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 55
    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getClickable()Z

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getIsHovered()Z

    move-result v6

    invoke-static {v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getBoxAlpha(ZZZ)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 56
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 57
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 59
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getClickable()Z

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getIsHovered()Z

    move-result v6

    invoke-static {v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getBoxAlpha(ZZZ)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 60
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v6

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 61
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_1d2

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    if-ltz v1, :cond_1d2

    .line 64
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    const-wide/16 v10, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_128

    .line 65
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 67
    .local v7, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 68
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 69
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 71
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v10

    cmp-long v5, v1, v3

    if-gez v5, :cond_126

    .line 72
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    .line 73
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    .line 75
    .end local v7    # "drawPerc":F
    :cond_126
    goto/16 :goto_1cd

    .line 77
    :cond_128
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 79
    .restart local v7    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 81
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 83
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v10

    cmp-long v5, v1, v3

    if-gez v5, :cond_1cd

    .line 84
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    .line 85
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    .line 89
    .end local v7    # "drawPerc":F
    :cond_1cd
    :goto_1cd
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    :cond_1d2
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 99
    move-object v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconHeight:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v5, v1, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iconHeight:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 101
    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->maxIconWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 102
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 110
    if-eqz p1, :cond_5

    .line 111
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 112
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 116
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrent()I
    .registers 2

    .line 121
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->id:I

    return v0
.end method

.method protected final getImageScale(I)F
    .registers 4
    .param p1, "iImageID"    # I

    .line 105
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 126
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 128
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->lTimeAnimation:J

    .line 129
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;->animationState:I

    .line 130
    return-void
.end method
