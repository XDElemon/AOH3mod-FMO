.class public Laoc/kingdoms/lukasz/menu_element/button/Button32;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button32.java"


# static fields
.field protected static final ANIMATION_T:I = 0x2ee

.field protected static animationState:I

.field public static final buttonColor:Lcom/badlogic/gdx/graphics/Color;

.field private static final colorLine:Lcom/badlogic/gdx/graphics/Color;

.field protected static lTimeAnimation:J


# instance fields
.field public iconImageID:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    .line 17
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e848485

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3f048485

    const v4, 0x3edededf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f20a0a1

    const v4, 0x3f028283

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->buttonColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 14
    .param p1, "iconImageID"    # I

    .line 20
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 21
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iconImageID:I

    .line 22
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->fontID:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iTextPositionX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(III)V
    .registers 16
    .param p1, "iconImageID"    # I
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 25
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    .line 26
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iconImageID:I

    .line 27
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->sText:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->fontID:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iTextPositionX:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 28
    return-void
.end method

.method protected static final getColorLine()Lcom/badlogic/gdx/graphics/Color;
    .registers 1

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 32
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

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 33
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 34
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 37
    if-nez v9, :cond_43

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_17e

    :cond_43
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 38
    sget-object v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 40
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    if-ltz v1, :cond_17e

    .line 41
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    const-wide/16 v10, 0x2ee

    const v2, 0x443b8000    # 750.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_d4

    .line 42
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 44
    .local v7, "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 45
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

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

    .line 46
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v7

    float-to-int v5, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 48
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v10

    cmp-long v5, v1, v3

    if-gez v5, :cond_d2

    .line 49
    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    .line 50
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    .line 52
    .end local v7    # "drawPerc":F
    :cond_d2
    goto/16 :goto_179

    .line 54
    :cond_d4
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v6, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 56
    .restart local v7    # "drawPerc":F
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

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

    .line 58
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getWidth()I

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

    .line 61
    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v10

    cmp-long v5, v1, v3

    if-gez v5, :cond_179

    .line 62
    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    .line 63
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    .line 67
    .end local v7    # "drawPerc":F
    :cond_179
    :goto_179
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 71
    :cond_17e
    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 72
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iconImageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    const/4 v5, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getFlipY()Z

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 73
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 74
    return-void
.end method

.method public getButtonBG()I
    .registers 2

    .line 77
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    return v0
.end method

.method public getButtonBG_Active()I
    .registers 2

    .line 81
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 112
    if-eqz p1, :cond_5

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 114
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 118
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32;->isActiveView()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->buttonColor:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method

.method public getFlipY()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 105
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 100
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->iconImageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public isActiveView()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public setIsHovered(Z)V
    .registers 4
    .param p1, "isHovered"    # Z

    .line 86
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setIsHovered(Z)V

    .line 88
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->lTimeAnimation:J

    .line 89
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button32;->animationState:I

    .line 90
    return-void
.end method
