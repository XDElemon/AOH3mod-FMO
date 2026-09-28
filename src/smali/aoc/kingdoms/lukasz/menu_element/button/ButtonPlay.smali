.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ButtonPlay.java"


# instance fields
.field public flipX:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .registers 16
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "flipX"    # Z

    .line 16
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 17
    iput-boolean p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 22
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p4, :cond_9

    goto :goto_2b

    .line 26
    :cond_9
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_4c

    .line 23
    :cond_2b
    :goto_2b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 28
    :goto_4c
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 32
    move-object v0, p0

    move/from16 v1, p4

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 33
    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextToDraw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v3

    iget-boolean v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    if-eqz v6, :cond_15

    goto :goto_17

    :cond_15
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    :goto_17
    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int v6, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v7, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_87

    .line 35
    :cond_47
    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextToDraw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v3

    iget-boolean v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    if-eqz v4, :cond_56

    goto :goto_58

    :cond_56
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    :goto_58
    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int v12, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v13, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 37
    :goto_87
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 41
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 46
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method
