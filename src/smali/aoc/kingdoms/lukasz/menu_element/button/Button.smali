.class public Laoc/kingdoms/lukasz/menu_element/button/Button;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;,
        Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
    }
.end annotation


# static fields
.field protected static final COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected checkbox:Z

.field private checkboxState:Z

.field protected iTextHeight:I

.field protected iTextPositionX:I

.field protected iTextWidth:I

.field protected oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

.field protected sText:Ljava/lang/String;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .registers 22
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "isClickable"    # Z

    .line 55
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    .line 45
    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    .line 56
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 21
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z

    .line 51
    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    .line 45
    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    .line 52
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 53
    return-void
.end method


# virtual methods
.method public buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
    .registers 2

    .line 115
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    if-eqz v0, :cond_a

    .line 116
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$3;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    return-object v0

    .line 136
    :cond_a
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$4;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 102
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    goto :goto_1a

    .line 105
    :cond_a
    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    :goto_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    invoke-interface {v0, p1, p2, p3, p5}, Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;->drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 112
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 147
    if-eqz p4, :cond_1b

    .line 148
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    goto/16 :goto_fd

    .line 150
    :cond_1b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 151
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/Button;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 152
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 153
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_fd

    .line 156
    :cond_4a
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 157
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 159
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_FRAME2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 161
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 163
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 165
    :goto_fd
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 168
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 169
    return-void
.end method

.method public getCheckboxState()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 172
    if-eqz p1, :cond_5

    .line 173
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 175
    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0

    .line 179
    :cond_e
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_19

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_19
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .registers 2

    .line 248
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    return v0
.end method

.method public getTextPos()I
    .registers 2

    .line 243
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextPositionX:I

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidth()I
    .registers 2

    .line 238
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    return v0
.end method

.method public final init(Ljava/lang/String;IIIIIIZZZZ)V
    .registers 13
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "nTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I
    .param p8, "isClickable"    # Z
    .param p9, "isVisible"    # Z
    .param p10, "checkbox"    # Z
    .param p11, "checkboxState"    # Z

    .line 60
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 62
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    .line 64
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setPosX(I)V

    .line 65
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setPosY(I)V

    .line 66
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setWidth(I)V

    .line 67
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setHeight(I)V

    .line 69
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setText(Ljava/lang/String;)V

    .line 70
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextPositionX:I

    .line 72
    if-gez p3, :cond_21

    .line 73
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    goto :goto_28

    .line 81
    :cond_21
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/button/Button$2;-><init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    .line 89
    :goto_28
    iput-boolean p10, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    .line 90
    iput-boolean p11, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    .line 92
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->oCheckbox:Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;

    .line 94
    invoke-virtual {p0, p8}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setClickable(Z)V

    .line 95
    invoke-virtual {p0, p9}, Laoc/kingdoms/lukasz/menu_element/button/Button;->setVisible(Z)V

    .line 96
    return-void
.end method

.method public final setCheckbox(Z)V
    .registers 2
    .param p1, "checkbox"    # Z

    .line 225
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkbox:Z

    .line 226
    return-void
.end method

.method public setCheckboxState(Z)V
    .registers 2
    .param p1, "checkboxState"    # Z

    .line 233
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->checkboxState:Z

    .line 234
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "sText"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->sText:Ljava/lang/String;

    .line 199
    if-eqz p1, :cond_25

    .line 200
    :try_start_4
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 202
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 204
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I

    .line 205
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    .line 206
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    goto :goto_39

    .line 207
    :cond_25
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextWidth:I
    :try_end_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_2a} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_2a} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_39

    .line 217
    :catch_2b
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 213
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_30
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/NullPointerException;
    goto :goto_39

    .line 209
    :catch_35
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 221
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_39
    nop

    .line 222
    :goto_3a
    return-void
.end method
