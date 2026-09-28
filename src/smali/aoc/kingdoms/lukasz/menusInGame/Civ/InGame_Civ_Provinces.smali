.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_Provinces.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    .line 46
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime2:J

    .line 48
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 49

    .line 50
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 55
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 57
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 58
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

    .line 60
    .local v13, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x2

    .line 61
    .local v14, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 62
    .local v1, "buttonX":I
    move v2, v14

    .line 64
    .local v2, "buttonY":I
    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 66
    .local v25, "buttonH":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_64

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_64

    .line 67
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_6e

    .line 69
    :cond_64
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_6e

    .line 70
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 73
    :cond_6e
    :goto_6e
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 74
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 76
    .local v6, "r1W":I
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v11, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v8, v7

    .line 80
    .local v8, "c0W":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v7, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v15, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_a3
    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v9

    if-ge v5, v9, :cond_bf

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x4

    goto :goto_a3

    .line 88
    .end local v5    # "i":I
    :cond_bf
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_c0
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v5, v9, :cond_122

    .line 89
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v9

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    move/from16 v37, v12

    move/from16 v38, v13

    .end local v12    # "menuX":I
    .end local v13    # "menuY":I
    .local v37, "menuX":I
    .local v38, "menuY":I
    int-to-long v12, v3

    add-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v37

    move/from16 v13, v38

    const/4 v3, 0x2

    goto :goto_c0

    .end local v37    # "menuX":I
    .end local v38    # "menuY":I
    .restart local v12    # "menuX":I
    .restart local v13    # "menuY":I
    :cond_122
    move/from16 v37, v12

    move/from16 v38, v13

    .line 92
    .end local v5    # "i":I
    .end local v12    # "menuX":I
    .end local v13    # "menuY":I
    .restart local v37    # "menuX":I
    .restart local v38    # "menuY":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$1;

    move-object/from16 v12, p0

    invoke-direct {v3, v12}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;)V

    move-object v13, v3

    .line 106
    .local v13, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_134
    if-ltz v3, :cond_17a

    .line 107
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    move/from16 v39, v6

    .end local v6    # "r1W":I
    .local v39, "r1W":I
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-float v5, v5

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16c

    .line 108
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v41, v7

    move/from16 v40, v8

    .end local v7    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "c0W":I
    .local v40, "c0W":I
    .local v41, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v7, v7

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_170

    .line 107
    .end local v40    # "c0W":I
    .end local v41    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "c0W":I
    :cond_16c
    move-object/from16 v41, v7

    move/from16 v40, v8

    .line 106
    .end local v7    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "c0W":I
    .restart local v40    # "c0W":I
    .restart local v41    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_170
    add-int/lit8 v3, v3, -0x1

    move/from16 v6, v39

    move/from16 v8, v40

    move-object/from16 v7, v41

    const/4 v5, 0x1

    goto :goto_134

    .end local v39    # "r1W":I
    .end local v40    # "c0W":I
    .end local v41    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "r1W":I
    .restart local v7    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "c0W":I
    :cond_17a
    move/from16 v39, v6

    move-object/from16 v41, v7

    move/from16 v40, v8

    .line 112
    .end local v3    # "i":I
    .end local v6    # "r1W":I
    .end local v7    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "c0W":I
    .restart local v39    # "r1W":I
    .restart local v40    # "c0W":I
    .restart local v41    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v42, v3, v6

    .line 113
    .local v42, "pieDim":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$2;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v2, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v19, v42, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v20, v42, v6

    const/16 v22, 0x0

    move-object/from16 v43, v15

    .end local v15    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v43, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v15, v3

    move-object/from16 v16, p0

    move/from16 v17, v1

    move-object/from16 v21, v13

    invoke-direct/range {v15 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    move v3, v2

    .line 153
    .local v3, "nY":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int v44, v5, v6

    .line 154
    .local v44, "nX":I
    sub-int v5, v11, v10

    sub-int v45, v5, v44

    .line 156
    .local v45, "nW":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 159
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 160
    const-string v9, "Provinces"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 161
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 163
    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v6, v15

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v20, v44

    move/from16 v21, v3

    move/from16 v22, v45

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 159
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int v46, v3, v5

    .line 227
    .end local v3    # "nY":I
    .local v46, "nY":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTotalLoot()F

    move-result v3

    .line 229
    .local v3, "fGold":F
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 230
    move/from16 v26, v1

    .end local v1    # "buttonX":I
    .local v26, "buttonX":I
    const-string v1, "TotalLoot"

    invoke-virtual {v15, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v47, 0x41200000    # 10.0f

    const/16 v15, 0x64

    cmpg-float v16, v3, v47

    if-gez v16, :cond_29d

    const/16 v7, 0x64

    goto :goto_2a5

    :cond_29d
    cmpg-float v16, v3, v8

    if-gez v16, :cond_2a4

    const/16 v7, 0xa

    goto :goto_2a5

    :cond_2a4
    const/4 v7, 0x1

    :goto_2a5
    invoke-static {v3, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 233
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    const/16 v1, 0x64

    move-object v15, v5

    move-object/from16 v16, p0

    move/from16 v20, v44

    move/from16 v21, v46

    move/from16 v22, v45

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 229
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 259
    .end local v26    # "buttonX":I
    .local v5, "buttonX":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$5;

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-eqz v15, :cond_2e1

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v1, 0x1

    if-ne v15, v1, :cond_2de

    goto :goto_2e2

    :cond_2de
    const/16 v28, 0x0

    goto :goto_2e4

    :cond_2e1
    const/4 v1, 0x1

    :goto_2e2
    const/16 v28, 0x1

    :goto_2e4
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v15, v1, :cond_2eb

    const/16 v29, 0x1

    goto :goto_2ed

    :cond_2eb
    const/16 v29, 0x0

    :goto_2ed
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v1, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v1, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v7

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v5, v1

    .line 289
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$6;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v15, 0x2

    if-eq v7, v15, :cond_333

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v15, 0x3

    if-ne v7, v15, :cond_330

    goto :goto_334

    :cond_330
    const/16 v28, 0x0

    goto :goto_336

    :cond_333
    const/4 v15, 0x3

    :goto_334
    const/16 v28, 0x1

    :goto_336
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v7, v15, :cond_33d

    const/16 v29, 0x1

    goto :goto_33f

    :cond_33d
    const/16 v29, 0x0

    :goto_33f
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Income"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v7, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v1

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v5, v1

    .line 319
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$7;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v15, 0x5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_384

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v7, v15, :cond_381

    goto :goto_384

    :cond_381
    const/16 v28, 0x0

    goto :goto_386

    :cond_384
    :goto_384
    const/16 v28, 0x1

    :goto_386
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v7, v15, :cond_38d

    const/16 v29, 0x1

    goto :goto_38f

    :cond_38d
    const/16 v29, 0x0

    :goto_38f
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Loot"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x6

    mul-int/lit8 v8, v8, 0x6

    add-int v35, v7, v8

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v1

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v39

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v5, v1

    .line 349
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$8;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v8, 0x7

    const/4 v15, 0x6

    if-eq v7, v15, :cond_3d6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v7, v8, :cond_3d3

    goto :goto_3d6

    :cond_3d3
    const/16 v28, 0x0

    goto :goto_3d8

    :cond_3d6
    :goto_3d6
    const/16 v28, 0x1

    :goto_3d8
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-ne v7, v8, :cond_3df

    const/16 v29, 0x1

    goto :goto_3e1

    :cond_3df
    const/16 v29, 0x0

    :goto_3e1
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Religion"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v17, 0x6

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v7, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v1

    move-object/from16 v27, p0

    move/from16 v32, v5

    move/from16 v33, v2

    move/from16 v34, v39

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v2, v1

    .line 382
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v16, 0x5

    mul-int/lit8 v15, v15, 0x5

    sub-int/2addr v1, v15

    int-to-float v1, v1

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float v1, v1, v15

    float-to-int v4, v1

    .line 383
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    sub-int/2addr v1, v7

    int-to-float v1, v1

    mul-float v1, v1, v15

    float-to-int v7, v1

    .line 386
    .end local v39    # "r1W":I
    .local v7, "r1W":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_444
    sget v17, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v15, v8, :cond_479

    .line 389
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v8

    if-nez v8, :cond_475

    .line 390
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_475
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x7

    goto :goto_444

    :cond_479
    move v8, v2

    move/from16 v27, v3

    move v15, v5

    .line 394
    .end local v2    # "buttonY":I
    .end local v3    # "fGold":F
    .end local v5    # "buttonX":I
    .local v8, "buttonY":I
    .local v15, "buttonX":I
    .local v27, "fGold":F
    :goto_47d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_86a

    .line 395
    const/4 v2, 0x0

    .line 397
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    if-nez v3, :cond_4c6

    .line 398
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_489
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4c2

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .local v18, "toAddID":I
    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4bd

    .line 400
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_4bf

    .line 399
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_4bd
    move/from16 v2, v18

    .line 398
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_4bf
    add-int/lit8 v3, v3, 0x1

    goto :goto_489

    :cond_4c2
    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .end local v3    # "o":I
    .restart local v18    # "toAddID":I
    goto/16 :goto_6dc

    .line 404
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :cond_4c6
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_509

    .line 405
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4cc
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_505

    .line 406
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_500

    .line 407
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_502

    .line 406
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_500
    move/from16 v2, v18

    .line 405
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_502
    add-int/lit8 v3, v3, 0x1

    goto :goto_4cc

    :cond_505
    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .end local v3    # "o":I
    .restart local v18    # "toAddID":I
    goto/16 :goto_6dc

    .line 411
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :cond_509
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_56e

    .line 412
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_50f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_56a

    .line 413
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v5, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v2, v12

    cmpg-float v2, v5, v2

    if-gez v2, :cond_563

    .line 414
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_565

    .line 413
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_563
    move/from16 v2, v18

    .line 412
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_565
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p0

    goto :goto_50f

    :cond_56a
    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .end local v3    # "o":I
    .restart local v18    # "toAddID":I
    goto/16 :goto_6dc

    .line 418
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :cond_56e
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5d1

    .line 419
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_574
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5cd

    .line 420
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v5, v12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v12, v2

    cmpl-float v2, v5, v12

    if-lez v2, :cond_5c8

    .line 421
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_5ca

    .line 420
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_5c8
    move/from16 v2, v18

    .line 419
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_5ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_574

    :cond_5cd
    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .end local v3    # "o":I
    .restart local v18    # "toAddID":I
    goto/16 :goto_6dc

    .line 425
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :cond_5d1
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_603

    .line 426
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_5d7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_601

    .line 427
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v12

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v17

    cmpg-float v12, v12, v17

    if-gez v12, :cond_5fe

    .line 428
    move v2, v3

    .line 426
    :cond_5fe
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d7

    .end local v3    # "o":I
    :cond_601
    goto/16 :goto_6dc

    .line 432
    :cond_603
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v12, 0x5

    if-ne v3, v12, :cond_636

    .line 433
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_609
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_634

    .line 434
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v16

    cmpl-float v5, v5, v16

    if-lez v5, :cond_630

    .line 435
    move v2, v3

    .line 433
    :cond_630
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    goto :goto_609

    .end local v3    # "o":I
    :cond_634
    goto/16 :goto_6dc

    .line 439
    :cond_636
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_68a

    .line 440
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_63c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_687

    .line 441
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v12

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_680

    .line 442
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_682

    .line 441
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_680
    move/from16 v2, v18

    .line 440
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_682
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x6

    const/4 v12, 0x5

    goto :goto_63c

    :cond_687
    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .end local v3    # "o":I
    .restart local v18    # "toAddID":I
    goto :goto_6dc

    .line 446
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :cond_68a
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->iSortID:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_6dc

    .line 447
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_690
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_6da

    .line 448
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {v12, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    move/from16 v18, v2

    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d4

    .line 449
    move v2, v3

    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_6d6

    .line 448
    .end local v2    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_6d4
    move/from16 v2, v18

    .line 447
    .end local v18    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_6d6
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x7

    goto :goto_690

    :cond_6da
    move/from16 v18, v2

    .line 454
    .end local v3    # "o":I
    :cond_6dc
    :goto_6dc
    move v3, v10

    .line 456
    .end local v15    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$9;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v28, 0x2

    mul-int/lit8 v19, v15, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v29, 0x5

    move-object v15, v5

    move-object/from16 v16, p0

    move-object/from16 v17, v12

    move/from16 v20, v3

    move/from16 v21, v8

    move/from16 v22, v4

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v12

    add-int/2addr v3, v5

    .line 482
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v5, v12

    .line 483
    .end local v27    # "fGold":F
    .local v5, "fGold":F
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$10;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    cmpg-float v16, v5, v47

    if-gez v16, :cond_765

    move/from16 v31, v10

    const/16 v10, 0x64

    const/high16 v30, 0x42c80000    # 100.0f

    goto :goto_771

    :cond_765
    const/high16 v30, 0x42c80000    # 100.0f

    cmpg-float v16, v5, v30

    move/from16 v31, v10

    if-gez v16, :cond_770

    const/16 v10, 0xa

    goto :goto_771

    :cond_770
    const/4 v10, 0x1

    .end local v10    # "paddingLeft":I
    .local v31, "paddingLeft":I
    :goto_771
    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v15, v12

    move-object/from16 v16, p0

    move/from16 v20, v3

    move/from16 v21, v8

    move/from16 v22, v4

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    .line 491
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$11;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v15

    move/from16 v32, v4

    const/16 v4, 0x64

    .end local v4    # "r0W":I
    .local v32, "r0W":I
    invoke-static {v15, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v10

    move/from16 v20, v3

    move/from16 v22, v7

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    .line 499
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$12;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    invoke-virtual {v15, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v10

    move-object/from16 v16, p0

    move/from16 v20, v3

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v12

    add-int/2addr v8, v4

    .line 507
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 508
    .end local v2    # "toAddID":I
    move-object/from16 v12, p0

    move v15, v3

    move/from16 v27, v5

    move/from16 v10, v31

    move/from16 v4, v32

    goto/16 :goto_47d

    .line 511
    .end local v3    # "buttonX":I
    .end local v5    # "fGold":F
    .end local v31    # "paddingLeft":I
    .end local v32    # "r0W":I
    .restart local v4    # "r0W":I
    .restart local v10    # "paddingLeft":I
    .restart local v15    # "buttonX":I
    .restart local v27    # "fGold":F
    :cond_86a
    move/from16 v32, v4

    move/from16 v31, v10

    .end local v4    # "r0W":I
    .end local v10    # "paddingLeft":I
    .restart local v31    # "paddingLeft":I
    .restart local v32    # "r0W":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v38

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 513
    .local v10, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v11, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$13;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v18

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    sget v22, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v12, 0x1

    move-object/from16 v16, v1

    .end local v1    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v3, v37

    move/from16 v17, v32

    .end local v32    # "r0W":I
    .local v17, "r0W":I
    move/from16 v4, v38

    move v5, v11

    move v6, v10

    move/from16 v19, v7

    move-object/from16 v18, v41

    .end local v7    # "r1W":I
    .end local v41    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "r1W":I
    move-object v7, v0

    move/from16 v21, v8

    move/from16 v20, v40

    .end local v8    # "buttonY":I
    .end local v40    # "c0W":I
    .local v20, "c0W":I
    .local v21, "buttonY":I
    move v8, v9

    move v9, v12

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 526
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 550
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 551
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 552
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 530
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 531
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 534
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 535
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 536
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->getHeight()I

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

    .line 538
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 539
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 543
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 544
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    .line 545
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Provinces;->lTime2:J

    .line 546
    return-void
.end method
