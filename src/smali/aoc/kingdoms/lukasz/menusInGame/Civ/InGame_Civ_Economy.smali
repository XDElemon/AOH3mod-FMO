.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Economy.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static goBackToRank:Z

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime:J

    .line 50
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime2:J

    .line 52
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->goBackToRank:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 50

    .line 56
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 61
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 63
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 64
    .local v12, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v13, v1, v2

    .line 66
    .local v13, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x2

    .line 67
    .local v14, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 68
    .local v1, "buttonX":I
    move v2, v14

    .line 70
    .local v2, "buttonY":I
    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 72
    .local v25, "buttonH":I
    sget-boolean v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->goBackToRank:Z

    if-eqz v4, :cond_56

    .line 73
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_7d

    .line 74
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_7d

    .line 78
    :cond_56
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_73

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_73

    .line 79
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_7d

    .line 81
    :cond_73
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_7d

    .line 82
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 86
    :cond_7d
    :goto_7d
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 87
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 89
    .local v6, "r1W":I
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v11, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    float-to-int v8, v7

    .line 95
    .local v8, "c0W":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v7, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v15, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_b3
    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    const/4 v3, 0x1

    if-ge v5, v9, :cond_16d

    .line 100
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v9

    if-ltz v9, :cond_163

    .line 101
    const/4 v9, 0x0

    .line 103
    .local v9, "tAdded":Z
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v3, v16

    .local v3, "k":I
    :goto_dd
    if-ltz v3, :cond_12e

    .line 104
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v37, v8

    .end local v8    # "c0W":I
    .local v37, "c0W":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    move/from16 v17, v9

    .end local v9    # "tAdded":Z
    .local v17, "tAdded":Z
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v9

    if-ne v8, v9, :cond_127

    .line 105
    const/4 v9, 0x1

    .line 107
    .end local v17    # "tAdded":Z
    .restart local v9    # "tAdded":Z
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    move/from16 v17, v9

    .end local v9    # "tAdded":Z
    .restart local v17    # "tAdded":Z
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v15, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    move/from16 v9, v17

    goto :goto_132

    .line 103
    :cond_127
    add-int/lit8 v3, v3, -0x1

    move/from16 v9, v17

    move/from16 v8, v37

    goto :goto_dd

    .end local v17    # "tAdded":Z
    .end local v37    # "c0W":I
    .restart local v8    # "c0W":I
    .restart local v9    # "tAdded":Z
    :cond_12e
    move/from16 v37, v8

    move/from16 v17, v9

    .line 112
    .end local v3    # "k":I
    .end local v8    # "c0W":I
    .restart local v37    # "c0W":I
    :goto_132
    if-nez v9, :cond_165

    .line 113
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_165

    .line 100
    .end local v9    # "tAdded":Z
    .end local v37    # "c0W":I
    .restart local v8    # "c0W":I
    :cond_163
    move/from16 v37, v8

    .line 99
    .end local v8    # "c0W":I
    .restart local v37    # "c0W":I
    :cond_165
    :goto_165
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v37

    const/4 v3, 0x2

    const/4 v9, 0x4

    goto/16 :goto_b3

    .end local v37    # "c0W":I
    .restart local v8    # "c0W":I
    :cond_16d
    move/from16 v37, v8

    .line 119
    .end local v5    # "i":I
    .end local v8    # "c0W":I
    .restart local v37    # "c0W":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$1;

    move-object/from16 v9, p0

    invoke-direct {v5, v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;)V

    move-object v8, v5

    .line 133
    .local v8, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .restart local v5    # "i":I
    :goto_17c
    if-ltz v5, :cond_1b8

    .line 134
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    const v17, 0x3a83126f    # 0.001f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1ae

    .line 135
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v38, v7

    .end local v7    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v38, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v3, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_1b0

    .line 134
    .end local v38    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1ae
    move-object/from16 v38, v7

    .line 133
    .end local v7    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v38    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1b0
    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x1

    move-object/from16 v9, p0

    move-object/from16 v7, v38

    goto :goto_17c

    .end local v38    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1b8
    move-object/from16 v38, v7

    .line 139
    .end local v5    # "i":I
    .end local v7    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v38    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x2

    mul-int/lit8 v7, v7, 0x2

    add-int v39, v3, v7

    .line 140
    .local v39, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$2;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v19, v39, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v20, v39, v7

    const/16 v22, 0x0

    move-object/from16 v40, v15

    .end local v15    # "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v40, "lProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v17, v1

    move-object/from16 v21, v8

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    move v3, v2

    .line 181
    .local v3, "nY":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int v41, v7, v9

    .line 182
    .local v41, "nX":I
    sub-int v7, v11, v10

    sub-int v42, v7, v41

    .line 184
    .local v42, "nW":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    add-int/2addr v2, v7

    .line 189
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v7

    .line 190
    .local v7, "fGold":F
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$3;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 191
    move/from16 v36, v1

    .end local v1    # "buttonX":I
    .local v36, "buttonX":I
    const-string v1, "Economy"

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ": "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 192
    const/16 v43, 0xa

    const/16 v44, 0x64

    const/high16 v45, 0x42c80000    # 100.0f

    const/high16 v46, 0x41200000    # 10.0f

    cmpg-float v16, v7, v46

    if-gez v16, :cond_270

    move-object/from16 v47, v8

    const/16 v8, 0x64

    goto :goto_27a

    :cond_270
    cmpg-float v16, v7, v45

    move-object/from16 v47, v8

    if-gez v16, :cond_279

    const/16 v8, 0xa

    goto :goto_27a

    :cond_279
    const/4 v8, 0x1

    .end local v8    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v47, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :goto_27a
    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    .line 194
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v8, v8, 0x2

    add-int v35, v5, v8

    move-object/from16 v26, v9

    move-object/from16 v27, p0

    move/from16 v31, v41

    move/from16 v32, v3

    move/from16 v33, v42

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 190
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v8

    add-int/2addr v3, v5

    .line 240
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTotalIncomeFromEconomy()F

    move-result v5

    .line 241
    .end local v7    # "fGold":F
    .local v5, "fGold":F
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$4;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    cmpg-float v9, v5, v46

    if-gez v9, :cond_2dc

    const/16 v9, 0x64

    goto :goto_2e4

    :cond_2dc
    cmpg-float v9, v5, v45

    if-gez v9, :cond_2e3

    const/16 v9, 0xa

    goto :goto_2e4

    :cond_2e3
    const/4 v9, 0x1

    :goto_2e4
    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    move-object v8, v15

    move-object v15, v7

    move-object/from16 v16, p0

    move/from16 v19, v41

    move/from16 v20, v3

    move/from16 v21, v42

    move/from16 v22, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v48, v3, v7

    .line 282
    .end local v3    # "nY":I
    .local v48, "nY":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTotalIncomeFromProduction()F

    move-result v3

    .line 283
    .end local v5    # "fGold":F
    .local v3, "fGold":F
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmpg-float v9, v3, v46

    if-gez v9, :cond_341

    const/16 v9, 0x64

    goto :goto_349

    :cond_341
    cmpg-float v9, v3, v45

    if-gez v9, :cond_348

    const/16 v9, 0xa

    goto :goto_349

    :cond_348
    const/4 v9, 0x1

    :goto_349
    invoke-static {v3, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v19, v41

    move/from16 v20, v48

    move/from16 v21, v42

    move/from16 v22, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 321
    .end local v36    # "buttonX":I
    .local v5, "buttonX":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$6;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-eqz v9, :cond_385

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v15, 0x1

    if-ne v9, v15, :cond_382

    goto :goto_386

    :cond_382
    const/16 v28, 0x0

    goto :goto_388

    :cond_385
    const/4 v15, 0x1

    :goto_386
    const/16 v28, 0x1

    :goto_388
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v9, v15, :cond_38f

    const/16 v29, 0x1

    goto :goto_391

    :cond_38f
    const/16 v29, 0x0

    :goto_391
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move/from16 v17, v3

    .end local v3    # "fGold":F
    .local v17, "fGold":F
    const/4 v3, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v9, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v7

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 351
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v15, 0x2

    if-eq v9, v15, :cond_3d9

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v15, 0x3

    if-ne v9, v15, :cond_3d6

    goto :goto_3da

    :cond_3d6
    const/16 v28, 0x0

    goto :goto_3dc

    :cond_3d9
    const/4 v15, 0x3

    :goto_3da
    const/16 v28, 0x1

    :goto_3dc
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v9, v15, :cond_3e3

    const/16 v29, 0x1

    goto :goto_3e5

    :cond_3e3
    const/16 v29, 0x0

    :goto_3e5
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v9, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v7

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 381
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$8;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v15, 0x5

    const/4 v3, 0x4

    if-eq v9, v3, :cond_428

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v3, v15, :cond_425

    goto :goto_428

    :cond_425
    const/16 v28, 0x0

    goto :goto_42a

    :cond_428
    :goto_428
    const/16 v28, 0x1

    :goto_42a
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v3, v15, :cond_431

    const/16 v29, 0x1

    goto :goto_433

    :cond_431
    const/16 v29, 0x0

    :goto_433
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Income"

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v18, 0x6

    mul-int/lit8 v9, v9, 0x6

    add-int v35, v3, v9

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v7

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    .line 411
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$9;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v9, 0x7

    const/4 v15, 0x6

    if-eq v7, v15, :cond_47a

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v7, v9, :cond_477

    goto :goto_47a

    :cond_477
    const/16 v28, 0x0

    goto :goto_47c

    :cond_47a
    :goto_47a
    const/16 v28, 0x1

    :goto_47c
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v7, v9, :cond_483

    const/16 v29, 0x1

    goto :goto_485

    :cond_483
    const/16 v29, 0x0

    :goto_485
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Resource"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v7, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    .line 441
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$10;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/16 v15, 0x8

    const/16 v9, 0x9

    if-eq v7, v15, :cond_4ce

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v7, v9, :cond_4cb

    goto :goto_4ce

    :cond_4cb
    const/16 v28, 0x0

    goto :goto_4d0

    :cond_4ce
    :goto_4ce
    const/16 v28, 0x1

    :goto_4d0
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-ne v7, v9, :cond_4d7

    const/16 v29, 0x1

    goto :goto_4d9

    :cond_4d7
    const/16 v29, 0x0

    :goto_4d9
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "IncomeProduction"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x6

    mul-int/lit8 v9, v9, 0x6

    add-int v35, v7, v9

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v2, v3

    .line 473
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x6

    mul-int/lit8 v9, v9, 0x6

    sub-int/2addr v3, v9

    int-to-float v3, v3

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v9

    float-to-int v4, v3

    .line 474
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    sub-int/2addr v3, v7

    int-to-float v3, v3

    mul-float v3, v3, v9

    float-to-int v9, v3

    .line 477
    .end local v6    # "r1W":I
    .local v9, "r1W":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    .line 479
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53e
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v3, v6, :cond_572

    .line 480
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_56f

    .line 481
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_56f
    add-int/lit8 v3, v3, 0x1

    goto :goto_53e

    :cond_572
    move v6, v2

    move/from16 v23, v5

    move/from16 v26, v17

    .line 485
    .end local v2    # "buttonY":I
    .end local v3    # "i":I
    .end local v5    # "buttonX":I
    .end local v17    # "fGold":F
    .local v6, "buttonY":I
    .local v23, "buttonX":I
    .local v26, "fGold":F
    :goto_577
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a0b

    .line 486
    const/4 v2, 0x0

    .line 488
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    if-nez v3, :cond_5bd

    .line 489
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_583
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5b9

    .line 490
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b4

    .line 491
    move v2, v3

    .line 489
    :cond_5b4
    add-int/lit8 v3, v3, 0x1

    const/16 v15, 0x8

    goto :goto_583

    :cond_5b9
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 495
    :cond_5bd
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5fb

    .line 496
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_5c3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5f7

    .line 497
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f4

    .line 498
    move v2, v3

    .line 496
    :cond_5f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c3

    :cond_5f7
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 502
    :cond_5fb
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_637

    .line 503
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_601
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_633

    .line 504
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v15

    cmpg-float v5, v5, v15

    if-gez v5, :cond_630

    .line 505
    move v2, v3

    .line 503
    :cond_630
    add-int/lit8 v3, v3, 0x1

    goto :goto_601

    :cond_633
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 509
    :cond_637
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_673

    .line 510
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_63d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_66f

    .line 511
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v15

    cmpl-float v5, v5, v15

    if-lez v5, :cond_66c

    .line 512
    move v2, v3

    .line 510
    :cond_66c
    add-int/lit8 v3, v3, 0x1

    goto :goto_63d

    :cond_66f
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 516
    :cond_673
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6a7

    .line 517
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_679
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_6a3

    .line 518
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v15

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_6a0

    .line 519
    move v2, v3

    .line 517
    :cond_6a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_679

    :cond_6a3
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 523
    :cond_6a7
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v15, 0x5

    if-ne v3, v15, :cond_6dc

    .line 524
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_6ad
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6d8

    .line 525
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v17

    cmpl-float v5, v5, v17

    if-lez v5, :cond_6d4

    .line 526
    move v2, v3

    .line 524
    :cond_6d4
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    goto :goto_6ad

    :cond_6d8
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 530
    :cond_6dc
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_724

    .line 531
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_6e2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_720

    .line 532
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71b

    .line 533
    move v2, v3

    .line 531
    :cond_71b
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x6

    const/4 v15, 0x5

    goto :goto_6e2

    :cond_720
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto/16 :goto_7d1

    .line 537
    :cond_724
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_76a

    .line 538
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_72a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_767

    .line 539
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_763

    .line 540
    move v2, v3

    .line 538
    :cond_763
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x7

    goto :goto_72a

    :cond_767
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto :goto_7d1

    .line 544
    :cond_76a
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_79e

    .line 545
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_771
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_79b

    .line 546
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v15

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v17

    cmpg-float v15, v15, v17

    if-gez v15, :cond_798

    .line 547
    move v2, v3

    .line 545
    :cond_798
    add-int/lit8 v3, v3, 0x1

    goto :goto_771

    :cond_79b
    const/16 v15, 0x9

    .end local v3    # "o":I
    goto :goto_7d1

    .line 551
    :cond_79e
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->iSortID:I

    const/16 v15, 0x9

    if-ne v3, v15, :cond_7d1

    .line 552
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_7a5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7d1

    .line 553
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v17

    cmpl-float v5, v5, v17

    if-lez v5, :cond_7cc

    .line 554
    move v2, v3

    .line 552
    :cond_7cc
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_7a5

    .line 559
    .end local v3    # "o":I
    :cond_7d1
    :goto_7d1
    move v3, v10

    .line 561
    .end local v23    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$11;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v17

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v27, 0x2

    mul-int/lit8 v21, v21, 0x2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v31, v10

    const/4 v10, 0x0

    const/16 v28, 0x8

    const/16 v29, 0x9

    const/16 v30, 0x5

    .end local v10    # "paddingLeft":I
    .local v31, "paddingLeft":I
    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v15

    add-int/2addr v3, v5

    .line 587
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    .line 588
    .end local v26    # "fGold":F
    .local v5, "fGold":F
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$12;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    cmpg-float v16, v5, v46

    if-gez v16, :cond_850

    move/from16 v33, v14

    const/16 v14, 0x64

    goto :goto_85a

    :cond_850
    cmpg-float v16, v5, v45

    move/from16 v33, v14

    if-gez v16, :cond_859

    const/16 v14, 0xa

    goto :goto_85a

    :cond_859
    const/4 v14, 0x1

    .end local v14    # "buttonYPadding":I
    .local v33, "buttonYPadding":I
    :goto_85a
    invoke-static {v5, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v10, v15

    move-object/from16 v16, p0

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v4

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v14

    add-int/2addr v3, v10

    .line 596
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v5

    .line 597
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$13;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    cmpg-float v15, v5, v46

    if-gez v15, :cond_8b9

    const/16 v15, 0x64

    goto :goto_8c1

    :cond_8b9
    cmpg-float v15, v5, v45

    if-gez v15, :cond_8c0

    const/16 v15, 0xa

    goto :goto_8c1

    :cond_8c0
    const/4 v15, 0x1

    :goto_8c1
    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v9

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v14

    add-int/2addr v3, v10

    .line 615
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v10

    if-ltz v10, :cond_964

    .line 616
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$14;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v18

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v4

    move/from16 v22, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_981

    .line 623
    :cond_964
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "None"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v18, -0x1

    move-object v15, v10

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v4

    move/from16 v22, v25

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :goto_981
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v14

    add-int/2addr v3, v10

    .line 627
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v5

    .line 628
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$15;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    cmpg-float v15, v5, v46

    if-gez v15, :cond_9b5

    const/16 v15, 0x64

    goto :goto_9bd

    :cond_9b5
    cmpg-float v15, v5, v45

    if-gez v15, :cond_9bc

    const/16 v15, 0xa

    goto :goto_9bd

    :cond_9bc
    const/4 v15, 0x1

    :goto_9bd
    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v9

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v10

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v15

    add-int/2addr v6, v10

    .line 646
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 647
    .end local v2    # "toAddID":I
    move/from16 v23, v3

    move/from16 v26, v5

    move/from16 v10, v31

    move/from16 v14, v33

    const/16 v15, 0x8

    goto/16 :goto_577

    .line 650
    .end local v3    # "buttonX":I
    .end local v5    # "fGold":F
    .end local v31    # "paddingLeft":I
    .end local v33    # "buttonYPadding":I
    .restart local v10    # "paddingLeft":I
    .restart local v14    # "buttonYPadding":I
    .restart local v23    # "buttonX":I
    .restart local v26    # "fGold":F
    :cond_a0b
    move/from16 v31, v10

    move/from16 v33, v14

    .end local v10    # "paddingLeft":I
    .end local v14    # "buttonYPadding":I
    .restart local v31    # "paddingLeft":I
    .restart local v33    # "buttonYPadding":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v13

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 652
    .local v10, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v11, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$16;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move v3, v12

    move v15, v4

    .end local v4    # "r0W":I
    .local v15, "r0W":I
    move v4, v13

    move v5, v11

    move/from16 v16, v6

    .end local v6    # "buttonY":I
    .local v16, "buttonY":I
    move v6, v10

    move-object/from16 v18, v7

    move-object/from16 v17, v38

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v38    # "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "lResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, v0

    move/from16 v19, v37

    move-object/from16 v20, v47

    .end local v37    # "c0W":I
    .end local v47    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v19, "c0W":I
    .local v20, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move/from16 v21, v9

    .end local v9    # "r1W":I
    .local v21, "r1W":I
    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 665
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 689
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 690
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 691
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 669
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 670
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 673
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 674
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 675
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 677
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 678
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 682
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 683
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime:J

    .line 684
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->lTime2:J

    .line 685
    return-void
.end method
