.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_ArmiesRegiments.java"


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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    .line 49
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime2:J

    .line 51
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

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

    const v5, 0x3e99999a    # 0.3f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 77
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 79
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

    .line 82
    .local v8, "c0W":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v10

    .line 84
    .end local v1    # "buttonX":I
    .local v9, "buttonX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v16, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct/range {v16 .. v16}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    move-object/from16 v37, v16

    .line 90
    .local v37, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const-wide/16 v16, 0x0

    .line 92
    .local v16, "maxManpower":D
    const/16 v18, 0x0

    move/from16 v24, v8

    move-wide/from16 v7, v16

    move/from16 v15, v18

    .end local v8    # "c0W":I
    .end local v16    # "maxManpower":D
    .local v7, "maxManpower":D
    .local v15, "i":I
    .local v24, "c0W":I
    :goto_b2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v15, v5, :cond_109

    .line 93
    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-lez v5, :cond_f2

    .line 94
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    move/from16 v38, v12

    move/from16 v39, v13

    .end local v12    # "menuX":I
    .end local v13    # "menuY":I
    .local v38, "menuX":I
    .local v39, "menuY":I
    iget-wide v12, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v3, v12

    int-to-float v3, v3

    invoke-direct {v5, v15, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    move-object/from16 v12, v37

    .end local v37    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v12, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 97
    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    move/from16 v37, v14

    .end local v14    # "buttonYPadding":I
    .local v37, "buttonYPadding":I
    iget-wide v13, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpl-double v3, v13, v7

    if-lez v3, :cond_fa

    .line 98
    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-wide v7, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    goto :goto_fa

    .line 93
    .end local v38    # "menuX":I
    .end local v39    # "menuY":I
    .local v12, "menuX":I
    .restart local v13    # "menuY":I
    .restart local v14    # "buttonYPadding":I
    .local v37, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_f2
    move/from16 v38, v12

    move/from16 v39, v13

    move-object/from16 v12, v37

    move/from16 v37, v14

    .line 92
    .end local v13    # "menuY":I
    .end local v14    # "buttonYPadding":I
    .local v12, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v37, "buttonYPadding":I
    .restart local v38    # "menuX":I
    .restart local v39    # "menuY":I
    :cond_fa
    :goto_fa
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v37

    move/from16 v13, v39

    const/4 v3, 0x2

    const v5, 0x3e99999a    # 0.3f

    move-object/from16 v37, v12

    move/from16 v12, v38

    goto :goto_b2

    .end local v38    # "menuX":I
    .end local v39    # "menuY":I
    .local v12, "menuX":I
    .restart local v13    # "menuY":I
    .restart local v14    # "buttonYPadding":I
    .local v37, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    :cond_109
    move/from16 v38, v12

    move/from16 v39, v13

    move-object/from16 v12, v37

    move/from16 v37, v14

    .line 103
    .end local v13    # "menuY":I
    .end local v14    # "buttonYPadding":I
    .end local v15    # "i":I
    .local v12, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v37, "buttonYPadding":I
    .restart local v38    # "menuX":I
    .restart local v39    # "menuY":I
    mul-int/lit8 v3, v25, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v3, v5

    .line 104
    .local v13, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$1;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v20, v13, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v21, v13, v5

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, p0

    move/from16 v18, v9

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v3, v14

    add-int/2addr v9, v3

    .line 143
    sub-int v3, v11, v10

    sub-int v14, v3, v9

    .line 145
    .end local v24    # "c0W":I
    .local v14, "c0W":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$2;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 146
    move-object/from16 v40, v12

    .end local v12    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v40, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const-string v12, "Civilizations"

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ": "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    move/from16 v41, v13

    .end local v13    # "pieDim":I
    .local v41, "pieDim":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 149
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v13, v15

    const/4 v5, 0x4

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v9

    move/from16 v21, v2

    move/from16 v22, v14

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
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

    .line 179
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$3;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 180
    move/from16 v42, v10

    .end local v10    # "paddingLeft":I
    .local v42, "paddingLeft":I
    const-string v10, "MaximumManpower"

    invoke-virtual {v5, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    double-to-int v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 181
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 183
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v15, v3

    move/from16 v21, v2

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 179
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
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

    .line 217
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 219
    .end local v9    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$4;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-eqz v9, :cond_23e

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v15, 0x1

    if-ne v9, v15, :cond_23b

    goto :goto_23f

    :cond_23b
    const/16 v28, 0x0

    goto :goto_241

    :cond_23e
    const/4 v15, 0x1

    :goto_23f
    const/16 v28, 0x1

    :goto_241
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v15, :cond_248

    const/16 v29, 0x1

    goto :goto_24a

    :cond_248
    const/16 v29, 0x0

    :goto_24a
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v9, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v5

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
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

    .line 249
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$5;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v9, v12, :cond_290

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v15, :cond_28d

    goto :goto_290

    :cond_28d
    const/16 v28, 0x0

    goto :goto_292

    :cond_290
    :goto_290
    const/16 v28, 0x1

    :goto_292
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v15, :cond_299

    const/16 v29, 0x1

    goto :goto_29b

    :cond_299
    const/16 v29, 0x0

    :goto_29b
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Discipline"

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x6

    mul-int/lit8 v12, v12, 0x6

    add-int v35, v9, v12

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v5

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
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

    .line 283
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$6;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v12, 0x5

    const/4 v15, 0x4

    if-eq v9, v15, :cond_2e2

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v12, :cond_2df

    goto :goto_2e2

    :cond_2df
    const/16 v28, 0x0

    goto :goto_2e4

    :cond_2e2
    :goto_2e2
    const/16 v28, 0x1

    :goto_2e4
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v12, :cond_2eb

    const/16 v29, 0x1

    goto :goto_2ed

    :cond_2eb
    const/16 v29, 0x0

    :goto_2ed
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "RegimentsLimit"

    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v17, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v9, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v5

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
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

    .line 313
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v15, 0x7

    const/4 v12, 0x6

    if-eq v9, v12, :cond_334

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v15, :cond_331

    goto :goto_334

    :cond_331
    const/16 v28, 0x0

    goto :goto_336

    :cond_334
    :goto_334
    const/16 v28, 0x1

    :goto_336
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v9, v15, :cond_33d

    const/16 v29, 0x1

    goto :goto_33f

    :cond_33d
    const/16 v29, 0x0

    :goto_33f
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x6

    mul-int/lit8 v10, v10, 0x6

    add-int v35, v9, v10

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v5

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
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

    .line 346
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v9, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x5

    mul-int/lit8 v10, v10, 0x5

    sub-int/2addr v5, v10

    int-to-float v5, v5

    const v10, 0x3e99999a    # 0.3f

    mul-float v5, v5, v10

    float-to-int v10, v5

    .line 347
    .end local v4    # "r0W":I
    .local v10, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v5

    float-to-int v12, v4

    move v9, v2

    move/from16 v17, v3

    .line 350
    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .end local v6    # "r1W":I
    .local v9, "buttonY":I
    .local v12, "r1W":I
    .local v17, "buttonX":I
    :goto_39f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6fa

    .line 351
    const/4 v2, 0x0

    .line 353
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-nez v3, :cond_3e3

    .line 354
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_3ab
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3df

    .line 355
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3dc

    .line 356
    move v2, v3

    .line 354
    :cond_3dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ab

    :cond_3df
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 360
    :cond_3e3
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_421

    .line 361
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_3e9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_41d

    .line 362
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41a

    .line 363
    move v2, v3

    .line 361
    :cond_41a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e9

    :cond_41d
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 367
    :cond_421
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_45d

    .line 368
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_427
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_459

    .line 369
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_456

    .line 370
    move v2, v3

    .line 368
    :cond_456
    add-int/lit8 v3, v3, 0x1

    goto :goto_427

    :cond_459
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 374
    :cond_45d
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_499

    .line 375
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_463
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_495

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_492

    .line 377
    move v2, v3

    .line 375
    :cond_492
    add-int/lit8 v3, v3, 0x1

    goto :goto_463

    :cond_495
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 381
    :cond_499
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4d0

    .line 382
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_49f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4cc

    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-ge v6, v4, :cond_4c8

    .line 384
    move v2, v3

    .line 382
    :cond_4c8
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    goto :goto_49f

    :cond_4cc
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 388
    :cond_4d0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_507

    .line 389
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4d6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_503

    .line 390
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v6, v4, :cond_4ff

    .line 391
    move v2, v3

    .line 389
    :cond_4ff
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    goto :goto_4d6

    :cond_503
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    goto/16 :goto_579

    .line 395
    :cond_507
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_544

    .line 396
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_50d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_541

    .line 397
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v4, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    move-wide/from16 v27, v7

    .end local v7    # "maxManpower":D
    .local v27, "maxManpower":D
    iget-wide v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpg-double v8, v4, v6

    if-gez v8, :cond_53a

    .line 398
    move v2, v3

    .line 396
    :cond_53a
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v7, v27

    const/4 v4, 0x6

    const/4 v5, 0x4

    goto :goto_50d

    .end local v27    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    :cond_541
    move-wide/from16 v27, v7

    .end local v3    # "o":I
    .end local v7    # "maxManpower":D
    .restart local v27    # "maxManpower":D
    goto :goto_579

    .line 402
    .end local v27    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    :cond_544
    move-wide/from16 v27, v7

    .end local v7    # "maxManpower":D
    .restart local v27    # "maxManpower":D
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->iSortID:I

    if-ne v3, v15, :cond_579

    .line 403
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_54b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_579

    .line 404
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpl-double v8, v4, v6

    if-lez v8, :cond_576

    .line 405
    move v2, v3

    .line 403
    :cond_576
    add-int/lit8 v3, v3, 0x1

    goto :goto_54b

    .line 410
    .end local v3    # "o":I
    :cond_579
    :goto_579
    move/from16 v3, v42

    .line 412
    .end local v17    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$8;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v17

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v19, v6, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/4 v6, 0x7

    const/4 v8, 0x3

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v18, v5

    move/from16 v20, v3

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 435
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$9;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    const/high16 v16, 0x42c80000    # 100.0f

    mul-float v15, v15, v16

    const/16 v6, 0x64

    invoke-static {v15, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 454
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$10;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v4

    move/from16 v20, v3

    move/from16 v22, v12

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 479
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$11;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-wide v7, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v4

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v9, v4

    .line 498
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 499
    .end local v2    # "toAddID":I
    move/from16 v17, v3

    move-wide/from16 v7, v27

    const/4 v15, 0x7

    goto/16 :goto_39f

    .line 502
    .end local v3    # "buttonX":I
    .end local v27    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    .restart local v17    # "buttonX":I
    :cond_6fa
    move-wide/from16 v27, v7

    .end local v7    # "maxManpower":D
    .restart local v27    # "maxManpower":D
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v39

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 504
    .local v13, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v11, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$12;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Armies"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    sget v23, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v15, 0x1

    move-object/from16 v16, v1

    .end local v1    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v3, v38

    move/from16 v4, v39

    move v5, v11

    move v6, v13

    move-wide/from16 v18, v27

    .end local v27    # "maxManpower":D
    .local v18, "maxManpower":D
    move-object v7, v0

    move/from16 v20, v9

    .end local v9    # "buttonY":I
    .local v20, "buttonY":I
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 512
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 536
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 537
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 538
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 516
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 517
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 520
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 521
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 522
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->getHeight()I

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

    .line 524
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 525
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 529
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 530
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    .line 531
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_ArmiesRegiments;->lTime2:J

    .line 532
    return-void
.end method
