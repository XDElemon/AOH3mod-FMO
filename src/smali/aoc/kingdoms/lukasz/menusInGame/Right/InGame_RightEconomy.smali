.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightEconomy.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static totalEconomy:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    .line 48
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime2:J

    .line 50
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    .line 51
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    .line 53
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

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

    sput v35, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    .line 77
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_8b

    .line 78
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_88

    .line 79
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    add-float/2addr v4, v5

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    .line 77
    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 83
    .end local v3    # "i":I
    :cond_8b
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Civilizations"

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    if-nez v4, :cond_9c

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_9e

    :cond_9c
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_9e
    move/from16 v26, v4

    move-object/from16 v19, v3

    move-object/from16 v20, p0

    move/from16 v22, v34

    move/from16 v23, v11

    move/from16 v24, v10

    invoke-direct/range {v19 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Provinces"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v34, v3

    add-int v6, v3, v10

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_ca

    :cond_c8
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_ca
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

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

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
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$3;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Continents"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v14, 0x2

    if-ne v4, v14, :cond_10a

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_10c

    :cond_10a
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_10c
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v29, v34

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Religion"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v34, v4

    add-int v29, v4, v23

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v10, 0x3

    if-ne v4, v10, :cond_138

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_13a

    :cond_138
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_13a
    move/from16 v33, v4

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v30, v11

    move/from16 v31, v23

    move/from16 v32, v25

    invoke-direct/range {v26 .. v33}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIII)V

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
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const-string v11, "Economy"

    const/4 v9, 0x0

    if-nez v3, :cond_1ae

    .line 216
    new-instance v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$5;

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

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

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

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

    goto :goto_1b2

    .line 215
    .end local v3    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .end local v37    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :cond_1ae
    move-object v15, v11

    move/from16 v37, v12

    const/4 v14, 0x0

    .line 239
    .end local v12    # "menuWidth":I
    .restart local v37    # "menuWidth":I
    :goto_1b2
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
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$6;

    sget v24, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-eqz v24, :cond_209

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v7, 0x1

    if-ne v14, v7, :cond_206

    goto :goto_20a

    :cond_206
    const/16 v40, 0x0

    goto :goto_20c

    :cond_209
    const/4 v7, 0x1

    :goto_20a
    const/16 v40, 0x1

    :goto_20c
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-ne v14, v7, :cond_213

    const/16 v41, 0x1

    goto :goto_215

    :cond_213
    const/16 v41, 0x0

    :goto_215
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

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

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
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$7;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x2

    if-eq v7, v14, :cond_25a

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x3

    if-ne v7, v14, :cond_257

    goto :goto_25b

    :cond_257
    const/16 v40, 0x0

    goto :goto_25d

    :cond_25a
    const/4 v14, 0x3

    :goto_25b
    const/16 v40, 0x1

    :goto_25d
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-ne v7, v14, :cond_264

    const/16 v41, 0x1

    goto :goto_266

    :cond_264
    const/16 v41, 0x0

    :goto_266
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v27, v27, 0x6

    add-int v47, v7, v27

    sget v48, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v43, -0x1

    move-object/from16 v38, v4

    move-object/from16 v39, p0

    move/from16 v44, v3

    move/from16 v45, v19

    move/from16 v46, v10

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

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
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$8;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x4

    if-eq v7, v14, :cond_2a9

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x5

    if-ne v7, v14, :cond_2a6

    goto :goto_2aa

    :cond_2a6
    const/16 v40, 0x0

    goto :goto_2ac

    :cond_2a9
    const/4 v14, 0x5

    :goto_2aa
    const/16 v40, 0x1

    :goto_2ac
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-ne v7, v14, :cond_2b3

    const/16 v41, 0x1

    goto :goto_2b5

    :cond_2b3
    const/16 v41, 0x0

    :goto_2b5
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_2bf

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Infrastructure"

    goto :goto_2c3

    :cond_2bf
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "World"

    :goto_2c3
    invoke-virtual {v7, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

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

    invoke-direct/range {v38 .. v48}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;ZZLjava/lang/String;IIIIII)V

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
    :try_start_2fa
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_2fc} :catch_ed5

    const-string v7, "%"

    const/high16 v29, 0x42c80000    # 100.0f

    if-nez v4, :cond_680

    .line 342
    :try_start_302
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v4, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v30

    .line 344
    .local v31, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_302 .. :try_end_313} :catch_ed5

    move-object/from16 v32, v30

    .line 346
    .local v32, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v30, 0x1

    move/from16 v14, v30

    .local v14, "i":I
    :goto_319
    move/from16 v30, v3

    .end local v3    # "buttonX":I
    .local v30, "buttonX":I
    :try_start_31b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_31f} :catch_66e

    if-ge v14, v3, :cond_3a4

    .line 347
    :try_start_321
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_37d

    .line 348
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_33e} :catch_392

    move/from16 v34, v9

    move-object/from16 v9, v31

    .end local v31    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v34, "r2W":I
    :try_start_342
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v3

    sget v31, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float v3, v3, v31

    mul-float v3, v3, v29

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_342 .. :try_end_357} :catch_36d

    move/from16 v31, v10

    move-object/from16 v10, v32

    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    :try_start_35b
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_35e} :catch_35f

    goto :goto_385

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "i":I
    :catch_35f
    move-exception v0

    move-object v4, v0

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move/from16 v3, v30

    goto/16 :goto_ee5

    .end local v31    # "r1W":I
    .local v10, "r1W":I
    :catch_36d
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
    goto/16 :goto_ee5

    .line 347
    .end local v34    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v31, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_37d
    move/from16 v34, v9

    move-object/from16 v9, v31

    move/from16 v31, v10

    move-object/from16 v10, v32

    .line 346
    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    .restart local v34    # "r2W":I
    :goto_385
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v32, v10

    move/from16 v3, v30

    move/from16 v10, v31

    move-object/from16 v31, v9

    move/from16 v9, v34

    goto :goto_319

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "i":I
    .end local v31    # "r1W":I
    .end local v34    # "r2W":I
    .local v9, "r2W":I
    .local v10, "r1W":I
    :catch_392
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
    goto/16 :goto_ee5

    .line 346
    .end local v34    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "r2W":I
    .restart local v10    # "r1W":I
    .restart local v14    # "i":I
    .local v31, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_3a4
    move/from16 v34, v9

    move-object/from16 v9, v31

    move/from16 v31, v10

    move-object/from16 v10, v32

    .end local v32    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v9, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v31, "r1W":I
    .restart local v34    # "r2W":I
    move/from16 v3, v30

    .line 354
    .end local v14    # "i":I
    .end local v30    # "buttonX":I
    .restart local v3    # "buttonX":I
    :goto_3ae
    :try_start_3ae
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_654

    .line 355
    const/4 v14, 0x0

    .line 357
    .local v14, "toAddID":I
    sget v30, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3b7} :catch_660

    if-nez v30, :cond_40d

    .line 358
    const/16 v30, 0x1

    move/from16 v50, v30

    move/from16 v30, v3

    move/from16 v3, v50

    .local v3, "o":I
    .restart local v30    # "buttonX":I
    :goto_3c1
    move/from16 v32, v11

    .end local v11    # "r0W":I
    .local v32, "r0W":I
    :try_start_3c3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3fd

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

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v35
    :try_end_3e9
    .catch Ljava/lang/Exception; {:try_start_3c3 .. :try_end_3e9} :catch_401

    move/from16 v47, v13

    .end local v13    # "paddingLeft":I
    .local v47, "paddingLeft":I
    :try_start_3eb
    invoke-virtual/range {v35 .. v35}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_3f3} :catch_44f

    if-eqz v11, :cond_3f6

    .line 360
    move v14, v3

    .line 358
    :cond_3f6
    add-int/lit8 v3, v3, 0x1

    move/from16 v11, v32

    move/from16 v13, v47

    goto :goto_3c1

    .end local v47    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :cond_3fd
    move/from16 v47, v13

    .end local v3    # "o":I
    .end local v13    # "paddingLeft":I
    .restart local v47    # "paddingLeft":I
    goto/16 :goto_4fd

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    .end local v47    # "paddingLeft":I
    .restart local v13    # "paddingLeft":I
    :catch_401
    move-exception v0

    move/from16 v47, v13

    move-object v4, v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move/from16 v3, v30

    .end local v13    # "paddingLeft":I
    .restart local v47    # "paddingLeft":I
    goto/16 :goto_ee5

    .line 363
    .end local v30    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .local v3, "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v13    # "paddingLeft":I
    .restart local v14    # "toAddID":I
    :cond_40d
    move/from16 v30, v3

    move/from16 v32, v11

    move/from16 v47, v13

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "paddingLeft":I
    .restart local v30    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    :try_start_413
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_415
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_415} :catch_64a

    const/4 v11, 0x1

    if-ne v3, v11, :cond_459

    .line 364
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_419
    :try_start_419
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_44d

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
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_447} :catch_44f

    if-eqz v11, :cond_44a

    .line 366
    move v14, v3

    .line 364
    :cond_44a
    add-int/lit8 v3, v3, 0x1

    goto :goto_419

    .end local v3    # "o":I
    :cond_44d
    goto/16 :goto_4fd

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    :catch_44f
    move-exception v0

    move-object v4, v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move/from16 v3, v30

    goto/16 :goto_ee5

    .line 369
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "toAddID":I
    :cond_459
    :try_start_459
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_45b
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_45b} :catch_64a

    const/4 v11, 0x2

    if-ne v3, v11, :cond_483

    .line 370
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_45f
    :try_start_45f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_481

    .line 371
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_479
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_479} :catch_44f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_47e

    .line 372
    move v14, v3

    .line 370
    :cond_47e
    add-int/lit8 v3, v3, 0x1

    goto :goto_45f

    .end local v3    # "o":I
    :cond_481
    goto/16 :goto_4fd

    .line 375
    :cond_483
    :try_start_483
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_485
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_485} :catch_64a

    const/4 v11, 0x3

    if-ne v3, v11, :cond_4ac

    .line 376
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_489
    :try_start_489
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4ab

    .line 377
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_4a3
    .catch Ljava/lang/Exception; {:try_start_489 .. :try_end_4a3} :catch_44f

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4a8

    .line 378
    move v14, v3

    .line 376
    :cond_4a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_489

    .end local v3    # "o":I
    :cond_4ab
    goto :goto_4fd

    .line 381
    :cond_4ac
    :try_start_4ac
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_4ae
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_4ae} :catch_64a

    const/4 v11, 0x4

    if-ne v3, v11, :cond_4d5

    .line 382
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4b2
    :try_start_4b2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4d4

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
    :try_end_4cc
    .catch Ljava/lang/Exception; {:try_start_4b2 .. :try_end_4cc} :catch_44f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_4d1

    .line 384
    move v14, v3

    .line 382
    :cond_4d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b2

    .end local v3    # "o":I
    :cond_4d4
    goto :goto_4fd

    .line 387
    :cond_4d5
    :try_start_4d5
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I
    :try_end_4d7
    .catch Ljava/lang/Exception; {:try_start_4d5 .. :try_end_4d7} :catch_64a

    const/4 v11, 0x5

    if-ne v3, v11, :cond_4fd

    .line 388
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4db
    :try_start_4db
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_4fd

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
    :try_end_4f5
    .catch Ljava/lang/Exception; {:try_start_4db .. :try_end_4f5} :catch_44f

    cmpl-float v11, v11, v13

    if-lez v11, :cond_4fa

    .line 390
    move v14, v3

    .line 388
    :cond_4fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_4db

    .line 395
    .end local v3    # "o":I
    :cond_4fd
    :goto_4fd
    :try_start_4fd
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_501} :catch_64a

    add-int/2addr v3, v11

    .line 399
    .end local v30    # "buttonX":I
    .local v3, "buttonX":I
    :try_start_502
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$9;

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

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

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

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v13, v13, v29

    if-ltz v13, :cond_58d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Float;
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_502 .. :try_end_56d} :catch_642

    move-object/from16 v48, v15

    :try_start_56f
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_573
    .catch Ljava/lang/Exception; {:try_start_56f .. :try_end_573} :catch_587

    move/from16 v49, v12

    const/4 v12, 0x1

    .end local v12    # "menuWidth":I
    .local v49, "menuWidth":I
    :try_start_576
    invoke-static {v15, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5a1

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "toAddID":I
    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_587
    move-exception v0

    move/from16 v49, v12

    move-object v4, v0

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ee5

    .line 455
    .end local v49    # "menuWidth":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v12    # "menuWidth":I
    .restart local v14    # "toAddID":I
    :cond_58d
    move/from16 v49, v12

    move-object/from16 v48, v15

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    :goto_5a1
    move-object/from16 v38, v12

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

    .line 458
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v15, 0x64

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_634
    .catch Ljava/lang/Exception; {:try_start_576 .. :try_end_634} :catch_63e

    .line 466
    move/from16 v11, v32

    move/from16 v13, v47

    move-object/from16 v15, v48

    move/from16 v12, v49

    .end local v14    # "toAddID":I
    goto/16 :goto_3ae

    .line 808
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_63e
    move-exception v0

    move-object v4, v0

    goto/16 :goto_ee5

    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    :catch_642
    move-exception v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move-object v4, v0

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ee5

    .end local v3    # "buttonX":I
    .end local v49    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    .restart local v30    # "buttonX":I
    :catch_64a
    move-exception v0

    move/from16 v49, v12

    move-object/from16 v48, v15

    move-object v4, v0

    move/from16 v3, v30

    .end local v12    # "menuWidth":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ee5

    .line 354
    .end local v30    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :cond_654
    move/from16 v30, v3

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    .line 467
    .end local v3    # "buttonX":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tPercOfWorld":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v30    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ece

    .line 808
    .end local v30    # "buttonX":I
    .end local v32    # "r0W":I
    .end local v47    # "paddingLeft":I
    .end local v49    # "menuWidth":I
    .restart local v3    # "buttonX":I
    .restart local v11    # "r0W":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "paddingLeft":I
    :catch_660
    move-exception v0

    move/from16 v30, v3

    move/from16 v32, v11

    move/from16 v49, v12

    move/from16 v47, v13

    move-object/from16 v48, v15

    move-object v4, v0

    .end local v3    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v12    # "menuWidth":I
    .end local v13    # "paddingLeft":I
    .restart local v30    # "buttonX":I
    .restart local v32    # "r0W":I
    .restart local v47    # "paddingLeft":I
    .restart local v49    # "menuWidth":I
    goto/16 :goto_ee5

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
    :catch_66e
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
    goto/16 :goto_ee5

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
    :cond_680
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
    :try_start_68e
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_915

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
    :goto_6a3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_6db

    .line 474
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_6d8

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
    :cond_6d8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a3

    .line 481
    .end local v9    # "i":I
    :cond_6db
    const/16 v9, 0xfa

    .line 483
    .local v9, "maxProvinces":I
    :goto_6dd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_911

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "maxProvinces":I
    .local v10, "maxProvinces":I
    if-lez v9, :cond_911

    .line 484
    const/4 v9, 0x0

    .line 486
    .local v9, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v11, :cond_723

    .line 487
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_6ed
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_721

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

    if-eqz v12, :cond_71e

    .line 489
    move v9, v11

    .line 487
    :cond_71e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6ed

    .end local v11    # "o":I
    :cond_721
    goto/16 :goto_7ff

    .line 492
    :cond_723
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_75f

    .line 493
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_729
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_75d

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

    if-eqz v12, :cond_75a

    .line 495
    move v9, v11

    .line 493
    :cond_75a
    add-int/lit8 v11, v11, 0x1

    goto :goto_729

    .end local v11    # "o":I
    :cond_75d
    goto/16 :goto_7ff

    .line 498
    :cond_75f
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_789

    .line 499
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_765
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_787

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

    if-gez v12, :cond_784

    .line 501
    move v9, v11

    .line 499
    :cond_784
    add-int/lit8 v11, v11, 0x1

    goto :goto_765

    .end local v11    # "o":I
    :cond_787
    goto/16 :goto_7ff

    .line 504
    :cond_789
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7b2

    .line 505
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_78f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7b1

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

    if-lez v12, :cond_7ae

    .line 507
    move v9, v11

    .line 505
    :cond_7ae
    add-int/lit8 v11, v11, 0x1

    goto :goto_78f

    .end local v11    # "o":I
    :cond_7b1
    goto :goto_7ff

    .line 510
    :cond_7b2
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7d9

    .line 511
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_7b8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7d8

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

    if-ge v12, v13, :cond_7d5

    .line 513
    move v9, v11

    .line 511
    :cond_7d5
    add-int/lit8 v11, v11, 0x1

    goto :goto_7b8

    .end local v11    # "o":I
    :cond_7d8
    goto :goto_7ff

    .line 516
    :cond_7d9
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_7ff

    .line 517
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_7df
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7ff

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

    if-le v12, v13, :cond_7fc

    .line 519
    move v9, v11

    .line 517
    :cond_7fc
    add-int/lit8 v11, v11, 0x1

    goto :goto_7df

    .line 524
    .end local v11    # "o":I
    :cond_7ff
    :goto_7ff
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_803
    .catch Ljava/lang/Exception; {:try_start_68e .. :try_end_803} :catch_ed0

    add-int/2addr v11, v12

    .line 527
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_804
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$10;

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

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

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
    :try_end_8e8
    .catch Ljava/lang/Exception; {:try_start_804 .. :try_end_8e8} :catch_90c

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 578
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_8eb
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
    goto/16 :goto_6dd

    .line 808
    .end local v3    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "tInfrastructure":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "maxProvinces":I
    .end local v30    # "buttonX":I
    .restart local v11    # "buttonX":I
    :catch_90c
    move-exception v0

    move-object v4, v0

    move v3, v11

    goto/16 :goto_ee5

    .line 584
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :cond_911
    move/from16 v3, v30

    goto/16 :goto_ece

    .line 585
    :cond_915
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bf7

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v3, "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .restart local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v9, "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_92a
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v10, v11, :cond_948

    .line 591
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto :goto_92a

    .line 596
    .end local v10    # "i":I
    :cond_948
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_949
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_986

    .line 597
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_983

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

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_983
    add-int/lit8 v10, v10, 0x1

    goto :goto_949

    .line 602
    .end local v10    # "i":I
    :cond_986
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 603
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 606
    const/4 v10, 0x0

    .local v10, "o":I
    :goto_991
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9b0

    .line 607
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float/2addr v11, v12

    mul-float v11, v11, v29

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 606
    add-int/lit8 v10, v10, 0x1

    goto :goto_991

    .line 610
    .end local v10    # "o":I
    :cond_9b0
    :goto_9b0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_bf3

    .line 611
    const/4 v10, 0x0

    .line 613
    .local v10, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v11, :cond_9fa

    .line 614
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_9bc
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9f8

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

    if-eqz v12, :cond_9f5

    .line 616
    move v10, v11

    .line 614
    :cond_9f5
    add-int/lit8 v11, v11, 0x1

    goto :goto_9bc

    .end local v11    # "o":I
    :cond_9f8
    goto/16 :goto_ae2

    .line 619
    :cond_9fa
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a3e

    .line 620
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a00
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a3c

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

    if-eqz v12, :cond_a39

    .line 622
    move v10, v11

    .line 620
    :cond_a39
    add-int/lit8 v11, v11, 0x1

    goto :goto_a00

    .end local v11    # "o":I
    :cond_a3c
    goto/16 :goto_ae2

    .line 625
    :cond_a3e
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a68

    .line 626
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a66

    .line 627
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-gez v12, :cond_a63

    .line 628
    move v10, v11

    .line 626
    :cond_a63
    add-int/lit8 v11, v11, 0x1

    goto :goto_a44

    .end local v11    # "o":I
    :cond_a66
    goto/16 :goto_ae2

    .line 631
    :cond_a68
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_a91

    .line 632
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a6e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_a90

    .line 633
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-lez v12, :cond_a8d

    .line 634
    move v10, v11

    .line 632
    :cond_a8d
    add-int/lit8 v11, v11, 0x1

    goto :goto_a6e

    .end local v11    # "o":I
    :cond_a90
    goto :goto_ae2

    .line 637
    :cond_a91
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_aba

    .line 638
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_a97
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_ab9

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

    if-gez v12, :cond_ab6

    .line 640
    move v10, v11

    .line 638
    :cond_ab6
    add-int/lit8 v11, v11, 0x1

    goto :goto_a97

    .end local v11    # "o":I
    :cond_ab9
    goto :goto_ae2

    .line 643
    :cond_aba
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_ae2

    .line 644
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_ac0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_ae2

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

    if-lez v12, :cond_adf

    .line 646
    move v10, v11

    .line 644
    :cond_adf
    add-int/lit8 v11, v11, 0x1

    goto :goto_ac0

    .line 651
    .end local v11    # "o":I
    :cond_ae2
    :goto_ae2
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_ae6
    .catch Ljava/lang/Exception; {:try_start_8eb .. :try_end_ae6} :catch_ed0

    add-int/2addr v11, v12

    .line 654
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_ae7
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$11;

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

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

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

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

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
    :try_end_bcf
    .catch Ljava/lang/Exception; {:try_start_ae7 .. :try_end_bcf} :catch_90c

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 691
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_bd2
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
    goto/16 :goto_9b0

    .line 697
    .end local v3    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_bf3
    move/from16 v3, v30

    goto/16 :goto_ece

    .line 698
    :cond_bf7
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iModeID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ecc

    .line 699
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v3, "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .restart local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .restart local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c0c
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v11

    if-ge v10, v11, :cond_c2c

    .line 704
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0c

    .line 709
    .end local v10    # "i":I
    :cond_c2c
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_c2d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_c6a

    .line 710
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_c67

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

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_c67
    add-int/lit8 v10, v10, 0x1

    goto :goto_c2d

    .line 715
    .end local v10    # "i":I
    :cond_c6a
    const/4 v10, 0x0

    .local v10, "o":I
    :goto_c6b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c8a

    .line 716
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

    div-float/2addr v11, v12

    mul-float v11, v11, v29

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    add-int/lit8 v10, v10, 0x1

    goto :goto_c6b

    .line 719
    .end local v10    # "o":I
    :cond_c8a
    :goto_c8a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_ec9

    .line 720
    const/4 v10, 0x0

    .line 722
    .local v10, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    if-nez v11, :cond_ccf

    .line 723
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_c96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_cca

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

    if-eqz v12, :cond_cc7

    .line 725
    move v10, v11

    .line 723
    :cond_cc7
    add-int/lit8 v11, v11, 0x1

    goto :goto_c96

    :cond_cca
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_db7

    .line 728
    :cond_ccf
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d0e

    .line 729
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_cd5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_d09

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

    if-eqz v12, :cond_d06

    .line 731
    move v10, v11

    .line 729
    :cond_d06
    add-int/lit8 v11, v11, 0x1

    goto :goto_cd5

    :cond_d09
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_db7

    .line 734
    :cond_d0e
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d3a

    .line 735
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d36

    .line 736
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_d33

    .line 737
    move v10, v11

    .line 735
    :cond_d33
    add-int/lit8 v11, v11, 0x1

    goto :goto_d14

    :cond_d36
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_db7

    .line 740
    :cond_d3a
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_d65

    .line 741
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d40
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_d62

    .line 742
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_d5f

    .line 743
    move v10, v11

    .line 741
    :cond_d5f
    add-int/lit8 v11, v11, 0x1

    goto :goto_d40

    :cond_d62
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_db7

    .line 746
    :cond_d65
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_d8f

    .line 747
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d6b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_d8d

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

    if-gez v14, :cond_d8a

    .line 749
    move v10, v11

    .line 747
    :cond_d8a
    add-int/lit8 v11, v11, 0x1

    goto :goto_d6b

    :cond_d8d
    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_db7

    .line 752
    :cond_d8f
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->iSortID:I

    const/4 v14, 0x5

    if-ne v11, v14, :cond_db7

    .line 753
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d95
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_db7

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

    if-lez v15, :cond_db4

    .line 755
    move v10, v11

    .line 753
    :cond_db4
    add-int/lit8 v11, v11, 0x1

    goto :goto_d95

    .line 760
    .end local v11    # "o":I
    :cond_db7
    :goto_db7
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_dbb
    .catch Ljava/lang/Exception; {:try_start_bd2 .. :try_end_dbb} :catch_ed0

    add-int/2addr v11, v15

    .line 763
    .end local v30    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_dbc
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$12;

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

    invoke-direct/range {v37 .. v46}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;IIIIIII)V

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

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

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
    :try_end_ea5
    .catch Ljava/lang/Exception; {:try_start_dbc .. :try_end_ea5} :catch_90c

    add-int/2addr v12, v13

    add-int v30, v11, v12

    .line 801
    .end local v11    # "buttonX":I
    .restart local v30    # "buttonX":I
    :try_start_ea8
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
    :try_end_ec6
    .catch Ljava/lang/Exception; {:try_start_ea8 .. :try_end_ec6} :catch_ed0

    .line 806
    nop

    .end local v10    # "toAddID":I
    goto/16 :goto_c8a

    .line 719
    :cond_ec9
    move/from16 v3, v30

    goto :goto_ece

    .line 698
    .end local v3    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v9    # "tPerc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_ecc
    move/from16 v3, v30

    .line 810
    .end local v30    # "buttonX":I
    .local v3, "buttonX":I
    :goto_ece
    move v12, v3

    goto :goto_ee9

    .line 808
    .end local v3    # "buttonX":I
    .restart local v30    # "buttonX":I
    :catch_ed0
    move-exception v0

    move-object v4, v0

    move/from16 v3, v30

    goto :goto_ee5

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
    :catch_ed5
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
    :goto_ee5
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v12, v3

    .line 812
    .end local v3    # "buttonX":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v12, "buttonX":I
    :goto_ee9
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
    :goto_ef0
    if-ge v4, v7, :cond_f28

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

    if-ge v13, v3, :cond_f25

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
    :cond_f25
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef0

    .line 820
    .end local v4    # "i":I
    .end local v7    # "iSize":I
    :cond_f28
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
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$13;

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

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->totalEconomy:F

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

    invoke-direct/range {v35 .. v41}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;Ljava/lang/String;Ljava/lang/String;ZZI)V

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
    invoke-virtual/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 839
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v4, p0

    iput v3, v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->scrollExtraPosX:I

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
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 848
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 849
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    .line 862
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightEconomy;->lTime2:J

    .line 863
    return-void
.end method
