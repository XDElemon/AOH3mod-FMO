.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;
.source "PieChart_WithStatsResources.java"


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .registers 15
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "nPieChartData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p6, "menuElementHover"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 19
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;F)V

    .line 20
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

    .line 65
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    add-int v5, p6, p2

    add-int v6, p7, p3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->iPieChartWidth:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->iPieChartHeight:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_22

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getIsHovered()Z

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
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->animationPerc()F

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    .line 67
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->isDescriptionActive:Z

    if-nez v0, :cond_3a

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->hideAnimation:Z

    if-eqz v0, :cond_36

    goto :goto_3a

    :cond_36
    move/from16 v0, p3

    goto/16 :goto_417

    .line 68
    :cond_3a
    :goto_3a
    add-int v0, p6, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, p7

    sub-int v2, v2, p3

    move/from16 v10, p9

    neg-int v3, v10

    invoke-static {v12, v0, v2, v13, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 69
    return-void

    .line 72
    :cond_4c
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 73
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->statsPosY:I

    add-int v11, p3, v0

    .line 75
    .end local p3    # "iTranslateY":I
    .local v11, "iTranslateY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v0, v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getStatsImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v0, v2

    .line 77
    .local v14, "tempFlagScale":F
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_69
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v15, v0, :cond_40d

    .line 79
    const/high16 v16, 0x40000000    # 2.0f

    const/4 v9, 0x4

    :try_start_74
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3f39999a    # 0.725f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 80
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3ed9999a    # 0.425f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 83
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 86
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v7, v0, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 89
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    div-int/2addr v3, v9

    sub-int v5, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v7, v0, 0x4
    :try_end_1da
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_1da} :catch_279

    const/4 v8, 0x0

    const/4 v0, 0x1

    move-object/from16 v3, p1

    const/4 v10, 0x4

    move v9, v0

    :try_start_1e0
    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 95
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;

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

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v5

    div-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v0, v3

    add-int v5, v0, v11

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v14

    float-to-int v6, v0

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v14

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_275
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e0 .. :try_end_275} :catch_277

    .line 107
    goto/16 :goto_38d

    .line 96
    :catch_277
    move-exception v0

    goto :goto_27b

    :catch_279
    move-exception v0

    const/4 v10, 0x4

    .line 97
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_27b
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

    .line 98
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 100
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

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    div-int/lit8 v7, v3, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 102
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/2addr v5, v10

    sub-int/2addr v3, v5

    add-int v3, v3, p7

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    .line 104
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_38d
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->fontID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v15}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v2

    invoke-static {v2, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPercentage(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int v0, p6, p10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getStatsImageWidth()I

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

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

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

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v2, v2, v6

    div-float v2, v2, v16

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, v11

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_PIE_CHART_STATS:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 77
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p9

    goto/16 :goto_69

    .line 112
    .end local v15    # "i":I
    :cond_40d
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->statsPosY:I

    sub-int v0, v11, v0

    .line 114
    .end local v11    # "iTranslateY":I
    .local v0, "iTranslateY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 115
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 118
    .end local v14    # "tempFlagScale":F
    :goto_417
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v4, p6, p2

    add-int v5, p7, v0

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->iPieChartWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->iPieChartHeight:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 119
    return-void
.end method

.method public getStatImage(I)Laoc/kingdoms/lukasz/textures/Image;
    .registers 3
    .param p1, "nID"    # I

    .line 50
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public getStatsImageHeight()I
    .registers 3

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getStatsImageWidth()I
    .registers 3

    .line 54
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public initPieChartStats()V
    .registers 8

    .line 24
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 26
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->updateScrollable_Y()V

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "tempMaxWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 32
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

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

    .line 34
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_55

    .line 35
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    move v0, v2

    .line 31
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 39
    .end local v1    # "i":I
    :cond_58
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getStatsImageWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->TEXT_SCALE:F

    mul-float v3, v3, v4

    mul-float v2, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->getStatsImageHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->statsExtraWidth:I
    :try_end_7a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_7a} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_7a} :catch_7b

    .end local v0    # "tempMaxWidth":F
    goto :goto_8a

    .line 42
    :catch_7b
    move-exception v0

    .line 43
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->statsExtraWidth:I

    goto :goto_8b

    .line 40
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_83
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStatsResources;->statsExtraWidth:I

    .line 44
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_8a
    nop

    .line 45
    :goto_8b
    return-void
.end method
