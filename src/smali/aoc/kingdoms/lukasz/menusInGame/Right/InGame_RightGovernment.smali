.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightGovernment.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iGovID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime:J

    .line 58
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime2:J

    .line 60
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    .line 62
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 60

    .line 64
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 67
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 68
    .local v21, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v22

    .line 70
    .local v22, "titleHeight":I
    sget v23, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 72
    .local v23, "extraX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 74
    .local v13, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v24, v0, v13

    .line 75
    .local v24, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v25, v0, v1

    .line 77
    .local v25, "menuY":I
    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 78
    .local v26, "buttonYPadding":I
    const/4 v8, 0x0

    .line 79
    .local v8, "buttonY":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v0, v21, v0

    .line 81
    .local v0, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_53

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_55

    :cond_53
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_55
    move/from16 v19, v1

    .line 83
    .local v19, "buttonH":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float v1, v1, v2

    float-to-int v12, v1

    .line 84
    .local v12, "r0W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const v3, 0x3f266666    # 0.65f

    mul-float v1, v1, v3

    float-to-int v11, v1

    .line 86
    .local v11, "r1W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x3

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v9, v1

    .line 87
    .local v9, "r0W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v7, v1

    .line 89
    .local v7, "r1W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-int v6, v1

    .line 90
    .local v6, "p0W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v3

    float-to-int v5, v1

    .line 92
    .local v5, "p1W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v4, v1

    .line 93
    .local v4, "p0W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v3, v1

    .line 95
    .local v3, "p1W2":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 97
    sget v35, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 98
    .local v35, "religionH":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v36, v1, 0x2

    .line 101
    .local v36, "popH":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    const-string v10, "Population"

    move/from16 v17, v7

    .end local v7    # "r1W2":I
    .local v17, "r1W2":I
    const-string v7, "Name"

    move-object/from16 v18, v7

    const-string v7, ""

    const-wide/16 v37, 0x0

    move-object/from16 v20, v7

    if-gez v1, :cond_5c4

    .line 102
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v1, v28

    .line 104
    .end local v0    # "buttonX":I
    .local v28, "buttonX":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 105
    .local v1, "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v29, 0x0

    move/from16 v2, v29

    .local v2, "i":I
    :goto_eb
    sget-object v29, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v7

    if-ge v2, v7, :cond_104

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 112
    .end local v2    # "i":I
    :cond_104
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_105
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v2, v7, :cond_161

    .line 113
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-lez v7, :cond_156

    .line 114
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v29

    move/from16 v32, v3

    .end local v3    # "p1W2":I
    .local v32, "p1W2":I
    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    move/from16 v29, v4

    .end local v4    # "p0W2":I
    .local v29, "p0W2":I
    int-to-long v3, v3

    add-long v33, v33, v3

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15a

    .line 113
    .end local v29    # "p0W2":I
    .end local v32    # "p1W2":I
    .restart local v3    # "p1W2":I
    .restart local v4    # "p0W2":I
    :cond_156
    move/from16 v32, v3

    move/from16 v29, v4

    .line 112
    .end local v3    # "p1W2":I
    .end local v4    # "p0W2":I
    .restart local v29    # "p0W2":I
    .restart local v32    # "p1W2":I
    :goto_15a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v29

    move/from16 v3, v32

    goto :goto_105

    .end local v29    # "p0W2":I
    .end local v32    # "p1W2":I
    .restart local v3    # "p1W2":I
    .restart local v4    # "p0W2":I
    :cond_161
    move/from16 v32, v3

    move/from16 v29, v4

    .line 118
    .end local v2    # "i":I
    .end local v3    # "p1W2":I
    .end local v4    # "p0W2":I
    .restart local v29    # "p0W2":I
    .restart local v32    # "p1W2":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;

    invoke-direct {v2, v15}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;)V

    move-object v7, v2

    .line 132
    .local v7, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    const-wide/16 v2, 0x0

    .line 134
    .local v2, "populationTotal":J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v31, 0x1

    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v39, v2

    .end local v2    # "populationTotal":J
    .local v4, "i":I
    .local v39, "populationTotal":J
    :goto_177
    if-ltz v4, :cond_1c4

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b9

    .line 136
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    move/from16 v41, v5

    move/from16 v34, v6

    .end local v5    # "p1W":I
    .end local v6    # "p0W":I
    .local v34, "p0W":I
    .local v41, "p1W":I
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-float v5, v5

    invoke-direct {v2, v3, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 138
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v39, v39, v2

    goto :goto_1bd

    .line 135
    .end local v34    # "p0W":I
    .end local v41    # "p1W":I
    .restart local v5    # "p1W":I
    .restart local v6    # "p0W":I
    :cond_1b9
    move/from16 v41, v5

    move/from16 v34, v6

    .line 134
    .end local v5    # "p1W":I
    .end local v6    # "p0W":I
    .restart local v34    # "p0W":I
    .restart local v41    # "p1W":I
    :goto_1bd
    add-int/lit8 v4, v4, -0x1

    move/from16 v6, v34

    move/from16 v5, v41

    goto :goto_177

    .end local v34    # "p0W":I
    .end local v41    # "p1W":I
    .restart local v5    # "p1W":I
    .restart local v6    # "p0W":I
    :cond_1c4
    move/from16 v41, v5

    move/from16 v34, v6

    .line 142
    .end local v4    # "i":I
    .end local v5    # "p1W":I
    .end local v6    # "p0W":I
    .restart local v34    # "p0W":I
    .restart local v41    # "p1W":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v42, v2, v4

    .line 143
    .local v42, "pieDim":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v8, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v42, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v30, v42, v2

    const/16 v33, 0x0

    move-object v2, v0

    .end local v0    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v2, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v0, v6

    move-object/from16 v43, v1

    .end local v1    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v43, "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object v3, v2

    const/4 v15, 0x2

    .end local v2    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v3, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move/from16 v2, v28

    move-object/from16 v45, v3

    move/from16 v44, v32

    .end local v3    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v32    # "p1W2":I
    .local v44, "p1W2":I
    .local v45, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v3, v4

    move/from16 v46, v29

    .end local v29    # "p0W2":I
    .local v46, "p0W2":I
    move v4, v5

    move/from16 v5, v30

    move-object v15, v6

    move/from16 v47, v34

    .end local v34    # "p0W":I
    .local v47, "p0W":I
    move-object v6, v7

    move/from16 v49, v12

    move/from16 v48, v17

    const/4 v12, 0x1

    move-object/from16 v17, v7

    move-object/from16 v57, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v57

    move-object/from16 v58, v20

    move/from16 v20, v11

    move-object/from16 v11, v58

    .end local v7    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v11    # "r1W":I
    .end local v12    # "r0W":I
    .local v17, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v20, "r1W":I
    .local v48, "r1W2":I
    .local v49, "r0W":I
    move-object/from16 v7, v33

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    move v15, v8

    .line 183
    .local v15, "nY":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v50, v0, v1

    .line 184
    .local v50, "nX":I
    sub-int v0, v13, v21

    sub-int v51, v0, v50

    .line 186
    .local v51, "nW":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int v27, v8, v0

    .line 188
    .end local v8    # "buttonY":I
    .local v27, "buttonY":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 189
    const-string v2, "Governments"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    .line 190
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->government:I

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 192
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v30

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v50

    move v6, v15

    move/from16 v7, v51

    move-object v12, v8

    move/from16 v8, v29

    move/from16 v52, v9

    .end local v9    # "r0W2":I
    .local v52, "r0W2":I
    move/from16 v9, v30

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 188
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 196
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-static/range {v39 .. v40}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 200
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    const-string v2, ""

    move-object v0, v12

    move-object/from16 v1, p0

    move v6, v15

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 196
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-eqz v0, :cond_305

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_303

    goto :goto_306

    :cond_303
    const/4 v2, 0x0

    goto :goto_307

    :cond_305
    const/4 v1, 0x1

    :goto_306
    const/4 v2, 0x1

    :goto_307
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v0, v1, :cond_30d

    const/4 v3, 0x1

    goto :goto_30e

    :cond_30d
    const/4 v3, 0x0

    :goto_30e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v6, v28

    move/from16 v7, v27

    move/from16 v8, v49

    move/from16 v16, v13

    move/from16 v53, v15

    move-object/from16 v15, v18

    const/4 v13, 0x3

    .end local v13    # "menuWidth":I
    .end local v15    # "nY":I
    .local v16, "menuWidth":I
    .local v53, "nY":I
    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v28, v28, v0

    .line 253
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_355

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v0, v13, :cond_353

    goto :goto_355

    :cond_353
    const/4 v2, 0x0

    goto :goto_356

    :cond_355
    :goto_355
    const/4 v2, 0x1

    :goto_356
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v0, v13, :cond_35c

    const/4 v3, 0x1

    goto :goto_35d

    :cond_35c
    const/4 v3, 0x0

    :goto_35d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v6, v28

    move/from16 v7, v27

    move/from16 v8, v20

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v27, v0

    move/from16 v10, v27

    .line 285
    .end local v27    # "buttonY":I
    .local v10, "buttonY":I
    :goto_394
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b3

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "toAddID":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-nez v1, :cond_3df

    .line 289
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_3a0
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d8

    .line 290
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    move-object/from16 v12, v43

    .end local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d3

    .line 291
    move v0, v1

    .line 289
    :cond_3d3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v43, v12

    goto :goto_3a0

    .end local v12    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3d8
    move-object/from16 v12, v43

    .end local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v9, v0

    move-object/from16 v15, v45

    .end local v1    # "o":I
    goto/16 :goto_47b

    .line 294
    .end local v12    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3df
    move-object/from16 v12, v43

    .end local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_41f

    .line 295
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_3e7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41b

    .line 296
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_418

    .line 297
    move v0, v1

    .line 295
    :cond_418
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e7

    :cond_41b
    move v9, v0

    move-object/from16 v15, v45

    .end local v1    # "o":I
    goto :goto_47b

    .line 300
    :cond_41f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_44f

    .line 301
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_425
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44b

    .line 302
    move-object/from16 v15, v45

    .end local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_446

    .line 303
    move v0, v1

    .line 301
    :cond_446
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v45, v15

    goto :goto_425

    .end local v15    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_44b
    move-object/from16 v15, v45

    .end local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v9, v0

    .end local v1    # "o":I
    goto :goto_47b

    .line 306
    .end local v15    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_44f
    move-object/from16 v15, v45

    .end local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v1, v13, :cond_47a

    .line 307
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_456
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_478

    .line 308
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_475

    .line 309
    move v0, v1

    .line 307
    :cond_475
    add-int/lit8 v1, v1, 0x1

    goto :goto_456

    :cond_478
    move v9, v0

    goto :goto_47b

    .line 306
    .end local v1    # "o":I
    :cond_47a
    move v9, v0

    .line 314
    .end local v0    # "toAddID":I
    .local v9, "toAddID":I
    :goto_47b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v0, v1

    .line 316
    .end local v28    # "buttonX":I
    .local v7, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$7;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, v8

    move-object/from16 v1, p0

    move v3, v7

    move v4, v10

    move/from16 v5, v52

    move/from16 v6, v35

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v7, v0

    .line 340
    .end local v7    # "buttonX":I
    .local v18, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$8;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v4, -0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v18

    move v6, v10

    move/from16 v7, v48

    move-object v13, v8

    move/from16 v8, v36

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 355
    .local v13, "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_51b

    .line 356
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_511

    .line 357
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_518

    .line 360
    :cond_511
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :goto_518
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e7

    .line 364
    .end local v0    # "i":I
    :cond_51b
    const/4 v0, 0x0

    .line 366
    .local v0, "bestCiv":I
    const/4 v1, 0x1

    move v8, v0

    .end local v0    # "bestCiv":I
    .local v1, "i":I
    .local v8, "bestCiv":I
    :goto_51e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    if-ge v1, v0, :cond_541

    .line 367
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_53e

    .line 368
    move v0, v1

    move v8, v0

    .line 366
    :cond_53e
    add-int/lit8 v1, v1, 0x1

    goto :goto_51e

    .line 372
    .end local v1    # "i":I
    :cond_541
    if-lez v8, :cond_573

    .line 373
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$9;

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v1, 0x2

    mul-int/lit8 v4, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v10

    add-int v6, v0, v36

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v5, v18

    move-object/from16 v45, v11

    move-object v11, v7

    move/from16 v7, v48

    move/from16 v54, v8

    .end local v8    # "bestCiv":I
    .local v54, "bestCiv":I
    move/from16 v8, v36

    move-object/from16 v55, v15

    move v15, v9

    .end local v9    # "toAddID":I
    .local v15, "toAddID":I
    .local v55, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move/from16 v9, v54

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;IIIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_598

    .line 411
    .end local v54    # "bestCiv":I
    .end local v55    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "bestCiv":I
    .restart local v9    # "toAddID":I
    .local v15, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_573
    move/from16 v54, v8

    move-object/from16 v45, v11

    move-object/from16 v55, v15

    move v15, v9

    .end local v8    # "bestCiv":I
    .end local v9    # "toAddID":I
    .local v15, "toAddID":I
    .restart local v54    # "bestCiv":I
    .restart local v55    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v30, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v10

    add-int v32, v1, v36

    const-string v28, "-"

    move-object/from16 v27, v0

    move/from16 v31, v18

    move/from16 v33, v48

    move/from16 v34, v36

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :goto_598
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 417
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v35, v0

    add-int/2addr v10, v0

    .line 419
    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    move-object/from16 v0, v55

    .end local v55    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v0, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 422
    .end local v13    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "toAddID":I
    .end local v54    # "bestCiv":I
    move-object/from16 v43, v12

    move/from16 v28, v18

    move-object/from16 v11, v45

    const/4 v13, 0x3

    move-object/from16 v45, v0

    goto/16 :goto_394

    .line 285
    .end local v0    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v12    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "buttonX":I
    .restart local v28    # "buttonX":I
    .restart local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5b3
    move-object/from16 v12, v43

    move-object/from16 v0, v45

    .line 423
    .end local v17    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v39    # "populationTotal":J
    .end local v42    # "pieDim":I
    .end local v43    # "tIdeologyID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v45    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v50    # "nX":I
    .end local v51    # "nW":I
    .end local v53    # "nY":I
    move-object/from16 v11, p0

    move-object v15, v14

    move/from16 v14, v16

    move/from16 v29, v20

    move/from16 v30, v49

    const/16 v33, 0x3

    goto/16 :goto_941

    .line 425
    .end local v10    # "buttonY":I
    .end local v16    # "menuWidth":I
    .end local v20    # "r1W":I
    .end local v28    # "buttonX":I
    .end local v41    # "p1W":I
    .end local v44    # "p1W2":I
    .end local v46    # "p0W2":I
    .end local v47    # "p0W":I
    .end local v48    # "r1W2":I
    .end local v49    # "r0W":I
    .end local v52    # "r0W2":I
    .local v0, "buttonX":I
    .local v3, "p1W2":I
    .local v4, "p0W2":I
    .restart local v5    # "p1W":I
    .restart local v6    # "p0W":I
    .local v8, "buttonY":I
    .local v9, "r0W2":I
    .restart local v11    # "r1W":I
    .local v12, "r0W":I
    .local v13, "menuWidth":I
    .local v17, "r1W2":I
    :cond_5c4
    move/from16 v44, v3

    move/from16 v46, v4

    move/from16 v41, v5

    move/from16 v47, v6

    move/from16 v52, v9

    move-object v15, v10

    move/from16 v49, v12

    move/from16 v16, v13

    move/from16 v48, v17

    move-object/from16 v10, v18

    move-object/from16 v45, v20

    move/from16 v20, v11

    .end local v3    # "p1W2":I
    .end local v4    # "p0W2":I
    .end local v5    # "p1W":I
    .end local v6    # "p0W":I
    .end local v9    # "r0W2":I
    .end local v11    # "r1W":I
    .end local v12    # "r0W":I
    .end local v13    # "menuWidth":I
    .end local v17    # "r1W2":I
    .restart local v16    # "menuWidth":I
    .restart local v20    # "r1W":I
    .restart local v41    # "p1W":I
    .restart local v44    # "p1W2":I
    .restart local v46    # "p0W2":I
    .restart local v47    # "p0W":I
    .restart local v48    # "r1W2":I
    .restart local v49    # "r0W":I
    .restart local v52    # "r0W2":I
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 426
    .end local v8    # "buttonY":I
    .local v7, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v1, v2

    .line 428
    .end local v0    # "buttonX":I
    .local v11, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$10;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    sub-int v13, v16, v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v13, v0

    move-object v0, v8

    move-object/from16 v1, p0

    move v3, v11

    move v4, v7

    move/from16 v6, v35

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;IIIII)V

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v12, v7, v0

    .line 452
    .end local v7    # "buttonY":I
    .local v12, "buttonY":I
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$11;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 453
    const-string v1, "Civilizations"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 454
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v0, v21, 0x2

    sub-int v7, v16, v0

    div-int/lit8 v8, v16, 0x2

    const/4 v9, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v5, v21

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 461
    .local v13, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 464
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 466
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$12;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-eqz v0, :cond_658

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_656

    goto :goto_659

    :cond_656
    const/4 v2, 0x0

    goto :goto_65a

    :cond_658
    const/4 v1, 0x1

    :goto_659
    const/4 v2, 0x1

    :goto_65a
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v0, v1, :cond_660

    const/4 v3, 0x1

    goto :goto_661

    :cond_660
    const/4 v3, 0x0

    :goto_661
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v10, v0, v1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v6, v11

    move v7, v12

    move/from16 v8, v47

    move-object/from16 v56, v9

    move v9, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v0, v56

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v28, v11, v0

    .line 496
    .end local v11    # "buttonX":I
    .restart local v28    # "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$13;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6a7

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6a5

    goto :goto_6a8

    :cond_6a5
    const/4 v2, 0x0

    goto :goto_6a9

    :cond_6a7
    const/4 v1, 0x3

    :goto_6a8
    const/4 v2, 0x1

    :goto_6a9
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-ne v0, v1, :cond_6af

    const/4 v3, 0x1

    goto :goto_6b0

    :cond_6af
    const/4 v3, 0x0

    :goto_6b0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v28

    move v7, v12

    move/from16 v8, v41

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 528
    .local v9, "tCivsID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 530
    .local v10, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6f0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_723

    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    if-ne v1, v2, :cond_719

    .line 534
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_720

    .line 537
    :cond_719
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_720
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f0

    .line 541
    .end local v0    # "i":I
    :cond_723
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_729
    if-ltz v0, :cond_742

    .line 542
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, v37

    if-gtz v3, :cond_73f

    .line 543
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 541
    :cond_73f
    add-int/lit8 v0, v0, -0x1

    goto :goto_729

    .line 548
    .end local v0    # "i":I
    :cond_742
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8f5

    move/from16 v27, v12

    .line 549
    .end local v12    # "buttonY":I
    .restart local v27    # "buttonY":I
    :goto_74a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8e5

    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, "toAddID":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    if-nez v1, :cond_78f

    .line 553
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_756
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78a

    .line 554
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_787

    .line 555
    move v0, v1

    .line 553
    :cond_787
    add-int/lit8 v1, v1, 0x1

    goto :goto_756

    :cond_78a
    move v8, v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    .end local v1    # "o":I
    goto/16 :goto_822

    .line 558
    :cond_78f
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7cc

    .line 559
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_795
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7c9

    .line 560
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v3, :cond_7c6

    .line 561
    move v0, v1

    .line 559
    :cond_7c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_795

    :cond_7c9
    move v8, v0

    const/4 v3, 0x3

    .end local v1    # "o":I
    goto :goto_822

    .line 564
    :cond_7cc
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7f7

    .line 565
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_7d2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7f4

    .line 566
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_7f1

    .line 567
    move v0, v1

    .line 565
    :cond_7f1
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d2

    :cond_7f4
    move v8, v0

    const/4 v3, 0x3

    .end local v1    # "o":I
    goto :goto_822

    .line 570
    :cond_7f7
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iSortID:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_821

    .line 571
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_7fd
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_81f

    .line 572
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_81c

    .line 573
    move v0, v1

    .line 571
    :cond_81c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7fd

    :cond_81f
    move v8, v0

    goto :goto_822

    .line 570
    .end local v1    # "o":I
    :cond_821
    move v8, v0

    .line 578
    .end local v0    # "toAddID":I
    .local v8, "toAddID":I
    :goto_822
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    .line 581
    .end local v28    # "buttonX":I
    .local v0, "buttonX":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$14;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v15, v6, 0x2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move/from16 v29, v20

    move-object/from16 v12, v45

    .end local v20    # "r1W":I
    .local v29, "r1W":I
    move-object v11, v1

    move-object v2, v12

    move/from16 v30, v49

    const/16 v31, 0x1

    .end local v49    # "r0W":I
    .local v30, "r0W":I
    move-object/from16 v12, p0

    move-object/from16 v32, v13

    move/from16 v3, v16

    const/16 v33, 0x3

    .end local v13    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v16    # "menuWidth":I
    .local v3, "menuWidth":I
    .local v32, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object v13, v4

    move-object v4, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v4, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v5

    const/16 v34, 0x2

    move-object/from16 v7, p0

    move/from16 v16, v0

    move/from16 v17, v27

    move/from16 v18, v46

    move/from16 v20, v6

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;IIIIIII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    add-int v28, v0, v1

    .line 619
    .end local v0    # "buttonX":I
    .restart local v28    # "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$15;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v12, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v5

    move v14, v3

    .end local v3    # "menuWidth":I
    .local v14, "menuWidth":I
    move v3, v6

    move-object v15, v4

    .end local v4    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v15, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v4, v12

    move/from16 v5, v28

    move/from16 v6, v27

    move-object v12, v7

    move/from16 v7, v44

    move v12, v8

    .end local v8    # "toAddID":I
    .local v12, "toAddID":I
    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v27, v0

    .line 635
    invoke-interface {v9, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 637
    .end local v12    # "toAddID":I
    move-object/from16 v45, v13

    move/from16 v16, v14

    move-object v14, v15

    move/from16 v20, v29

    move-object/from16 v13, v32

    goto/16 :goto_74a

    .line 549
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .end local v32    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .restart local v13    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "menuWidth":I
    .restart local v20    # "r1W":I
    .restart local v49    # "r0W":I
    :cond_8e5
    move-object/from16 v32, v13

    move-object v15, v14

    move/from16 v14, v16

    move/from16 v29, v20

    move/from16 v30, v49

    const/16 v33, 0x3

    .end local v13    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v16    # "menuWidth":I
    .end local v20    # "r1W":I
    .end local v49    # "r0W":I
    .local v14, "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    .restart local v32    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object/from16 v11, p0

    move/from16 v10, v27

    goto :goto_941

    .line 640
    .end local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v27    # "buttonY":I
    .end local v29    # "r1W":I
    .end local v30    # "r0W":I
    .end local v32    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v12, "buttonY":I
    .restart local v13    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v16    # "menuWidth":I
    .restart local v20    # "r1W":I
    .restart local v49    # "r0W":I
    :cond_8f5
    move-object/from16 v11, p0

    move-object/from16 v32, v13

    move-object v15, v14

    move/from16 v14, v16

    move/from16 v29, v20

    move/from16 v30, v49

    const/16 v31, 0x1

    const/16 v33, 0x3

    const/16 v34, 0x2

    .end local v13    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v16    # "menuWidth":I
    .end local v20    # "r1W":I
    .end local v49    # "r0W":I
    .local v14, "menuWidth":I
    .restart local v15    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v29    # "r1W":I
    .restart local v30    # "r0W":I
    .restart local v32    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v1, v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    sub-int v7, v14, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v4, -0x1

    move-object v1, v0

    move v6, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v0, v12

    move v10, v0

    .line 645
    .end local v9    # "tCivsID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "buttonY":I
    .end local v32    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v10, "buttonY":I
    :goto_941
    const/4 v0, 0x0

    .line 647
    .end local v10    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move v9, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .local v9, "buttonY":I
    :goto_948
    if-ge v1, v2, :cond_980

    .line 648
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    if-ge v9, v0, :cond_97d

    .line 649
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    move v9, v0

    .line 647
    :cond_97d
    add-int/lit8 v1, v1, 0x1

    goto :goto_948

    .line 653
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_980
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v25

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 655
    .local v10, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v14, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Government"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/4 v3, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v24

    move/from16 v3, v25

    move v4, v14

    move v5, v10

    move-object v6, v15

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 672
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    iput v0, v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->scrollExtraPosX:I

    .line 673
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

    .line 677
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 678
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 681
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 682
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 684
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 685
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 686
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 690
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 691
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 702
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 695
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 696
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime:J

    .line 697
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime2:J

    .line 698
    return-void
.end method
