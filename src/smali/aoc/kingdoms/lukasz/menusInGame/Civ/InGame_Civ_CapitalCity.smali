.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_CapitalCity.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime:J

    .line 49
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime2:J

    .line 51
    const/4 v0, 0x4

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 44

    .line 53
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 58
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 60
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 61
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

    .line 63
    .local v13, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x2

    .line 64
    .local v14, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 65
    .local v1, "buttonX":I
    move v2, v14

    .line 67
    .local v2, "buttonY":I
    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 69
    .local v25, "buttonH":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_64

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_64

    .line 70
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_6e

    .line 72
    :cond_64
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_6e

    .line 73
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 76
    :cond_6e
    :goto_6e
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 77
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 79
    .local v6, "r1W":I
    const/4 v8, 0x0

    .line 81
    .local v8, "maxLevel":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v10

    .line 83
    .end local v1    # "buttonX":I
    .local v9, "buttonX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v15, "tCivsPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct/range {v16 .. v16}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    move-object/from16 v37, v16

    .line 88
    .local v37, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_a1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v7, v5, :cond_110

    .line 89
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-lez v5, :cond_101

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    move/from16 v38, v4

    .end local v4    # "r0W":I
    .local v38, "r0W":I
    int-to-long v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v7, v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    move-object/from16 v5, v37

    .end local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v5, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 94
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v3

    if-le v3, v8, :cond_105

    .line 95
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v3

    move v8, v3

    .end local v8    # "maxLevel":I
    .local v3, "maxLevel":I
    goto :goto_105

    .line 89
    .end local v3    # "maxLevel":I
    .end local v5    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v38    # "r0W":I
    .restart local v4    # "r0W":I
    .restart local v8    # "maxLevel":I
    .restart local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_101
    move/from16 v38, v4

    move-object/from16 v5, v37

    .line 88
    .end local v4    # "r0W":I
    .end local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v5    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v38    # "r0W":I
    :cond_105
    :goto_105
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v37, v5

    move/from16 v4, v38

    const/4 v3, 0x2

    const v5, 0x3ecccccd    # 0.4f

    goto :goto_a1

    .end local v5    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v38    # "r0W":I
    .restart local v4    # "r0W":I
    .restart local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_110
    move/from16 v38, v4

    move-object/from16 v5, v37

    .line 100
    .end local v4    # "r0W":I
    .end local v7    # "i":I
    .end local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v5    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v38    # "r0W":I
    mul-int/lit8 v3, v25, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v37, v3, v4

    .line 101
    .local v37, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$1;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v19, v37, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v20, v37, v4

    const/16 v22, 0x0

    move-object v7, v15

    .end local v15    # "tCivsPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v7, "tCivsPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v17, v9

    move-object/from16 v21, v5

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v3, v15

    add-int/2addr v9, v3

    .line 140
    sub-int v3, v11, v10

    sub-int v39, v3, v9

    .line 142
    .local v39, "c0W":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$2;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 143
    move-object/from16 v40, v5

    .end local v5    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v40, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const-string v5, "Civilizations"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    move/from16 v41, v14

    .end local v14    # "buttonYPadding":I
    .local v41, "buttonYPadding":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 146
    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v9

    move/from16 v21, v2

    move/from16 v22, v39

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 142
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v14

    add-int/2addr v2, v3

    .line 176
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$3;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 177
    move/from16 v42, v12

    .end local v12    # "menuX":I
    .local v42, "menuX":I
    const-string v12, "Max"

    invoke-virtual {v15, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 180
    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v15, v3

    move/from16 v21, v2

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v12

    add-int/2addr v2, v3

    .line 219
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 221
    .end local v9    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$4;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-eqz v12, :cond_22b

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v15, 0x1

    if-ne v12, v15, :cond_228

    goto :goto_22c

    :cond_228
    const/16 v28, 0x0

    goto :goto_22e

    :cond_22b
    const/4 v15, 0x1

    :goto_22c
    const/16 v28, 0x1

    :goto_22e
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-ne v12, v15, :cond_235

    const/16 v29, 0x1

    goto :goto_237

    :cond_235
    const/16 v29, 0x0

    :goto_237
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v12, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v12, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v9

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v38

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 251
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$5;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v15, 0x3

    const/4 v14, 0x2

    if-eq v12, v14, :cond_27c

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-ne v12, v15, :cond_279

    goto :goto_27c

    :cond_279
    const/16 v28, 0x0

    goto :goto_27e

    :cond_27c
    :goto_27c
    const/16 v28, 0x1

    :goto_27e
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-ne v12, v15, :cond_285

    const/16 v29, 0x1

    goto :goto_287

    :cond_285
    const/16 v29, 0x0

    :goto_287
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Capital"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Population"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v35, v12, v14

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v9

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    add-int/2addr v3, v9

    .line 281
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$6;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v14, 0x4

    const/4 v15, 0x5

    if-eq v12, v14, :cond_2e9

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-ne v12, v15, :cond_2e6

    goto :goto_2e9

    :cond_2e6
    const/16 v28, 0x0

    goto :goto_2eb

    :cond_2e9
    :goto_2e9
    const/16 v28, 0x1

    :goto_2eb
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-ne v12, v15, :cond_2f2

    const/16 v29, 0x1

    goto :goto_2f4

    :cond_2f2
    const/16 v29, 0x0

    :goto_2f4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "CapitalCity"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Level"

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v35, v5, v12

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v9

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v9

    add-int/2addr v2, v5

    .line 314
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v9, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x5

    mul-int/lit8 v12, v12, 0x5

    sub-int/2addr v5, v12

    int-to-float v5, v5

    const v12, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v12

    float-to-int v12, v5

    .line 315
    .end local v38    # "r0W":I
    .local v12, "r0W":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x5

    sub-int/2addr v5, v9

    int-to-float v5, v5

    const v9, 0x3e99999a    # 0.3f

    mul-float v5, v5, v9

    float-to-int v14, v5

    move v9, v2

    move/from16 v18, v3

    .line 318
    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .end local v6    # "r1W":I
    .local v9, "buttonY":I
    .local v14, "r1W":I
    .local v18, "buttonX":I
    :goto_372
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d9

    .line 319
    const/4 v2, 0x0

    .line 321
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    if-nez v3, :cond_3b4

    .line 322
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_37e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3b2

    .line 323
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3af

    .line 324
    move v2, v3

    .line 322
    :cond_3af
    add-int/lit8 v3, v3, 0x1

    goto :goto_37e

    .end local v3    # "o":I
    :cond_3b2
    goto/16 :goto_4b4

    .line 328
    :cond_3b4
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3f0

    .line 329
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_3ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3ee

    .line 330
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3eb

    .line 331
    move v2, v3

    .line 329
    :cond_3eb
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ba

    .end local v3    # "o":I
    :cond_3ee
    goto/16 :goto_4b4

    .line 335
    :cond_3f0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_41a

    .line 336
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_3f6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_418

    .line 337
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v21, v5, v19

    if-gez v21, :cond_415

    .line 338
    move v2, v3

    .line 336
    :cond_415
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f6

    .end local v3    # "o":I
    :cond_418
    goto/16 :goto_4b4

    .line 342
    :cond_41a
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_444

    .line 343
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_420
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_442

    .line 344
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v6, v19, v21

    if-lez v6, :cond_43f

    .line 345
    move v2, v3

    .line 343
    :cond_43f
    add-int/lit8 v3, v3, 0x1

    goto :goto_420

    .end local v3    # "o":I
    :cond_442
    goto/16 :goto_4b4

    .line 349
    :cond_444
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_47d

    .line 350
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_44a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_47c

    .line 351
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v6

    if-ge v5, v6, :cond_477

    .line 352
    move v2, v3

    .line 350
    :cond_477
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x4

    goto :goto_44a

    .end local v3    # "o":I
    :cond_47c
    goto :goto_4b4

    .line 356
    :cond_47d
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->iSortID:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4b4

    .line 357
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_483
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4b4

    .line 358
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v5

    if-le v6, v5, :cond_4b0

    .line 359
    move v2, v3

    .line 357
    :cond_4b0
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x5

    goto :goto_483

    .line 364
    .end local v3    # "o":I
    :cond_4b4
    :goto_4b4
    move v3, v10

    .line 366
    .end local v18    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$7;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v27, v8

    move-object v8, v15

    const/16 v28, 0x3

    const/16 v29, 0x5

    .end local v8    # "maxLevel":I
    .local v27, "maxLevel":I
    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v19, v6

    move/from16 v20, v3

    move/from16 v21, v9

    move/from16 v22, v12

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 389
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$8;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v30, v10

    .end local v10    # "paddingLeft":I
    .local v30, "paddingLeft":I
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v5

    move/from16 v20, v3

    move/from16 v22, v14

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 408
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " / "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v5

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v10

    add-int/2addr v9, v5

    .line 427
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 429
    .end local v2    # "toAddID":I
    move/from16 v18, v3

    move-object v15, v8

    move/from16 v8, v27

    move/from16 v10, v30

    goto/16 :goto_372

    .line 432
    .end local v3    # "buttonX":I
    .end local v27    # "maxLevel":I
    .end local v30    # "paddingLeft":I
    .restart local v8    # "maxLevel":I
    .restart local v10    # "paddingLeft":I
    .restart local v18    # "buttonX":I
    :cond_5d9
    move/from16 v27, v8

    move/from16 v30, v10

    move-object v8, v15

    const/16 v28, 0x3

    .end local v8    # "maxLevel":I
    .end local v10    # "paddingLeft":I
    .restart local v27    # "maxLevel":I
    .restart local v30    # "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v13

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 434
    .local v10, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v11, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$10;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v1

    .end local v1    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v3, v42

    move v4, v13

    move-object/from16 v17, v40

    .end local v40    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v17, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move v5, v11

    move v6, v10

    move-object/from16 v19, v7

    .end local v7    # "tCivsPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v19, "tCivsPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v7, v0

    move/from16 v20, v27

    .end local v27    # "maxLevel":I
    .local v20, "maxLevel":I
    move/from16 v21, v9

    .end local v9    # "buttonY":I
    .local v21, "buttonY":I
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 442
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 466
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 467
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 468
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 446
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 447
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 450
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 451
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 452
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->getHeight()I

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

    .line 454
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 455
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 459
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 460
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime:J

    .line 461
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_CapitalCity;->lTime2:J

    .line 462
    return-void
.end method
