.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightInfrastructure.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static totalInfrastructure:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime:J

    .line 48
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime2:J

    .line 50
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    .line 51
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    .line 53
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    return-void
.end method

.method public constructor <init>()V
    .registers 52

    .line 55
    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 59
    .local v13, "paddingLeft":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 61
    .local v14, "titleHeight":I
    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 63
    .local v15, "extraX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    .line 65
    .local v12, "menuWidth":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v16, v3, v12

    .line 66
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

    .line 68
    .local v17, "menuY":I
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 69
    .local v18, "buttonYPadding":I
    move/from16 v11, v18

    .line 70
    .local v11, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v34, v13, v3

    .line 72
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

    .line 73
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

    .line 75
    .local v10, "c0W":I
    const/16 v35, 0x0

    sput v35, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    .line 77
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_8c

    .line 78
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_89

    .line 79
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    .line 77
    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 83
    .end local v3    # "i":I
    :cond_8c
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Civilizations"

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    if-nez v4, :cond_9d

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_9f

    :cond_9d
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_9f
    move/from16 v26, v4

    move-object/from16 v19, v3

    move-object/from16 v20, p0

    move/from16 v22, v34

    move/from16 v23, v11

    move/from16 v24, v10

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Provinces"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v34, v3

    add-int v6, v3, v10

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c9

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_cb

    :cond_c9
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_cb
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

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
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

    .line 150
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$3;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Continents"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_10b

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_10d

    :cond_10b
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_10d
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v29, v34

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Religion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v34, v4

    add-int v29, v4, v23

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v10, 0x3

    if-ne v4, v10, :cond_139

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_13b

    :cond_139
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_13b
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
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

    .line 215
    .end local v11    # "buttonY":I
    .local v19, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const-string v11, "Infrastructure"

    const/4 v9, 0x0

    if-nez v3, :cond_1b5

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    cmpl-float v3, v3, v35

    if-lez v3, :cond_1b5

    .line 216
    new-instance v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$5;

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 217
    invoke-virtual {v3, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 218
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

    move/from16 v37, v12

    .end local v12    # "menuWidth":I
    .local v37, "menuWidth":I
    move/from16 v12, v27

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 231
    .local v3, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    iput-boolean v14, v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    .line 233
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
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

    goto :goto_1b9

    .line 215
    .end local v3    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v37    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :cond_1b5
    move-object v15, v11

    move/from16 v37, v12

    const/4 v14, 0x0

    .line 239
    .end local v12    # "menuWidth":I
    .restart local v37    # "menuWidth":I
    :goto_1b9
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move/from16 v12, v37

    .end local v37    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    sub-int v3, v12, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-int v11, v3

    .line 240
    .local v11, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v3, v3, v5

    float-to-int v10, v3

    .line 241
    .local v10, "r1W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v9, v3

    .line 243
    .local v9, "r2W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v8, v3

    .line 244
    .local v8, "r0W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v6, v3

    .line 245
    .local v6, "r1W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v12, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v5

    float-to-int v5, v3

    .line 247
    .local v5, "r2W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 249
    .end local v34    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$6;

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-eqz v24, :cond_210

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v7, 0x1

    if-ne v14, v7, :cond_20d

    goto :goto_211

    :cond_20d
    const/16 v40, 0x0

    goto :goto_213

    :cond_210
    const/4 v7, 0x1

    :goto_211
    const/16 v40, 0x1

    :goto_213
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-ne v14, v7, :cond_21a

    const/16 v41, 0x1

    goto :goto_21c

    :cond_21a
    const/16 v41, 0x0

    :goto_21c
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Name"

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v47, v7, v14

    sget v48, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v43, -0x1

    move-object/from16 v38, v4

    move-object/from16 v39, p0

    move/from16 v44, v3

    move/from16 v45, v19

    move/from16 v46, v11

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 279
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$7;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v14, 0x2

    if-eq v7, v14, :cond_261

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v14, 0x3

    if-ne v7, v14, :cond_25e

    goto :goto_262

    :cond_25e
    const/16 v40, 0x0

    goto :goto_264

    :cond_261
    const/4 v14, 0x3

    :goto_262
    const/16 v40, 0x1

    :goto_264
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-ne v7, v14, :cond_26b

    const/16 v41, 0x1

    goto :goto_26d

    :cond_26b
    const/16 v41, 0x0

    :goto_26d
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_27b

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Economy"

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_281

    :cond_27b
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_281
    move-object/from16 v42, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v47, v7, v14

    sget v48, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v43, -0x1

    move-object/from16 v38, v4

    move-object/from16 v39, p0

    move/from16 v44, v3

    move/from16 v45, v19

    move/from16 v46, v10

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 309
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$8;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v14, 0x4

    if-eq v7, v14, :cond_2c0

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v14, 0x5

    if-ne v7, v14, :cond_2bd

    goto :goto_2c1

    :cond_2bd
    const/16 v40, 0x0

    goto :goto_2c3

    :cond_2c0
    const/4 v14, 0x5

    :goto_2c1
    const/16 v40, 0x1

    :goto_2c3
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-ne v7, v14, :cond_2ca

    const/16 v41, 0x1

    goto :goto_2cc

    :cond_2ca
    const/16 v41, 0x0

    :goto_2cc
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_2d8

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2e0

    :cond_2d8
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "World"

    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2e0
    move-object/from16 v42, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v47, v7, v14

    sget v48, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v43, -0x1

    move-object/from16 v38, v4

    move-object/from16 v39, p0

    move/from16 v44, v3

    move/from16 v45, v19

    move/from16 v46, v9

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int v19, v19, v4

    .line 341
    :try_start_313
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_315} :catch_eb5

    const-string v7, "%"

    if-nez v4, :cond_65e

    .line 342
    :try_start_319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v4, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v30

    .line 344
    .local v31, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_319 .. :try_end_32a} :catch_eb5

    move-object/from16 v32, v30

    .line 346
    .local v32, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v30, 0x1

    move/from16 v14, v30

    .local v14, "i":I
    :goto_330
    move/from16 v30, v3

    .end local v3    # "buttonX":I
    .local v30, "buttonX":I
    :try_start_332
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3
    :try_end_336
    .catch Ljava/lang/Exception; {:try_start_332 .. :try_end_336} :catch_64c

    if-ge v14, v3, :cond_3be

    .line 347
    :try_start_338
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_397

    .line 348
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInfrastructure()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_355} :catch_3ac

    move/from16 v34, v9

    move-object/from16 v9, v31

    .end local v31    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v34, "r2W":I
    :try_start_359
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    sget v31, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    div-float v3, v3, v31

    const/high16 v29, 0x42c80000    # 100.0f

    mul-float v3, v3, v29

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_371} :catch_387

    move/from16 v31, v10

    move-object/from16 v10, v32

    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    :try_start_375
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_378
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_378} :catch_379

    goto :goto_39f

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "i":I
    :catch_379
    move-exception v0

    move-object v4, v0

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move/from16 v3, v30

    goto/16 :goto_ec5

    .end local v31    # "r1W":I
    .local v10, "r1W":I
    :catch_387
    move-exception v0

    move/from16 v31, v10

    move-object v4, v0

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move/from16 v3, v30

    .end local v10    # "r1W":I
    .restart local v31    # "r1W":I
    goto/16 :goto_ec5

    .line 347
    .end local v34    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v31, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_397
    move/from16 v34, v9

    move-object/from16 v9, v31

    move/from16 v31, v10

    move-object/from16 v10, v32

    .line 346
    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    .restart local v34    # "r2W":I
    :goto_39f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v32, v10

    move/from16 v3, v30

    move/from16 v10, v31

    move-object/from16 v31, v9

    move/from16 v9, v34

    goto :goto_330

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "i":I
    .end local v31    # "r1W":I
    .end local v34    # "r2W":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    :catch_3ac
    move-exception v0

    move/from16 v34, v9

    move/from16 v31, v10

    move-object v4, v0

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move/from16 v3, v30

    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .restart local v31    # "r1W":I
    .restart local v34    # "r2W":I
    goto/16 :goto_ec5

    .line 346
    .end local v34    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v31, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_3be
    move/from16 v34, v9

    move-object/from16 v9, v31

    move/from16 v31, v10

    move-object/from16 v10, v32

    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    .restart local v34    # "r2W":I
    move/from16 v3, v30

    .line 354
    .end local v14    # "i":I
    .end local v30    # "buttonX":I
    .restart local v3    # "buttonX":I
    :goto_3c8
    :try_start_3c8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_632

    .line 355
    const/4 v14, 0x0

    .line 357
    .local v14, "toAddID":I
    sget v29, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_3d1
    .catch Ljava/lang/Exception; {:try_start_3c8 .. :try_end_3d1} :catch_63e

    if-nez v29, :cond_427

    .line 358
    const/16 v29, 0x1

    move/from16 v50, v29

    move/from16 v29, v3

    move/from16 v3, v50

    .local v3, "o":I
    .local v29, "buttonX":I
    :goto_3db
    move/from16 v32, v11

    .end local v11    # "r0W":I
    .local v32, "r0W":I
    :try_start_3dd
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_417

    .line 359
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

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    invoke-static/range {v30 .. v30}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v30
    :try_end_403
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_403} :catch_41b

    move/from16 v47, v13

    .end local v13    # "paddingLeft":I
    .local v47, "paddingLeft":I
    :try_start_405
    invoke-virtual/range {v30 .. v30}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_40d} :catch_469

    if-eqz v11, :cond_410

    .line 360
    move v14, v3

    .line 358
    :cond_410
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v32

    move/from16 v13, v47

    goto :goto_3db

    .end local v47    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :cond_417
    move/from16 v47, v13

    .end local v3    # "o":I
    .end local v13    # "paddingLeft":I
    .restart local v47    # "paddingLeft":I
    goto/16 :goto_513

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    .end local v47    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :catch_41b
    move-exception v0

    move/from16 v47, v13

    move-object v4, v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move/from16 v3, v29

    .end local v13    # "paddingLeft":I
    .restart local v47    # "paddingLeft":I
    goto/16 :goto_ec5

    .line 363
    .end local v29    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .local v3, "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v13    # "paddingLeft":I
    .restart local v14    # "toAddID":I
    :cond_427
    move/from16 v29, v3

    move/from16 v32, v11

    move/from16 v47, v13

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    :try_start_42d
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_42f
    .catch Ljava/lang/Exception; {:try_start_42d .. :try_end_42f} :catch_628

    const/4 v11, 0x1

    if-ne v3, v11, :cond_473

    .line 364
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_433
    :try_start_433
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_467

    .line 365
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
    :try_end_461
    .catch Ljava/lang/Exception; {:try_start_433 .. :try_end_461} :catch_469

    if-eqz v11, :cond_464

    .line 366
    move v14, v3

    .line 364
    :cond_464
    add-int/lit8 v3, v3, 0x1

    goto :goto_433

    .end local v3    # "o":I
    :cond_467
    goto/16 :goto_513

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    :catch_469
    move-exception v0

    move-object v4, v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move/from16 v3, v29

    goto/16 :goto_ec5

    .line 369
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "toAddID":I
    :cond_473
    :try_start_473
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_475
    .catch Ljava/lang/Exception; {:try_start_473 .. :try_end_475} :catch_628

    const/4 v11, 0x2

    if-ne v3, v11, :cond_49b

    .line 370
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_479
    :try_start_479
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_499

    .line 371
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_493
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_493} :catch_469

    if-ge v11, v13, :cond_496

    .line 372
    move v14, v3

    .line 370
    :cond_496
    add-int/lit8 v3, v3, 0x1

    goto :goto_479

    .end local v3    # "o":I
    :cond_499
    goto/16 :goto_513

    .line 375
    :cond_49b
    :try_start_49b
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_49b .. :try_end_49d} :catch_628

    const/4 v11, 0x3

    if-ne v3, v11, :cond_4c2

    .line 376
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4a1
    :try_start_4a1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4c1

    .line 377
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_4bb
    .catch Ljava/lang/Exception; {:try_start_4a1 .. :try_end_4bb} :catch_469

    if-le v11, v13, :cond_4be

    .line 378
    move v14, v3

    .line 376
    :cond_4be
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a1

    .end local v3    # "o":I
    :cond_4c1
    goto :goto_513

    .line 381
    :cond_4c2
    :try_start_4c2
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_4c4
    .catch Ljava/lang/Exception; {:try_start_4c2 .. :try_end_4c4} :catch_628

    const/4 v11, 0x4

    if-ne v3, v11, :cond_4eb

    .line 382
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4c8
    :try_start_4c8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4ea

    .line 383
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
    :try_end_4e2
    .catch Ljava/lang/Exception; {:try_start_4c8 .. :try_end_4e2} :catch_469

    cmpg-float v11, v11, v13

    if-gez v11, :cond_4e7

    .line 384
    move v14, v3

    .line 382
    :cond_4e7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c8

    .end local v3    # "o":I
    :cond_4ea
    goto :goto_513

    .line 387
    :cond_4eb
    :try_start_4eb
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I
    :try_end_4ed
    .catch Ljava/lang/Exception; {:try_start_4eb .. :try_end_4ed} :catch_628

    const/4 v11, 0x5

    if-ne v3, v11, :cond_513

    .line 388
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4f1
    :try_start_4f1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_513

    .line 389
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
    :try_end_50b
    .catch Ljava/lang/Exception; {:try_start_4f1 .. :try_end_50b} :catch_469

    cmpl-float v11, v11, v13

    if-lez v11, :cond_510

    .line 390
    move v14, v3

    .line 388
    :cond_510
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f1

    .line 395
    .end local v3    # "o":I
    :cond_513
    :goto_513
    :try_start_513
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_517
    .catch Ljava/lang/Exception; {:try_start_513 .. :try_end_517} :catch_628

    add-int/2addr v3, v11

    .line 399
    .end local v29    # "buttonX":I
    .local v3, "buttonX":I
    :try_start_518
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$9;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v28, 0x2

    mul-int/lit8 v41, v13, 0x2

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move-object/from16 v37, v11

    move-object/from16 v38, p0

    move/from16 v42, v3

    move/from16 v43, v19

    move/from16 v44, v8

    move/from16 v45, v25

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
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

    .line 455
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_570
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_570} :catch_620

    int-to-float v13, v13

    move-object/from16 v48, v15

    const/16 v15, 0xa

    :try_start_575
    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v11

    move/from16 v41, v3

    move/from16 v42, v19

    move/from16 v43, v6

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
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

    .line 458
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_5b2
    .catch Ljava/lang/Exception; {:try_start_575 .. :try_end_5b2} :catch_61a

    move/from16 v49, v12

    .end local v12    # "menuWidth":I
    .local v49, "menuWidth":I
    const/16 v12, 0x64

    :try_start_5b6
    invoke-static {v15, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v11

    move/from16 v41, v3

    move/from16 v42, v19

    move/from16 v43, v5

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
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

    .line 461
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

    .line 463
    invoke-interface {v4, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 464
    invoke-interface {v9, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 465
    invoke-interface {v10, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_60c
    .catch Ljava/lang/Exception; {:try_start_5b6 .. :try_end_60c} :catch_616

    .line 466
    move/from16 v11, v32

    move/from16 v13, v47

    move-object/from16 v15, v48

    move/from16 v12, v49

    .end local v14    # "toAddID":I
    goto/16 :goto_3c8

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_616
    move-exception v0

    move-object v4, v0

    goto/16 :goto_ec5

    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_61a
    move-exception v0

    move/from16 v49, v12

    move-object v4, v0

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ec5

    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_620
    move-exception v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move-object v4, v0

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ec5

    .end local v3    # "buttonX":I
    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v29    # "buttonX":I
    :catch_628
    move-exception v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move-object v4, v0

    move/from16 v3, v29

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ec5

    .line 354
    .end local v29    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :cond_632
    move/from16 v29, v3

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    .line 467
    .end local v3    # "buttonX":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_eae

    .line 808
    .end local v29    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_63e
    move-exception v0

    move/from16 v29, v3

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move-object v4, v0

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v29    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ec5

    .end local v29    # "buttonX":I
    .end local v31    # "r1W":I
    .end local v32    # "r0W":I
    .end local v34    # "r2W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    .restart local v30    # "buttonX":I
    :catch_64c
    move-exception v0

    move/from16 v34, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move-object v4, v0

    move/from16 v3, v30

    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v31    # "r1W":I
    .restart local v32    # "r0W":I
    .restart local v34    # "r2W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ec5

    .line 468
    .end local v30    # "buttonX":I
    .end local v31    # "r1W":I
    .end local v32    # "r0W":I
    .end local v34    # "r2W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :cond_65e
    move/from16 v30, v3

    move/from16 v34, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    .end local v3    # "buttonX":I
    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v30    # "buttonX":I
    .restart local v31    # "r1W":I
    .restart local v32    # "r0W":I
    .restart local v34    # "r2W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    :try_start_66c
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8f3

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v3, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v4, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v7, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_681
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_6b9

    .line 474
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_6b6

    .line 475
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_6b6
    add-int/lit8 v9, v9, 0x1

    goto :goto_681

    .line 481
    .end local v9    # "i":I
    :cond_6b9
    const/16 v9, 0xfa

    .line 483
    .local v9, "maxProvinces":I
    :goto_6bb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8ef

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "maxProvinces":I
    .local v10, "maxProvinces":I
    if-lez v9, :cond_8ef

    .line 484
    const/4 v9, 0x0

    .line 486
    .local v9, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-nez v11, :cond_701

    .line 487
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_6cb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6ff

    .line 488
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6fc

    .line 489
    move v9, v11

    .line 487
    :cond_6fc
    add-int/lit8 v11, v11, 0x1

    goto :goto_6cb

    .end local v11    # "o":I
    :cond_6ff
    goto/16 :goto_7dd

    .line 492
    :cond_701
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_73d

    .line 493
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_707
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_73b

    .line 494
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_738

    .line 495
    move v9, v11

    .line 493
    :cond_738
    add-int/lit8 v11, v11, 0x1

    goto :goto_707

    .end local v11    # "o":I
    :cond_73b
    goto/16 :goto_7dd

    .line 498
    :cond_73d
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_767

    .line 499
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_743
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_765

    .line 500
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_762

    .line 501
    move v9, v11

    .line 499
    :cond_762
    add-int/lit8 v11, v11, 0x1

    goto :goto_743

    .end local v11    # "o":I
    :cond_765
    goto/16 :goto_7dd

    .line 504
    :cond_767
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_790

    .line 505
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_76d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_78f

    .line 506
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_78c

    .line 507
    move v9, v11

    .line 505
    :cond_78c
    add-int/lit8 v11, v11, 0x1

    goto :goto_76d

    .end local v11    # "o":I
    :cond_78f
    goto :goto_7dd

    .line 510
    :cond_790
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7b7

    .line 511
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_796
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7b6

    .line 512
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v12, v13, :cond_7b3

    .line 513
    move v9, v11

    .line 511
    :cond_7b3
    add-int/lit8 v11, v11, 0x1

    goto :goto_796

    .end local v11    # "o":I
    :cond_7b6
    goto :goto_7dd

    .line 516
    :cond_7b7
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_7dd

    .line 517
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_7bd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7dd

    .line 518
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_7da

    .line 519
    move v9, v11

    .line 517
    :cond_7da
    add-int/lit8 v11, v11, 0x1

    goto :goto_7bd

    .line 524
    .end local v11    # "o":I
    :cond_7dd
    :goto_7dd
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7e1
    .catch Ljava/lang/Exception; {:try_start_66c .. :try_end_7e1} :catch_eb0

    add-int/2addr v11, v12

    .line 527
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_7e2
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$10;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v39

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/lit8 v41, v13, 0x2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move-object/from16 v37, v12

    move-object/from16 v38, p0

    move/from16 v42, v11

    move/from16 v43, v19

    move/from16 v44, v8

    move/from16 v45, v25

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 572
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0xa

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v6

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 575
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v5

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_8c6
    .catch Ljava/lang/Exception; {:try_start_7e2 .. :try_end_8c6} :catch_8ea

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 578
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_8c9
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

    .line 580
    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 581
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 582
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 583
    move v9, v10

    .end local v9    # "toAddID":I
    goto/16 :goto_6bb

    .line 808
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "maxProvinces":I
    .end local v30    # "buttonX":I
    .restart local v11    # "buttonX":I
    :catch_8ea
    move-exception v0

    move-object v4, v0

    move v3, v11

    goto/16 :goto_ec5

    .line 584
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :cond_8ef
    move/from16 v3, v30

    goto/16 :goto_eae

    .line 585
    :cond_8f3
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bd6

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v3, "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v4, "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v9, "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_908
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v10, v11, :cond_927

    .line 591
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto :goto_908

    .line 596
    .end local v10    # "i":I
    :cond_927
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_928
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_965

    .line 597
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_962

    .line 598
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_962
    add-int/lit8 v10, v10, 0x1

    goto :goto_928

    .line 602
    .end local v10    # "i":I
    :cond_965
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 603
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 606
    const/4 v10, 0x0

    .local v10, "o":I
    :goto_970
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_992

    .line 607
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v11, v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 606
    add-int/lit8 v10, v10, 0x1

    goto :goto_970

    .line 610
    .end local v10    # "o":I
    :cond_992
    :goto_992
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_bd2

    .line 611
    const/4 v10, 0x0

    .line 613
    .local v10, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-nez v11, :cond_9dc

    .line 614
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_99e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9da

    .line 615
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d7

    .line 616
    move v10, v11

    .line 614
    :cond_9d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_99e

    .end local v11    # "o":I
    :cond_9da
    goto/16 :goto_ac0

    .line 619
    :cond_9dc
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a20

    .line 620
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_9e2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a1e

    .line 621
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a1b

    .line 622
    move v10, v11

    .line 620
    :cond_a1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_9e2

    .end local v11    # "o":I
    :cond_a1e
    goto/16 :goto_ac0

    .line 625
    :cond_a20
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a48

    .line 626
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a46

    .line 627
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v12, v13, :cond_a43

    .line 628
    move v10, v11

    .line 626
    :cond_a43
    add-int/lit8 v11, v11, 0x1

    goto :goto_a26

    .end local v11    # "o":I
    :cond_a46
    goto/16 :goto_ac0

    .line 631
    :cond_a48
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a6f

    .line 632
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a4e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a6e

    .line 633
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_a6b

    .line 634
    move v10, v11

    .line 632
    :cond_a6b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a4e

    .end local v11    # "o":I
    :cond_a6e
    goto :goto_ac0

    .line 637
    :cond_a6f
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_a98

    .line 638
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a75
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a97

    .line 639
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a94

    .line 640
    move v10, v11

    .line 638
    :cond_a94
    add-int/lit8 v11, v11, 0x1

    goto :goto_a75

    .end local v11    # "o":I
    :cond_a97
    goto :goto_ac0

    .line 643
    :cond_a98
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_ac0

    .line 644
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a9e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_ac0

    .line 645
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_abd

    .line 646
    move v10, v11

    .line 644
    :cond_abd
    add-int/lit8 v11, v11, 0x1

    goto :goto_a9e

    .line 651
    .end local v11    # "o":I
    :cond_ac0
    :goto_ac0
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_ac4
    .catch Ljava/lang/Exception; {:try_start_8c9 .. :try_end_ac4} :catch_eb0

    add-int/2addr v11, v12

    .line 654
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_ac5
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$11;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget v40, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v41, v14, 0x2

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move-object/from16 v37, v12

    move-object/from16 v38, p0

    move-object/from16 v39, v13

    move/from16 v42, v11

    move/from16 v43, v19

    move/from16 v44, v8

    move/from16 v45, v25

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 685
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v6

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 688
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v5

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_bae
    .catch Ljava/lang/Exception; {:try_start_ac5 .. :try_end_bae} :catch_8ea

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 691
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_bb1
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

    .line 693
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 694
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 695
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 696
    nop

    .end local v10    # "toAddID":I
    goto/16 :goto_992

    .line 697
    .end local v3    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_bd2
    move/from16 v3, v30

    goto/16 :goto_eae

    .line 698
    :cond_bd6
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iModeID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_eac

    .line 699
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v3, "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .restart local v4    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .restart local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_beb
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v11

    if-ge v10, v11, :cond_c0c

    .line 704
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v10, v10, 0x1

    goto :goto_beb

    .line 709
    .end local v10    # "i":I
    :cond_c0c
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_c0d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_c4a

    .line 710
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_c47

    .line 711
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v12

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_c47
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0d

    .line 715
    .end local v10    # "i":I
    :cond_c4a
    const/4 v10, 0x0

    .local v10, "o":I
    :goto_c4b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c6d

    .line 716
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v11, v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    add-int/lit8 v10, v10, 0x1

    goto :goto_c4b

    .line 719
    .end local v10    # "o":I
    :cond_c6d
    :goto_c6d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_ea9

    .line 720
    const/4 v10, 0x0

    .line 722
    .local v10, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    if-nez v11, :cond_cb2

    .line 723
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_c79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_cad

    .line 724
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_caa

    .line 725
    move v10, v11

    .line 723
    :cond_caa
    add-int/lit8 v11, v11, 0x1

    goto :goto_c79

    :cond_cad
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_d96

    .line 728
    :cond_cb2
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_cf1

    .line 729
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_cb8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_cec

    .line 730
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ce9

    .line 731
    move v10, v11

    .line 729
    :cond_ce9
    add-int/lit8 v11, v11, 0x1

    goto :goto_cb8

    :cond_cec
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_d96

    .line 734
    :cond_cf1
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d1b

    .line 735
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_cf7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d17

    .line 736
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ge v13, v14, :cond_d14

    .line 737
    move v10, v11

    .line 735
    :cond_d14
    add-int/lit8 v11, v11, 0x1

    goto :goto_cf7

    :cond_d17
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_d96

    .line 740
    :cond_d1b
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_d44

    .line 741
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d41

    .line 742
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-le v13, v14, :cond_d3e

    .line 743
    move v10, v11

    .line 741
    :cond_d3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d21

    :cond_d41
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_d96

    .line 746
    :cond_d44
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_d6e

    .line 747
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_d6c

    .line 748
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_d69

    .line 749
    move v10, v11

    .line 747
    :cond_d69
    add-int/lit8 v11, v11, 0x1

    goto :goto_d4a

    :cond_d6c
    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_d96

    .line 752
    :cond_d6e
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->iSortID:I

    const/4 v14, 0x5

    if-ne v11, v14, :cond_d96

    .line 753
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_d96

    .line 754
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    cmpl-float v15, v15, v26

    if-lez v15, :cond_d93

    .line 755
    move v10, v11

    .line 753
    :cond_d93
    add-int/lit8 v11, v11, 0x1

    goto :goto_d74

    .line 760
    .end local v11    # "o":I
    :cond_d96
    :goto_d96
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_d9a
    .catch Ljava/lang/Exception; {:try_start_bb1 .. :try_end_d9a} :catch_eb0

    add-int/2addr v11, v15

    .line 763
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_d9b
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$12;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v40

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v45

    const/16 v46, 0x0

    move-object/from16 v37, v15

    move-object/from16 v38, p0

    move-object/from16 v39, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v8

    move/from16 v44, v25

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;IIIIIII)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 795
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-float v15, v15

    const/4 v14, 0x1

    invoke-static {v15, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v6

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 798
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v37, v12

    move/from16 v41, v11

    move/from16 v42, v19

    move/from16 v43, v5

    move/from16 v44, v25

    invoke-direct/range {v37 .. v44}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_e85
    .catch Ljava/lang/Exception; {:try_start_d9b .. :try_end_e85} :catch_8ea

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 801
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_e88
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

    .line 803
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 804
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 805
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_ea6
    .catch Ljava/lang/Exception; {:try_start_e88 .. :try_end_ea6} :catch_eb0

    .line 806
    nop

    .end local v10    # "toAddID":I
    goto/16 :goto_c6d

    .line 719
    :cond_ea9
    move/from16 v3, v30

    goto :goto_eae

    .line 698
    .end local v3    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_eac
    move/from16 v3, v30

    .line 810
    .end local v30    # "buttonX":I
    .local v3, "buttonX":I
    :goto_eae
    move v12, v3

    goto :goto_ec9

    .line 808
    .end local v3    # "buttonX":I
    .restart local v30    # "buttonX":I
    :catch_eb0
    move-exception v0

    move-object v4, v0

    move/from16 v3, v30

    goto :goto_ec5

    .end local v30    # "buttonX":I
    .end local v31    # "r1W":I
    .end local v32    # "r0W":I
    .end local v34    # "r2W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    .local v11, "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_eb5
    move-exception v0

    move/from16 v30, v3

    move/from16 v34, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move-object v4, v0

    .line 809
    .end local v9    # "r2W":I
    .end local v10    # "r1W":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v31    # "r1W":I
    .restart local v32    # "r0W":I
    .restart local v34    # "r2W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    :goto_ec5
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v12, v3

    .line 812
    .end local v3    # "buttonX":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v12, "buttonX":I
    :goto_ec9
    const/4 v3, 0x0

    .line 814
    .end local v19    # "buttonY":I
    .local v3, "buttonY":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move v13, v3

    .end local v3    # "buttonY":I
    .local v7, "iSize":I
    .local v13, "buttonY":I
    :goto_ed0
    if-ge v4, v7, :cond_f08

    .line 815
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    if-ge v13, v3, :cond_f05

    .line 816
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v9

    move v13, v3

    .line 814
    :cond_f05
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed0

    .line 820
    .end local v4    # "i":I
    .end local v7    # "iSize":I
    :cond_f08
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v3, v3, v17

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v7

    sub-int/2addr v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x3

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    sub-int/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 822
    .local v14, "menuHeight":I
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v15, v49

    const/4 v7, 0x0

    .end local v49    # "menuWidth":I
    .local v15, "menuWidth":I
    invoke-direct {v3, v7, v7, v15, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$13;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v7, v48

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Total"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->totalInfrastructure:F

    const/4 v9, 0x1

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-direct/range {v35 .. v41}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move v1, v5

    .end local v5    # "r2W2":I
    .local v1, "r2W2":I
    move/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "r1W2":I
    .local v19, "r1W2":I
    move/from16 v6, v17

    move v7, v15

    move/from16 v21, v8

    .end local v8    # "r0W2":I
    .local v21, "r0W2":I
    move v8, v14

    move/from16 v24, v34

    .end local v34    # "r2W":I
    .local v24, "r2W":I
    move-object v9, v2

    move/from16 v26, v31

    .end local v31    # "r1W":I
    .local v26, "r1W":I
    move/from16 v27, v32

    .end local v32    # "r0W":I
    .local v27, "r0W":I
    invoke-virtual/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 839
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v4, p0

    iput v3, v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->scrollExtraPosX:I

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
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 848
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 849
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 853
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 855
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 856
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 867
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

    .line 860
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 861
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime:J

    .line 862
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;->lTime2:J

    .line 863
    return-void
.end method
