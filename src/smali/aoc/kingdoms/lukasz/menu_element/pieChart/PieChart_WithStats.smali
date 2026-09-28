.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;
.source "PieChart_WithStats.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x12c


# instance fields
.field protected TEXT_SCALE:F

.field public enableHideStats:Z

.field protected hideAnimation:Z

.field protected isDescriptionActive:Z

.field protected lTime:J

.field protected scrollable:Z

.field protected statsExtraWidth:I

.field protected statsPosY:I


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .registers 9
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "nPieChartData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p6, "menuElementHover"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 35
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    .line 17
    const v0, 0x3f3851ec    # 0.72f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    .line 25
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    .line 28
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    .line 30
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    .line 37
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->initPieChartStats()V

    .line 38
    return-void
.end method

.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;F)V
    .registers 10
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "nPieChartData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p6, "menuElementHover"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .param p7, "textScale"    # F

    .line 41
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;-><init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    .line 17
    const v0, 0x3f3851ec    # 0.72f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    .line 25
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    .line 26
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    .line 28
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    .line 30
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    .line 43
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    .line 45
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->initPieChartStats()V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 18
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 76
    move-object v11, p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPosY()I

    move-result v7

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth_StatsExtraWidth(I)I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v9

    iget v10, v11, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    .line 77
    return-void
.end method

.method protected drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V
    .registers 27
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

    .line 81
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    add-int v5, p6, p2

    add-int v6, p7, p3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_22

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getIsHovered()Z

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
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->animationPerc()F

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    .line 83
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    if-nez v0, :cond_3c

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    if-eqz v0, :cond_36

    goto :goto_3c

    :cond_36
    move/from16 v0, p3

    move/from16 v10, p9

    goto/16 :goto_3b7

    .line 84
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

    .line 85
    return-void

    .line 88
    :cond_4e
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 89
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    add-int v11, p3, v0

    .line 91
    .end local p3    # "iTranslateY":I
    .local v11, "iTranslateY":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_59
    iget-object v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v14, v0, :cond_3ad

    .line 93
    const v15, 0x3f39999a    # 0.725f

    :try_start_64
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    invoke-direct {v0, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 94
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v14

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v14

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3ed9999a    # 0.425f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 97
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v14

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v14

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v7, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v14

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v14

    add-int/2addr v0, v3

    add-int v5, v0, v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v13

    sub-int v6, v0, p10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v7, v0, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 103
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v0, p6, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-int v0, v0, v14

    add-int v0, p7, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v14

    add-int/2addr v0, v3

    add-int/2addr v0, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

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

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

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

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_1d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_1d4} :catch_1d6

    .line 120
    goto/16 :goto_335

    .line 108
    :catch_1d6
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_UNKNOWN:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 110
    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v14

    add-int v3, p7, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v14

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 112
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

    .line 113
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v14

    add-int v3, p7, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v14

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 115
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

    .line 116
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v14

    add-int v3, p7, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v14

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    div-int/lit8 v7, v3, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 117
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    add-int v3, p6, p10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v3, v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

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

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v5, v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    mul-int v5, v5, v14

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v5, v5, v14

    add-int/2addr v3, v5

    add-int v5, v3, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v3, v13

    sub-int v6, v3, p10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

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

    .line 119
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 122
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_335
    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->fontID:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

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

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_WIDTH:I

    add-int/2addr v0, v2

    add-int v5, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-int v0, v0, v14

    add-int v0, p7, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v14

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

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

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v2, v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int v6, v0, v11

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_PIE_CHART_STATS:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 91
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_59

    .line 124
    .end local v14    # "i":I
    :cond_3ad
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    sub-int v0, v11, v0

    .line 126
    .end local v11    # "iTranslateY":I
    .local v0, "iTranslateY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 127
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 130
    :goto_3b7
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v4, p6, p2

    add-int v5, p7, v0

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 131
    return-void
.end method

.method public getDescription()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    return v0
.end method

.method protected getHeight_StatsExtraHeight()I
    .registers 2

    .line 170
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->iPieChartHeight:I

    return v0
.end method

.method protected final getMaxHeight()I
    .registers 4

    .line 146
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v1

    mul-int v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getScrollPosY()I
    .registers 2

    .line 151
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    return v0
.end method

.method public getScrollable()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 177
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getWidth_StatsExtraWidth(I)I

    move-result v0

    return v0
.end method

.method protected getWidth_StatsExtraWidth(I)I
    .registers 9
    .param p1, "nWidth"    # I

    .line 181
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    const/high16 v1, 0x43960000    # 300.0f

    const-wide/16 v2, 0x12c

    if-eqz v0, :cond_24

    .line 182
    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    add-long/2addr v4, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_20

    .line 183
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0

    .line 185
    :cond_20
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    add-int/2addr v0, p1

    return v0

    .line 188
    :cond_24
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    if-eqz v0, :cond_47

    .line 189
    iget-wide v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    add-long/2addr v4, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_43

    .line 190
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    add-int/2addr v0, p1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 192
    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    .line 193
    return p1

    .line 197
    :cond_47
    return p1
.end method

.method public initPieChartStats()V
    .registers 8

    .line 49
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 51
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->updateScrollable_Y()V

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "tempMaxWidth":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 57
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->fontID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

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

    .line 59
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_55

    .line 60
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    move v0, v2

    .line 56
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 64
    .end local v1    # "i":I
    :cond_58
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->TEXT_SCALE:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I
    :try_end_64
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_64} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_64} :catch_65

    .end local v0    # "tempMaxWidth":F
    goto :goto_74

    .line 67
    :catch_65
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    goto :goto_75

    .line 65
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_6d
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsExtraWidth:I

    .line 69
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_74
    nop

    .line 70
    :goto_75
    return-void
.end method

.method public scrollByWheel(I)V
    .registers 3
    .param p1, "nScoll"    # I

    .line 233
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getScrollPosY()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->setScrollPosY(I)V

    .line 234
    return-void
.end method

.method public setDescription(Z)V
    .registers 6
    .param p1, "isDescriptionActive"    # Z

    .line 216
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->enableHideStats:Z

    if-eqz v0, :cond_22

    .line 217
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    .line 219
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 220
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->isDescriptionActive:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->hideAnimation:Z

    .line 221
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    goto :goto_1b

    .line 224
    :cond_17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->lTime:J

    .line 227
    :goto_1b
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x25

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->animationTimer:J

    .line 229
    :cond_22
    return-void
.end method

.method public setScrollPosY(I)V
    .registers 5
    .param p1, "nStatsPosY"    # I

    .line 156
    const/4 v0, 0x1

    if-lez p1, :cond_a

    .line 157
    const/4 p1, 0x0

    .line 158
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    goto :goto_26

    .line 159
    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_26

    .line 160
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v2

    add-int p1, v1, v2

    .line 161
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 164
    :cond_26
    :goto_26
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    if-eq v0, p1, :cond_2c

    .line 165
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    .line 167
    :cond_2c
    return-void
.end method

.method public setScrollable(Z)V
    .registers 2
    .param p1, "scrollable"    # Z

    .line 206
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    .line 207
    return-void
.end method

.method protected final updateScrollable_Y()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getMaxHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->getHeight_StatsExtraHeight()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    goto :goto_13

    .line 140
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->scrollable:Z

    .line 141
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_WithStats;->statsPosY:I

    .line 143
    :goto_13
    return-void
.end method
