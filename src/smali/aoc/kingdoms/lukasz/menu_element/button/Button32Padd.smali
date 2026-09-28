.class public Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button32Padd.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field public static final buttonColor:Lcom/badlogic/gdx/graphics/Color;

.field public static final buttonColor2:Lcom/badlogic/gdx/graphics/Color;

.field private static final colorLine:Lcom/badlogic/gdx/graphics/Color;

.field protected static lTimeAnimation:J


# instance fields
.field public iconImageID:I

.field public imgHeight:I

.field public imgWidth:I

.field public imgX:I

.field public imgY:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    .line 17
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    .line 119
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e848485

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3f048485

    const v4, 0x3edededf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 139
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f20a0a1

    const v3, 0x3f028283

    const v4, 0x3e969697

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor:Lcom/badlogic/gdx/graphics/Color;

    .line 140
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor2:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 14
    .param p1, "iconImageID"    # I

    .line 27
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 28
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    .line 29
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v0, v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 31
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .registers 16
    .param p1, "iconImageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 34
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 35
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    .line 36
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v0, v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 38
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    .line 39
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 19
    .param p1, "iconImageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nH"    # I

    .line 41
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 42
    move v13, p1

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    .line 43
    iget-object v1, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->sText:Ljava/lang/String;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->fontID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 45
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->updateImgWH()V

    .line 46
    return-void
.end method

.method public static getButtonHeight()I
    .registers 2

    .line 136
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected static final getColorLine()Lcom/badlogic/gdx/graphics/Color;
    .registers 1

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 62
    move-object v0, p0

    move-object v9, p1

    move/from16 v10, p4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_1e

    if-eqz v10, :cond_1b

    goto :goto_1e

    :cond_1b
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_21

    :cond_1e
    :goto_1e
    const v5, 0x3f19999a    # 0.6f

    :goto_21
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 67
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 70
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v10, :cond_52

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_8f

    :cond_52
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 71
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 73
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_65

    if-eqz v10, :cond_8f

    .line 74
    :cond_65
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 75
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 76
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    :cond_8f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_1c8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_1c8

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    if-ltz v1, :cond_1c8

    .line 81
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    const-wide/16 v11, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_11e

    .line 82
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v8

    div-float/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 84
    .local v7, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 85
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

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

    .line 86
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 88
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v11

    cmp-long v5, v1, v3

    if-gez v5, :cond_11c

    .line 89
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    .line 90
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    .line 92
    .end local v7    # "drawPerc":F
    :cond_11c
    goto/16 :goto_1c3

    .line 94
    :cond_11e
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v8

    div-float/2addr v1, v2

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 96
    .restart local v7    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

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

    .line 98
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

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

    .line 100
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v11

    cmp-long v5, v1, v3

    if-gez v5, :cond_1c3

    .line 101
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    .line 102
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    .line 106
    .end local v7    # "drawPerc":F
    :cond_1c3
    :goto_1c3
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 109
    :cond_1c8
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosX()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgX:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getPosY()I

    move-result v2

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgY:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    const/4 v7, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getFlipY()Z

    move-result v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 111
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 117
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 144
    if-eqz p1, :cond_5

    .line 145
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 146
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 150
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->isActiveView()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->buttonColor2:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method

.method public getFlipY()Z
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 132
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 172
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->isActiveView()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE1:I

    goto :goto_b

    :cond_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE0:I

    :goto_b
    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 127
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public imgScale()F
    .registers 2

    .line 57
    const v0, 0x3f59999a    # 0.85f

    return v0
.end method

.method public isActiveView()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 164
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 166
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->lTimeAnimation:J

    .line 167
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->animationState:I

    .line 168
    return-void
.end method

.method public updateImgWH()V
    .registers 3

    .line 49
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    .line 50
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    .line 52
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgX:I

    .line 53
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->imgY:I

    .line 54
    return-void
.end method
