.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;
.source "PieChart_WithStatsImages.java"


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .registers 7
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "nPieChartData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p6, "menuElementHover"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 18
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .registers 28
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z
    .param p6, "nPosX"    # I
    .param p7, "nPosY"    # I
    .param p8, "nWidth"    # I
    .param p9, "nHeight"    # I
    .param p10, "nWidth_LEFT"    # I

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    add-int v5, p6, p2

    add-int v6, p7, p3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->iPieChartWidth:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->iPieChartHeight:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_22

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_22

    :cond_1f
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_24

    :cond_22
    :goto_22
    const/4 v0, 0x1

    const/4 v10, 0x1

    :goto_24
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->animationPerc()F

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    .line 66
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->isDescriptionActive:Z

    if-nez v0, :cond_3c

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->hideAnimation:Z

    if-eqz v0, :cond_36

    goto :goto_3c

    :cond_36
    move/from16 v0, p3

    move/from16 v10, p9

    goto/16 :goto_3e7

    .line 67
    :cond_3c
    :goto_3c
    add-int v0, p6, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, p7

    sub-int v2, v2, p3

    move/from16 v10, p9

    neg-int v3, v10

    invoke-static {v12, v0, v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 68
    return-void

    .line 71
    :cond_4e
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 72
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->statsPosY:I

    add-int v11, p3, v0

    .line 74
    .end local p3    # "iTranslateY":I
    .local v11, "iTranslateY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v0, v2

    .line 76
    .local v14, "tempFlagScale":F
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_67
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v15, v0, :cond_3dd

    .line 78
    const/high16 v16, 0x40000000    # 2.0f

    :try_start_71
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3f39999a    # 0.725f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 79
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v15

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3ed9999a    # 0.425f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 82
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v15

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 84
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 85
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v15

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v7, v0, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 88
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v15

    add-int/2addr v0, v3

    add-int/2addr v0, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x4

    sub-int v5, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v7, v0, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 92
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v15

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    div-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int v5, v0, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v14

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v14

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_248
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_71 .. :try_end_248} :catch_24a

    .line 106
    goto/16 :goto_35e

    .line 95
    :catch_24a
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v15

    add-int v3, p7, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v15

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 99
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v15

    add-int v3, p7, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v15

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    div-int/lit8 v7, v3, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 101
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v3, v5

    add-int v3, v3, p7

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    mul-int v5, v5, v15

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v15

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    div-int/lit8 v7, v3, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 103
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 109
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_35e
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->fontID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v2

    const/4 v4, 0x5

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPercentage(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int v0, p6, p10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v2

    add-int v5, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v0, v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-int v0, v0, v15

    add-int v0, p7, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v15

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v2, v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v2, v2, v6

    div-float v2, v2, v16

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, v11

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_PIE_CHART_STATS:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 76
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_67

    .line 111
    .end local v15    # "i":I
    :cond_3dd
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->statsPosY:I

    sub-int v0, v11, v0

    .line 113
    .end local v11    # "iTranslateY":I
    .local v0, "iTranslateY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 114
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 117
    .end local v14    # "tempFlagScale":F
    :goto_3e7
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v4, p6, p2

    add-int v5, p7, v0

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->iPieChartWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->iPieChartHeight:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 118
    return-void
.end method

.method public getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;
    .registers 3
    .param p1, "nID"    # I

    .line 49
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    return-object v0
.end method

.method public getStatsImageHeight()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getStatsImageWidth()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public initPieChartStats()V
    .registers 8

    .line 23
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 25
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->updateScrollable_Y()V

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "tempMaxWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 31
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPercentage(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 33
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_55

    .line 34
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    move v0, v2

    .line 30
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 38
    .end local v1    # "i":I
    :cond_58
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->TEXT_SCALE:F

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->getStatsImageHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->statsExtraWidth:I
    :try_end_7a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_7a} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_7a} :catch_7b

    .end local v0    # "tempMaxWidth":F
    goto :goto_8a

    .line 41
    :catch_7b
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->statsExtraWidth:I

    goto :goto_8b

    .line 39
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_83
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsImages;->statsExtraWidth:I

    .line 43
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_8a
    nop

    .line 44
    :goto_8b
    return-void
.end method
