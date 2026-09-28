.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightReligion.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iReligionID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    .line 54
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime2:J

    .line 56
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    .line 58
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 58

    .line 60
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 63
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 64
    .local v19, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v20

    .line 66
    .local v20, "titleHeight":I
    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 68
    .local v21, "extraX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 70
    .local v13, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v22, v0, v13

    .line 71
    .local v22, "menuX":I
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

    add-int v23, v0, v1

    .line 73
    .local v23, "menuY":I
    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 74
    .local v24, "buttonYPadding":I
    const/4 v0, 0x0

    .line 75
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v1, v19, v1

    .line 77
    .local v1, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_53

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_55

    :cond_53
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_55
    move/from16 v16, v2

    .line 79
    .local v16, "buttonH":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float v2, v2, v3

    float-to-int v12, v2

    .line 80
    .local v12, "r0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    const v4, 0x3f266666    # 0.65f

    mul-float v2, v2, v4

    float-to-int v11, v2

    .line 82
    .local v11, "r1W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x3

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v9, v2

    .line 83
    .local v9, "r0W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v8, v2

    .line 85
    .local v8, "r1W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    float-to-int v7, v2

    .line 86
    .local v7, "p0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v4

    float-to-int v6, v2

    .line 88
    .local v6, "p1W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v5, v2

    .line 89
    .local v5, "p0W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v13, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v4, v2

    .line 91
    .local v4, "p1W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 93
    sget v33, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 94
    .local v33, "religionH":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/lit8 v34, v2, 0x2

    .line 97
    .local v34, "popH":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    move/from16 v17, v8

    .end local v8    # "r1W2":I
    .local v17, "r1W2":I
    const-string v8, "Population"

    move-object/from16 v18, v8

    const-string v8, "Name"

    move-object/from16 v25, v8

    const-string v8, ""

    move-object/from16 v26, v8

    if-gez v2, :cond_64b

    .line 98
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v28, v2, v28

    .line 100
    .end local v1    # "buttonX":I
    .local v28, "buttonX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 101
    .local v2, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v29, 0x0

    move/from16 v3, v29

    .local v3, "i":I
    :goto_eb
    sget-object v29, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v10

    if-ge v3, v10, :cond_107

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-wide/16 v35, 0x0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x3

    goto :goto_eb

    .line 108
    .end local v3    # "i":I
    :cond_107
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_108
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v3, v10, :cond_154

    .line 109
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_149

    .line 110
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v8

    move/from16 v37, v4

    move/from16 v29, v5

    .end local v4    # "p1W2":I
    .end local v5    # "p0W2":I
    .local v29, "p0W2":I
    .local v37, "p1W2":I
    int-to-long v4, v8

    add-long v35, v35, v4

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v10, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14d

    .line 109
    .end local v29    # "p0W2":I
    .end local v37    # "p1W2":I
    .restart local v4    # "p1W2":I
    .restart local v5    # "p0W2":I
    :cond_149
    move/from16 v37, v4

    move/from16 v29, v5

    .line 108
    .end local v4    # "p1W2":I
    .end local v5    # "p0W2":I
    .restart local v29    # "p0W2":I
    .restart local v37    # "p1W2":I
    :goto_14d
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v29

    move/from16 v4, v37

    goto :goto_108

    .end local v29    # "p0W2":I
    .end local v37    # "p1W2":I
    .restart local v4    # "p1W2":I
    .restart local v5    # "p0W2":I
    :cond_154
    move/from16 v37, v4

    move/from16 v29, v5

    .line 114
    .end local v3    # "i":I
    .end local v4    # "p1W2":I
    .end local v5    # "p0W2":I
    .restart local v29    # "p0W2":I
    .restart local v37    # "p1W2":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$1;

    invoke-direct {v3, v15}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;)V

    move-object v10, v3

    .line 128
    .local v10, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    .restart local v3    # "i":I
    :goto_164
    if-ltz v3, :cond_1a0

    .line 129
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_198

    .line 130
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    move/from16 v35, v9

    .end local v9    # "r0W2":I
    .local v35, "r0W2":I
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-direct {v4, v5, v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v10, v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    goto :goto_19a

    .line 129
    .end local v35    # "r0W2":I
    .restart local v9    # "r0W2":I
    :cond_198
    move/from16 v35, v9

    .line 128
    .end local v9    # "r0W2":I
    .restart local v35    # "r0W2":I
    :goto_19a
    add-int/lit8 v3, v3, -0x1

    move/from16 v9, v35

    const/4 v8, 0x1

    goto :goto_164

    .end local v35    # "r0W2":I
    .restart local v9    # "r0W2":I
    :cond_1a0
    move/from16 v35, v9

    .line 134
    .end local v3    # "i":I
    .end local v9    # "r0W2":I
    .restart local v35    # "r0W2":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int v38, v3, v4

    .line 135
    .local v38, "pieDim":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$2;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v8, v38, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v30, v38, v3

    const/16 v32, 0x0

    move-object v3, v1

    .end local v1    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v3, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v1, v9

    move-object v15, v2

    .end local v2    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v2, p0

    move-object v5, v3

    move/from16 v39, v12

    const/4 v12, 0x2

    .end local v3    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v12    # "r0W":I
    .local v5, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v39, "r0W":I
    move/from16 v3, v28

    move-object/from16 v41, v5

    move/from16 v40, v29

    .end local v5    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v29    # "p0W2":I
    .local v40, "p0W2":I
    .local v41, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v5, v8

    move/from16 v42, v6

    .end local v6    # "p1W":I
    .local v42, "p1W":I
    move/from16 v6, v30

    move/from16 v43, v7

    .end local v7    # "p0W":I
    .local v43, "p0W":I
    move-object v7, v10

    move/from16 v36, v17

    move-object/from16 v44, v18

    move-object/from16 v45, v25

    move-object/from16 v46, v26

    const/4 v12, 0x1

    const/16 v47, 0x0

    .end local v17    # "r1W2":I
    .local v36, "r1W2":I
    move-object/from16 v8, v32

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move v1, v0

    .line 175
    .local v1, "nY":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int v48, v2, v3

    .line 176
    .local v48, "nX":I
    sub-int v2, v13, v19

    sub-int v49, v2, v48

    .line 178
    .local v49, "nW":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int v25, v0, v2

    .line 181
    .end local v0    # "buttonY":I
    .local v25, "buttonY":I
    :try_start_22e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v0, "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_235} :catch_335

    move-object/from16 v8, v41

    .end local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v8, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_237
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v2, "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_319

    const/4 v5, 0x3

    if-ge v3, v5, :cond_319

    .line 185
    const/4 v6, 0x0

    .line 187
    .local v6, "bestID":I
    const/4 v7, 0x1

    .local v7, "o":I
    :goto_246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_24a} :catch_327

    if-ge v7, v9, :cond_277

    .line 188
    :try_start_24c
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v26
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_260} :catch_268

    cmp-long v9, v17, v26

    if-gez v9, :cond_265

    .line 189
    move v6, v7

    .line 187
    :cond_265
    add-int/lit8 v7, v7, 0x1

    goto :goto_246

    .line 220
    .end local v0    # "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    .end local v6    # "bestID":I
    .end local v7    # "o":I
    :catch_268
    move-exception v0

    move-object/from16 v41, v8

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    move-object/from16 v26, v46

    move-object/from16 v46, v10

    goto/16 :goto_340

    .line 193
    .restart local v0    # "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3    # "i":I
    .restart local v6    # "bestID":I
    :cond_277
    :try_start_277
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_277 .. :try_end_27e} :catch_327

    move-object/from16 v41, v8

    move-object/from16 v8, v46

    .end local v8    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_282
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_286} :catch_30d

    :try_start_286
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2b4} :catch_300

    const/16 v18, 0x0

    move-object v9, v7

    move-object/from16 v46, v10

    .end local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v46, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move-object/from16 v10, p0

    move/from16 v51, v11

    .end local v11    # "r1W":I
    .local v51, "r1W":I
    move-object v11, v4

    move-object/from16 v26, v8

    const/4 v4, 0x2

    const/4 v8, 0x1

    move v12, v5

    move v5, v13

    .end local v13    # "menuWidth":I
    .local v5, "menuWidth":I
    move/from16 v13, v48

    move-object v8, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move v14, v1

    move-object/from16 v52, v15

    .end local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v52, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v15, v49

    :try_start_2cc
    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v1, v7

    .line 217
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2ec} :catch_2fe

    .line 184
    nop

    .end local v6    # "bestID":I
    add-int/lit8 v3, v3, 0x1

    move v13, v5

    move-object v14, v8

    move-object/from16 v8, v41

    move-object/from16 v10, v46

    move/from16 v11, v51

    move-object/from16 v15, v52

    const/4 v12, 0x1

    move-object/from16 v46, v26

    goto/16 :goto_23b

    .line 220
    .end local v0    # "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    :catch_2fe
    move-exception v0

    goto :goto_340

    .end local v5    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v51    # "r1W":I
    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v11    # "r1W":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_300
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v46, v10

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    const/4 v4, 0x2

    goto :goto_340

    :catch_30d
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v46, v10

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    goto :goto_340

    .line 184
    .end local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v0    # "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v3    # "i":I
    .local v8, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_319
    move-object/from16 v41, v8

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    move-object/from16 v26, v46

    move-object/from16 v46, v10

    .line 222
    .end local v0    # "rightList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "rightListPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    .end local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v11    # "r1W":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "menuWidth":I
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v51    # "r1W":I
    .restart local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v0, v1

    goto :goto_344

    .line 220
    .end local v5    # "menuWidth":I
    .end local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v51    # "r1W":I
    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v11    # "r1W":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_327
    move-exception v0

    move-object/from16 v41, v8

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    move-object/from16 v26, v46

    move-object/from16 v46, v10

    .end local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v11    # "r1W":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "menuWidth":I
    .local v8, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v51    # "r1W":I
    .restart local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_340

    .end local v5    # "menuWidth":I
    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v51    # "r1W":I
    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v11    # "r1W":I
    .restart local v13    # "menuWidth":I
    .restart local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_335
    move-exception v0

    move/from16 v51, v11

    move v5, v13

    move-object v8, v14

    move-object/from16 v52, v15

    move-object/from16 v26, v46

    move-object/from16 v46, v10

    .line 221
    .end local v10    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v11    # "r1W":I
    .end local v13    # "menuWidth":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v5    # "menuWidth":I
    .restart local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .restart local v51    # "r1W":I
    .restart local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_340
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v0, v1

    .line 224
    .end local v1    # "nY":I
    .local v0, "nY":I
    :goto_344
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$4;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-eqz v1, :cond_352

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_350

    goto :goto_353

    :cond_350
    const/4 v3, 0x0

    goto :goto_354

    :cond_352
    const/4 v9, 0x1

    :goto_353
    const/4 v3, 0x1

    :goto_354
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v1, v9, :cond_35a

    const/4 v6, 0x1

    goto :goto_35b

    :cond_35a
    const/4 v6, 0x0

    :goto_35b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v45

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v13, -0x1

    move-object v1, v12

    move-object/from16 v2, p0

    const/4 v14, 0x2

    move v4, v6

    move v15, v5

    .end local v5    # "menuWidth":I
    .local v15, "menuWidth":I
    move-object v5, v7

    move v6, v13

    move/from16 v7, v28

    move-object v13, v8

    move-object/from16 v53, v26

    move-object/from16 v9, v41

    const/4 v14, 0x1

    .end local v8    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v41    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v9, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move/from16 v8, v25

    move-object/from16 v54, v9

    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v54, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move/from16 v9, v39

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v28, v28, v1

    .line 254
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$5;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3aa

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v11, 0x3

    if-ne v1, v11, :cond_3a8

    goto :goto_3ab

    :cond_3a8
    const/4 v3, 0x0

    goto :goto_3ac

    :cond_3aa
    const/4 v11, 0x3

    :goto_3ab
    const/4 v3, 0x1

    :goto_3ac
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v1, v11, :cond_3b2

    const/4 v4, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v4, 0x0

    :goto_3b3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v44

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v7, v28

    move/from16 v8, v25

    move/from16 v9, v51

    move/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v25, v25, v1

    move/from16 v11, v25

    .line 286
    .end local v25    # "buttonY":I
    .local v11, "buttonY":I
    :goto_3ed
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_641

    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-nez v2, :cond_439

    .line 290
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_3f9
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_431

    .line 291
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    move-object/from16 v12, v52

    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42c

    .line 292
    move v1, v2

    .line 290
    :cond_42c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v52, v12

    goto :goto_3f9

    .end local v12    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_431
    move-object/from16 v12, v52

    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v1

    move-object/from16 v10, v54

    const/4 v9, 0x3

    .end local v2    # "o":I
    goto/16 :goto_4d7

    .line 295
    .end local v12    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_439
    move-object/from16 v12, v52

    .end local v52    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v2, v14, :cond_479

    .line 296
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_440
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_474

    .line 297
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_471

    .line 298
    move v1, v2

    .line 296
    :cond_471
    add-int/lit8 v2, v2, 0x1

    goto :goto_440

    :cond_474
    move v8, v1

    move-object/from16 v10, v54

    const/4 v9, 0x3

    .end local v2    # "o":I
    goto :goto_4d7

    .line 301
    :cond_479
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4aa

    .line 302
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_47f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a5

    .line 303
    move-object/from16 v10, v54

    .end local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v10, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_4a0

    .line 304
    move v1, v2

    .line 302
    :cond_4a0
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v54, v10

    goto :goto_47f

    .end local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4a5
    move-object/from16 v10, v54

    .end local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v8, v1

    const/4 v9, 0x3

    .end local v2    # "o":I
    goto :goto_4d7

    .line 307
    .end local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4aa
    move-object/from16 v10, v54

    .end local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_4d6

    .line 308
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_4b2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d4

    .line 309
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4d1

    .line 310
    move v1, v2

    .line 308
    :cond_4d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b2

    :cond_4d4
    move v8, v1

    goto :goto_4d7

    .line 307
    .end local v2    # "o":I
    :cond_4d6
    move v8, v1

    .line 315
    .end local v1    # "toAddID":I
    .local v8, "toAddID":I
    :goto_4d7
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v1, v2

    .line 317
    .end local v28    # "buttonX":I
    .local v18, "buttonX":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$6;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v4, v18

    move v5, v11

    move/from16 v6, v35

    move-object v9, v7

    move/from16 v7, v33

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIII)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v18, v18, v1

    .line 341
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v53

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v6, v18

    move-object/from16 v55, v7

    move v7, v11

    move v14, v8

    .end local v8    # "toAddID":I
    .local v14, "toAddID":I
    move/from16 v8, v36

    move/from16 v44, v0

    move-object v0, v9

    .end local v0    # "nY":I
    .local v44, "nY":I
    move/from16 v9, v34

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_54a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_55a

    .line 357
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_54a

    .line 360
    .end local v1    # "i":I
    :cond_55a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_55b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_5ac

    .line 361
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_5a9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_5a9

    .line 362
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_5a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_55b

    .line 366
    .end local v1    # "i":I
    :cond_5ac
    const/4 v1, 0x0

    .line 368
    .local v1, "bestCiv":I
    const/4 v2, 0x1

    move v9, v1

    .end local v1    # "bestCiv":I
    .local v2, "i":I
    .local v9, "bestCiv":I
    :goto_5af
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v2, v1, :cond_5d0

    .line 369
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_5cd

    .line 370
    move v1, v2

    move v9, v1

    .line 368
    :cond_5cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_5af

    .line 374
    .end local v2    # "i":I
    :cond_5d0
    if-lez v9, :cond_602

    .line 375
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$8;

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v5, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v11

    add-int v7, v1, v34

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v6, v18

    move-object/from16 v45, v0

    move-object v0, v8

    .end local v0    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v45, "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v8, v36

    move/from16 v50, v9

    .end local v9    # "bestCiv":I
    .local v50, "bestCiv":I
    move/from16 v9, v34

    move/from16 v52, v15

    move-object v15, v10

    .end local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v52, "menuWidth":I
    move/from16 v10, v50

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_627

    .line 413
    .end local v45    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v50    # "bestCiv":I
    .end local v52    # "menuWidth":I
    .restart local v0    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "bestCiv":I
    .restart local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "menuWidth":I
    :cond_602
    move-object/from16 v45, v0

    move/from16 v50, v9

    move/from16 v52, v15

    move-object v15, v10

    .end local v0    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "bestCiv":I
    .end local v10    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v45    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v50    # "bestCiv":I
    .restart local v52    # "menuWidth":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v28, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v11

    add-int v30, v1, v34

    const-string v26, "-"

    move-object/from16 v25, v0

    move/from16 v29, v18

    move/from16 v31, v36

    move/from16 v32, v34

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :goto_627
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v33, v0

    add-int/2addr v11, v0

    .line 419
    invoke-interface {v12, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 420
    invoke-interface {v15, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 422
    .end local v14    # "toAddID":I
    .end local v45    # "largestCiv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v50    # "bestCiv":I
    move-object/from16 v54, v15

    move/from16 v28, v18

    move/from16 v0, v44

    move/from16 v15, v52

    move-object/from16 v53, v55

    const/4 v14, 0x1

    move-object/from16 v52, v12

    goto/16 :goto_3ed

    .line 286
    .end local v12    # "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "buttonX":I
    .end local v44    # "nY":I
    .local v0, "nY":I
    .local v15, "menuWidth":I
    .restart local v28    # "buttonX":I
    .local v52, "tReligionID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_641
    move/from16 v44, v0

    move-object/from16 v12, v52

    move/from16 v52, v15

    move-object/from16 v15, v54

    .line 423
    .end local v0    # "nY":I
    .end local v15    # "menuWidth":I
    .end local v38    # "pieDim":I
    .end local v46    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v48    # "nX":I
    .end local v49    # "nW":I
    .end local v54    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v52, "menuWidth":I
    goto/16 :goto_9b0

    .line 425
    .end local v28    # "buttonX":I
    .end local v35    # "r0W2":I
    .end local v36    # "r1W2":I
    .end local v37    # "p1W2":I
    .end local v39    # "r0W":I
    .end local v40    # "p0W2":I
    .end local v42    # "p1W":I
    .end local v43    # "p0W":I
    .end local v51    # "r1W":I
    .end local v52    # "menuWidth":I
    .local v0, "buttonY":I
    .local v1, "buttonX":I
    .restart local v4    # "p1W2":I
    .local v5, "p0W2":I
    .local v6, "p1W":I
    .local v7, "p0W":I
    .local v9, "r0W2":I
    .local v11, "r1W":I
    .local v12, "r0W":I
    .local v13, "menuWidth":I
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v17    # "r1W2":I
    :cond_64b
    move/from16 v37, v4

    move/from16 v40, v5

    move/from16 v42, v6

    move/from16 v43, v7

    move/from16 v35, v9

    move/from16 v51, v11

    move/from16 v39, v12

    move/from16 v52, v13

    move-object v13, v14

    move/from16 v36, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v25

    move-object/from16 v55, v26

    const/16 v47, 0x0

    .end local v4    # "p1W2":I
    .end local v5    # "p0W2":I
    .end local v6    # "p1W":I
    .end local v7    # "p0W":I
    .end local v9    # "r0W2":I
    .end local v11    # "r1W":I
    .end local v12    # "r0W":I
    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v17    # "r1W2":I
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v35    # "r0W2":I
    .restart local v36    # "r1W2":I
    .restart local v37    # "p1W2":I
    .restart local v39    # "r0W":I
    .restart local v40    # "p0W2":I
    .restart local v42    # "p1W":I
    .restart local v43    # "p0W":I
    .restart local v51    # "r1W":I
    .restart local v52    # "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 426
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v2, v3

    .line 428
    .end local v1    # "buttonX":I
    .local v12, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$9;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    sub-int v1, v52, v12

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v6, v1, v2

    move-object v1, v8

    move-object/from16 v2, p0

    move v4, v12

    move v5, v0

    move/from16 v7, v33

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 452
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$10;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 453
    const-string v2, "Civilizations"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 454
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v1, v19, 0x2

    sub-int v8, v52, v1

    div-int/lit8 v9, v52, 0x2

    const/4 v15, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v6, v19

    move v7, v0

    move/from16 v18, v12

    move-object v12, v10

    .end local v12    # "buttonX":I
    .restart local v18    # "buttonX":I
    move v10, v15

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 461
    .local v14, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 464
    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 466
    .end local v18    # "buttonX":I
    .local v15, "buttonX":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$11;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-eqz v1, :cond_6e6

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6e4

    goto :goto_6e7

    :cond_6e4
    const/4 v3, 0x0

    goto :goto_6e8

    :cond_6e6
    const/4 v2, 0x1

    :goto_6e7
    const/4 v3, 0x1

    :goto_6e8
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v1, v2, :cond_6ee

    const/4 v4, 0x1

    goto :goto_6ef

    :cond_6ee
    const/4 v4, 0x0

    :goto_6ef
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v11, v1, v2

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move v7, v15

    move v8, v0

    move/from16 v9, v43

    move-object/from16 v56, v10

    move v10, v11

    move/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v1, v56

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v28, v15, v1

    .line 496
    .end local v15    # "buttonX":I
    .restart local v28    # "buttonX":I
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$12;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_735

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v11, 0x3

    if-ne v1, v11, :cond_733

    goto :goto_736

    :cond_733
    const/4 v3, 0x0

    goto :goto_737

    :cond_735
    const/4 v11, 0x3

    :goto_736
    const/4 v3, 0x1

    :goto_737
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v1, v11, :cond_73d

    const/4 v4, 0x1

    goto :goto_73e

    :cond_73d
    const/4 v4, 0x0

    :goto_73e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v7, v28

    move v8, v0

    move/from16 v9, v42

    move-object/from16 v18, v14

    const/4 v14, 0x3

    .end local v14    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v18, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move v11, v12

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 528
    .local v11, "tCivsID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 530
    .local v12, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_782
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_799

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_782

    .line 535
    .end local v1    # "i":I
    :cond_799
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_79a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_7e3

    .line 536
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_7e0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v2, v3, :cond_7e0

    .line 537
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_7e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_79a

    .line 541
    .end local v1    # "i":I
    :cond_7e3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_7e9
    if-ltz v1, :cond_800

    .line 542
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_7fd

    .line 543
    invoke-interface {v11, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-interface {v12, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 541
    :cond_7fd
    add-int/lit8 v1, v1, -0x1

    goto :goto_7e9

    .line 549
    .end local v1    # "i":I
    :cond_800
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_974

    .line 550
    :goto_806
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_972

    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-nez v2, :cond_849

    .line 554
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_812
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_846

    .line 555
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v3, :cond_843

    .line 556
    move v1, v2

    .line 554
    :cond_843
    add-int/lit8 v2, v2, 0x1

    goto :goto_812

    :cond_846
    move v15, v1

    .end local v2    # "o":I
    goto/16 :goto_8d5

    .line 559
    :cond_849
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_885

    .line 560
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_84f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_883

    .line 561
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v3, :cond_880

    .line 562
    move v1, v2

    .line 560
    :cond_880
    add-int/lit8 v2, v2, 0x1

    goto :goto_84f

    :cond_883
    move v15, v1

    .end local v2    # "o":I
    goto :goto_8d5

    .line 565
    :cond_885
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8ad

    .line 566
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_88b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8ab

    .line 567
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_8a8

    .line 568
    move v1, v2

    .line 566
    :cond_8a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_88b

    :cond_8ab
    move v15, v1

    .end local v2    # "o":I
    goto :goto_8d5

    .line 571
    :cond_8ad
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iSortID:I

    if-ne v2, v14, :cond_8d4

    .line 572
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_8b2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d2

    .line 573
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_8cf

    .line 574
    move v1, v2

    .line 572
    :cond_8cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b2

    :cond_8d2
    move v15, v1

    goto :goto_8d5

    .line 571
    .end local v2    # "o":I
    :cond_8d4
    move v15, v1

    .line 579
    .end local v1    # "toAddID":I
    .local v15, "toAddID":I
    :goto_8d5
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v1, v2

    .line 582
    .end local v28    # "buttonX":I
    .local v25, "buttonX":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$13;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v5, v1, 0x2

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v6, v25

    move v7, v0

    move/from16 v8, v40

    move/from16 v9, v16

    move-object v14, v10

    move/from16 v10, v26

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v28, v25, v1

    .line 620
    .end local v25    # "buttonX":I
    .restart local v28    # "buttonX":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$14;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v55

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v6, v28

    move/from16 v8, v37

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 636
    invoke-interface {v11, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 637
    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    .end local v15    # "toAddID":I
    const/4 v14, 0x3

    goto/16 :goto_806

    .line 550
    :cond_972
    move v11, v0

    goto :goto_9b0

    .line 641
    :cond_974
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v2, v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int v8, v52, v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v5, -0x1

    move-object v2, v1

    move v7, v0

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move v11, v0

    .line 646
    .end local v0    # "buttonY":I
    .end local v12    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .local v11, "buttonY":I
    :goto_9b0
    const/4 v0, 0x0

    .line 648
    .end local v11    # "buttonY":I
    .restart local v0    # "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_9b6
    if-ge v1, v2, :cond_9ee

    .line 649
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_9eb

    .line 650
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    move v0, v3

    .line 648
    :cond_9eb
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b6

    .line 654
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_9ee
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v23

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 656
    .local v10, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v11, v52

    const/4 v3, 0x0

    .end local v52    # "menuWidth":I
    .local v11, "menuWidth":I
    invoke-direct {v1, v3, v3, v11, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Religion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v22

    move/from16 v4, v23

    move v5, v11

    move v6, v10

    move-object v7, v13

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 673
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v2, p0

    iput v1, v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->scrollExtraPosX:I

    .line 674
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

    .line 678
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 679
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 682
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 683
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 685
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 686
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 687
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 691
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 692
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 703
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

    .line 696
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 697
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    .line 698
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime2:J

    .line 699
    return-void
.end method
