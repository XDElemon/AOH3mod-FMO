.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;
.source "Text_DescScenarios.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    .line 14
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "fontID"    # I

    .line 18
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;IIII)V

    .line 20
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    if-ge v0, v1, :cond_3b

    .line 26
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPadding()I

    move-result v2

    add-int/2addr v1, v2

    add-int v5, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPaddingY()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    add-int v6, v1, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 14
    .param p1, "sText"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->updateTextPosition()V

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    .line 36
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    .line 38
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "words":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 41
    .local v3, "textPosX":I
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPadding()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 43
    .local v4, "maxW":I
    const-string v5, ""

    .line 45
    .local v5, "currentLine":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v2

    .local v7, "iSize":I
    :goto_23
    if-ge v6, v7, :cond_88

    .line 46
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 47
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v8, v8

    iput v8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    .line 49
    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    add-int/2addr v3, v8

    .line 51
    if-ge v3, v4, :cond_6b

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_85

    .line 55
    :cond_6b
    iget-object v8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextWidth:I

    .line 45
    :goto_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 62
    .end local v6    # "i":I
    .end local v7    # "iSize":I
    :cond_88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_93

    .line 63
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_93
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c7

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c7

    .line 67
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->fontID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    .line 71
    :cond_c7
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iLineSize:I

    .line 73
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->iTextHeight:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v1, v1, v6

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->getPaddingY()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;->setHeight(I)V

    .line 74
    return-void
.end method
