.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "PieChart.java"


# instance fields
.field protected animationTimer:J

.field protected iPieChartHeight:I

.field protected iPieChartWidth:I

.field protected pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;


# direct methods
.method public constructor <init>(IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V
    .registers 9
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I
    .param p5, "nPieChartData"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .param p6, "menuElementHover"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 25
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    .line 26
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setPosX(I)V

    .line 27
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setPosY(I)V

    .line 28
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setWidth(I)V

    .line 29
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->setHeight(I)V

    .line 31
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->fontID:I

    .line 33
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    .line 34
    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    .line 36
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 37
    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 39
    iput-object p5, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    .line 40
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->sortAndBuild_PieChartValues()V

    .line 42
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    .line 43
    return-void
.end method


# virtual methods
.method protected animationPerc()F
    .registers 5

    .line 67
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationTimer:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 49
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getHeight()I

    move-result v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->getWidth()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->drawPieChart(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIII)V

    .line 50
    return-void
.end method

.method public draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZFLcom/badlogic/gdx/graphics/Color;)V
    .registers 21
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z
    .param p6, "fPerc"    # F
    .param p7, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 58
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosX()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getHeight()I

    move-result v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->getWidth()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->drawPieChart2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIIIFLcom/badlogic/gdx/graphics/Color;)V

    .line 59
    return-void
.end method

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

    .line 53
    move-object/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    add-int v4, p6, p2

    add-int v5, p7, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1e

    :cond_1b
    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_20

    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    const/4 v9, 0x1

    :goto_20
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationPerc()F

    move-result v10

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V

    .line 54
    sget-object v11, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v13, p6, p2

    add-int v14, p7, p3

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    move-object/from16 v12, p1

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 55
    return-void
.end method

.method protected drawPieChart2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZIIIIIFLcom/badlogic/gdx/graphics/Color;)V
    .registers 30
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
    .param p11, "fPerc"    # F
    .param p12, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 62
    move-object/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v4, p6, p2

    add-int v5, p7, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->pieChartData:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    if-nez p4, :cond_1c

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->getIsHovered()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1c

    :cond_19
    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_1e

    :cond_1c
    :goto_1c
    const/4 v2, 0x1

    const/4 v9, 0x1

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->animationPerc()F

    move-result v10

    move-object/from16 v2, p1

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZFFLcom/badlogic/gdx/graphics/Color;)V

    .line 63
    sget-object v11, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    add-int v13, p6, p2

    add-int v14, p7, p3

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartWidth:I

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart;->iPieChartHeight:I

    move-object/from16 v12, p1

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 64
    return-void
.end method

.method public getPieChartBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 2

    .line 71
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method
