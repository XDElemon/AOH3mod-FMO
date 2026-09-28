.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "Text_Desc.java"


# instance fields
.field public iLineSize:I

.field public sLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 12
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I

    .line 31
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iLineSize:I

    .line 32
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->init(Ljava/lang/String;IIII)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "nFontID"    # I

    .line 35
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iLineSize:I

    .line 36
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->init(Ljava/lang/String;IIII)V

    .line 37
    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .registers 4
    .param p0, "clickable"    # Z
    .param p1, "isHovered"    # Z
    .param p2, "isActive"    # Z

    .line 113
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
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 96
    move-object v0, p0

    move-object v9, p1

    move v10, p4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getClickable()Z

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getIsHovered()Z

    move-result v6

    invoke-static {v5, v6, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getBoxAlpha(ZZZ)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getHeight()I

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 98
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e333333    # 0.175f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 99
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 101
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 102
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    const v3, 0x3ee66666    # 0.45f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 103
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosX()I

    move-result v1

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    .line 104
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 106
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_d3
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iLineSize:I

    if-ge v7, v1, :cond_10d

    .line 107
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPadding()I

    move-result v4

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPaddingY()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int v5, v5, v7

    add-int/2addr v1, v5

    add-int v5, v1, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_d3

    .line 110
    .end local v7    # "i":I
    :cond_10d
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 117
    if-eqz p1, :cond_5

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 119
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 122
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method

.method public final getPadding()I
    .registers 2

    .line 127
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getPaddingY()I
    .registers 2

    .line 131
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public init(Ljava/lang/String;IIII)V
    .registers 22
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "nFontID"    # I

    .line 40
    move-object/from16 v0, p0

    move/from16 v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 41
    move/from16 v2, p5

    iput v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    .line 42
    const/4 v3, 0x0

    iput v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextPositionX:I

    .line 43
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->setPosX(I)V

    .line 44
    move/from16 v5, p3

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->setPosY(I)V

    .line 45
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->setWidth(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->updateTextPosition()V

    .line 47
    invoke-static/range {p1 .. p1}, Lteam/rainfall/fontFix/TextSpliter;->splitText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "words":[Ljava/lang/String;
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    .line 49
    .local v7, "maxW":I
    const/4 v8, 0x0

    .line 50
    .local v8, "textPosX":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v9, "currentLine":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 52
    .local v10, "i":I
    const/4 v11, 0x0

    .line 53
    .local v11, "tTextWidth":I
    array-length v12, v6

    .local v12, "iSize":I
    :goto_32
    if-ge v10, v12, :cond_98

    .line 54
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v3, v6, v10

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v14, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 55
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    .line 56
    .end local v8    # "textPosX":I
    .local v3, "textPosX":I
    if-ge v3, v7, :cond_77

    aget-object v8, v6, v10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_77

    .line 57
    aget-object v8, v6, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextWidth:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextWidth:I

    goto :goto_93

    .line 59
    :cond_77
    aget-object v8, v6, v10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_93

    .line 60
    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v13, v6, v10

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .end local v9    # "currentLine":Ljava/lang/StringBuilder;
    .local v8, "currentLine":Ljava/lang/StringBuilder;
    move v3, v11

    move-object v9, v8

    move v8, v3

    goto :goto_94

    .line 53
    .end local v8    # "currentLine":Ljava/lang/StringBuilder;
    .restart local v9    # "currentLine":Ljava/lang/StringBuilder;
    :cond_93
    :goto_93
    move v8, v3

    .end local v3    # "textPosX":I
    .local v8, "textPosX":I
    :goto_94
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_32

    .line 66
    .end local v12    # "iSize":I
    :cond_98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a7

    .line 67
    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_a7
    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_df

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_df

    .line 73
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 74
    .local v3, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v3, v12, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 75
    iget v12, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v12, v12

    iput v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextHeight:I

    goto :goto_f8

    .line 77
    .end local v3    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :cond_df
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 78
    .restart local v3    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v13, "ABC"

    invoke-virtual {v3, v12, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 79
    iget v12, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v12, v12

    iput v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextHeight:I

    .line 82
    :goto_f8
    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iput v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iLineSize:I

    .line 84
    const/4 v10, 0x0

    :goto_101
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iLineSize:I

    if-ge v10, v12, :cond_134

    .line 85
    new-instance v12, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v12}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    move-object v3, v12

    .line 86
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->fontID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v3, v12, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 87
    iget v12, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_131

    .line 88
    iget v12, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v12, v12

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->setWidth(I)V

    .line 84
    :cond_131
    add-int/lit8 v10, v10, 0x1

    goto :goto_101

    .line 92
    :cond_134
    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->iTextHeight:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    mul-int v12, v12, v13

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v13, v13, v14

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->getPaddingY()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;->setHeight(I)V

    .line 93
    return-void
.end method
