.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_Special;
.source "Text_StaticBG_ID_SpecialColor.java"


# instance fields
.field public iTextWidth2:I

.field public sText2:Ljava/lang/String;

.field public textColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 22
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I
    .param p9, "id"    # I
    .param p10, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 17
    move-object v9, p0

    move-object v10, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_Special;-><init>(Ljava/lang/String;IIIIIII)V

    .line 19
    move-object/from16 v0, p10

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->textColor:Lcom/badlogic/gdx/graphics/Color;

    .line 20
    move/from16 v1, p9

    iput v1, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->id:I

    .line 22
    iput-object v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->sText2:Ljava/lang/String;

    .line 24
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    move v4, p3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 25
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->iTextWidth2:I

    .line 26
    return-void
.end method


# virtual methods
.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 35
    move-object v0, p0

    move/from16 v1, p4

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->fontID:I

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getPosX()I

    move-result v2

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v5

    add-int/2addr v2, v5

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int v6, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 37
    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->fontID:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->iTextWidth2:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v11, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v12, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 38
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 30
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialColor;->textColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
