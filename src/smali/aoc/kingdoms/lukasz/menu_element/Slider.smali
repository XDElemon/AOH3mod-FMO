.class public Laoc/kingdoms/lukasz/menu_element/Slider;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Slider.java"


# instance fields
.field private iCurrent:I

.field public iCurrentPosX:I

.field public iDifference_CurrentPosX:I

.field private iDifference_PosX:I

.field public iMax:I

.field public iMin:I

.field private iTextHeight:I

.field private iTextWidth:I

.field private lTime:J

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    .line 37
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 18
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "iMin"    # I
    .param p6, "iMax"    # I
    .param p7, "iCurrent"    # I

    .line 39
    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    .line 21
    const/4 v1, 0x0

    iput-object v1, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    .line 26
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    .line 27
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    .line 32
    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 33
    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    .line 40
    const-string v1, ""

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 11
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iMin"    # I
    .param p7, "iMax"    # I
    .param p8, "iCurrent"    # I

    .line 43
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    .line 44
    invoke-virtual/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/Slider;->initSlider(Ljava/lang/String;IIIIIII)V

    .line 45
    return-void
.end method

.method private final updateCurrentPosX()V
    .registers 5

    .line 169
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    .line 170
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 69
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 71
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 72
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 75
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 76
    return-void
.end method

.method public drawSliderBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 93
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->drawSliderBG_UpdateAnimation()V

    .line 111
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 112
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 115
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V

    .line 116
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 119
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 120
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 121
    return-void
.end method

.method public final drawSliderBG_UpdateAnimation()V
    .registers 7

    .line 79
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    if-eqz v0, :cond_33

    .line 80
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    .line 81
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    .line 84
    :cond_10
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x43bb8000    # 375.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 86
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    const-wide/16 v4, 0x177

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_33

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 90
    :cond_33
    return-void
.end method

.method public drawSliderBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 138
    return-void
.end method

.method public drawSliderText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 132
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getDrawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getTextHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f71eb85    # 0.945f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v0, v0, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 133
    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 124
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_SLIDER_LEFT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getColorRIGHT()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 128
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_SLIDER_RIGHT_BG:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getCurrent()I
    .registers 2

    .line 216
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    return v0
.end method

.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrollable()Z
    .registers 2

    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextHeight()I
    .registers 2

    .line 224
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    return v0
.end method

.method public getTextPos()I
    .registers 2

    .line 249
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    return v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 220
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    return v0
.end method

.method public initSlider(Ljava/lang/String;IIIIIII)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iMin"    # I
    .param p7, "iMax"    # I
    .param p8, "iCurrent"    # I

    .line 48
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Slider;->setPosX(I)V

    .line 49
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/Slider;->setPosY(I)V

    .line 50
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/Slider;->setWidth(I)V

    .line 51
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/Slider;->setHeight(I)V

    .line 53
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    .line 55
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    .line 57
    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    .line 58
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    .line 59
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateSlider(I)V

    .line 62
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 63
    return-void
.end method

.method public scrollByWheel(I)V
    .registers 3
    .param p1, "nScoll"    # I

    .line 254
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Slider;->setCurrent(I)V

    .line 256
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->actionElement()V

    .line 257
    return-void
.end method

.method public setCurrent(I)V
    .registers 5
    .param p1, "nCurrent"    # I

    .line 194
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    .line 196
    .local v0, "tempCurr":I
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    if-le p1, v1, :cond_b

    .line 197
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_16

    .line 198
    :cond_b
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    if-ge p1, v1, :cond_14

    .line 199
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_16

    .line 201
    :cond_14
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 204
    :goto_16
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateCurrentPosX()V

    .line 205
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    .line 207
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    if-eq v0, v1, :cond_2e

    .line 208
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->lTime:J

    .line 209
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrentPosX:I

    sub-int v1, v0, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 210
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    .line 212
    :cond_2e
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .param p1, "iMax"    # I

    .line 239
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    .line 241
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    if-le v0, p1, :cond_b

    .line 242
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 243
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    .line 245
    :cond_b
    return-void
.end method

.method public setMin(I)V
    .registers 3
    .param p1, "iMin"    # I

    .line 229
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    .line 231
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    if-ge v0, p1, :cond_b

    .line 232
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 233
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    .line 235
    :cond_b
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "sText"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->sText:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    .line 190
    return-void
.end method

.method public updateSlider(I)V
    .registers 6
    .param p1, "nX"    # I

    .line 147
    if-ltz p1, :cond_22

    .line 148
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getPosX()I

    move-result v0

    sub-int/2addr p1, v0

    .line 149
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 153
    :cond_22
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    if-ge v0, v1, :cond_2d

    .line 154
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMin:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    goto :goto_37

    .line 155
    :cond_2d
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    if-le v0, v1, :cond_37

    .line 156
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iMax:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iCurrent:I

    .line 160
    :cond_37
    :goto_37
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateCurrentPosX()V

    .line 162
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->updateTextWidth()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_CurrentPosX:I

    .line 165
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iDifference_PosX:I

    .line 166
    return-void
.end method

.method public final updateTextWidth()V
    .registers 4

    .line 173
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Slider;->getDrawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 175
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextWidth:I

    .line 176
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/Slider;->iTextHeight:I

    .line 177
    return-void
.end method
