.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Population.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static goBackToRank:Z

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    .line 49
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime2:J

    .line 51
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->goBackToRank:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 38

    .line 55
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 60
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 62
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 63
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

    .line 65
    .local v13, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x2

    .line 66
    .local v14, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 67
    .local v1, "buttonX":I
    move v2, v14

    .line 69
    .local v2, "buttonY":I
    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 71
    .local v26, "buttonH":I
    sget-boolean v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->goBackToRank:Z

    if-eqz v4, :cond_56

    .line 72
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_7d

    .line 73
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_7d

    .line 77
    :cond_56
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_73

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_73

    .line 78
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_7d

    .line 80
    :cond_73
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_7d

    .line 81
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 85
    :cond_7d
    :goto_7d
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 86
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 88
    .local v6, "r1W":I
    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v11, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x4

    mul-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 174
    .local v8, "c0W":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v10

    .line 176
    .end local v1    # "buttonX":I
    .local v9, "buttonX":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    .line 178
    .local v1, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v16

    .line 179
    .local v27, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v16

    .line 181
    .local v28, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    move/from16 v24, v8

    .end local v8    # "c0W":I
    .local v24, "c0W":I
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    .line 183
    .local v8, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_ca
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    const/4 v5, 0x1

    if-ge v15, v7, :cond_1a7

    .line 184
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d2
    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v3

    if-ge v7, v3, :cond_18a

    .line 185
    const/4 v3, 0x0

    .line 187
    .local v3, "added":Z
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v5, v16

    .local v5, "k":I
    :goto_e9
    if-ltz v5, :cond_146

    .line 188
    move/from16 v32, v14

    move-object/from16 v14, v27

    .end local v27    # "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v32, "buttonYPadding":I
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v3

    .end local v3    # "added":Z
    .local v17, "added":Z
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v16

    move/from16 v27, v12

    .end local v12    # "menuX":I
    .local v27, "menuX":I
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 189
    move-object/from16 v12, v28

    .end local v28    # "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v16

    move/from16 v28, v13

    .end local v13    # "menuY":I
    .local v28, "menuY":I
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v13

    add-int/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v3, 0x1

    .line 191
    .end local v17    # "added":Z
    .restart local v3    # "added":Z
    goto :goto_152

    .line 187
    .end local v3    # "added":Z
    .end local v12    # "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "menuY":I
    .restart local v17    # "added":Z
    .local v28, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_135
    move-object/from16 v12, v28

    move/from16 v28, v13

    .end local v13    # "menuY":I
    .restart local v12    # "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "menuY":I
    add-int/lit8 v5, v5, -0x1

    move/from16 v3, v17

    move-object/from16 v28, v12

    move/from16 v12, v27

    move-object/from16 v27, v14

    move/from16 v14, v32

    goto :goto_e9

    .end local v17    # "added":Z
    .end local v32    # "buttonYPadding":I
    .restart local v3    # "added":Z
    .local v12, "menuX":I
    .restart local v13    # "menuY":I
    .local v14, "buttonYPadding":I
    .local v27, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_146
    move/from16 v17, v3

    move/from16 v32, v14

    move-object/from16 v14, v27

    move/from16 v27, v12

    move-object/from16 v12, v28

    move/from16 v28, v13

    .line 195
    .end local v5    # "k":I
    .end local v13    # "menuY":I
    .local v12, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v27, "menuX":I
    .local v28, "menuY":I
    .restart local v32    # "buttonYPadding":I
    :goto_152
    if-nez v3, :cond_17a

    .line 196
    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "added":Z
    :cond_17a
    add-int/lit8 v7, v7, 0x1

    move/from16 v13, v28

    const/4 v3, 0x2

    const/4 v5, 0x1

    move-object/from16 v28, v12

    move/from16 v12, v27

    move-object/from16 v27, v14

    move/from16 v14, v32

    goto/16 :goto_d2

    .end local v32    # "buttonYPadding":I
    .local v12, "menuX":I
    .restart local v13    # "menuY":I
    .local v14, "buttonYPadding":I
    .local v27, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_18a
    move/from16 v32, v14

    move-object/from16 v14, v27

    move/from16 v27, v12

    move-object/from16 v12, v28

    move/from16 v28, v13

    .line 183
    .end local v7    # "j":I
    .end local v13    # "menuY":I
    .local v12, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v27, "menuX":I
    .local v28, "menuY":I
    .restart local v32    # "buttonYPadding":I
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    const v5, 0x3e99999a    # 0.3f

    const v7, 0x3e4ccccd    # 0.2f

    move-object/from16 v28, v12

    move/from16 v12, v27

    move-object/from16 v27, v14

    move/from16 v14, v32

    goto/16 :goto_ca

    .end local v32    # "buttonYPadding":I
    .local v12, "menuX":I
    .restart local v13    # "menuY":I
    .local v14, "buttonYPadding":I
    .local v27, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v28, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1a7
    move/from16 v32, v14

    move-object/from16 v14, v27

    move/from16 v27, v12

    move-object/from16 v12, v28

    move/from16 v28, v13

    .line 202
    .end local v13    # "menuY":I
    .end local v15    # "i":I
    .local v12, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "pieCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v27, "menuX":I
    .local v28, "menuY":I
    .restart local v32    # "buttonYPadding":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_1b7
    if-ltz v3, :cond_1d9

    .line 203
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v5, v7, v13}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 202
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b7

    .line 206
    .end local v3    # "i":I
    :cond_1d9
    mul-int/lit8 v3, v26, 0x3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int v13, v3, v5

    .line 207
    .local v13, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$1;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v20, v13, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v21, v13, v5

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move/from16 v18, v9

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/2addr v9, v3

    .line 246
    sub-int v3, v11, v10

    sub-int v33, v3, v9

    .line 249
    .end local v24    # "c0W":I
    .local v33, "c0W":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    move-object/from16 v34, v12

    move/from16 v35, v13

    .end local v12    # "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "pieDim":I
    .local v34, "pieData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v35, "pieDim":I
    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v12, 0x4

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v19, v9

    move/from16 v20, v2

    move/from16 v21, v33

    move/from16 v22, v26

    move/from16 v25, v5

    invoke-direct/range {v15 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 291
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$3;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAverageGrowthRate()F

    move-result v13

    const/16 v15, 0x64

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "%"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v5, 0x64

    move-object v15, v3

    move/from16 v20, v2

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v15

    add-int/2addr v2, v3

    .line 328
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$4;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    move-object/from16 v36, v13

    iget-wide v12, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    const/4 v5, 0x1

    invoke-static {v12, v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(DI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v2

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 386
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 388
    .end local v9    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$5;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-eqz v9, :cond_334

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v13, 0x1

    if-ne v9, v13, :cond_331

    goto :goto_335

    :cond_331
    const/16 v17, 0x0

    goto :goto_337

    :cond_334
    const/4 v13, 0x1

    :goto_335
    const/16 v17, 0x1

    :goto_337
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v9, v13, :cond_33e

    const/16 v18, 0x1

    goto :goto_340

    :cond_33e
    const/16 v18, 0x0

    :goto_340
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Name"

    invoke-virtual {v9, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/lit8 v13, v13, 0x6

    add-int v24, v9, v13

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v20, -0x1

    const/4 v9, 0x6

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v4

    invoke-direct/range {v15 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 418
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$6;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v13, v12, :cond_386

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v12, v15, :cond_383

    goto :goto_386

    :cond_383
    const/16 v17, 0x0

    goto :goto_388

    :cond_386
    :goto_386
    const/16 v17, 0x1

    :goto_388
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v12, v15, :cond_38f

    const/16 v18, 0x1

    goto :goto_391

    :cond_38f
    const/16 v18, 0x0

    :goto_391
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Population"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x6

    add-int v24, v12, v16

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v20, -0x1

    const/4 v12, 0x3

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v4

    invoke-direct/range {v15 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 448
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$7;

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v12, 0x5

    const/4 v9, 0x4

    if-eq v15, v9, :cond_3d6

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v9, v12, :cond_3d3

    goto :goto_3d6

    :cond_3d3
    const/16 v17, 0x0

    goto :goto_3d8

    :cond_3d6
    :goto_3d6
    const/16 v17, 0x1

    :goto_3d8
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v9, v12, :cond_3df

    const/16 v18, 0x1

    goto :goto_3e1

    :cond_3df
    const/16 v18, 0x0

    :goto_3e1
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "GrowthRate"

    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v24, v9, v15

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v20, -0x1

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v6

    invoke-direct/range {v15 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 478
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$8;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v15, 0x7

    const/4 v12, 0x6

    if-eq v9, v12, :cond_427

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v9, v15, :cond_424

    goto :goto_427

    :cond_424
    const/16 v17, 0x0

    goto :goto_429

    :cond_427
    :goto_427
    const/16 v17, 0x1

    :goto_429
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-ne v9, v15, :cond_430

    const/16 v18, 0x1

    goto :goto_432

    :cond_430
    const/16 v18, 0x0

    :goto_432
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Manpower"

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x6

    mul-int/lit8 v12, v12, 0x6

    add-int v24, v9, v12

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v20, -0x1

    const/4 v9, 0x7

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v6

    invoke-direct/range {v15 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v12

    add-int/2addr v2, v5

    .line 511
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x5

    mul-int/lit8 v15, v15, 0x5

    sub-int/2addr v5, v15

    int-to-float v5, v5

    const v15, 0x3e99999a    # 0.3f

    mul-float v5, v5, v15

    float-to-int v5, v5

    .line 512
    .end local v4    # "r0W":I
    .local v5, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x5

    sub-int/2addr v4, v12

    int-to-float v4, v4

    const v12, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v12

    float-to-int v12, v4

    .line 515
    .end local v6    # "r1W":I
    .local v12, "r1W":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v4

    .line 517
    .local v6, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_49a
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v15

    if-ge v4, v15, :cond_4ce

    .line 518
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v15

    if-nez v15, :cond_4cb

    .line 519
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4cb
    add-int/lit8 v4, v4, 0x1

    goto :goto_49a

    :cond_4ce
    move v4, v2

    move v15, v3

    .line 523
    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .local v4, "buttonY":I
    .local v15, "buttonX":I
    :goto_4d0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_806

    .line 524
    const/4 v2, 0x0

    .line 526
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    if-nez v3, :cond_51a

    .line 527
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_4dc
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_516

    .line 528
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    move-object/from16 v29, v1

    .end local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v29, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_510

    .line 529
    move v1, v3

    move v2, v1

    .line 527
    :cond_510
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v29

    const/4 v9, 0x7

    goto :goto_4dc

    .end local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_516
    move-object/from16 v29, v1

    .end local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v3    # "o":I
    .restart local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    goto/16 :goto_69c

    .line 533
    .end local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_51a
    move-object/from16 v29, v1

    .end local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_558

    .line 534
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_522
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_556

    .line 535
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_553

    .line 536
    move v2, v1

    .line 534
    :cond_553
    add-int/lit8 v1, v1, 0x1

    goto :goto_522

    .end local v1    # "o":I
    :cond_556
    goto/16 :goto_69c

    .line 540
    :cond_558
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_590

    .line 541
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_55e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_58e

    .line 542
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    if-ge v3, v9, :cond_58b

    .line 543
    move v2, v1

    .line 541
    :cond_58b
    add-int/lit8 v1, v1, 0x1

    goto :goto_55e

    .end local v1    # "o":I
    :cond_58e
    goto/16 :goto_69c

    .line 547
    :cond_590
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5c8

    .line 548
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_596
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c6

    .line 549
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    if-le v3, v9, :cond_5c3

    .line 550
    move v2, v1

    .line 548
    :cond_5c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_596

    .end local v1    # "o":I
    :cond_5c6
    goto/16 :goto_69c

    .line 554
    :cond_5c8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_602

    .line 555
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_5ce
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_600

    .line 556
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v16

    cmpg-float v9, v9, v16

    if-gez v9, :cond_5fd

    .line 557
    move v2, v1

    .line 555
    :cond_5fd
    add-int/lit8 v1, v1, 0x1

    goto :goto_5ce

    .end local v1    # "o":I
    :cond_600
    goto/16 :goto_69c

    .line 561
    :cond_602
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v9, 0x5

    if-ne v1, v9, :cond_63c

    .line 562
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_608
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_63b

    .line 563
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v16

    cmpl-float v3, v3, v16

    if-lez v3, :cond_637

    .line 564
    move v2, v1

    .line 562
    :cond_637
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    goto :goto_608

    .end local v1    # "o":I
    :cond_63b
    goto :goto_69c

    .line 568
    :cond_63c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_66d

    .line 569
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_642
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_66c

    .line 570
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v9

    if-ge v3, v9, :cond_667

    .line 571
    move v2, v1

    .line 569
    :cond_667
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    const/4 v9, 0x5

    goto :goto_642

    .end local v1    # "o":I
    :cond_66c
    goto :goto_69c

    .line 575
    :cond_66d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->iSortID:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_69c

    .line 576
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_673
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_69c

    .line 577
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v9

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v3

    if-le v9, v3, :cond_698

    .line 578
    move v2, v1

    .line 576
    :cond_698
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x7

    goto :goto_673

    .line 583
    .end local v1    # "o":I
    :cond_69c
    :goto_69c
    move v1, v10

    .line 585
    .end local v15    # "buttonX":I
    .local v1, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$9;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v30, 0x2

    mul-int/lit8 v19, v9, 0x2

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v1

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v26

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v1, v3

    .line 611
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$10;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    move-object/from16 v31, v8

    .end local v8    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v31, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v1

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    add-int/2addr v1, v3

    .line 619
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$11;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    const/16 v15, 0x64

    invoke-static {v9, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, v36

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v8, 0x64

    move-object v15, v3

    move/from16 v20, v1

    move/from16 v22, v12

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v15

    add-int/2addr v1, v3

    .line 627
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$12;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v1

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v15

    add-int/2addr v4, v3

    .line 635
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    .end local v2    # "toAddID":I
    move v15, v1

    move-object/from16 v1, v29

    move-object/from16 v8, v31

    const/4 v9, 0x7

    goto/16 :goto_4d0

    .line 639
    .end local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v31    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v1, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v8    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v15    # "buttonX":I
    :cond_806
    move-object/from16 v29, v1

    move-object/from16 v31, v8

    .end local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v8    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v31    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v28

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 641
    .local v9, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v11, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$13;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v13, 0x1

    move-object/from16 v16, v29

    .end local v29    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v16, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move-object/from16 v1, p0

    move/from16 v3, v27

    move/from16 v17, v4

    .end local v4    # "buttonY":I
    .local v17, "buttonY":I
    move/from16 v4, v28

    move/from16 v18, v5

    .end local v5    # "r0W":I
    .local v18, "r0W":I
    move v5, v11

    move-object/from16 v19, v6

    .end local v6    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v6, v9

    move-object v7, v0

    move-object/from16 v20, v31

    .end local v31    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v20, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v21, v9

    .end local v9    # "menuHeight":I
    .local v21, "menuHeight":I
    move v9, v13

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 654
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 678
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 679
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 680
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 658
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 659
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 662
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 663
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 664
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->getHeight()I

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

    .line 666
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 667
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 671
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 672
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    .line 673
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->lTime2:J

    .line 674
    return-void
.end method
