.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;
.source "ButtonStatsRectIMG_Bonuses_Right_Color.java"


# instance fields
.field public bonusColors:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 25
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "maxIconWidth"    # I

    .line 15
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p8

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>()V

    .line 16
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 17
    move-object/from16 v0, p1

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->sText_Orginal:Ljava/lang/String;

    .line 19
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->fontID2:I

    .line 20
    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->imageID:I

    .line 22
    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->maxIconWidth:I

    .line 24
    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getImageScale(I)F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    .line 25
    .local v1, "iconScale":F
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iconWidth:I

    .line 26
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iconHeight:I

    .line 28
    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->sText2:Ljava/lang/String;

    .line 30
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 31
    .local v2, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->fontID2:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 32
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextBonusW:I

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "tWMax":I
    :goto_6c
    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v6, v15

    iget v7, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextBonusW:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_bd

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_bd

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_bd

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->setText(Ljava/lang/String;)V

    goto :goto_6c

    .line 39
    :cond_bd
    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 26
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "maxIconWidth"    # I
    .param p9, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 42
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p8

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right;-><init>()V

    .line 43
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->init(Ljava/lang/String;IIIIIIZZZZ)V

    .line 44
    move-object/from16 v0, p1

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->sText_Orginal:Ljava/lang/String;

    .line 46
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->fontID2:I

    .line 47
    iput v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->imageID:I

    .line 49
    iput v15, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->maxIconWidth:I

    .line 51
    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getImageScale(I)F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    .line 52
    .local v1, "iconScale":F
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iconWidth:I

    .line 53
    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    iput v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iconHeight:I

    .line 55
    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->sText2:Ljava/lang/String;

    .line 57
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 58
    .local v2, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->fontID2:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 59
    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    iput v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextBonusW:I

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "tWMax":I
    :goto_6c
    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v6, v15

    iget v7, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->iTextBonusW:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_bd

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_bd

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_bd

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->setText(Ljava/lang/String;)V

    goto :goto_6c

    .line 66
    :cond_bd
    move-object/from16 v4, p9

    iput-object v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    .line 67
    return-void
.end method


# virtual methods
.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 71
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Right_Color;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
