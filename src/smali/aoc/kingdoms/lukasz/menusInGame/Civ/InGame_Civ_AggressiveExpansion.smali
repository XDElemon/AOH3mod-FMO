.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_AggressiveExpansion.java"


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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime:J

    .line 49
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime2:J

    .line 51
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 45

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
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$1;

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

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

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
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$2;

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

    const-string v15, ": "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v41, v13

    .end local v13    # "pieDim":I
    .local v41, "pieDim":I
    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    move-object/from16 v16, v15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    move-object/from16 v42, v12

    move-object/from16 v5, v16

    const/4 v12, 0x4

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v20, v9

    move/from16 v21, v2

    move/from16 v22, v14

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;Ljava/lang/String;IIIIII)V

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
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$3;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 180
    move/from16 v43, v10

    .end local v10    # "paddingLeft":I
    .local v43, "paddingLeft":I
    const-string v10, "MaximumManpower"

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;Ljava/lang/String;IIIIII)V

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
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$4;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-eqz v9, :cond_243

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v15, 0x1

    if-ne v9, v15, :cond_240

    goto :goto_244

    :cond_240
    const/16 v28, 0x0

    goto :goto_246

    :cond_243
    const/4 v15, 0x1

    :goto_244
    const/16 v28, 0x1

    :goto_246
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v15, :cond_24d

    const/16 v29, 0x1

    goto :goto_24f

    :cond_24d
    const/16 v29, 0x0

    :goto_24f
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

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;ZZLjava/lang/String;IIIIII)V

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
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$5;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v15, 0x3

    const/4 v12, 0x2

    if-eq v9, v12, :cond_295

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v15, :cond_292

    goto :goto_295

    :cond_292
    const/16 v28, 0x0

    goto :goto_297

    :cond_295
    :goto_295
    const/16 v28, 0x1

    :goto_297
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v15, :cond_29e

    const/16 v29, 0x1

    goto :goto_2a0

    :cond_29e
    const/16 v29, 0x0

    :goto_2a0
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

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
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

    .line 279
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$6;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v10, 0x5

    const/4 v12, 0x4

    if-eq v9, v12, :cond_2e4

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v10, :cond_2e1

    goto :goto_2e4

    :cond_2e1
    const/16 v28, 0x0

    goto :goto_2e6

    :cond_2e4
    :goto_2e4
    const/16 v28, 0x1

    :goto_2e6
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v10, :cond_2ed

    const/16 v29, 0x1

    goto :goto_2ef

    :cond_2ed
    const/16 v29, 0x0

    :goto_2ef
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "WarWeariness"

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

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
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

    .line 309
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v12, 0x7

    const/4 v15, 0x6

    if-eq v9, v15, :cond_336

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v12, :cond_333

    goto :goto_336

    :cond_333
    const/16 v28, 0x0

    goto :goto_338

    :cond_336
    :goto_336
    const/16 v28, 0x1

    :goto_338
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-ne v9, v12, :cond_33f

    const/16 v29, 0x1

    goto :goto_341

    :cond_33f
    const/16 v29, 0x0

    :goto_341
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "AggressiveExpansion"

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

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
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

    .line 342
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v9, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x5

    sub-int/2addr v5, v15

    int-to-float v5, v5

    const v15, 0x3e99999a    # 0.3f

    mul-float v5, v5, v15

    float-to-int v5, v5

    .line 343
    .end local v4    # "r0W":I
    .local v5, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x5

    sub-int/2addr v4, v9

    int-to-float v4, v4

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v9

    float-to-int v9, v4

    move v6, v2

    move v15, v3

    .line 346
    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .local v6, "buttonY":I
    .local v9, "r1W":I
    .local v15, "buttonX":I
    :goto_3a2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_70a

    .line 347
    const/4 v2, 0x0

    .line 349
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    if-nez v3, :cond_3ec

    .line 350
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_3ae
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e3

    .line 351
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

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3df

    .line 352
    move v2, v3

    .line 350
    :cond_3df
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x7

    goto :goto_3ae

    :cond_3e3
    move-wide/from16 v28, v7

    move v12, v11

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 356
    :cond_3ec
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42f

    .line 357
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_3f2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_426

    .line 358
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

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_423

    .line 359
    move v2, v3

    .line 357
    :cond_423
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f2

    :cond_426
    move-wide/from16 v28, v7

    move v12, v11

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 363
    :cond_42f
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_473

    .line 364
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_435
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_46a

    .line 365
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    move v12, v11

    .end local v11    # "menuWidth":I
    .local v12, "menuWidth":I
    iget-wide v10, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    move-wide/from16 v28, v7

    .end local v7    # "maxManpower":D
    .local v28, "maxManpower":D
    iget-wide v7, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpg-double v4, v10, v7

    if-gez v4, :cond_463

    .line 366
    move v2, v3

    .line 364
    :cond_463
    add-int/lit8 v3, v3, 0x1

    move v11, v12

    move-wide/from16 v7, v28

    const/4 v10, 0x5

    goto :goto_435

    .end local v12    # "menuWidth":I
    .end local v28    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    .restart local v11    # "menuWidth":I
    :cond_46a
    move-wide/from16 v28, v7

    move v12, v11

    .end local v7    # "maxManpower":D
    .end local v11    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v28    # "maxManpower":D
    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 370
    .end local v12    # "menuWidth":I
    .end local v28    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    .restart local v11    # "menuWidth":I
    :cond_473
    move-wide/from16 v28, v7

    move v12, v11

    .end local v7    # "maxManpower":D
    .end local v11    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v28    # "maxManpower":D
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4b0

    .line 371
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_47c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4aa

    .line 372
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-wide v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-wide v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    cmpl-double v16, v7, v10

    if-lez v16, :cond_4a7

    .line 373
    move v2, v3

    .line 371
    :cond_4a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_47c

    :cond_4aa
    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 377
    :cond_4b0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_4ed

    .line 378
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4b6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4e8

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4e5

    .line 380
    move v2, v3

    .line 378
    :cond_4e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b6

    :cond_4e8
    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 384
    :cond_4ed
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v8, 0x5

    if-ne v3, v8, :cond_529

    .line 385
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4f3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_525

    .line 386
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_522

    .line 387
    move v2, v3

    .line 385
    :cond_522
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f3

    :cond_525
    const/4 v10, 0x6

    const/4 v11, 0x7

    .end local v3    # "o":I
    goto/16 :goto_59c

    .line 391
    :cond_529
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v10, 0x6

    if-ne v3, v10, :cond_563

    .line 392
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_52f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_561

    .line 393
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v16

    cmpg-float v11, v11, v16

    if-gez v11, :cond_55e

    .line 394
    move v2, v3

    .line 392
    :cond_55e
    add-int/lit8 v3, v3, 0x1

    goto :goto_52f

    :cond_561
    const/4 v11, 0x7

    .end local v3    # "o":I
    goto :goto_59c

    .line 398
    :cond_563
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->iSortID:I

    const/4 v11, 0x7

    if-ne v3, v11, :cond_59c

    .line 399
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_569
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_59c

    .line 400
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v17

    cmpl-float v4, v4, v17

    if-lez v4, :cond_598

    .line 401
    move v2, v3

    .line 399
    :cond_598
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    goto :goto_569

    .line 406
    .end local v3    # "o":I
    :cond_59c
    :goto_59c
    move/from16 v3, v43

    .line 408
    .end local v15    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$8;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x2

    mul-int/lit8 v19, v15, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v27, 0x3

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v15

    add-int/2addr v3, v4

    .line 431
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$9;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-wide v10, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 450
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$10;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v8

    const/16 v10, 0xa

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v4

    move/from16 v20, v3

    move/from16 v22, v9

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 475
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v8

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v4

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int/2addr v6, v4

    .line 494
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    .end local v2    # "toAddID":I
    move v15, v3

    move v11, v12

    move-wide/from16 v7, v28

    const/4 v10, 0x5

    const/4 v12, 0x7

    goto/16 :goto_3a2

    .line 498
    .end local v3    # "buttonX":I
    .end local v12    # "menuWidth":I
    .end local v28    # "maxManpower":D
    .restart local v7    # "maxManpower":D
    .restart local v11    # "menuWidth":I
    .restart local v15    # "buttonX":I
    :cond_70a
    move-wide/from16 v28, v7

    move v12, v11

    const/16 v27, 0x3

    .end local v7    # "maxManpower":D
    .end local v11    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v28    # "maxManpower":D
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v39

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 500
    .local v10, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v12, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$12;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v4, v42

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object v13, v1

    .end local v1    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v13, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v3, v38

    move/from16 v4, v39

    move/from16 v16, v5

    .end local v5    # "r0W":I
    .local v16, "r0W":I
    move v5, v12

    move/from16 v17, v6

    .end local v6    # "buttonY":I
    .local v17, "buttonY":I
    move v6, v10

    move-wide/from16 v18, v28

    .end local v28    # "maxManpower":D
    .local v18, "maxManpower":D
    move-object v7, v0

    move/from16 v20, v9

    .end local v9    # "r1W":I
    .local v20, "r1W":I
    move v9, v11

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 508
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 532
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 533
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 534
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 512
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 513
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 516
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 517
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 518
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->getHeight()I

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

    .line 520
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 521
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 525
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 526
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime:J

    .line 527
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_AggressiveExpansion;->lTime2:J

    .line 528
    return-void
.end method
