.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;
.source "Text_TitleBlueSort.java"


# instance fields
.field public active:Z

.field public flipY:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;IIIII)V
    .registers 18
    .param p1, "active"    # Z
    .param p2, "flipY"    # Z
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I

    .line 17
    move-object v8, p0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;-><init>(Ljava/lang/String;IIIIII)V

    .line 19
    move v0, p1

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->active:Z

    .line 20
    move v1, p2

    iput-boolean v1, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->flipY:Z

    .line 21
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;IIIIII)V
    .registers 19
    .param p1, "active"    # Z
    .param p2, "flipY"    # Z
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I
    .param p9, "fontID"    # I

    .line 24
    move-object v8, p0

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;-><init>(Ljava/lang/String;IIIIII)V

    .line 26
    move v0, p1

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->active:Z

    .line 27
    move v1, p2

    iput-boolean v1, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->flipY:Z

    .line 28
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

    .line 32
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 34
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->active:Z

    if-eqz v0, :cond_58

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 36
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    const/4 v5, 0x0

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;->flipY:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 37
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 39
    :cond_58
    return-void
.end method

.method public drawLines(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 42
    return-void
.end method

.method public getSFX()I
    .registers 2

    .line 46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getTab()I

    move-result v0

    return v0
.end method
