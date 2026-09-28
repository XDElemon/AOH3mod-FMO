.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GoodsMarket.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    .line 62
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime2:J

    .line 66
    const/4 v0, 0x4

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 55

    .line 68
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v1, v2

    .line 73
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 75
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v14

    .line 76
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v15, v1, v2

    .line 78
    .local v15, "menuY":I
    move v5, v12

    .line 79
    .local v5, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 81
    .local v1, "buttonY":I
    const/4 v2, 0x0

    .line 82
    .local v2, "maxGoodsH":I
    const/4 v3, 0x0

    .line 84
    .local v3, "maxGoodsW":I
    const/4 v4, 0x0

    move v11, v3

    .end local v3    # "maxGoodsW":I
    .local v4, "i":I
    .local v11, "maxGoodsW":I
    :goto_3f
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v4, v3, :cond_7b

    .line 85
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_5d

    .line 86
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    .line 89
    :cond_5d
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    if-le v3, v11, :cond_78

    .line 90
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    move v11, v3

    .line 84
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 94
    .end local v4    # "i":I
    :cond_7b
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    .line 95
    .local v16, "maxIconW":I
    mul-int/lit8 v3, v12, 0x2

    sub-int v3, v13, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    const/4 v10, 0x2

    div-int/lit8 v17, v3, 0x2

    .line 98
    .local v17, "statW":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 99
    .local v9, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    .line 100
    .local v8, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    .line 101
    .local v7, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    .line 102
    .local v6, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 105
    .local v4, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ae
    sget v18, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    move/from16 v18, v14

    .end local v14    # "menuX":I
    .local v18, "menuX":I
    const/4 v14, 0x1

    if-ge v3, v10, :cond_1f1

    .line 106
    sget v10, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v10

    if-ltz v10, :cond_1e6

    .line 107
    const/4 v10, 0x0

    .line 109
    .local v10, "tAdded":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v14, v20

    .local v14, "k":I
    :goto_da
    if-ltz v14, :cond_17f

    .line 110
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move/from16 v22, v10

    .end local v10    # "tAdded":Z
    .local v22, "tAdded":Z
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget v20, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    move/from16 v23, v15

    .end local v15    # "menuY":I
    .local v23, "menuY":I
    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    if-ne v10, v15, :cond_177

    .line 111
    const/4 v10, 0x1

    .line 113
    .end local v22    # "tAdded":Z
    .restart local v10    # "tAdded":Z
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sget v20, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    move/from16 v22, v10

    .end local v10    # "tAdded":Z
    .restart local v22    # "tAdded":Z
    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v10

    add-float/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v15

    add-float/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v7, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v15

    add-float/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v6, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v15, 0x1

    add-int/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    move/from16 v10, v22

    goto :goto_183

    .line 109
    :cond_177
    add-int/lit8 v14, v14, -0x1

    move/from16 v10, v22

    move/from16 v15, v23

    goto/16 :goto_da

    .end local v22    # "tAdded":Z
    .end local v23    # "menuY":I
    .restart local v10    # "tAdded":Z
    .restart local v15    # "menuY":I
    :cond_17f
    move/from16 v22, v10

    move/from16 v23, v15

    .line 121
    .end local v14    # "k":I
    .end local v15    # "menuY":I
    .restart local v23    # "menuY":I
    :goto_183
    if-nez v10, :cond_1e8

    .line 122
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e8

    .line 106
    .end local v10    # "tAdded":Z
    .end local v23    # "menuY":I
    .restart local v15    # "menuY":I
    :cond_1e6
    move/from16 v23, v15

    .line 105
    .end local v15    # "menuY":I
    .restart local v23    # "menuY":I
    :cond_1e8
    :goto_1e8
    add-int/lit8 v3, v3, 0x1

    move/from16 v14, v18

    move/from16 v15, v23

    const/4 v10, 0x2

    goto/16 :goto_ae

    .end local v23    # "menuY":I
    .restart local v15    # "menuY":I
    :cond_1f1
    move/from16 v23, v15

    .line 132
    .end local v3    # "i":I
    .end local v15    # "menuY":I
    .restart local v23    # "menuY":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;

    move-object/from16 v14, p0

    invoke-direct {v3, v14}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;)V

    move-object v15, v3

    .line 146
    .local v15, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    .restart local v3    # "i":I
    :goto_201
    if-ltz v3, :cond_240

    .line 147
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const v20, 0x3a83126f    # 0.001f

    cmpl-float v10, v10, v20

    if-lez v10, :cond_235

    .line 148
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v22, v4

    .end local v4    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    move-object/from16 v24, v6

    .end local v6    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v24, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v10, v4, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v15, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_239

    .line 147
    .end local v22    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v4    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_235
    move-object/from16 v22, v4

    move-object/from16 v24, v6

    .line 146
    .end local v4    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v22    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :goto_239
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v22

    move-object/from16 v6, v24

    goto :goto_201

    .end local v22    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v4    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_240
    move-object/from16 v22, v4

    move-object/from16 v24, v6

    .line 152
    .end local v3    # "i":I
    .end local v4    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v22    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v10, 0x3

    mul-int/lit8 v3, v3, 0x3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int v20, v3, v4

    .line 153
    .local v20, "pieDim":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v26, v20, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v27, v20, v3

    const/16 v28, 0x0

    move-object v3, v6

    move-object/from16 v36, v22

    .end local v22    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v36, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v4, p0

    move-object/from16 v38, v6

    move-object/from16 v37, v24

    .end local v24    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v37, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v6, v25

    move-object/from16 v39, v7

    .end local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v39, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v7, v26

    move-object/from16 v40, v8

    .end local v8    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v40, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v8, v27

    move-object/from16 v22, v9

    .end local v9    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v9, v15

    const/4 v14, 0x2

    move-object/from16 v10, v28

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    move-object/from16 v3, v38

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    move v3, v1

    .line 196
    .local v3, "nY":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int v38, v4, v6

    .line 197
    .local v38, "nX":I
    sub-int v4, v13, v12

    sub-int v41, v4, v38

    .line 199
    .local v41, "nW":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    .line 201
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$3;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "LargestGoodsProducers"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v32

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v24, v4

    move-object/from16 v25, p0

    move/from16 v28, v38

    move/from16 v29, v3

    move/from16 v30, v41

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 244
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$4;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 245
    const-string v8, "UniqueResources"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    .line 246
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int v33, v16, v6

    move-object/from16 v24, v4

    move/from16 v29, v38

    move/from16 v30, v3

    move/from16 v31, v41

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int v42, v3, v4

    .line 269
    .end local v3    # "nY":I
    .local v42, "nY":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 270
    const-string v8, "Legacy"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v6

    const/16 v43, 0x0

    cmpl-float v6, v6, v43

    if-lez v6, :cond_39c

    const-string v6, "+"

    goto :goto_39d

    :cond_39c
    move-object v6, v10

    :goto_39d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v6

    const/16 v9, 0x64

    invoke-static {v6, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v33, v16, v4

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v29, v38

    move/from16 v30, v42

    move/from16 v31, v41

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 269
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v44, v2, v3

    .line 323
    .end local v2    # "maxGoodsH":I
    .local v44, "maxGoodsH":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x5

    mul-int/lit8 v2, v2, 0x5

    add-int v45, v11, v2

    .line 325
    .end local v11    # "maxGoodsW":I
    .local v45, "maxGoodsW":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 327
    .end local v5    # "buttonX":I
    .local v2, "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v46, v45, v3

    .line 328
    .local v46, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    sub-int v3, v3, v46

    const/4 v11, 0x4

    div-int/lit8 v47, v3, 0x4

    .line 330
    .local v47, "r1W":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$6;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-eqz v4, :cond_3fe

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3fb

    goto :goto_3ff

    :cond_3fb
    const/16 v26, 0x0

    goto :goto_401

    :cond_3fe
    const/4 v5, 0x1

    :goto_3ff
    const/16 v26, 0x1

    :goto_401
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_408

    const/16 v27, 0x1

    goto :goto_40a

    :cond_408
    const/16 v27, 0x0

    :goto_40a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/lit8 v5, v5, 0x6

    add-int v33, v4, v5

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v29, -0x1

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v46

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 360
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$7;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-eq v4, v14, :cond_44f

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_44c

    goto :goto_450

    :cond_44c
    const/16 v26, 0x0

    goto :goto_452

    :cond_44f
    const/4 v5, 0x3

    :goto_450
    const/16 v26, 0x1

    :goto_452
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_459

    const/16 v27, 0x1

    goto :goto_45b

    :cond_459
    const/16 v27, 0x0

    :goto_45b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Provinces"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v33, v4, v5

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v29, -0x1

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v47

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 390
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$8;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-eq v4, v11, :cond_49e

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v8, :cond_49b

    goto :goto_49e

    :cond_49b
    const/16 v26, 0x0

    goto :goto_4a0

    :cond_49e
    :goto_49e
    const/16 v26, 0x1

    :goto_4a0
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v8, :cond_4a7

    const/16 v27, 0x1

    goto :goto_4a9

    :cond_4a7
    const/16 v27, 0x0

    :goto_4a9
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Production"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v33, v4, v5

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v29, -0x1

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v47

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 420
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$9;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v5, 0x7

    if-eq v4, v6, :cond_4ed

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_4ea

    goto :goto_4ed

    :cond_4ea
    const/16 v26, 0x0

    goto :goto_4ef

    :cond_4ed
    :goto_4ed
    const/16 v26, 0x1

    :goto_4ef
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_4f6

    const/16 v27, 0x1

    goto :goto_4f8

    :cond_4f6
    const/16 v27, 0x0

    :goto_4f8
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Income"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v33, v4, v7

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v29, -0x1

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v47

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 450
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$10;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/16 v7, 0x8

    const/16 v5, 0x9

    if-eq v4, v7, :cond_53f

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_53c

    goto :goto_53f

    :cond_53c
    const/16 v26, 0x0

    goto :goto_541

    :cond_53f
    :goto_53f
    const/16 v26, 0x1

    :goto_541
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-ne v4, v5, :cond_548

    const/16 v27, 0x1

    goto :goto_54a

    :cond_548
    const/16 v27, 0x0

    :goto_54a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "ShareInWorldProduction"

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v33, v4, v9

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v29, -0x1

    move-object/from16 v24, v3

    move-object/from16 v25, p0

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v47

    invoke-direct/range {v24 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 482
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5d1

    .line 483
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$11;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "None"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v10, v13, v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v3, v14

    move-object/from16 v4, p0

    const/4 v9, 0x0

    move v8, v12

    const/16 v49, 0x0

    move v9, v1

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    move/from16 v50, v12

    move-object/from16 v14, v22

    move-object/from16 v11, v37

    move-object/from16 v10, v40

    move v12, v1

    move-object/from16 v1, v39

    move/from16 v39, v13

    move-object/from16 v13, v36

    move-object/from16 v36, v15

    move v15, v2

    goto/16 :goto_c33

    .line 514
    :cond_5d1
    const/16 v49, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 516
    .local v9, "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5da
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_5ea

    .line 517
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_5da

    .line 520
    .end local v3    # "i":I
    :cond_5ea
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 522
    .local v4, "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_5f5
    const/high16 v7, 0x42c80000    # 100.0f

    if-ge v3, v5, :cond_686

    .line 523
    move-object/from16 v6, v40

    .end local v40    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v6, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    mul-float v24, v24, v7

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    move-object/from16 v14, v22

    .end local v22    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    div-float v24, v24, v8

    mul-float v24, v24, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v8, v8, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v7

    if-nez v7, :cond_64f

    .line 526
    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v11, v37

    .end local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v11, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v11, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v1

    move-object/from16 v8, v36

    goto :goto_672

    .line 529
    .end local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_64f
    move-object/from16 v11, v37

    .end local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v8, v36

    .end local v36    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    move/from16 v24, v1

    .end local v1    # "buttonY":I
    .local v24, "buttonY":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v11, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 522
    :goto_672
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v40, v6

    move-object/from16 v36, v8

    move-object/from16 v37, v11

    move-object/from16 v22, v14

    move/from16 v1, v24

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v11, 0x4

    const/4 v14, 0x2

    goto/16 :goto_5f5

    .end local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v24    # "buttonY":I
    .restart local v1    # "buttonY":I
    .restart local v22    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v36    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v40    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_686
    move/from16 v24, v1

    move-object/from16 v14, v22

    move-object/from16 v8, v36

    move-object/from16 v11, v37

    move-object/from16 v6, v40

    .line 533
    .end local v1    # "buttonY":I
    .end local v3    # "i":I
    .end local v5    # "iSize":I
    .end local v22    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v36    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v40    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "buttonY":I
    mul-int/lit8 v1, v12, 0x2

    sub-int v1, v13, v1

    sub-int v1, v1, v45

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    const/4 v3, 0x4

    div-int/2addr v1, v3

    move v3, v2

    move/from16 v2, v24

    .line 535
    .end local v24    # "buttonY":I
    .local v1, "textW":I
    .local v2, "buttonY":I
    .local v3, "buttonX":I
    :goto_69e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c1c

    .line 536
    const/4 v5, 0x0

    .line 538
    .local v5, "toAddID":I
    sget v22, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    if-nez v22, :cond_6ed

    .line 539
    const/16 v22, 0x1

    move/from16 v7, v22

    .local v7, "o":I
    :goto_6ad
    move/from16 v24, v3

    .end local v3    # "buttonX":I
    .local v24, "buttonX":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_6e3

    .line 540
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .local v26, "toAddID":I
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6dc

    .line 541
    move v3, v7

    move v5, v3

    .end local v26    # "toAddID":I
    .local v3, "toAddID":I
    goto :goto_6de

    .line 540
    .end local v3    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_6dc
    move/from16 v5, v26

    .line 539
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :goto_6de
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v24

    goto :goto_6ad

    :cond_6e3
    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    move-object/from16 v37, v11

    move/from16 v11, v26

    move-object/from16 v7, v39

    .end local v7    # "o":I
    goto/16 :goto_8c3

    .line 544
    .end local v24    # "buttonX":I
    .end local v26    # "toAddID":I
    .local v3, "buttonX":I
    .restart local v5    # "toAddID":I
    :cond_6ed
    move/from16 v24, v3

    .end local v3    # "buttonX":I
    .restart local v24    # "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_730

    .line 545
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_6f5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_726

    .line 546
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_721

    .line 547
    move v5, v3

    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    goto :goto_723

    .line 546
    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_721
    move/from16 v5, v26

    .line 545
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :goto_723
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f5

    :cond_726
    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    move-object/from16 v37, v11

    move/from16 v11, v26

    move-object/from16 v7, v39

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 550
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :cond_730
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_766

    .line 551
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_736
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_75c

    .line 552
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v7, v5, :cond_756

    .line 553
    move v5, v3

    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    goto :goto_758

    .line 552
    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_756
    move/from16 v5, v26

    .line 551
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :goto_758
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x2

    goto :goto_736

    :cond_75c
    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    move-object/from16 v37, v11

    move/from16 v11, v26

    move-object/from16 v7, v39

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 556
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :cond_766
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_79b

    .line 557
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_76c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_791

    .line 558
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v7, v5, :cond_78c

    .line 559
    move v5, v3

    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    goto :goto_78e

    .line 558
    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_78c
    move/from16 v5, v26

    .line 557
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :goto_78e
    add-int/lit8 v3, v3, 0x1

    goto :goto_76c

    :cond_791
    move/from16 v26, v5

    .end local v5    # "toAddID":I
    .restart local v26    # "toAddID":I
    move-object/from16 v37, v11

    move/from16 v11, v26

    move-object/from16 v7, v39

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 562
    .end local v26    # "toAddID":I
    .restart local v5    # "toAddID":I
    :cond_79b
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_7cb

    .line 563
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_7a1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_7c4

    .line 564
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    cmpl-float v7, v7, v25

    if-lez v7, :cond_7c0

    .line 565
    move v5, v3

    .line 563
    :cond_7c0
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x4

    goto :goto_7a1

    :cond_7c4
    move-object/from16 v37, v11

    move-object/from16 v7, v39

    move v11, v5

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 568
    :cond_7cb
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_7fb

    .line 569
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_7d1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_7f4

    .line 570
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    cmpg-float v7, v7, v25

    if-gez v7, :cond_7f0

    .line 571
    move v5, v3

    .line 569
    :cond_7f0
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x5

    goto :goto_7d1

    :cond_7f4
    move-object/from16 v37, v11

    move-object/from16 v7, v39

    move v11, v5

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 574
    :cond_7fb
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/4 v7, 0x6

    if-ne v3, v7, :cond_82f

    .line 575
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_801
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_828

    .line 576
    move-object/from16 v7, v39

    .end local v39    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v7, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    cmpl-float v25, v25, v26

    if-lez v25, :cond_822

    .line 577
    move v5, v3

    .line 575
    :cond_822
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v39, v7

    const/4 v7, 0x6

    goto :goto_801

    .end local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v39    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_828
    move-object/from16 v7, v39

    .end local v39    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v37, v11

    move v11, v5

    .end local v3    # "o":I
    goto/16 :goto_8c3

    .line 580
    .end local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v39    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_82f
    move-object/from16 v7, v39

    .end local v39    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    move/from16 v25, v5

    const/4 v5, 0x7

    .end local v5    # "toAddID":I
    .local v25, "toAddID":I
    if-ne v3, v5, :cond_863

    .line 581
    const/4 v3, 0x1

    move/from16 v5, v25

    .end local v25    # "toAddID":I
    .restart local v3    # "o":I
    .restart local v5    # "toAddID":I
    :goto_83b
    move-object/from16 v37, v11

    .end local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_861

    .line 582
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    cmpg-float v11, v11, v25

    if-gez v11, :cond_85c

    .line 583
    move v5, v3

    .line 581
    :cond_85c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v37

    goto :goto_83b

    :cond_861
    move v11, v5

    .end local v3    # "o":I
    goto :goto_8c3

    .line 586
    .end local v5    # "toAddID":I
    .end local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v25    # "toAddID":I
    :cond_863
    move-object/from16 v37, v11

    .end local v11    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v37    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/16 v11, 0x8

    if-ne v3, v11, :cond_894

    .line 587
    const/4 v3, 0x1

    move/from16 v5, v25

    .end local v25    # "toAddID":I
    .restart local v3    # "o":I
    .restart local v5    # "toAddID":I
    :goto_86e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_892

    .line 588
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    cmpl-float v11, v11, v25

    if-lez v11, :cond_88d

    .line 589
    move v5, v3

    .line 587
    :cond_88d
    add-int/lit8 v3, v3, 0x1

    const/16 v11, 0x8

    goto :goto_86e

    :cond_892
    move v11, v5

    .end local v3    # "o":I
    goto :goto_8c3

    .line 592
    .end local v5    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_894
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iSortID:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_8c1

    .line 593
    const/4 v3, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .restart local v3    # "o":I
    .local v11, "toAddID":I
    :goto_89d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_8c3

    .line 594
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    cmpg-float v5, v5, v25

    if-gez v5, :cond_8bc

    .line 595
    move v11, v3

    .line 593
    :cond_8bc
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x9

    goto :goto_89d

    .line 592
    .end local v3    # "o":I
    .end local v11    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_8c1
    move/from16 v11, v25

    .line 600
    .end local v25    # "toAddID":I
    .restart local v11    # "toAddID":I
    :cond_8c3
    :goto_8c3
    add-int v3, v12, v45

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    .line 602
    .end local v24    # "buttonX":I
    .local v3, "buttonX":I
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v43

    if-lez v5, :cond_bc4

    .line 603
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$12;

    move-object/from16 v36, v15

    .end local v15    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v36, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v39, v13

    .end local v13    # "menuWidth":I
    .local v39, "menuWidth":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v50, v12

    .end local v12    # "paddingLeft":I
    .local v50, "paddingLeft":I
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v28, -0x1

    move-object/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v29, v3

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v44

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 692
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$13;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v15, 0x447a0000    # 1000.0f

    move-object/from16 v51, v8

    .end local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v51, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    cmpl-float v13, v13, v15

    if-ltz v13, :cond_97d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/4 v8, 0x1

    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0xa

    goto :goto_98d

    :cond_97d
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/16 v13, 0xa

    invoke-static {v8, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    :goto_98d
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v28, -0x1

    move-object/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v29, v3

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v44

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 742
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$14;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v13

    if-gez v15, :cond_9ee

    const/16 v15, 0x64

    goto :goto_9f0

    :cond_9ee
    const/16 v15, 0xa

    :goto_9f0
    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v28, -0x1

    move-object/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v29, v3

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v44

    invoke-direct/range {v24 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 788
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v15, 0x42c80000    # 100.0f

    invoke-static {v15, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpg-float v15, v15, v13

    if-gez v15, :cond_a59

    const/16 v15, 0x64

    goto :goto_a5b

    :cond_a59
    const/16 v15, 0xa

    :goto_a5b
    invoke-static {v12, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "%"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v8, v12

    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    move-result v33

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x1

    const/16 v28, -0x1

    move-object/from16 v24, v5

    move-object/from16 v25, p0

    move/from16 v29, v3

    move/from16 v30, v2

    move/from16 v31, v1

    move/from16 v32, v44

    invoke-direct/range {v24 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIIFIZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int v12, v3, v5

    .line 844
    .end local v3    # "buttonX":I
    .local v12, "buttonX":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ab3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v3, v5, :cond_ac3

    .line 845
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 844
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab3

    .line 848
    .end local v3    # "i":I
    :cond_ac3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_ac4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    if-ge v3, v5, :cond_b23

    .line 849
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v5, v8, :cond_b1e

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_b1e

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-lez v5, :cond_b1e

    .line 850
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v13

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v13, v13, v15

    float-to-int v13, v13

    add-int/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b20

    .line 849
    :cond_b1e
    const/high16 v15, 0x42c80000    # 100.0f

    .line 848
    :goto_b20
    add-int/lit8 v3, v3, 0x1

    goto :goto_ac4

    :cond_b23
    const/high16 v15, 0x42c80000    # 100.0f

    .line 854
    .end local v3    # "i":I
    const/4 v3, 0x1

    .line 856
    .local v3, "civProducerPosition":I
    const/4 v5, 0x0

    move v13, v3

    .end local v3    # "civProducerPosition":I
    .local v5, "i":I
    .local v13, "civProducerPosition":I
    :goto_b28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v5, v3, :cond_b4b

    .line 857
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v3, v8, :cond_b48

    .line 858
    add-int/lit8 v13, v13, 0x1

    .line 856
    :cond_b48
    add-int/lit8 v5, v5, 0x1

    goto :goto_b28

    .line 862
    .end local v5    # "i":I
    :cond_b4b
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$16;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    mul-int/lit8 v3, v50, 0x2

    sub-int v24, v39, v3

    move-object v3, v8

    move-object v15, v4

    .end local v4    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v15, "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v4, p0

    const/16 v26, 0x9

    const/16 v27, 0x7

    move/from16 v28, v12

    const/16 v29, 0x6

    move-object v12, v6

    .end local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v12, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v28, "buttonX":I
    move/from16 v6, v22

    move/from16 v22, v1

    move-object v1, v7

    const/16 v25, 0x8

    const/16 v30, 0x4

    const/16 v31, 0x5

    const/high16 v32, 0x42c80000    # 100.0f

    const/16 v33, 0x2

    .end local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v1, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v22, "textW":I
    move/from16 v7, v50

    move-object/from16 v31, v15

    move-object/from16 v52, v51

    const/16 v34, 0x5

    move-object v15, v8

    .end local v15    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v51    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v31, "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v52, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v2

    move-object/from16 v35, v9

    const/16 v40, 0x64

    .end local v9    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v35, "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v45

    move-object/from16 v48, v10

    move/from16 v10, v44

    move-object/from16 v53, v37

    move-object/from16 v37, v12

    move v12, v11

    .end local v11    # "toAddID":I
    .local v12, "toAddID":I
    .local v37, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v53, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v11, v24

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    const/4 v4, 0x1

    if-ne v13, v4, :cond_bbc

    .line 888
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 891
    :cond_bbc
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v44, v3

    add-int/2addr v2, v3

    move/from16 v3, v28

    goto :goto_bed

    .line 602
    .end local v22    # "textW":I
    .end local v28    # "buttonX":I
    .end local v31    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v35    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v36    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v39    # "menuWidth":I
    .end local v50    # "paddingLeft":I
    .end local v52    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v53    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v1, "textW":I
    .local v3, "buttonX":I
    .restart local v4    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "toAddID":I
    .local v12, "paddingLeft":I
    .local v13, "menuWidth":I
    .local v15, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v37, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_bc4
    move/from16 v22, v1

    move-object/from16 v31, v4

    move-object v1, v7

    move-object/from16 v52, v8

    move-object/from16 v35, v9

    move-object/from16 v48, v10

    move/from16 v50, v12

    move/from16 v39, v13

    move-object/from16 v36, v15

    move-object/from16 v53, v37

    const/4 v4, 0x1

    const/16 v25, 0x8

    const/16 v26, 0x9

    const/16 v27, 0x7

    const/16 v29, 0x6

    const/16 v30, 0x4

    const/high16 v32, 0x42c80000    # 100.0f

    const/16 v33, 0x2

    const/16 v34, 0x5

    const/16 v40, 0x64

    move-object/from16 v37, v6

    move v12, v11

    .line 894
    .end local v4    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "toAddID":I
    .end local v13    # "menuWidth":I
    .end local v15    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v1, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v12, "toAddID":I
    .restart local v22    # "textW":I
    .restart local v31    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v35    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v36    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v37, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v39    # "menuWidth":I
    .restart local v50    # "paddingLeft":I
    .restart local v52    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v53    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :goto_bed
    invoke-interface {v14, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 895
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 896
    move-object/from16 v10, v37

    .end local v37    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 897
    move-object/from16 v5, v31

    .end local v31    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v5, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 898
    move-object/from16 v11, v53

    .end local v53    # "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v11, "lProductionEfficiency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 899
    move-object/from16 v13, v52

    .end local v52    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v13, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 900
    .end local v12    # "toAddID":I
    move-object v4, v5

    move-object v6, v10

    move-object v8, v13

    move-object/from16 v9, v35

    move-object/from16 v15, v36

    move/from16 v13, v39

    move-object/from16 v10, v48

    move/from16 v12, v50

    const/high16 v7, 0x42c80000    # 100.0f

    move-object/from16 v39, v1

    move/from16 v1, v22

    goto/16 :goto_69e

    .line 902
    .end local v5    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v22    # "textW":I
    .end local v35    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v36    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v50    # "paddingLeft":I
    .local v1, "textW":I
    .restart local v4    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "paddingLeft":I
    .local v13, "menuWidth":I
    .restart local v15    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v39, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_c1c
    move/from16 v22, v1

    move/from16 v24, v3

    move-object v5, v4

    move-object v10, v6

    move-object/from16 v35, v9

    move/from16 v50, v12

    move-object/from16 v36, v15

    move-object/from16 v1, v39

    move/from16 v39, v13

    move-object v13, v8

    .end local v3    # "buttonX":I
    .end local v4    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v6    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "paddingLeft":I
    .end local v15    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v1, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v13, "lProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "textW":I
    .restart local v24    # "buttonX":I
    .restart local v35    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v36    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v39, "menuWidth":I
    .restart local v50    # "paddingLeft":I
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->clear()V

    move v12, v2

    move/from16 v15, v24

    .line 905
    .end local v2    # "buttonY":I
    .end local v5    # "lMarketShare":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v22    # "textW":I
    .end local v24    # "buttonX":I
    .end local v35    # "production":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "buttonY":I
    .local v15, "buttonX":I
    :goto_c33
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v23

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 907
    .local v9, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v8, v39

    const/4 v4, 0x0

    .end local v39    # "menuWidth":I
    .local v8, "menuWidth":I
    invoke-direct {v2, v4, v4, v8, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$17;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ProducedGoods"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v28, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, p0

    invoke-direct/range {v24 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v22, v1

    .end local v1    # "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v22, "lIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v4, v23

    move v5, v8

    move v6, v9

    move-object v7, v0

    move/from16 v24, v8

    .end local v8    # "menuWidth":I
    .local v24, "menuWidth":I
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "menuHeight":I
    .local v19, "menuHeight":I
    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 920
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 924
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 925
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 928
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 929
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 930
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 932
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 933
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 937
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 938
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    .line 939
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime2:J

    .line 940
    return-void
.end method
