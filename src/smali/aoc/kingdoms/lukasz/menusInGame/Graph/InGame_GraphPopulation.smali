.class public Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GraphPopulation.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static activeModeID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->lTime:J

    .line 38
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 41

    .line 40
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 45
    .local v14, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    .line 47
    .local v15, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v16

    .line 48
    .local v16, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

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

    add-int v17, v1, v2

    .line 50
    .local v17, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v1, 0x2

    .line 51
    .local v18, "buttonYPadding":I
    move/from16 v1, v18

    .line 53
    .local v1, "buttonY":I
    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 55
    .local v19, "buttonX":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v4, v17, 0x2

    sub-int/2addr v2, v4

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57
    .local v2, "menuHeight":I
    const/4 v13, 0x0

    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoodsView:Z

    .line 59
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x4

    mul-int/lit8 v5, v5, 0x4

    add-int v20, v4, v5

    .line 60
    .local v20, "statsH":I
    mul-int/lit8 v4, v14, 0x2

    sub-int v4, v15, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x5

    mul-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    const/4 v10, 0x6

    div-int/lit8 v21, v4, 0x6

    .line 61
    .local v21, "typeW":I
    move/from16 v22, v14

    .line 63
    .local v22, "typeX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$1;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move-object v4, v9

    move-object/from16 v5, p0

    move/from16 v8, v22

    move-object v12, v9

    move v9, v1

    move/from16 v10, v21

    move/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v22, v22, v4

    .line 89
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$2;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object v4, v11

    move-object/from16 v5, p0

    move/from16 v8, v22

    move-object v13, v11

    move/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v22, v22, v4

    .line 115
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$3;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v4, v13

    move-object/from16 v5, p0

    move/from16 v8, v22

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v22, v22, v4

    .line 141
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$4;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object v4, v13

    move-object/from16 v5, p0

    move/from16 v8, v22

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v22, v22, v4

    .line 167
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$5;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v4, v13

    move-object/from16 v5, p0

    move/from16 v8, v22

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v22, v22, v4

    .line 193
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$6;

    const-string v6, ""

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v4, v13

    move-object/from16 v5, p0

    move/from16 v8, v22

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v1, v4

    .line 224
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const-string v13, "Provinces"

    const-string v11, "ConstructedBuildings"

    const/4 v10, 0x3

    const-string v9, "Economy"

    const-string v8, "Population"

    const-string v5, "Civilizations"

    if-nez v4, :cond_1a4

    .line 225
    new-instance v27, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$7;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 226
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 227
    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    mul-int/lit8 v4, v14, 0x2

    sub-int v29, v15, v4

    sub-int v4, v2, v1

    sub-int v30, v4, v18

    const/16 v31, 0x1

    move-object/from16 v4, v27

    move-object/from16 v5, p0

    move-object/from16 v32, v8

    move-object/from16 v8, v28

    move-object v3, v9

    move v9, v14

    move v10, v1

    move-object/from16 v34, v11

    move/from16 v11, v29

    move/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "buttonY":I
    .local v23, "buttonY":I
    move/from16 v12, v30

    move-object/from16 v36, v13

    move/from16 v13, v31

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 235
    .local v4, "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object/from16 v38, v32

    move-object/from16 v37, v34

    move-object/from16 v39, v36

    goto/16 :goto_315

    .line 237
    .end local v23    # "buttonY":I
    .restart local v1    # "buttonY":I
    :cond_1a4
    move/from16 v23, v1

    move-object/from16 v32, v8

    move-object v3, v9

    move-object/from16 v34, v11

    move-object/from16 v36, v13

    const/4 v1, 0x1

    .end local v1    # "buttonY":I
    .restart local v23    # "buttonY":I
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    if-ne v4, v1, :cond_1e0

    .line 238
    new-instance v26, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$8;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 239
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 240
    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v12, v4, v18

    const/4 v13, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 248
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object/from16 v38, v32

    move-object/from16 v37, v34

    move-object/from16 v39, v36

    goto/16 :goto_315

    .line 250
    :cond_1e0
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_218

    .line 251
    new-instance v26, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$9;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 252
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 253
    move-object/from16 v13, v34

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v12, v4, v18

    const/16 v27, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    move-object/from16 v37, v13

    move/from16 v13, v27

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 261
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object/from16 v38, v32

    move-object/from16 v39, v36

    goto/16 :goto_315

    .line 263
    :cond_218
    move-object/from16 v37, v34

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v13, 0x3

    if-ne v4, v13, :cond_252

    .line 264
    new-instance v26, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$10;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 265
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 266
    move-object/from16 v12, v32

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v27, v4, v18

    const/16 v29, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    move-object/from16 v38, v12

    move/from16 v12, v27

    move/from16 v13, v29

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 274
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    move-object/from16 v39, v36

    goto/16 :goto_315

    .line 276
    :cond_252
    move-object/from16 v38, v32

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v13, 0x4

    if-ne v4, v13, :cond_28a

    .line 277
    new-instance v26, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$11;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 278
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 279
    move-object/from16 v12, v36

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v27, v4, v18

    const/16 v29, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    move-object/from16 v39, v12

    move/from16 v12, v27

    move/from16 v13, v29

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 287
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    goto/16 :goto_315

    .line 289
    :cond_28a
    move-object/from16 v39, v36

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v13, 0x5

    if-ne v4, v13, :cond_2bb

    .line 290
    new-instance v25, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$12;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 291
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 292
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v12, v4, v18

    const/16 v26, 0x1

    move-object/from16 v4, v25

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    move/from16 v13, v26

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 300
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    goto :goto_315

    .line 302
    :cond_2bb
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v13, 0x6

    if-ne v4, v13, :cond_2ea

    .line 303
    new-instance v24, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$13;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 304
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 305
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v12, v4, v18

    const/16 v25, 0x1

    move-object/from16 v4, v24

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    move/from16 v13, v25

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 313
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    goto :goto_315

    .line 315
    :cond_2ea
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_315

    .line 316
    new-instance v24, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$14;

    sget-object v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 317
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 318
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v4, v14, 0x2

    sub-int v11, v15, v4

    sub-int v4, v2, v23

    sub-int v12, v4, v18

    const/4 v13, 0x1

    move-object/from16 v4, v24

    move-object/from16 v5, p0

    move v9, v14

    move/from16 v10, v23

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    .line 326
    .restart local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v4    # "graphVertical":Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    :cond_315
    :goto_315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v10, v23, v4

    .line 332
    .end local v23    # "buttonY":I
    .local v10, "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v11, 0x0

    invoke-direct {v4, v11, v11, v15, v5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$15;

    .line 335
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    if-nez v5, :cond_348

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v38

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto/16 :goto_3af

    .line 336
    :cond_348
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    if-ne v5, v1, :cond_355

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 337
    :cond_355
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_365

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v37

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 338
    :cond_365
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_375

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Infrastructure"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 339
    :cond_375
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_385

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v39

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 340
    :cond_385
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_395

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UnlockedTechnologies"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 341
    :cond_395
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3a5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Prestige"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_3af

    .line 342
    :cond_3a5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "RegimentsLimit"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    :goto_3af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 344
    const-string v5, "Year"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x0

    sget v35, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    const/16 v33, 0x0

    move-object/from16 v29, v4

    move-object/from16 v30, p0

    invoke-direct/range {v29 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v3, 0x2

    div-int/2addr v1, v3

    div-int/lit8 v3, v15, 0x2

    sub-int v3, v1, v3

    .line 334
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move v12, v2

    .end local v2    # "menuHeight":I
    .local v12, "menuHeight":I
    move-object v2, v4

    move/from16 v4, v17

    move v5, v15

    move v6, v12

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 351
    iput-boolean v11, v1, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->drawScrollPositionAlways:Z

    .line 352
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    .line 395
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 396
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Goods(Z)V

    .line 397
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 356
    const/high16 v8, 0x3f800000    # 1.0f

    .line 357
    .local v8, "fA":F
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 359
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 363
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f266666    # 0.65f

    mul-float v4, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 365
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 369
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 371
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 372
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->insideTop928:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideBot928:I

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 374
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 375
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 376
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 378
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 379
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 389
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 390
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameGoods()V

    .line 391
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 383
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 384
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->lTime:J

    .line 385
    return-void
.end method
