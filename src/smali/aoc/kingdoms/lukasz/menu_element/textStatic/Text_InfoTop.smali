.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "Text_InfoTop.java"


# instance fields
.field public colorText:Lcom/badlogic/gdx/graphics/Color;

.field public colorTextActive:Lcom/badlogic/gdx/graphics/Color;

.field public colorTextHover:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 12
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iTextPositionX"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3db8b8b9

    const v3, 0x3d60e0e1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v2, 0x3d20a0a1

    const v3, 0x3cc0c0c1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da8a8a9

    const v2, 0x3c008081

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    .line 14
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 16
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    .line 18
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextPositionX:I

    .line 19
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosX(I)V

    .line 20
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosY(I)V

    .line 21
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setWidth(I)V

    .line 22
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setHeight(I)V

    .line 24
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setText(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->updateTextPosition()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 13
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I

    .line 29
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3db8b8b9

    const v3, 0x3d60e0e1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3df0f0f1

    const v2, 0x3d20a0a1

    const v3, 0x3cc0c0c1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da8a8a9

    const v2, 0x3c008081

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 32
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    .line 34
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextPositionX:I

    .line 35
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosX(I)V

    .line 36
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setPosY(I)V

    .line 37
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setWidth(I)V

    .line 38
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setHeight(I)V

    .line 40
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->setText(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->updateTextPosition()V

    .line 43
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

    .line 47
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getHeight()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->iTextHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 48
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 8
    .param p1, "isActive"    # Z

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1a

    .line 57
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextActive:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v5, v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v1

    .line 58
    :cond_1a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 59
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorTextHover:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v5, v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v1

    .line 62
    :cond_36
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_InfoTop;->colorText:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->fAnimationPerc:F

    mul-float v5, v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v1
.end method
