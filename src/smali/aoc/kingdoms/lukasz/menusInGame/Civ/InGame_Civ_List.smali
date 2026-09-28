.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_List.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static civsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static civsListTitle:Ljava/lang/String;

.field public static civsListTitle2:Ljava/lang/String;

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static modeID:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    .line 63
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime2:J

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    .line 67
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle:Ljava/lang/String;

    .line 68
    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle2:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    .line 72
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 33

    .line 84
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 89
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 91
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 92
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

    .line 94
    .local v13, "menuY":I
    move v1, v10

    .line 95
    .local v1, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 97
    .local v2, "buttonY":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 99
    .local v4, "buttonH":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v11, v5

    int-to-float v5, v5

    const v7, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 100
    .local v5, "r0W":I
    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v11, v8

    int-to-float v8, v8

    const v9, 0x3e19999a    # 0.15f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 102
    .local v8, "r1W":I
    const/4 v14, -0x1

    sput v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civLeft_Rank:I

    .line 103
    sput v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civRight_Rank:I

    .line 105
    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    .line 109
    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v10

    .line 111
    .end local v1    # "buttonX":I
    .local v14, "buttonX":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    .line 113
    .local v1, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v9, 0x1

    if-nez v15, :cond_ba

    .line 114
    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v9

    .local v15, "i":I
    :goto_80
    if-ltz v15, :cond_b6

    .line 115
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    move/from16 v26, v10

    .end local v10    # "paddingLeft":I
    .local v26, "paddingLeft":I
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v9

    long-to-int v3, v9

    int-to-float v3, v3

    invoke-direct {v7, v6, v3}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 114
    add-int/lit8 v15, v15, -0x1

    move/from16 v10, v26

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x1

    goto :goto_80

    .end local v26    # "paddingLeft":I
    .restart local v10    # "paddingLeft":I
    :cond_b6
    move/from16 v26, v10

    .end local v10    # "paddingLeft":I
    .end local v15    # "i":I
    .restart local v26    # "paddingLeft":I
    goto/16 :goto_1e6

    .line 117
    .end local v26    # "paddingLeft":I
    .restart local v10    # "paddingLeft":I
    :cond_ba
    move/from16 v26, v10

    .end local v10    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f9

    .line 118
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .local v3, "i":I
    :goto_c8
    if-ltz v3, :cond_f7

    .line 119
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 118
    add-int/lit8 v3, v3, -0x1

    goto :goto_c8

    .end local v3    # "i":I
    :cond_f7
    goto/16 :goto_1e6

    .line 121
    :cond_f9
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_136

    .line 122
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .restart local v3    # "i":I
    :goto_106
    if-ltz v3, :cond_134

    .line 123
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 122
    add-int/lit8 v3, v3, -0x1

    goto :goto_106

    .end local v3    # "i":I
    :cond_134
    goto/16 :goto_1e6

    .line 125
    :cond_136
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_172

    .line 126
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .restart local v3    # "i":I
    :goto_143
    if-ltz v3, :cond_170

    .line 127
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-wide v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    double-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 126
    add-int/lit8 v3, v3, -0x1

    goto :goto_143

    .end local v3    # "i":I
    :cond_170
    goto/16 :goto_1e6

    .line 129
    :cond_172
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1ac

    .line 130
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .restart local v3    # "i":I
    :goto_17f
    if-ltz v3, :cond_1ab

    .line 131
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 130
    add-int/lit8 v3, v3, -0x1

    goto :goto_17f

    .end local v3    # "i":I
    :cond_1ab
    goto :goto_1e6

    .line 133
    :cond_1ac
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1e6

    .line 134
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .restart local v3    # "i":I
    :goto_1b9
    if-ltz v3, :cond_1e6

    .line 135
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v1, v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 134
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b9

    .line 139
    .end local v3    # "i":I
    :cond_1e6
    :goto_1e6
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v6, 0x3

    mul-int/lit8 v3, v3, 0x3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int v10, v3, v6

    .line 140
    .local v10, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v19, v10, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v20, v10, v6

    const/16 v22, 0x0

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v17, v14

    move-object/from16 v21, v1

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int v27, v3, v6

    .line 209
    .local v27, "tButtonW":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    .line 210
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const-string v7, "Provinces"

    const-string v9, "Population"

    if-nez v6, :cond_23d

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_23a
    move-object/from16 v16, v6

    goto :goto_270

    :cond_23d
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x1

    if-ne v6, v15, :cond_24b

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Economy"

    :goto_246
    invoke-virtual {v6, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_23a

    :cond_24b
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x2

    if-ne v6, v15, :cond_257

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_23a

    :cond_257
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x3

    if-ne v6, v15, :cond_261

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "MaximumManpower"

    goto :goto_246

    :cond_261
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x4

    if-ne v6, v15, :cond_26b

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "RegimentsLimit"

    goto :goto_246

    :cond_26b
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Prestige"

    goto :goto_246

    .line 211
    :goto_270
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    if-nez v6, :cond_279

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->population:I

    :goto_276
    move/from16 v17, v6

    goto :goto_29c

    :cond_279
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x1

    if-ne v6, v15, :cond_281

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    goto :goto_276

    :cond_281
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x2

    if-ne v6, v15, :cond_289

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    goto :goto_276

    :cond_289
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x3

    if-ne v6, v15, :cond_291

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    goto :goto_276

    :cond_291
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->modeID:I

    const/4 v15, 0x4

    if-ne v6, v15, :cond_299

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    goto :goto_276

    :cond_299
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    goto :goto_276

    :goto_29c
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v18, v14, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v2, v6

    sub-int/2addr v6, v4

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    add-int/2addr v6, v15

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v19, v6, v15

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v20, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int v21, v6, v15

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 212
    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v22

    move-object v15, v3

    move/from16 v20, v27

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIII)V

    .line 209
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 215
    move-object/from16 v28, v1

    .end local v1    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v28, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const-string v1, "Civilizations"

    invoke-virtual {v15, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ": "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    .line 216
    move-object/from16 v18, v15

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v20, v14, v15

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v2, v15

    sub-int v21, v15, v4

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 218
    invoke-static {v15}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move/from16 v29, v12

    move-object/from16 v12, v18

    .end local v12    # "menuX":I
    .local v29, "menuX":I
    move-object v15, v3

    move-object/from16 v16, p0

    move-object/from16 v18, v6

    move/from16 v22, v27

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    add-int/2addr v14, v3

    .line 249
    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 250
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_349
    sget-object v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_361

    .line 251
    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_349

    .line 254
    .end local v3    # "a":I
    :cond_361
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$3;

    sget-object v17, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 255
    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 256
    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v20, v14, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, v2, v1

    sub-int v21, v1, v4

    sub-int v1, v11, v26

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x2

    sub-int v6, v14, v15

    sub-int v22, v1, v6

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v10

    add-int v23, v1, v4

    const/16 v24, 0x1

    move-object v15, v3

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    move-object v6, v3

    .line 262
    .local v6, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    .line 268
    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 270
    .end local v4    # "buttonH":I
    .local v30, "buttonH":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 272
    .end local v14    # "buttonX":I
    .local v1, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$4;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x0

    if-eqz v4, :cond_3c2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_3bf

    goto :goto_3c3

    :cond_3bf
    const/16 v16, 0x0

    goto :goto_3c5

    :cond_3c2
    const/4 v14, 0x1

    :goto_3c3
    const/16 v16, 0x1

    :goto_3c5
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v4, v14, :cond_3cc

    const/16 v17, 0x1

    goto :goto_3ce

    :cond_3cc
    const/16 v17, 0x0

    :goto_3ce
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Ranking"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v31, v6

    .end local v6    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v31, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    const/4 v6, 0x6

    mul-int/lit8 v14, v14, 0x6

    add-int v23, v4, v14

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, -0x1

    move-object v14, v3

    const/4 v4, 0x0

    move-object/from16 v15, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v14 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 302
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$5;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_416

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_413

    goto :goto_417

    :cond_413
    const/16 v16, 0x0

    goto :goto_419

    :cond_416
    const/4 v15, 0x3

    :goto_417
    const/16 v16, 0x1

    :goto_419
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v14, v15, :cond_420

    const/16 v17, 0x1

    goto :goto_422

    :cond_420
    const/16 v17, 0x0

    :goto_422
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v23, v14, v15

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, -0x1

    move-object v14, v3

    move-object/from16 v15, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v5

    invoke-direct/range {v14 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 332
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$6;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_466

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_463

    goto :goto_467

    :cond_463
    const/16 v16, 0x0

    goto :goto_469

    :cond_466
    const/4 v15, 0x5

    :goto_467
    const/16 v16, 0x1

    :goto_469
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v14, v15, :cond_470

    const/16 v17, 0x1

    goto :goto_472

    :cond_470
    const/16 v17, 0x0

    :goto_472
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v14, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v23, v9, v14

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, -0x1

    move-object v14, v3

    move-object/from16 v15, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v14 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 362
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$7;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v15, 0x7

    if-eq v9, v6, :cond_4b3

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v9, v15, :cond_4b0

    goto :goto_4b3

    :cond_4b0
    const/16 v16, 0x0

    goto :goto_4b5

    :cond_4b3
    :goto_4b3
    const/16 v16, 0x1

    :goto_4b5
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v9, v15, :cond_4bc

    const/16 v17, 0x1

    goto :goto_4be

    :cond_4bc
    const/16 v17, 0x0

    :goto_4be
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v23, v7, v9

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, -0x1

    move-object v14, v3

    const/4 v7, 0x7

    move-object/from16 v15, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v14 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 392
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/16 v14, 0x8

    const/16 v15, 0x9

    if-eq v9, v14, :cond_503

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v9, v15, :cond_500

    goto :goto_503

    :cond_500
    const/16 v16, 0x0

    goto :goto_505

    :cond_503
    :goto_503
    const/16 v16, 0x1

    :goto_505
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-ne v9, v15, :cond_50c

    const/16 v17, 0x1

    goto :goto_50e

    :cond_50c
    const/16 v17, 0x0

    :goto_50e
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Goods"

    invoke-virtual {v9, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v23, v9, v14

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v19, -0x1

    move-object v14, v3

    move-object/from16 v15, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v8

    invoke-direct/range {v14 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    add-int/2addr v2, v3

    .line 424
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v9, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    sub-int/2addr v3, v14

    int-to-float v3, v3

    const v14, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v14

    float-to-int v14, v3

    .line 425
    .end local v5    # "r0W":I
    .local v14, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const v5, 0x3e19999a    # 0.15f

    mul-float v3, v3, v5

    float-to-int v9, v3

    .line 428
    .end local v8    # "r1W":I
    .local v9, "r1W":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    .line 429
    .local v8, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v3

    .line 431
    .local v5, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    .local v15, "iSize":I
    :goto_57d
    if-ge v3, v15, :cond_5ac

    .line 432
    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x7

    goto :goto_57d

    :cond_5ac
    move v15, v1

    move v7, v2

    .line 436
    .end local v1    # "buttonX":I
    .end local v2    # "buttonY":I
    .end local v3    # "i":I
    .local v7, "buttonY":I
    .local v15, "buttonX":I
    :goto_5ae
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_94b

    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    if-nez v2, :cond_5e7

    .line 440
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_5ba
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e6

    .line 441
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v3, v4, :cond_5e3

    .line 442
    move v1, v2

    .line 440
    :cond_5e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5ba

    .end local v2    # "o":I
    :cond_5e6
    goto :goto_619

    .line 446
    :cond_5e7
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_619

    .line 447
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_5ed
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_619

    .line 448
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v3, v4, :cond_616

    .line 449
    move v1, v2

    .line 447
    :cond_616
    add-int/lit8 v2, v2, 0x1

    goto :goto_5ed

    .line 453
    .end local v2    # "o":I
    :cond_619
    :goto_619
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_656

    .line 454
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_61f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_653

    .line 455
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_650

    .line 456
    move v1, v2

    .line 454
    :cond_650
    add-int/lit8 v2, v2, 0x1

    goto :goto_61f

    :cond_653
    const/4 v4, 0x5

    .end local v2    # "o":I
    goto/16 :goto_754

    .line 460
    :cond_656
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_693

    .line 461
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_65c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_690

    .line 462
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68d

    .line 463
    move v1, v2

    .line 461
    :cond_68d
    add-int/lit8 v2, v2, 0x1

    goto :goto_65c

    :cond_690
    const/4 v4, 0x5

    .end local v2    # "o":I
    goto/16 :goto_754

    .line 467
    :cond_693
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6bc

    .line 468
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_699
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6b9

    .line 469
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v6, :cond_6b6

    .line 470
    move v1, v2

    .line 468
    :cond_6b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_699

    :cond_6b9
    const/4 v4, 0x5

    .end local v2    # "o":I
    goto/16 :goto_754

    .line 474
    :cond_6bc
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6e5

    .line 475
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_6c2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6e3

    .line 476
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v6, v3, :cond_6df

    .line 477
    move v1, v2

    .line 475
    :cond_6df
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    goto :goto_6c2

    .end local v2    # "o":I
    :cond_6e3
    goto/16 :goto_754

    .line 481
    :cond_6e5
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_71d

    .line 482
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_6eb
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_71c

    .line 483
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v6, v3, :cond_718

    .line 484
    move v1, v2

    .line 482
    :cond_718
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    goto :goto_6eb

    .end local v2    # "o":I
    :cond_71c
    goto :goto_754

    .line 488
    :cond_71d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->iSortID:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_754

    .line 489
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_723
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_754

    .line 490
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-le v6, v3, :cond_750

    .line 491
    move v1, v2

    .line 489
    :cond_750
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    goto :goto_723

    .line 496
    .end local v2    # "o":I
    :cond_754
    :goto_754
    move/from16 v2, v26

    .line 500
    .end local v15    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-gez v15, :cond_778

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v15

    goto :goto_788

    :cond_778
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    :goto_788
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v18

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v19, v2

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v30

    invoke-direct/range {v15 .. v23}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 580
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$10;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v25, 0x2

    mul-int/lit8 v19, v6, 0x2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v3

    move/from16 v20, v2

    move/from16 v21, v7

    move/from16 v22, v14

    move/from16 v23, v30

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 603
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v18, -0x1

    move-object v15, v3

    move/from16 v19, v2

    move/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v30

    invoke-direct/range {v15 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 606
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object v15, v3

    move/from16 v19, v2

    invoke-direct/range {v15 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 609
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$11;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getLargestGoodsProducedByCiv(I)I

    move-result v17

    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v30

    invoke-direct/range {v15 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 687
    move/from16 v15, v26

    .line 688
    .end local v2    # "buttonX":I
    .restart local v15    # "buttonX":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v7, v2

    .line 691
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 692
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 693
    .end local v1    # "toAddID":I
    goto/16 :goto_5ae

    .line 696
    :cond_94b
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 698
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v11, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$12;

    sget-object v18, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle:Ljava/lang/String;

    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsListTitle2:Ljava/lang/String;

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v18, v28

    .end local v28    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v18, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move-object/from16 v1, p0

    move/from16 v3, v29

    move v4, v13

    move-object/from16 v19, v5

    .end local v5    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v5, v11

    move-object/from16 v20, v31

    .end local v31    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v20, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move v6, v12

    move/from16 v21, v7

    .end local v7    # "buttonY":I
    .local v21, "buttonY":I
    move-object v7, v0

    move-object/from16 v22, v8

    .end local v8    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v8, v16

    move/from16 v16, v9

    .end local v9    # "r1W":I
    .local v16, "r1W":I
    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 706
    return-void
.end method

.method public static final addCiv(I)V
    .registers 3
    .param p0, "civID"    # I

    .line 75
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 76
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_19

    .line 77
    return-void

    .line 75
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 81
    .end local v0    # "i":I
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->civsList:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 730
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 731
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 732
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 710
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 711
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 714
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 715
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 716
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->getHeight()I

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

    .line 718
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 719
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 723
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 724
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    .line 725
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;->lTime2:J

    .line 726
    return-void
.end method
