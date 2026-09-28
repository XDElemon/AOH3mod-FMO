.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Text_Static.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;
    }
.end annotation


# instance fields
.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected sText:Ljava/lang/String;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 29
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 32
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 33
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 35
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 37
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 39
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "fontID"    # I

    .line 47
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 48
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 50
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    .line 52
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 53
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 55
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 57
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 59
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$2;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iTextPositionX"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iHeight"    # I

    .line 67
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 70
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    .line 71
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 72
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 73
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 75
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iTextPositionX"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 80
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 81
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 83
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    .line 84
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 85
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 86
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    .line 87
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 89
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 9
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I

    .line 94
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 95
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 97
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    .line 99
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    .line 100
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 101
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 102
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    .line 103
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 105
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I
    .param p8, "nCurrent"    # I

    .line 110
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 16
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 111
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 113
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    .line 114
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iCurrent:I

    .line 116
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    .line 117
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosX(I)V

    .line 118
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setPosY(I)V

    .line 119
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    .line 120
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V

    .line 122
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V

    .line 125
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 152
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 153
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 5
    .param p1, "isActive"    # Z

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_36

    .line 157
    :cond_d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getIsHovered()Z

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

    .line 156
    :goto_36
    return-object v1
.end method

.method public getCurrent()I
    .registers 2

    .line 203
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iCurrent:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 198
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    return v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 193
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->sText:Ljava/lang/String;

    .line 172
    :try_start_2
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 174
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 176
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    .line 177
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    .line 179
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    if-ge v1, v2, :cond_2b

    .line 180
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setWidth(I)V

    .line 183
    :cond_2b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getHeight()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    if-ge v1, v2, :cond_38

    .line 184
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextHeight:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->setHeight(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    .line 188
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :cond_38
    goto :goto_3d

    .line 186
    :catch_39
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method protected updateTextPosition()V
    .registers 2

    .line 130
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    if-gez v0, :cond_c

    .line 131
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    goto :goto_13

    .line 139
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    .line 146
    :goto_13
    return-void
.end method
