.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightPopulation.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static totalPopulation:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime:J

    .line 47
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime2:J

    .line 49
    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    .line 50
    const/4 v2, 0x2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    .line 52
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->totalPopulation:J

    return-void
.end method

.method public constructor <init>()V
    .registers 50

    .line 54
    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 58
    .local v13, "paddingLeft":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 60
    .local v14, "titleHeight":I
    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 62
    .local v15, "extraX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    .line 64
    .local v12, "menuWidth":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v16, v3, v12

    .line 65
    .local v16, "menuX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int v17, v3, v4

    .line 67
    .local v17, "menuY":I
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 68
    .local v18, "buttonYPadding":I
    move/from16 v11, v18

    .line 69
    .local v11, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v34, v13, v3

    .line 71
    .local v34, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_53

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_55

    :cond_53
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_55
    move/from16 v25, v3

    .line 72
    .local v25, "buttonH":I
    mul-int/lit8 v3, v13, 0x2

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v10, v3

    .line 74
    .local v10, "c0W":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Civilizations"

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    if-nez v4, :cond_77

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_79

    :cond_77
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_79
    move/from16 v26, v4

    move-object/from16 v19, v3

    move-object/from16 v20, p0

    move/from16 v22, v34

    move/from16 v23, v11

    move/from16 v24, v10

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Provinces"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v34, v3

    add-int v6, v3, v10

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_a3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_a5

    :cond_a3
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_a5
    move/from16 v19, v3

    move-object v3, v8

    move-object/from16 v4, p0

    move/from16 v20, v14

    const/4 v14, 0x1

    .end local v14    # "titleHeight":I
    .local v20, "titleHeight":I
    move v7, v11

    move-object v14, v8

    move v8, v10

    move/from16 v22, v15

    move-object v15, v9

    .end local v15    # "extraX":I
    .local v22, "extraX":I
    move/from16 v9, v25

    move/from16 v23, v10

    .end local v10    # "c0W":I
    .local v23, "c0W":I
    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v11, v3

    .line 141
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$3;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Continents"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_e5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_e7

    :cond_e5
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_e7
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v29, v34

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Religion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v34, v4

    add-int v29, v4, v23

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    const/4 v10, 0x3

    if-ne v4, v10, :cond_113

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_115

    :cond_113
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_115
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v19, v11, v3

    .line 206
    .end local v11    # "buttonY":I
    .local v19, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    const-string v11, "Population"

    const/4 v9, 0x0

    if-nez v3, :cond_189

    .line 207
    new-instance v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$5;

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 208
    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 209
    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v3, v13, 0x2

    sub-int v15, v12, v3

    div-int/lit8 v26, v12, 0x2

    const/16 v27, 0x1

    move-object/from16 v3, v24

    move-object/from16 v4, p0

    move v8, v13

    const/4 v14, 0x0

    move/from16 v9, v19

    move v10, v15

    move-object v15, v11

    move/from16 v11, v26

    move/from16 v36, v12

    .end local v12    # "menuWidth":I
    .local v36, "menuWidth":I
    move/from16 v12, v27

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 222
    .local v3, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    iput-boolean v14, v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    .line 224
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v19, v19, v4

    goto :goto_18d

    .line 206
    .end local v3    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v36    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :cond_189
    move-object v15, v11

    move/from16 v36, v12

    const/4 v14, 0x0

    .line 229
    .end local v12    # "menuWidth":I
    .restart local v36    # "menuWidth":I
    :goto_18d
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move/from16 v12, v36

    .end local v36    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    sub-int v3, v12, v3

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float v3, v3, v4

    float-to-int v11, v3

    .line 230
    .local v11, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    const v5, 0x3eb33333    # 0.35f

    mul-float v3, v3, v5

    float-to-int v10, v3

    .line 231
    .local v10, "r1W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v6

    float-to-int v9, v3

    .line 233
    .local v9, "r2W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v3, v7

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v7, v3

    .line 234
    .local v7, "r0W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v5, v3

    .line 235
    .local v5, "r1W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-int v6, v3

    .line 237
    .local v6, "r2W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 239
    .end local v34    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$6;

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-eqz v24, :cond_1e9

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v8, 0x1

    if-ne v14, v8, :cond_1e6

    goto :goto_1ea

    :cond_1e6
    const/16 v39, 0x0

    goto :goto_1ec

    :cond_1e9
    const/4 v8, 0x1

    :goto_1ea
    const/16 v39, 0x1

    :goto_1ec
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-ne v14, v8, :cond_1f3

    const/16 v40, 0x1

    goto :goto_1f5

    :cond_1f3
    const/16 v40, 0x0

    :goto_1f5
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Name"

    invoke-virtual {v8, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v46, v8, v14

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v42, -0x1

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move/from16 v43, v3

    move/from16 v44, v19

    move/from16 v45, v11

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 269
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$7;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v14, 0x2

    if-eq v8, v14, :cond_23a

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v14, 0x3

    if-ne v8, v14, :cond_237

    goto :goto_23b

    :cond_237
    const/16 v39, 0x0

    goto :goto_23d

    :cond_23a
    const/4 v14, 0x3

    :goto_23b
    const/16 v39, 0x1

    :goto_23d
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-ne v8, v14, :cond_244

    const/16 v40, 0x1

    goto :goto_246

    :cond_244
    const/16 v40, 0x0

    :goto_246
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v27, v27, 0x6

    add-int v46, v8, v27

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v42, -0x1

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move/from16 v43, v3

    move/from16 v44, v19

    move/from16 v45, v10

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 299
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$8;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v14, 0x4

    if-eq v8, v14, :cond_289

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v14, 0x5

    if-ne v8, v14, :cond_286

    goto :goto_28a

    :cond_286
    const/16 v39, 0x0

    goto :goto_28c

    :cond_289
    const/4 v14, 0x5

    :goto_28a
    const/16 v39, 0x1

    :goto_28c
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-ne v8, v14, :cond_293

    const/16 v40, 0x1

    goto :goto_295

    :cond_293
    const/16 v40, 0x0

    :goto_295
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "GrowthRate"

    invoke-virtual {v8, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v46, v8, v14

    sget v47, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v42, -0x1

    move-object/from16 v37, v4

    move-object/from16 v38, p0

    move/from16 v43, v3

    move/from16 v44, v19

    move/from16 v45, v9

    invoke-direct/range {v37 .. v47}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int v19, v19, v4

    .line 331
    :try_start_2ce
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2d0} :catch_f6c

    const-string v8, "%"

    if-nez v4, :cond_648

    .line 332
    :try_start_2d4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v4, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v29

    .line 334
    .local v30, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2e5} :catch_634

    move-object/from16 v31, v29

    .line 336
    .local v31, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v29, 0x1

    move/from16 v14, v29

    .local v14, "i":I
    :goto_2eb
    move/from16 v29, v3

    .end local v3    # "buttonX":I
    .local v29, "buttonX":I
    :try_start_2ed
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_2f1} :catch_620

    if-ge v14, v3, :cond_376

    .line 337
    :try_start_2f3
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_34d

    .line 338
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_310} :catch_362

    move/from16 v33, v9

    move-object/from16 v9, v30

    .end local v30    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v9, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v33, "r2W":I
    :try_start_314
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAverageGrowthRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_323} :catch_33b

    move/from16 v30, v10

    move-object/from16 v10, v31

    .end local v31    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v30, "r1W":I
    :try_start_327
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_32a} :catch_32b

    goto :goto_355

    .line 800
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "i":I
    :catch_32b
    move-exception v0

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move/from16 v3, v29

    goto/16 :goto_f7e

    .end local v30    # "r1W":I
    .local v10, "r1W":I
    :catch_33b
    move-exception v0

    move/from16 v30, v10

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move/from16 v3, v29

    .end local v10    # "r1W":I
    .restart local v30    # "r1W":I
    goto/16 :goto_f7e

    .line 337
    .end local v33    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v30, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v31    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_34d
    move/from16 v33, v9

    move-object/from16 v9, v30

    move/from16 v30, v10

    move-object/from16 v10, v31

    .line 336
    .end local v31    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v10, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v30, "r1W":I
    .restart local v33    # "r2W":I
    :goto_355
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v31, v10

    move/from16 v3, v29

    move/from16 v10, v30

    move-object/from16 v30, v9

    move/from16 v9, v33

    goto :goto_2eb

    .line 800
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "i":I
    .end local v30    # "r1W":I
    .end local v33    # "r2W":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    :catch_362
    move-exception v0

    move/from16 v33, v9

    move/from16 v30, v10

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move/from16 v3, v29

    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .restart local v30    # "r1W":I
    .restart local v33    # "r2W":I
    goto/16 :goto_f7e

    .line 336
    .end local v33    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v30, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v31    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_376
    move/from16 v33, v9

    move-object/from16 v9, v30

    move/from16 v30, v10

    move-object/from16 v10, v31

    .end local v31    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v10, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v30, "r1W":I
    .restart local v33    # "r2W":I
    move/from16 v3, v29

    .line 344
    .end local v14    # "i":I
    .end local v29    # "buttonX":I
    .restart local v3    # "buttonX":I
    :goto_380
    :try_start_380
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_602

    .line 345
    const/4 v14, 0x0

    .line 347
    .local v14, "toAddID":I
    sget v29, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_389
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_389} :catch_610

    if-nez v29, :cond_3e1

    .line 348
    const/16 v29, 0x1

    move/from16 v48, v29

    move/from16 v29, v3

    move/from16 v3, v48

    .local v3, "o":I
    .restart local v29    # "buttonX":I
    :goto_393
    move/from16 v31, v11

    .end local v11    # "r0W":I
    .local v31, "r0W":I
    :try_start_395
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3cf

    .line 349
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-static/range {v34 .. v34}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v34
    :try_end_3bb
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_3bb} :catch_3d3

    move/from16 v46, v13

    .end local v13    # "paddingLeft":I
    .local v46, "paddingLeft":I
    :try_start_3bd
    invoke-virtual/range {v34 .. v34}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_3c5
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_3c5} :catch_423

    if-eqz v11, :cond_3c8

    .line 350
    move v14, v3

    .line 348
    :cond_3c8
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v31

    move/from16 v13, v46

    goto :goto_393

    .end local v46    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :cond_3cf
    move/from16 v46, v13

    .end local v3    # "o":I
    .end local v13    # "paddingLeft":I
    .restart local v46    # "paddingLeft":I
    goto/16 :goto_4d3

    .line 800
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    .end local v46    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :catch_3d3
    move-exception v0

    move/from16 v46, v13

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v47, v12

    move-object/from16 v34, v15

    move/from16 v3, v29

    .end local v13    # "paddingLeft":I
    .restart local v46    # "paddingLeft":I
    goto/16 :goto_f7e

    .line 353
    .end local v29    # "buttonX":I
    .end local v31    # "r0W":I
    .end local v46    # "paddingLeft":I
    .local v3, "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v13    # "paddingLeft":I
    .restart local v14    # "toAddID":I
    :cond_3e1
    move/from16 v29, v3

    move/from16 v31, v11

    move/from16 v46, v13

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v31    # "r0W":I
    .restart local v46    # "paddingLeft":I
    :try_start_3e7
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_3e9
    .catch Ljava/lang/Exception; {:try_start_3e7 .. :try_end_3e9} :catch_5f6

    const/4 v11, 0x1

    if-ne v3, v11, :cond_42f

    .line 354
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_3ed
    :try_start_3ed
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_421

    .line 355
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_41b
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_41b} :catch_423

    if-eqz v11, :cond_41e

    .line 356
    move v14, v3

    .line 354
    :cond_41e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3ed

    .end local v3    # "o":I
    :cond_421
    goto/16 :goto_4d3

    .line 800
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    :catch_423
    move-exception v0

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v47, v12

    move-object/from16 v34, v15

    move/from16 v3, v29

    goto/16 :goto_f7e

    .line 359
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "toAddID":I
    :cond_42f
    :try_start_42f
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_431
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_431} :catch_5f6

    const/4 v11, 0x2

    if-ne v3, v11, :cond_459

    .line 360
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_435
    :try_start_435
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_457

    .line 361
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v38
    :try_end_44f
    .catch Ljava/lang/Exception; {:try_start_435 .. :try_end_44f} :catch_423

    cmp-long v11, v36, v38

    if-gez v11, :cond_454

    .line 362
    move v14, v3

    .line 360
    :cond_454
    add-int/lit8 v3, v3, 0x1

    goto :goto_435

    .end local v3    # "o":I
    :cond_457
    goto/16 :goto_4d3

    .line 365
    :cond_459
    :try_start_459
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_45b
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_45b} :catch_5f6

    const/4 v11, 0x3

    if-ne v3, v11, :cond_482

    .line 366
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_45f
    :try_start_45f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_481

    .line 367
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v38
    :try_end_479
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_479} :catch_423

    cmp-long v11, v36, v38

    if-lez v11, :cond_47e

    .line 368
    move v14, v3

    .line 366
    :cond_47e
    add-int/lit8 v3, v3, 0x1

    goto :goto_45f

    .end local v3    # "o":I
    :cond_481
    goto :goto_4d3

    .line 371
    :cond_482
    :try_start_482
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_484
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_484} :catch_5f6

    const/4 v11, 0x4

    if-ne v3, v11, :cond_4ab

    .line 372
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_488
    :try_start_488
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4aa

    .line 373
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_4a2
    .catch Ljava/lang/Exception; {:try_start_488 .. :try_end_4a2} :catch_423

    cmpg-float v11, v11, v13

    if-gez v11, :cond_4a7

    .line 374
    move v14, v3

    .line 372
    :cond_4a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_488

    .end local v3    # "o":I
    :cond_4aa
    goto :goto_4d3

    .line 377
    :cond_4ab
    :try_start_4ab
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_4ad
    .catch Ljava/lang/Exception; {:try_start_4ab .. :try_end_4ad} :catch_5f6

    const/4 v11, 0x5

    if-ne v3, v11, :cond_4d3

    .line 378
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4b1
    :try_start_4b1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4d3

    .line 379
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_4cb
    .catch Ljava/lang/Exception; {:try_start_4b1 .. :try_end_4cb} :catch_423

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4d0

    .line 380
    move v14, v3

    .line 378
    :cond_4d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b1

    .line 385
    .end local v3    # "o":I
    :cond_4d3
    :goto_4d3
    :try_start_4d3
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_4d7
    .catch Ljava/lang/Exception; {:try_start_4d3 .. :try_end_4d7} :catch_5f6

    add-int/2addr v3, v11

    .line 389
    .end local v29    # "buttonX":I
    .local v3, "buttonX":I
    :try_start_4d8
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$9;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v28, 0x2

    mul-int/lit8 v40, v13, 0x2

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move-object/from16 v36, v11

    move-object/from16 v37, p0

    move/from16 v41, v3

    move/from16 v42, v19

    move/from16 v43, v7

    move/from16 v44, v25

    invoke-direct/range {v36 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v13

    add-int/2addr v3, v11

    .line 431
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13
    :try_end_52f
    .catch Ljava/lang/Exception; {:try_start_4d8 .. :try_end_52f} :catch_5ec

    move-object/from16 v34, v15

    :try_start_531
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v11

    move/from16 v40, v3

    move/from16 v41, v19

    move/from16 v42, v5

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v13

    add-int/2addr v3, v11

    .line 434
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_57a
    .catch Ljava/lang/Exception; {:try_start_531 .. :try_end_57a} :catch_5e4

    move/from16 v47, v12

    const/16 v12, 0xa

    .end local v12    # "menuWidth":I
    .local v47, "menuWidth":I
    :try_start_57e
    invoke-static {v15, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v11

    move/from16 v40, v3

    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 437
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int v19, v19, v11

    .line 439
    invoke-interface {v4, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 440
    invoke-interface {v9, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 441
    invoke-interface {v10, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5d4
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_5d4} :catch_5de

    .line 442
    move/from16 v11, v31

    move-object/from16 v15, v34

    move/from16 v13, v46

    move/from16 v12, v47

    .end local v14    # "toAddID":I
    goto/16 :goto_380

    .line 800
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_5de
    move-exception v0

    move-object v4, v0

    move/from16 v27, v5

    goto/16 :goto_f7e

    .end local v47    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_5e4
    move-exception v0

    move/from16 v47, v12

    move-object v4, v0

    move/from16 v27, v5

    .end local v12    # "menuWidth":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .end local v47    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_5ec
    move-exception v0

    move/from16 v47, v12

    move-object/from16 v34, v15

    move-object v4, v0

    move/from16 v27, v5

    .end local v12    # "menuWidth":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .end local v3    # "buttonX":I
    .end local v47    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v29    # "buttonX":I
    :catch_5f6
    move-exception v0

    move/from16 v47, v12

    move-object/from16 v34, v15

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v3, v29

    .end local v12    # "menuWidth":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .line 344
    .end local v29    # "buttonX":I
    .end local v31    # "r0W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :cond_602
    move/from16 v29, v3

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    .line 443
    .end local v3    # "buttonX":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v31    # "r0W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    move/from16 v27, v5

    goto/16 :goto_f63

    .line 800
    .end local v29    # "buttonX":I
    .end local v31    # "r0W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_610
    move-exception v0

    move/from16 v29, v3

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move-object v4, v0

    move/from16 v27, v5

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v31    # "r0W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .end local v30    # "r1W":I
    .end local v31    # "r0W":I
    .end local v33    # "r2W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_620
    move-exception v0

    move/from16 v33, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v3, v29

    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v30    # "r1W":I
    .restart local v31    # "r0W":I
    .restart local v33    # "r2W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .end local v29    # "buttonX":I
    .end local v30    # "r1W":I
    .end local v31    # "r0W":I
    .end local v33    # "r2W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_634
    move-exception v0

    move/from16 v29, v3

    move/from16 v33, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move-object v4, v0

    move/from16 v27, v5

    .end local v3    # "buttonX":I
    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v30    # "r1W":I
    .restart local v31    # "r0W":I
    .restart local v33    # "r2W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    goto/16 :goto_f7e

    .line 444
    .end local v29    # "buttonX":I
    .end local v30    # "r1W":I
    .end local v31    # "r0W":I
    .end local v33    # "r2W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :cond_648
    move/from16 v29, v3

    move/from16 v33, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    .end local v3    # "buttonX":I
    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v30    # "r1W":I
    .restart local v31    # "r0W":I
    .restart local v33    # "r2W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    :try_start_656
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_656 .. :try_end_658} :catch_f65

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8e1

    .line 445
    :try_start_65b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v4, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v9, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_66b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_6a3

    .line 450
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_6a0

    .line 451
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_6a0
    add-int/lit8 v10, v10, 0x1

    goto :goto_66b

    .line 457
    .end local v10    # "i":I
    :cond_6a3
    const/16 v10, 0xfa

    .line 459
    .local v10, "maxProvinces":I
    :goto_6a5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8d3

    add-int/lit8 v11, v10, -0x1

    .end local v10    # "maxProvinces":I
    .local v11, "maxProvinces":I
    if-lez v10, :cond_8d1

    .line 460
    const/4 v10, 0x0

    .line 462
    .local v10, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-nez v12, :cond_6eb

    .line 463
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_6b5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6e9

    .line 464
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6e6

    .line 465
    move v10, v12

    .line 463
    :cond_6e6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6b5

    .end local v12    # "o":I
    :cond_6e9
    goto/16 :goto_7c7

    .line 468
    :cond_6eb
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_727

    .line 469
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_6f1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_725

    .line 470
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_722

    .line 471
    move v10, v12

    .line 469
    :cond_722
    add-int/lit8 v12, v12, 0x1

    goto :goto_6f1

    .end local v12    # "o":I
    :cond_725
    goto/16 :goto_7c7

    .line 474
    :cond_727
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_74f

    .line 475
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_72d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_74d

    .line 476
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v13, v14, :cond_74a

    .line 477
    move v10, v12

    .line 475
    :cond_74a
    add-int/lit8 v12, v12, 0x1

    goto :goto_72d

    .end local v12    # "o":I
    :cond_74d
    goto/16 :goto_7c7

    .line 480
    :cond_74f
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_776

    .line 481
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_755
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_775

    .line 482
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v13, v14, :cond_772

    .line 483
    move v10, v12

    .line 481
    :cond_772
    add-int/lit8 v12, v12, 0x1

    goto :goto_755

    .end local v12    # "o":I
    :cond_775
    goto :goto_7c7

    .line 486
    :cond_776
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_79f

    .line 487
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_77c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_79e

    .line 488
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_79b

    .line 489
    move v10, v12

    .line 487
    :cond_79b
    add-int/lit8 v12, v12, 0x1

    goto :goto_77c

    .end local v12    # "o":I
    :cond_79e
    goto :goto_7c7

    .line 492
    :cond_79f
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_7c7

    .line 493
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_7a5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_7c7

    .line 494
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7c4

    .line 495
    move v10, v12

    .line 493
    :cond_7c4
    add-int/lit8 v12, v12, 0x1

    goto :goto_7a5

    .line 500
    .end local v12    # "o":I
    :cond_7c7
    :goto_7c7
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7cb
    .catch Ljava/lang/Exception; {:try_start_65b .. :try_end_7cb} :catch_8d9

    add-int/2addr v12, v13

    .line 503
    .end local v29    # "buttonX":I
    .local v12, "buttonX":I
    :try_start_7cc
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$10;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v40, v14, 0x2

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move-object/from16 v36, v13

    move-object/from16 v37, p0

    move/from16 v41, v12

    move/from16 v42, v19

    move/from16 v43, v7

    move/from16 v44, v25

    invoke-direct/range {v36 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 548
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v5

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 551
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move/from16 v44, v11

    const/16 v11, 0xa

    .end local v11    # "maxProvinces":I
    .local v44, "maxProvinces":I
    invoke-static {v15, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_8a5
    .catch Ljava/lang/Exception; {:try_start_7cc .. :try_end_8a5} :catch_8ca

    add-int/2addr v11, v13

    add-int v29, v12, v11

    .line 554
    .end local v12    # "buttonX":I
    .restart local v29    # "buttonX":I
    :try_start_8a8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int v19, v19, v11

    .line 556
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 557
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 558
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8c6
    .catch Ljava/lang/Exception; {:try_start_8a8 .. :try_end_8c6} :catch_8d9

    .line 559
    move/from16 v10, v44

    .end local v10    # "toAddID":I
    goto/16 :goto_6a5

    .line 800
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v29    # "buttonX":I
    .end local v44    # "maxProvinces":I
    .restart local v12    # "buttonX":I
    :catch_8ca
    move-exception v0

    move-object v4, v0

    move/from16 v27, v5

    move v3, v12

    goto/16 :goto_f7e

    .line 459
    .end local v12    # "buttonX":I
    .restart local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "maxProvinces":I
    .restart local v29    # "buttonX":I
    :cond_8d1
    move/from16 v44, v11

    .line 560
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "maxProvinces":I
    :cond_8d3
    move/from16 v27, v5

    move/from16 v3, v29

    goto/16 :goto_f63

    .line 800
    :catch_8d9
    move-exception v0

    move-object v4, v0

    move/from16 v27, v5

    move/from16 v3, v29

    goto/16 :goto_f7e

    .line 561
    :cond_8e1
    :try_start_8e1
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I
    :try_end_8e3
    .catch Ljava/lang/Exception; {:try_start_8e1 .. :try_end_8e3} :catch_f65

    const/4 v4, 0x0

    const/4 v9, 0x2

    if-ne v3, v9, :cond_c23

    .line 562
    :try_start_8e7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v3, "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v9, "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v10, "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8fc
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v12, v13, :cond_923

    .line 568
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    add-int/lit8 v12, v12, 0x1

    goto :goto_8fc

    .line 574
    .end local v12    # "i":I
    :cond_923
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_924
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v12

    if-ge v4, v12, :cond_9af

    .line 575
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    if-lez v12, :cond_9ab

    .line 576
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v13

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_9ab
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_924

    .line 582
    .end local v4    # "i":I
    :cond_9af
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 583
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 584
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 585
    invoke-interface {v11, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_9bd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_9e3

    .line 588
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    add-int/lit8 v4, v4, 0x1

    goto :goto_9bd

    .line 591
    .end local v4    # "o":I
    :cond_9e3
    :goto_9e3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c1b

    .line 592
    const/4 v4, 0x0

    .line 594
    .local v4, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    if-nez v12, :cond_a2d

    .line 595
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_9ef
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a2b

    .line 596
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a28

    .line 597
    move v4, v12

    .line 595
    :cond_a28
    add-int/lit8 v12, v12, 0x1

    goto :goto_9ef

    .end local v12    # "o":I
    :cond_a2b
    goto/16 :goto_b11

    .line 600
    :cond_a2d
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a71

    .line 601
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a6f

    .line 602
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a6c

    .line 603
    move v4, v12

    .line 601
    :cond_a6c
    add-int/lit8 v12, v12, 0x1

    goto :goto_a33

    .end local v12    # "o":I
    :cond_a6f
    goto/16 :goto_b11

    .line 606
    :cond_a71
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a99

    .line 607
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a77
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a97

    .line 608
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v13, v14, :cond_a94

    .line 609
    move v4, v12

    .line 607
    :cond_a94
    add-int/lit8 v12, v12, 0x1

    goto :goto_a77

    .end local v12    # "o":I
    :cond_a97
    goto/16 :goto_b11

    .line 612
    :cond_a99
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_ac0

    .line 613
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_abf

    .line 614
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v13, v14, :cond_abc

    .line 615
    move v4, v12

    .line 613
    :cond_abc
    add-int/lit8 v12, v12, 0x1

    goto :goto_a9f

    .end local v12    # "o":I
    :cond_abf
    goto :goto_b11

    .line 618
    :cond_ac0
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_ae9

    .line 619
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_ac6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_ae8

    .line 620
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_ae5

    .line 621
    move v4, v12

    .line 619
    :cond_ae5
    add-int/lit8 v12, v12, 0x1

    goto :goto_ac6

    .end local v12    # "o":I
    :cond_ae8
    goto :goto_b11

    .line 624
    :cond_ae9
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_b11

    .line 625
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_aef
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_b11

    .line 626
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b0e

    .line 627
    move v4, v12

    .line 625
    :cond_b0e
    add-int/lit8 v12, v12, 0x1

    goto :goto_aef

    .line 632
    .end local v12    # "o":I
    :cond_b11
    :goto_b11
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_b15
    .catch Ljava/lang/Exception; {:try_start_8e7 .. :try_end_b15} :catch_8d9

    add-int/2addr v12, v13

    .line 635
    .end local v29    # "buttonX":I
    .local v12, "buttonX":I
    :try_start_b16
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$11;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v28, 0x2

    mul-int/lit8 v40, v15, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move-object/from16 v36, v13

    move-object/from16 v37, p0

    move-object/from16 v38, v14

    move/from16 v41, v12

    move/from16 v42, v19

    move/from16 v43, v7

    move/from16 v44, v25

    invoke-direct/range {v36 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 670
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v5

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 673
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v44, v11

    const/16 v11, 0xa

    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v44, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v15, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_bf6
    .catch Ljava/lang/Exception; {:try_start_b16 .. :try_end_bf6} :catch_8ca

    add-int/2addr v11, v13

    add-int v29, v12, v11

    .line 676
    .end local v12    # "buttonX":I
    .restart local v29    # "buttonX":I
    :try_start_bf9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int v19, v19, v11

    .line 678
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 679
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 680
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c17
    .catch Ljava/lang/Exception; {:try_start_bf9 .. :try_end_c17} :catch_8d9

    .line 681
    move-object/from16 v11, v44

    .end local v4    # "toAddID":I
    goto/16 :goto_9e3

    .line 591
    .end local v44    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c1b
    move-object/from16 v44, v11

    .line 682
    .end local v3    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v27, v5

    move/from16 v3, v29

    goto/16 :goto_f63

    .line 683
    :cond_c23
    :try_start_c23
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iModeID:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_f5f

    .line 684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v3, "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .restart local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .restart local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .restart local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c3d
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v13
    :try_end_c43
    .catch Ljava/lang/Exception; {:try_start_c23 .. :try_end_c43} :catch_f65

    if-ge v12, v13, :cond_c66

    .line 690
    :try_start_c45
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c63
    .catch Ljava/lang/Exception; {:try_start_c45 .. :try_end_c63} :catch_8d9

    .line 689
    add-int/lit8 v12, v12, 0x1

    goto :goto_c3d

    .line 696
    .end local v12    # "i":I
    :cond_c66
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c67
    :try_start_c67
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v12
    :try_end_c6b
    .catch Ljava/lang/Exception; {:try_start_c67 .. :try_end_c6b} :catch_f65

    if-ge v4, v12, :cond_cf2

    .line 697
    :try_start_c6d
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    if-lez v12, :cond_cee

    .line 698
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v13

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v13

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_cee
    .catch Ljava/lang/Exception; {:try_start_c6d .. :try_end_cee} :catch_8d9

    .line 696
    :cond_cee
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c67

    .line 704
    .end local v4    # "i":I
    :cond_cf2
    const/4 v4, 0x0

    .local v4, "o":I
    :goto_cf3
    :try_start_cf3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12
    :try_end_cf7
    .catch Ljava/lang/Exception; {:try_start_cf3 .. :try_end_cf7} :catch_f65

    if-ge v4, v12, :cond_d19

    .line 705
    :try_start_cf9
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v10, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_d16
    .catch Ljava/lang/Exception; {:try_start_cf9 .. :try_end_d16} :catch_8d9

    .line 704
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf3

    .line 708
    .end local v4    # "o":I
    :cond_d19
    :goto_d19
    :try_start_d19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f5a

    .line 709
    const/4 v4, 0x0

    .line 711
    .local v4, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_d22
    .catch Ljava/lang/Exception; {:try_start_d19 .. :try_end_d22} :catch_f65

    if-nez v12, :cond_d5d

    .line 712
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_d25
    :try_start_d25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_d59

    .line 713
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_d53
    .catch Ljava/lang/Exception; {:try_start_d25 .. :try_end_d53} :catch_8d9

    if-eqz v13, :cond_d56

    .line 714
    move v4, v12

    .line 712
    :cond_d56
    add-int/lit8 v12, v12, 0x1

    goto :goto_d25

    :cond_d59
    const/4 v14, 0x4

    const/4 v15, 0x5

    .end local v12    # "o":I
    goto/16 :goto_e41

    .line 717
    :cond_d5d
    :try_start_d5d
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_d5f
    .catch Ljava/lang/Exception; {:try_start_d5d .. :try_end_d5f} :catch_f65

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d9b

    .line 718
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_d63
    :try_start_d63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_d97

    .line 719
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_d91
    .catch Ljava/lang/Exception; {:try_start_d63 .. :try_end_d91} :catch_8d9

    if-eqz v13, :cond_d94

    .line 720
    move v4, v12

    .line 718
    :cond_d94
    add-int/lit8 v12, v12, 0x1

    goto :goto_d63

    :cond_d97
    const/4 v14, 0x4

    const/4 v15, 0x5

    .end local v12    # "o":I
    goto/16 :goto_e41

    .line 723
    :cond_d9b
    :try_start_d9b
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_d9d
    .catch Ljava/lang/Exception; {:try_start_d9b .. :try_end_d9d} :catch_f65

    const/4 v13, 0x2

    if-ne v12, v13, :cond_dc5

    .line 724
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_da1
    :try_start_da1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_dc1

    .line 725
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_dbb
    .catch Ljava/lang/Exception; {:try_start_da1 .. :try_end_dbb} :catch_8d9

    if-ge v14, v15, :cond_dbe

    .line 726
    move v4, v12

    .line 724
    :cond_dbe
    add-int/lit8 v12, v12, 0x1

    goto :goto_da1

    :cond_dc1
    const/4 v14, 0x4

    const/4 v15, 0x5

    .end local v12    # "o":I
    goto/16 :goto_e41

    .line 729
    :cond_dc5
    :try_start_dc5
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_dc7
    .catch Ljava/lang/Exception; {:try_start_dc5 .. :try_end_dc7} :catch_f65

    const/4 v14, 0x3

    if-ne v12, v14, :cond_dee

    .line 730
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_dcb
    :try_start_dcb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_deb

    .line 731
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_de5
    .catch Ljava/lang/Exception; {:try_start_dcb .. :try_end_de5} :catch_8d9

    if-le v14, v15, :cond_de8

    .line 732
    move v4, v12

    .line 730
    :cond_de8
    add-int/lit8 v12, v12, 0x1

    goto :goto_dcb

    :cond_deb
    const/4 v14, 0x4

    const/4 v15, 0x5

    .end local v12    # "o":I
    goto :goto_e41

    .line 735
    :cond_dee
    :try_start_dee
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_df0
    .catch Ljava/lang/Exception; {:try_start_dee .. :try_end_df0} :catch_f65

    const/4 v14, 0x4

    if-ne v12, v14, :cond_e18

    .line 736
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_df4
    :try_start_df4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_e16

    .line 737
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_e0e
    .catch Ljava/lang/Exception; {:try_start_df4 .. :try_end_e0e} :catch_8d9

    cmpg-float v15, v15, v26

    if-gez v15, :cond_e13

    .line 738
    move v4, v12

    .line 736
    :cond_e13
    add-int/lit8 v12, v12, 0x1

    goto :goto_df4

    :cond_e16
    const/4 v15, 0x5

    .end local v12    # "o":I
    goto :goto_e41

    .line 741
    :cond_e18
    :try_start_e18
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->iSortID:I
    :try_end_e1a
    .catch Ljava/lang/Exception; {:try_start_e18 .. :try_end_e1a} :catch_f65

    const/4 v15, 0x5

    if-ne v12, v15, :cond_e41

    .line 742
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_e1e
    :try_start_e1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_e41

    .line 743
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_e38
    .catch Ljava/lang/Exception; {:try_start_e1e .. :try_end_e38} :catch_8d9

    cmpl-float v13, v13, v26

    if-lez v13, :cond_e3d

    .line 744
    move v4, v12

    .line 742
    :cond_e3d
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    goto :goto_e1e

    .line 749
    .end local v12    # "o":I
    :cond_e41
    :goto_e41
    :try_start_e41
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_e45
    .catch Ljava/lang/Exception; {:try_start_e41 .. :try_end_e45} :catch_f65

    add-int/2addr v12, v13

    .line 751
    .end local v29    # "buttonX":I
    .local v12, "buttonX":I
    :try_start_e46
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$12;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v39

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v36, v13

    move-object/from16 v37, p0

    move-object/from16 v38, v14

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v7

    move/from16 v43, v25

    invoke-direct/range {v36 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 787
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v5

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 790
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_eec
    .catch Ljava/lang/Exception; {:try_start_e46 .. :try_end_eec} :catch_f54

    move/from16 v27, v5

    const/16 v5, 0xa

    .end local v5    # "r1W2":I
    .local v27, "r1W2":I
    :try_start_ef0
    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v36, v13

    move/from16 v40, v12

    move/from16 v41, v19

    move/from16 v42, v6

    move/from16 v43, v25

    invoke-direct/range {v36 .. v43}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_f26
    .catch Ljava/lang/Exception; {:try_start_ef0 .. :try_end_f26} :catch_f50

    add-int/2addr v13, v14

    add-int v29, v12, v13

    .line 793
    .end local v12    # "buttonX":I
    .restart local v29    # "buttonX":I
    :try_start_f29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v12

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v14

    add-int v19, v19, v12

    .line 795
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 796
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 797
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_f47
    .catch Ljava/lang/Exception; {:try_start_f29 .. :try_end_f47} :catch_f4b

    .line 798
    move/from16 v5, v27

    .end local v4    # "toAddID":I
    goto/16 :goto_d19

    .line 800
    .end local v3    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_f4b
    move-exception v0

    move-object v4, v0

    move/from16 v3, v29

    goto :goto_f7e

    .end local v29    # "buttonX":I
    .restart local v12    # "buttonX":I
    :catch_f50
    move-exception v0

    move-object v4, v0

    move v3, v12

    goto :goto_f7e

    .end local v27    # "r1W2":I
    .restart local v5    # "r1W2":I
    :catch_f54
    move-exception v0

    move/from16 v27, v5

    move-object v4, v0

    move v3, v12

    .end local v5    # "r1W2":I
    .restart local v27    # "r1W2":I
    goto :goto_f7e

    .line 708
    .end local v12    # "buttonX":I
    .end local v27    # "r1W2":I
    .restart local v3    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "r1W2":I
    .restart local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "buttonX":I
    :cond_f5a
    move/from16 v27, v5

    .end local v5    # "r1W2":I
    .restart local v27    # "r1W2":I
    move/from16 v3, v29

    goto :goto_f63

    .line 683
    .end local v3    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPopulation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tGrowthRate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v27    # "r1W2":I
    .restart local v5    # "r1W2":I
    :cond_f5f
    move/from16 v27, v5

    .end local v5    # "r1W2":I
    .restart local v27    # "r1W2":I
    move/from16 v3, v29

    .line 802
    .end local v29    # "buttonX":I
    .local v3, "buttonX":I
    :goto_f63
    move v12, v3

    goto :goto_f82

    .line 800
    .end local v3    # "buttonX":I
    .end local v27    # "r1W2":I
    .restart local v5    # "r1W2":I
    .restart local v29    # "buttonX":I
    :catch_f65
    move-exception v0

    move/from16 v27, v5

    move-object v4, v0

    move/from16 v3, v29

    .end local v5    # "r1W2":I
    .restart local v27    # "r1W2":I
    goto :goto_f7e

    .end local v27    # "r1W2":I
    .end local v29    # "buttonX":I
    .end local v30    # "r1W":I
    .end local v31    # "r0W":I
    .end local v33    # "r2W":I
    .end local v46    # "paddingLeft":I
    .end local v47    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v5    # "r1W2":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    .local v11, "r0W":I
    .local v12, "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_f6c
    move-exception v0

    move/from16 v29, v3

    move/from16 v27, v5

    move/from16 v33, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v47, v12

    move/from16 v46, v13

    move-object/from16 v34, v15

    move-object v4, v0

    .line 801
    .end local v5    # "r1W2":I
    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v27    # "r1W2":I
    .restart local v30    # "r1W":I
    .restart local v31    # "r0W":I
    .restart local v33    # "r2W":I
    .restart local v46    # "paddingLeft":I
    .restart local v47    # "menuWidth":I
    :goto_f7e
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v12, v3

    .line 804
    .end local v3    # "buttonX":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v12, "buttonX":I
    :goto_f82
    const/4 v3, 0x0

    .line 806
    .end local v19    # "buttonY":I
    .local v3, "buttonY":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v13, v3

    .end local v3    # "buttonY":I
    .local v5, "iSize":I
    .local v13, "buttonY":I
    :goto_f89
    if-ge v4, v5, :cond_fc1

    .line 807
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v3, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    if-ge v13, v3, :cond_fbe

    .line 808
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v3, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    move v13, v3

    .line 806
    :cond_fbe
    add-int/lit8 v4, v4, 0x1

    goto :goto_f89

    .line 812
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_fc1
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v17

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 814
    .local v14, "menuHeight":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v15, v47

    const/4 v5, 0x0

    .end local v47    # "menuWidth":I
    .local v15, "menuWidth":I
    invoke-direct {v3, v5, v5, v15, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    const-wide/16 v3, 0x0

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->totalPopulation:J

    .line 818
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_fed
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_100e

    .line 819
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_100b

    .line 820
    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->totalPopulation:J

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    sput-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->totalPopulation:J

    .line 818
    :cond_100b
    add-int/lit8 v3, v3, 0x1

    goto :goto_fed

    .line 824
    .end local v3    # "i":I
    :cond_100e
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$13;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v5, v34

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Total"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->totalPopulation:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v40, 0x0

    sget v41, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v39, 0x0

    move-object/from16 v35, v4

    move-object/from16 v36, p0

    invoke-direct/range {v35 .. v41}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move/from16 v1, v27

    .end local v27    # "r1W2":I
    .local v1, "r1W2":I
    move/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "r2W2":I
    .local v19, "r2W2":I
    move/from16 v6, v17

    move/from16 v21, v7

    .end local v7    # "r0W2":I
    .local v21, "r0W2":I
    move v7, v15

    move v8, v14

    move/from16 v24, v33

    .end local v33    # "r2W":I
    .local v24, "r2W":I
    move-object v9, v2

    move/from16 v26, v30

    .end local v30    # "r1W":I
    .local v26, "r1W":I
    move/from16 v27, v31

    .end local v31    # "r0W":I
    .local v27, "r0W":I
    invoke-virtual/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 839
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v4, p0

    iput v3, v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->scrollExtraPosX:I

    .line 840
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

    .line 844
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 845
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 848
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 849
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 851
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 852
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 853
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 857
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 858
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 869
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

    .line 862
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 863
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime:J

    .line 864
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightPopulation;->lTime2:J

    .line 865
    return-void
.end method
