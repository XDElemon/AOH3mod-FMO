.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightGoods.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveResID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    .line 52
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime2:J

    .line 54
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iActiveResID:I

    .line 55
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 48

    .line 57
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 60
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 61
    .local v22, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v23

    .line 63
    .local v23, "titleHeight":I
    sget v24, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 65
    .local v24, "extraX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 67
    .local v13, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v25, v0, v13

    .line 68
    .local v25, "menuX":I
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

    add-int v26, v0, v1

    .line 70
    .local v26, "menuY":I
    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 71
    .local v27, "buttonYPadding":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 72
    .local v0, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v12, v22, v1

    .line 74
    .local v12, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_54

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_56

    :cond_54
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_56
    move/from16 v19, v1

    .line 76
    .local v19, "buttonH":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-int v11, v1

    .line 77
    .local v11, "r0W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v1, v1, v3

    float-to-int v10, v1

    .line 78
    .local v10, "r1W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v9, v1

    .line 80
    .local v9, "r2W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v7, v1

    .line 81
    .local v7, "r0W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v6, v1

    .line 82
    .local v6, "r1W2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v5, v1

    .line 84
    .local v5, "r2W2":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 85
    .local v4, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 87
    .local v3, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 89
    .local v1, "tMaxWidthIcon":I
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v16, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v46, v2

    move v2, v1

    move/from16 v1, v46

    .local v1, "i":I
    .local v2, "tMaxWidthIcon":I
    .local v8, "iSize":I
    :goto_b5
    if-ge v1, v8, :cond_d8

    .line 90
    move/from16 v16, v5

    .end local v5    # "r2W2":I
    .local v16, "r2W2":I
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    if-ge v2, v5, :cond_d3

    .line 91
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    .line 89
    :cond_d3
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v16

    goto :goto_b5

    .end local v16    # "r2W2":I
    .restart local v5    # "r2W2":I
    :cond_d8
    move/from16 v16, v5

    .line 95
    .end local v1    # "i":I
    .end local v5    # "r2W2":I
    .end local v8    # "iSize":I
    .restart local v16    # "r2W2":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_db
    sget v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    const/4 v8, 0x0

    if-ge v1, v5, :cond_f1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 100
    .end local v1    # "i":I
    :cond_f1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    move/from16 v18, v11

    .end local v11    # "r0W":I
    .local v18, "r0W":I
    const/4 v11, 0x1

    if-ge v1, v5, :cond_137

    .line 101
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v5

    if-gez v5, :cond_131

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    if-ltz v5, :cond_131

    .line 102
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_131
    add-int/lit8 v1, v1, 0x1

    move/from16 v11, v18

    const/4 v8, 0x0

    goto :goto_f2

    .line 107
    .end local v1    # "i":I
    :cond_137
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    .restart local v1    # "i":I
    :goto_13c
    if-ltz v1, :cond_19d

    .line 108
    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v5, :cond_195

    .line 109
    const/4 v5, 0x1

    .line 111
    .local v5, "tRemove":Z
    const/4 v8, 0x1

    .local v8, "a":I
    :goto_156
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v11

    if-ge v8, v11, :cond_188

    .line 112
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    move/from16 v28, v2

    .end local v2    # "tMaxWidthIcon":I
    .local v28, "tMaxWidthIcon":I
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    move/from16 v30, v5

    .end local v5    # "tRemove":Z
    .local v30, "tRemove":Z
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v11, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 113
    const/4 v5, 0x0

    .line 114
    .end local v30    # "tRemove":Z
    .restart local v5    # "tRemove":Z
    goto :goto_18c

    .line 111
    .end local v5    # "tRemove":Z
    .restart local v30    # "tRemove":Z
    :cond_180
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v28

    move/from16 v5, v30

    const/4 v11, 0x1

    goto :goto_156

    .end local v28    # "tMaxWidthIcon":I
    .end local v30    # "tRemove":Z
    .restart local v2    # "tMaxWidthIcon":I
    .restart local v5    # "tRemove":Z
    :cond_188
    move/from16 v28, v2

    move/from16 v30, v5

    .line 118
    .end local v2    # "tMaxWidthIcon":I
    .end local v8    # "a":I
    .restart local v28    # "tMaxWidthIcon":I
    :goto_18c
    if-eqz v5, :cond_197

    .line 119
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_197

    .line 108
    .end local v5    # "tRemove":Z
    .end local v28    # "tMaxWidthIcon":I
    .restart local v2    # "tMaxWidthIcon":I
    :cond_195
    move/from16 v28, v2

    .line 107
    .end local v2    # "tMaxWidthIcon":I
    .restart local v28    # "tMaxWidthIcon":I
    :cond_197
    :goto_197
    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v28

    const/4 v11, 0x1

    goto :goto_13c

    .end local v28    # "tMaxWidthIcon":I
    .restart local v2    # "tMaxWidthIcon":I
    :cond_19d
    move/from16 v28, v2

    .line 126
    .end local v1    # "i":I
    .end local v2    # "tMaxWidthIcon":I
    .restart local v28    # "tMaxWidthIcon":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$1;

    invoke-direct {v1, v15}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;)V

    move-object v11, v1

    .line 140
    .local v11, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_1ab
    if-ltz v1, :cond_1df

    .line 141
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1dc

    .line 142
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v2, v5, v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;-><init>(IF)V

    invoke-virtual {v11, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V

    .line 140
    :cond_1dc
    add-int/lit8 v1, v1, -0x1

    goto :goto_1ab

    .line 146
    .end local v1    # "i":I
    :cond_1df
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    const/4 v8, 0x2

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v29, v1, v2

    .line 147
    .local v29, "pieDim":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$2;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v30, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v31, v29, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v32, v29, v1

    const/16 v33, 0x0

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v34, v3

    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v34, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v3, v12

    move-object/from16 v35, v4

    .end local v4    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v35, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v4, v30

    move-object/from16 v36, v5

    move/from16 v30, v16

    .end local v16    # "r2W2":I
    .local v30, "r2W2":I
    move/from16 v5, v31

    move/from16 v31, v6

    .end local v6    # "r1W2":I
    .local v31, "r1W2":I
    move/from16 v6, v32

    move/from16 v32, v7

    .end local v7    # "r0W2":I
    .local v32, "r0W2":I
    move-object v7, v11

    move-object/from16 v16, v11

    const/4 v11, 0x2

    .end local v11    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .local v16, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move-object/from16 v8, v33

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;)V

    move-object/from16 v1, v36

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    move/from16 v17, v0

    .line 188
    .local v17, "nY":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v33, v1, v2

    .line 189
    .local v33, "nX":I
    sub-int v1, v13, v22

    sub-int v36, v1, v33

    .line 191
    .local v36, "nW":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 193
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "LargestGoodsProducers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v38

    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v33

    move/from16 v6, v17

    move-object/from16 v41, v7

    move/from16 v7, v36

    move/from16 v8, v21

    move/from16 v42, v9

    .end local v9    # "r2W":I
    .local v42, "r2W":I
    move/from16 v9, v38

    move/from16 v38, v10

    .end local v10    # "r1W":I
    .local v38, "r1W":I
    move/from16 v10, v39

    move-object/from16 v43, v16

    move/from16 v39, v18

    const/4 v15, 0x1

    .end local v16    # "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    .end local v18    # "r0W":I
    .local v39, "r0W":I
    .local v43, "nPieChartData":Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
    move/from16 v11, v40

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIIIIZ)V

    move-object/from16 v1, v41

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v40, v17, v1

    .line 219
    .end local v17    # "nY":I
    .local v40, "nY":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 220
    const-string v10, "Resources"

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 223
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v18

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v6, v33

    move/from16 v7, v40

    move/from16 v8, v36

    move-object/from16 v44, v9

    move/from16 v9, v17

    move-object/from16 v45, v10

    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 219
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 269
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$5;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-eqz v1, :cond_31f

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-ne v1, v15, :cond_31d

    goto :goto_31f

    :cond_31d
    const/4 v3, 0x0

    goto :goto_320

    :cond_31f
    :goto_31f
    const/4 v3, 0x1

    :goto_320
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-ne v1, v15, :cond_326

    const/4 v4, 0x1

    goto :goto_327

    :cond_326
    const/4 v4, 0x0

    :goto_327
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move v7, v12

    move v8, v0

    move/from16 v9, v39

    move-object v15, v11

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v12, v1

    .line 299
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$6;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36a

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    const/4 v11, 0x3

    if-ne v1, v11, :cond_368

    goto :goto_36b

    :cond_368
    const/4 v3, 0x0

    goto :goto_36c

    :cond_36a
    const/4 v11, 0x3

    :goto_36b
    const/4 v3, 0x1

    :goto_36c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-ne v1, v11, :cond_372

    const/4 v4, 0x1

    goto :goto_373

    :cond_372
    const/4 v4, 0x0

    :goto_373
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Provinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v10, v1, v2

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move v7, v12

    move v8, v0

    move/from16 v9, v38

    move/from16 v18, v13

    const/4 v13, 0x3

    .end local v13    # "menuWidth":I
    .local v18, "menuWidth":I
    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v12, v1

    .line 329
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$7;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    const/4 v11, 0x5

    const/4 v10, 0x4

    if-eq v1, v10, :cond_3b8

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-ne v1, v11, :cond_3b6

    goto :goto_3b8

    :cond_3b6
    const/4 v3, 0x0

    goto :goto_3b9

    :cond_3b8
    :goto_3b8
    const/4 v3, 0x1

    :goto_3b9
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I

    if-ne v1, v11, :cond_3bf

    const/4 v4, 0x1

    goto :goto_3c0

    :cond_3bf
    const/4 v4, 0x0

    :goto_3c0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Price"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v17, v1, v2

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v6, -0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move v7, v12

    move v8, v0

    move/from16 v9, v42

    move/from16 v10, v17

    move/from16 v11, v21

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    move v10, v0

    .line 361
    .end local v0    # "buttonY":I
    .local v10, "buttonY":I
    :goto_3f9
    :try_start_3f9
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6ae

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "toAddID":I
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_402
    .catch Ljava/lang/Exception; {:try_start_3f9 .. :try_end_402} :catch_6b6

    if-nez v1, :cond_44a

    .line 365
    const/4 v1, 0x1

    .local v1, "o":I
    :goto_405
    :try_start_405
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_409} :catch_43f

    if-ge v1, v2, :cond_435

    .line 366
    move-object/from16 v11, v35

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_40d
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_42d
    .catch Ljava/lang/Exception; {:try_start_40d .. :try_end_42d} :catch_485

    if-eqz v2, :cond_430

    .line 367
    move v0, v1

    .line 365
    :cond_430
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v35, v11

    goto :goto_405

    .end local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_435
    move-object/from16 v11, v35

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v9, v34

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    .end local v1    # "o":I
    goto/16 :goto_55d

    .line 459
    .end local v0    # "toAddID":I
    .end local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_43f
    move-exception v0

    move-object/from16 v11, v35

    move-object v15, v11

    move-object v11, v14

    move-object/from16 v14, v34

    const/16 v34, 0x3

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_6be

    .line 370
    .end local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "toAddID":I
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_44a
    move-object/from16 v11, v35

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_44c
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_44e
    .catch Ljava/lang/Exception; {:try_start_44c .. :try_end_44e} :catch_6a6

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48e

    .line 371
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_452
    :try_start_452
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47e

    .line 372
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_452 .. :try_end_478} :catch_485

    if-eqz v3, :cond_47b

    .line 373
    move v0, v1

    .line 371
    :cond_47b
    add-int/lit8 v1, v1, 0x1

    goto :goto_452

    :cond_47e
    move-object/from16 v9, v34

    const/4 v3, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    .end local v1    # "o":I
    goto/16 :goto_55d

    .line 459
    .end local v0    # "toAddID":I
    :catch_485
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    move-object/from16 v14, v34

    const/16 v34, 0x3

    goto/16 :goto_6be

    .line 376
    .restart local v0    # "toAddID":I
    :cond_48e
    :try_start_48e
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_490
    .catch Ljava/lang/Exception; {:try_start_48e .. :try_end_490} :catch_6a6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4c8

    .line 377
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_494
    :try_start_494
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4
    :try_end_498
    .catch Ljava/lang/Exception; {:try_start_494 .. :try_end_498} :catch_4be

    if-ge v1, v4, :cond_4b8

    .line 378
    move-object/from16 v9, v34

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_49c
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_4b0
    .catch Ljava/lang/Exception; {:try_start_49c .. :try_end_4b0} :catch_4f3

    if-ge v4, v5, :cond_4b3

    .line 379
    move v0, v1

    .line 377
    :cond_4b3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v34, v9

    goto :goto_494

    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4b8
    move-object/from16 v9, v34

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x5

    const/4 v8, 0x4

    .end local v1    # "o":I
    goto/16 :goto_55d

    .line 459
    .end local v0    # "toAddID":I
    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_4be
    move-exception v0

    move-object/from16 v9, v34

    move-object v15, v11

    move-object v11, v14

    const/16 v34, 0x3

    move-object v14, v9

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_6be

    .line 382
    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "toAddID":I
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4c8
    move-object/from16 v9, v34

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_4ca
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_4cc
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_4cc} :catch_69f

    if-ne v1, v13, :cond_4fb

    .line 383
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_4cf
    :try_start_4cf
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4ef

    .line 384
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_4e9
    .catch Ljava/lang/Exception; {:try_start_4cf .. :try_end_4e9} :catch_4f3

    if-le v4, v5, :cond_4ec

    .line 385
    move v0, v1

    .line 383
    :cond_4ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_4cf

    :cond_4ef
    const/4 v7, 0x5

    const/4 v8, 0x4

    .end local v1    # "o":I
    goto/16 :goto_55d

    .line 459
    .end local v0    # "toAddID":I
    :catch_4f3
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    const/16 v34, 0x3

    move-object v14, v9

    goto/16 :goto_6be

    .line 388
    .restart local v0    # "toAddID":I
    :cond_4fb
    :try_start_4fb
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4fb .. :try_end_4fd} :catch_69f

    const/4 v8, 0x4

    if-ne v1, v8, :cond_52d

    .line 389
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_501
    :try_start_501
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_52b

    .line 390
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v4

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v5
    :try_end_523
    .catch Ljava/lang/Exception; {:try_start_501 .. :try_end_523} :catch_4f3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_528

    .line 391
    move v0, v1

    .line 389
    :cond_528
    add-int/lit8 v1, v1, 0x1

    goto :goto_501

    :cond_52b
    const/4 v7, 0x5

    .end local v1    # "o":I
    goto :goto_55d

    .line 394
    :cond_52d
    :try_start_52d
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iSortID:I
    :try_end_52f
    .catch Ljava/lang/Exception; {:try_start_52d .. :try_end_52f} :catch_69f

    const/4 v7, 0x5

    if-ne v1, v7, :cond_55d

    .line 395
    const/4 v1, 0x1

    .restart local v1    # "o":I
    :goto_533
    :try_start_533
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_55d

    .line 396
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v4

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v5
    :try_end_555
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_555} :catch_4f3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_55a

    .line 397
    move v0, v1

    .line 395
    :cond_55a
    add-int/lit8 v1, v1, 0x1

    goto :goto_533

    .line 402
    .end local v1    # "o":I
    :cond_55d
    :goto_55d
    :try_start_55d
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_561
    .catch Ljava/lang/Exception; {:try_start_55d .. :try_end_561} :catch_69f

    add-int/2addr v1, v4

    .line 404
    .end local v12    # "buttonX":I
    .local v1, "buttonX":I
    :try_start_562
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$8;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21
    :try_end_586
    .catch Ljava/lang/Exception; {:try_start_562 .. :try_end_586} :catch_697

    move-object v12, v4

    move/from16 v6, v18

    const/16 v34, 0x3

    .end local v18    # "menuWidth":I
    .local v6, "menuWidth":I
    move-object/from16 v13, p0

    move-object/from16 v35, v11

    move-object v11, v14

    .end local v14    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v14, v5

    const/16 v37, 0x2

    const/16 v41, 0x1

    move-object/from16 v5, p0

    move/from16 v16, v1

    move/from16 v17, v10

    move/from16 v18, v32

    move/from16 v20, v28

    :try_start_59f
    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_5b7
    .catch Ljava/lang/Exception; {:try_start_59f .. :try_end_5b7} :catch_68f

    add-int/2addr v2, v3

    add-int v12, v1, v2

    .line 426
    .end local v1    # "buttonX":I
    .restart local v12    # "buttonX":I
    :try_start_5ba
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v44

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I
    :try_end_5ea
    .catch Ljava/lang/Exception; {:try_start_5ba .. :try_end_5ea} :catch_688

    const/4 v15, -0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v44, v14

    move-object v14, v5

    move v5, v15

    move v15, v6

    .end local v6    # "menuWidth":I
    .local v15, "menuWidth":I
    move v6, v12

    const/16 v16, 0x5

    move v7, v10

    const/16 v17, 0x4

    move/from16 v8, v31

    move-object v14, v9

    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    :try_start_5fe
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 441
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$10;
    :try_end_61a
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_61a} :catch_682

    move-object/from16 v9, v35

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_61c
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I
    :try_end_632
    .catch Ljava/lang/Exception; {:try_start_61c .. :try_end_632} :catch_67d

    const/4 v5, -0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move v6, v12

    move v7, v10

    move/from16 v8, v30

    move/from16 v18, v15

    move-object v15, v9

    .end local v9    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "menuWidth":I
    move/from16 v9, v19

    :try_start_63f
    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 454
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v10, v1

    .line 456
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 457
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_673
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_673} :catch_67b

    .line 458
    move-object/from16 v34, v14

    move-object/from16 v35, v15

    const/4 v13, 0x3

    move-object v14, v11

    .end local v0    # "toAddID":I
    goto/16 :goto_3f9

    .line 459
    :catch_67b
    move-exception v0

    goto :goto_6be

    .end local v18    # "menuWidth":I
    .restart local v9    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "menuWidth":I
    :catch_67d
    move-exception v0

    move/from16 v18, v15

    move-object v15, v9

    .end local v9    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "menuWidth":I
    goto :goto_6be

    .end local v18    # "menuWidth":I
    .local v15, "menuWidth":I
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_682
    move-exception v0

    move/from16 v18, v15

    move-object/from16 v15, v35

    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "menuWidth":I
    goto :goto_6be

    .end local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "menuWidth":I
    .restart local v6    # "menuWidth":I
    .local v9, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_688
    move-exception v0

    move/from16 v18, v6

    move-object v14, v9

    move-object/from16 v15, v35

    .end local v6    # "menuWidth":I
    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "menuWidth":I
    goto :goto_6be

    .end local v12    # "buttonX":I
    .end local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "menuWidth":I
    .restart local v1    # "buttonX":I
    .restart local v6    # "menuWidth":I
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_68f
    move-exception v0

    move/from16 v18, v6

    move-object v14, v9

    move-object/from16 v15, v35

    move v12, v1

    .end local v6    # "menuWidth":I
    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "menuWidth":I
    goto :goto_6be

    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_697
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    const/16 v34, 0x3

    move-object v14, v9

    move v12, v1

    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_6be

    .end local v1    # "buttonX":I
    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "buttonX":I
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    :catch_69f
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    const/16 v34, 0x3

    move-object v14, v9

    .end local v9    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_6be

    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_6a6
    move-exception v0

    move-object v15, v11

    move-object v11, v14

    move-object/from16 v14, v34

    const/16 v34, 0x3

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_6be

    .line 461
    .end local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6ae
    move-object v11, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    const/16 v34, 0x3

    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_6c1

    .line 459
    .end local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_6b6
    move-exception v0

    move-object v11, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    const/16 v34, 0x3

    .line 460
    .end local v34    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v35    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v11    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tResources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_6be
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 463
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6c1
    const/4 v0, 0x0

    .line 465
    .end local v10    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_6c7
    if-ge v1, v2, :cond_6ff

    .line 466
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_6fc

    .line 467
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    move v0, v3

    .line 465
    :cond_6fc
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c7

    .line 471
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_6ff
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v26

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 473
    .local v10, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v13, v18

    const/4 v3, 0x0

    .end local v18    # "menuWidth":I
    .restart local v13    # "menuWidth":I
    invoke-direct {v1, v3, v3, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v45

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v25

    move/from16 v4, v26

    move v5, v13

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 490
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v2, p0

    iput v1, v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->scrollExtraPosX:I

    .line 491
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

    .line 495
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 496
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 499
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 500
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 502
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 503
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 504
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 506
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 507
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 518
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 511
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 512
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    .line 513
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->lTime2:J

    .line 514
    return-void
.end method
