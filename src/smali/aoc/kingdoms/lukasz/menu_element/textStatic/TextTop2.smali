.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "TextTop2.java"


# instance fields
.field public iTextHeight:I

.field public iTextPosX:I

.field public iTextWidth:I

.field public imageID:I

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .registers 7
    .param p1, "imageID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 27
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->sText:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextWidth:I

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextHeight:I

    .line 28
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 30
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->fontID:I

    .line 31
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->imageID:I

    .line 33
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setPosX(I)V

    .line 34
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setPosY(I)V

    .line 36
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setHeight(I)V

    .line 38
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setText(Ljava/lang/String;)V

    .line 40
    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextPosX:I

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 47
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 51
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 53
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getHeight()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->imageID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 57
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosX()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextPosX:I

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getTextHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 59
    return-void
.end method

.method public final extraWidth()I
    .registers 3

    .line 103
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->imageID:I

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
    .registers 5
    .param p1, "isActive"    # Z

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    :cond_d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f2e147b    # 0.68f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    :cond_22
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f51eb85    # 0.82f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    :cond_2b
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v2, 0x3f47ae14    # 0.78f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_36
    return-object v1
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 66
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 113
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextHeight:I

    return v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 108
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextWidth:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->sText:Ljava/lang/String;

    .line 81
    :try_start_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextWidth:I

    .line 84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextHeight:I

    .line 86
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->extraWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_45

    .line 87
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setWidth(I)V
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_36} :catch_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_36} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_45

    .line 94
    :catch_37
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 92
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3c
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_45

    .line 90
    :catch_41
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_45
    :goto_45
    nop

    .line 97
    :goto_46
    return-void
.end method

.method public final setWidthOfButton()V
    .registers 2

    .line 99
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->extraWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop2;->setWidth(I)V

    .line 100
    return-void
.end method
