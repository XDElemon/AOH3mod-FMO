.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightGoodsProvinces.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime:J

    .line 39
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime2:J

    .line 41
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 47

    .line 43
    const-string v0, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 47
    .local v11, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 49
    .local v12, "titleHeight":I
    sget v13, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 51
    .local v13, "extraX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 53
    .local v14, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v15, v2, v14

    .line 54
    .local v15, "menuX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v16, v2, v3

    .line 56
    .local v16, "menuY":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 57
    .local v17, "buttonYPadding":I
    const/4 v2, 0x0

    .line 58
    .local v2, "buttonY":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v11

    .line 60
    .local v3, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_51

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_53

    :cond_51
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_53
    move/from16 v37, v4

    .line 62
    .local v37, "buttonH":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    float-to-int v10, v4

    .line 63
    .local v10, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v4, v4, v6

    float-to-int v9, v4

    .line 64
    .local v9, "r1W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v14, v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    float-to-int v8, v4

    .line 66
    .local v8, "r2W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v14, v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x4

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v4, v7

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-int v7, v4

    .line 67
    .local v7, "r0W2":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 68
    .local v4, "r1W2":I
    sget v18, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v18, v14, v18

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x4

    sub-int v6, v18, v19

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 70
    .local v6, "r2W2":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 72
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$1;

    sget v18, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    move/from16 v39, v11

    .end local v11    # "paddingLeft":I
    .local v39, "paddingLeft":I
    const/4 v11, 0x1

    if-eqz v18, :cond_b1

    move/from16 v40, v12

    .end local v12    # "titleHeight":I
    .local v40, "titleHeight":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v12, v11, :cond_ae

    goto :goto_b3

    :cond_ae
    const/16 v20, 0x0

    goto :goto_b5

    .end local v40    # "titleHeight":I
    .restart local v12    # "titleHeight":I
    :cond_b1
    move/from16 v40, v12

    .end local v12    # "titleHeight":I
    .restart local v40    # "titleHeight":I
    :goto_b3
    const/16 v20, 0x1

    :goto_b5
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v12, v11, :cond_bc

    const/16 v21, 0x1

    goto :goto_be

    :cond_bc
    const/16 v21, 0x0

    :goto_be
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Name"

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v27, v11, v12

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v23, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v24, v3

    move/from16 v25, v2

    move/from16 v26, v10

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 102
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$2;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    const/4 v12, 0x2

    move/from16 v41, v10

    .end local v10    # "r0W":I
    .local v41, "r0W":I
    const/4 v10, 0x3

    if-eq v11, v12, :cond_105

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v11, v10, :cond_102

    goto :goto_105

    :cond_102
    const/16 v20, 0x0

    goto :goto_107

    :cond_105
    :goto_105
    const/16 v20, 0x1

    :goto_107
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v11, v10, :cond_10e

    const/16 v21, 0x1

    goto :goto_110

    :cond_10e
    const/16 v21, 0x0

    :goto_110
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Production"

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v27, v10, v11

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v23, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v24, v3

    move/from16 v25, v2

    move/from16 v26, v9

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 132
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$3;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eq v10, v12, :cond_155

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v10, v11, :cond_152

    goto :goto_155

    :cond_152
    const/16 v20, 0x0

    goto :goto_157

    :cond_155
    :goto_155
    const/16 v20, 0x1

    :goto_157
    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I

    if-ne v10, v11, :cond_15e

    const/16 v21, 0x1

    goto :goto_160

    :cond_15e
    const/16 v21, 0x0

    :goto_160
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Income"

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v27, v10, v12

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v23, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v24, v3

    move/from16 v25, v2

    move/from16 v26, v8

    invoke-direct/range {v18 .. v28}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v10

    add-int/2addr v2, v5

    .line 163
    const/4 v5, 0x0

    .line 166
    .local v5, "tNumOfProvinces":I
    :try_start_199
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v10, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v12, "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1a8} :catch_51f

    move-object/from16 v27, v18

    .line 170
    .local v27, "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    :goto_1ae
    move/from16 v18, v2

    .end local v2    # "buttonY":I
    .local v18, "buttonY":I
    :try_start_1b0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_50f

    if-ge v11, v2, :cond_20f

    .line 171
    :try_start_1b6
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1be} :catch_200

    move/from16 v19, v3

    .end local v3    # "buttonX":I
    .local v19, "buttonX":I
    :try_start_1c0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iActiveResID:I

    if-ne v2, v3, :cond_1e6

    .line 172
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v3, v27

    .end local v27    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v3, "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1e3} :catch_1f1

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e8

    .line 171
    .end local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v27    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_1e6
    move-object/from16 v3, v27

    .line 170
    .end local v27    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :goto_1e8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v27, v3

    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_1ae

    .line 329
    .end local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_1f1
    move-exception v0

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    move/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_52c

    .end local v19    # "buttonX":I
    .local v3, "buttonX":I
    :catch_200
    move-exception v0

    move/from16 v19, v3

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    move/from16 v2, v18

    .end local v3    # "buttonX":I
    .restart local v19    # "buttonX":I
    goto/16 :goto_52c

    .line 170
    .end local v19    # "buttonX":I
    .restart local v3    # "buttonX":I
    .restart local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "i":I
    .restart local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v27    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_20f
    move/from16 v19, v3

    move-object/from16 v3, v27

    .line 179
    .end local v11    # "i":I
    .end local v27    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v3, "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v19    # "buttonX":I
    const/4 v2, 0x1

    move/from16 v11, v18

    .line 181
    .end local v18    # "buttonY":I
    .local v2, "tID":I
    .local v11, "buttonY":I
    :goto_216
    :try_start_216
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_4f3

    .line 182
    const/16 v18, 0x0

    .line 184
    .local v18, "toAddID":I
    sget v20, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_220} :catch_500

    if-nez v20, :cond_27b

    .line 185
    const/16 v20, 0x1

    move/from16 v27, v5

    move/from16 v42, v8

    move/from16 v5, v18

    move/from16 v8, v20

    .end local v18    # "toAddID":I
    .local v5, "toAddID":I
    .local v8, "o":I
    .local v27, "tNumOfProvinces":I
    .local v42, "r2W":I
    :goto_22c
    move/from16 v43, v9

    .end local v9    # "r1W":I
    .local v43, "r1W":I
    :try_start_22e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_269

    .line 186
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v18

    move/from16 v20, v5

    .end local v5    # "toAddID":I
    .local v20, "toAddID":I
    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_25e} :catch_26f

    if-eqz v5, :cond_262

    .line 187
    move v5, v8

    .end local v20    # "toAddID":I
    .restart local v5    # "toAddID":I
    goto :goto_264

    .line 186
    .end local v5    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_262
    move/from16 v5, v20

    .line 185
    .end local v20    # "toAddID":I
    .restart local v5    # "toAddID":I
    :goto_264
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v43

    goto :goto_22c

    :cond_269
    move/from16 v20, v5

    .end local v5    # "toAddID":I
    .restart local v20    # "toAddID":I
    move/from16 v8, v20

    .end local v8    # "o":I
    goto/16 :goto_379

    .line 329
    .end local v2    # "tID":I
    .end local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v20    # "toAddID":I
    :catch_26f
    move-exception v0

    move/from16 v32, v7

    move v2, v11

    move/from16 v44, v13

    move/from16 v3, v19

    move/from16 v5, v27

    goto/16 :goto_52c

    .line 190
    .end local v27    # "tNumOfProvinces":I
    .end local v42    # "r2W":I
    .end local v43    # "r1W":I
    .restart local v2    # "tID":I
    .restart local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "tNumOfProvinces":I
    .local v8, "r2W":I
    .restart local v9    # "r1W":I
    .restart local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v18    # "toAddID":I
    :cond_27b
    move/from16 v27, v5

    move/from16 v42, v8

    move/from16 v43, v9

    .end local v5    # "tNumOfProvinces":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .restart local v27    # "tNumOfProvinces":I
    .restart local v42    # "r2W":I
    .restart local v43    # "r1W":I
    :try_start_281
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_283} :catch_4e8

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2c6

    .line 191
    const/4 v5, 0x1

    move/from16 v8, v18

    .end local v18    # "toAddID":I
    .local v5, "o":I
    .local v8, "toAddID":I
    :goto_289
    :try_start_289
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2c2

    .line 192
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v18

    move/from16 v20, v8

    .end local v8    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v18 .. v18}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_2b9} :catch_26f

    if-eqz v8, :cond_2bd

    .line 193
    move v8, v5

    .end local v20    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_2bf

    .line 192
    .end local v8    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_2bd
    move/from16 v8, v20

    .line 191
    .end local v20    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_2bf
    add-int/lit8 v5, v5, 0x1

    goto :goto_289

    :cond_2c2
    move/from16 v20, v8

    .end local v5    # "o":I
    .end local v8    # "toAddID":I
    .restart local v20    # "toAddID":I
    goto/16 :goto_379

    .line 196
    .end local v20    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_2c6
    :try_start_2c6
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2c8} :catch_4e8

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2f2

    .line 197
    const/4 v5, 0x1

    move/from16 v8, v18

    .end local v18    # "toAddID":I
    .restart local v5    # "o":I
    .restart local v8    # "toAddID":I
    :goto_2ce
    :try_start_2ce
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2f0

    .line 198
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2ce .. :try_end_2e8} :catch_26f

    cmpg-float v9, v9, v18

    if-gez v9, :cond_2ed

    .line 199
    move v8, v5

    .line 197
    :cond_2ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ce

    .end local v5    # "o":I
    :cond_2f0
    goto/16 :goto_379

    .line 202
    .end local v8    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_2f2
    :try_start_2f2
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_2f4} :catch_4e8

    const/4 v8, 0x3

    if-ne v5, v8, :cond_31d

    .line 203
    const/4 v5, 0x1

    move/from16 v8, v18

    .end local v18    # "toAddID":I
    .restart local v5    # "o":I
    .restart local v8    # "toAddID":I
    :goto_2fa
    :try_start_2fa
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_31c

    .line 204
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_314} :catch_26f

    cmpl-float v9, v9, v18

    if-lez v9, :cond_319

    .line 205
    move v8, v5

    .line 203
    :cond_319
    add-int/lit8 v5, v5, 0x1

    goto :goto_2fa

    .end local v5    # "o":I
    :cond_31c
    goto :goto_379

    .line 208
    .end local v8    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_31d
    :try_start_31d
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_31f} :catch_4e8

    const/4 v8, 0x4

    if-ne v5, v8, :cond_34a

    .line 209
    const/4 v5, 0x1

    move/from16 v9, v18

    .end local v18    # "toAddID":I
    .restart local v5    # "o":I
    .local v9, "toAddID":I
    :goto_325
    :try_start_325
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_348

    .line 210
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_33f} :catch_26f

    cmpg-float v8, v8, v18

    if-gez v8, :cond_344

    .line 211
    move v9, v5

    .line 209
    :cond_344
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x4

    goto :goto_325

    :cond_348
    move v8, v9

    .end local v5    # "o":I
    goto :goto_379

    .line 214
    .end local v9    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_34a
    :try_start_34a
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->iSortID:I
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_34a .. :try_end_34c} :catch_4e8

    const/4 v8, 0x5

    if-ne v5, v8, :cond_377

    .line 215
    const/4 v5, 0x1

    move/from16 v9, v18

    .end local v18    # "toAddID":I
    .restart local v5    # "o":I
    .restart local v9    # "toAddID":I
    :goto_352
    :try_start_352
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_375

    .line 216
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18
    :try_end_36c
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_36c} :catch_26f

    cmpl-float v8, v8, v18

    if-lez v8, :cond_371

    .line 217
    move v9, v5

    .line 215
    :cond_371
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x5

    goto :goto_352

    :cond_375
    move v8, v9

    goto :goto_379

    .line 214
    .end local v5    # "o":I
    .end local v9    # "toAddID":I
    .restart local v18    # "toAddID":I
    :cond_377
    move/from16 v8, v18

    .line 222
    .end local v18    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_379
    :try_start_379
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_37d} :catch_4e8

    add-int/2addr v5, v9

    .line 225
    .end local v19    # "buttonX":I
    .local v5, "buttonX":I
    :try_start_37e
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$4;
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_380} :catch_4de

    move/from16 v44, v13

    .end local v13    # "extraX":I
    .local v44, "extraX":I
    :try_start_382
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v45, v2, 0x1

    .end local v2    # "tID":I
    .local v45, "tID":I
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ". "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/lit8 v33, v2, 0x2

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v9

    move-object/from16 v30, p0

    move/from16 v34, v5

    move/from16 v35, v11

    move/from16 v36, v7

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_3e4
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_3e4} :catch_4d5

    add-int/2addr v2, v9

    add-int/2addr v2, v5

    .line 255
    .end local v5    # "buttonX":I
    .local v2, "buttonX":I
    :try_start_3e6
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$5;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_3e6 .. :try_end_405} :catch_4cc

    const/16 v29, 0x64

    const/16 v30, 0xa

    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v18, v18, v31

    if-gez v18, :cond_414

    move/from16 v32, v7

    const/16 v7, 0x64

    goto :goto_418

    :cond_414
    move/from16 v32, v7

    const/16 v7, 0xa

    .end local v7    # "r0W2":I
    .local v32, "r0W2":I
    :goto_418
    :try_start_418
    invoke-static {v13, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v23, v2

    move/from16 v24, v11

    move/from16 v25, v4

    move/from16 v26, v37

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v2, v5

    .line 285
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v13, v13, v31

    if-gez v13, :cond_474

    const/16 v13, 0x64

    goto :goto_476

    :cond_474
    const/16 v13, 0xa

    :goto_476
    invoke-static {v9, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v23, v2

    move/from16 v24, v11

    move/from16 v25, v6

    move/from16 v26, v37

    invoke-direct/range {v18 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v9

    add-int/2addr v11, v5

    .line 325
    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 326
    invoke-interface {v10, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_418 .. :try_end_4b5} :catch_4c5

    .line 328
    move/from16 v19, v2

    move/from16 v5, v27

    move/from16 v7, v32

    move/from16 v8, v42

    move/from16 v9, v43

    move/from16 v13, v44

    move/from16 v2, v45

    .end local v8    # "toAddID":I
    goto/16 :goto_216

    .line 329
    .end local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v45    # "tID":I
    :catch_4c5
    move-exception v0

    move v3, v2

    move v2, v11

    move/from16 v5, v27

    goto/16 :goto_52c

    .end local v32    # "r0W2":I
    .restart local v7    # "r0W2":I
    :catch_4cc
    move-exception v0

    move/from16 v32, v7

    move v3, v2

    move v2, v11

    move/from16 v5, v27

    .end local v7    # "r0W2":I
    .restart local v32    # "r0W2":I
    goto/16 :goto_52c

    .end local v2    # "buttonX":I
    .end local v32    # "r0W2":I
    .restart local v5    # "buttonX":I
    .restart local v7    # "r0W2":I
    :catch_4d5
    move-exception v0

    move/from16 v32, v7

    move v3, v5

    move v2, v11

    move/from16 v5, v27

    .end local v7    # "r0W2":I
    .restart local v32    # "r0W2":I
    goto/16 :goto_52c

    .end local v32    # "r0W2":I
    .end local v44    # "extraX":I
    .restart local v7    # "r0W2":I
    .restart local v13    # "extraX":I
    :catch_4de
    move-exception v0

    move/from16 v32, v7

    move/from16 v44, v13

    move v3, v5

    move v2, v11

    move/from16 v5, v27

    .end local v7    # "r0W2":I
    .end local v13    # "extraX":I
    .restart local v32    # "r0W2":I
    .restart local v44    # "extraX":I
    goto :goto_52c

    .end local v5    # "buttonX":I
    .end local v32    # "r0W2":I
    .end local v44    # "extraX":I
    .restart local v7    # "r0W2":I
    .restart local v13    # "extraX":I
    .restart local v19    # "buttonX":I
    :catch_4e8
    move-exception v0

    move/from16 v32, v7

    move/from16 v44, v13

    move v2, v11

    move/from16 v3, v19

    move/from16 v5, v27

    .end local v7    # "r0W2":I
    .end local v13    # "extraX":I
    .restart local v32    # "r0W2":I
    .restart local v44    # "extraX":I
    goto :goto_52c

    .line 181
    .end local v27    # "tNumOfProvinces":I
    .end local v32    # "r0W2":I
    .end local v42    # "r2W":I
    .end local v43    # "r1W":I
    .end local v44    # "extraX":I
    .local v2, "tID":I
    .restart local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "tNumOfProvinces":I
    .restart local v7    # "r0W2":I
    .local v8, "r2W":I
    .local v9, "r1W":I
    .restart local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v13    # "extraX":I
    :cond_4f3
    move/from16 v27, v5

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    .line 331
    .end local v2    # "tID":I
    .end local v3    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tNumOfProvinces":I
    .end local v7    # "r0W2":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "tProduction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v13    # "extraX":I
    .restart local v27    # "tNumOfProvinces":I
    .restart local v32    # "r0W2":I
    .restart local v42    # "r2W":I
    .restart local v43    # "r1W":I
    .restart local v44    # "extraX":I
    move/from16 v0, v27

    goto :goto_533

    .line 329
    .end local v27    # "tNumOfProvinces":I
    .end local v32    # "r0W2":I
    .end local v42    # "r2W":I
    .end local v43    # "r1W":I
    .end local v44    # "extraX":I
    .restart local v5    # "tNumOfProvinces":I
    .restart local v7    # "r0W2":I
    .restart local v8    # "r2W":I
    .restart local v9    # "r1W":I
    .restart local v13    # "extraX":I
    :catch_500
    move-exception v0

    move/from16 v27, v5

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    move v2, v11

    move/from16 v3, v19

    .end local v5    # "tNumOfProvinces":I
    .end local v7    # "r0W2":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v13    # "extraX":I
    .restart local v27    # "tNumOfProvinces":I
    .restart local v32    # "r0W2":I
    .restart local v42    # "r2W":I
    .restart local v43    # "r1W":I
    .restart local v44    # "extraX":I
    goto :goto_52c

    .end local v11    # "buttonY":I
    .end local v19    # "buttonX":I
    .end local v27    # "tNumOfProvinces":I
    .end local v32    # "r0W2":I
    .end local v42    # "r2W":I
    .end local v43    # "r1W":I
    .end local v44    # "extraX":I
    .local v3, "buttonX":I
    .restart local v5    # "tNumOfProvinces":I
    .restart local v7    # "r0W2":I
    .restart local v8    # "r2W":I
    .restart local v9    # "r1W":I
    .restart local v13    # "extraX":I
    .local v18, "buttonY":I
    :catch_50f
    move-exception v0

    move/from16 v19, v3

    move/from16 v27, v5

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    move/from16 v2, v18

    .end local v3    # "buttonX":I
    .end local v5    # "tNumOfProvinces":I
    .end local v7    # "r0W2":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v13    # "extraX":I
    .restart local v19    # "buttonX":I
    .restart local v27    # "tNumOfProvinces":I
    .restart local v32    # "r0W2":I
    .restart local v42    # "r2W":I
    .restart local v43    # "r1W":I
    .restart local v44    # "extraX":I
    goto :goto_52c

    .end local v18    # "buttonY":I
    .end local v19    # "buttonX":I
    .end local v27    # "tNumOfProvinces":I
    .end local v32    # "r0W2":I
    .end local v42    # "r2W":I
    .end local v43    # "r1W":I
    .end local v44    # "extraX":I
    .local v2, "buttonY":I
    .restart local v3    # "buttonX":I
    .restart local v5    # "tNumOfProvinces":I
    .restart local v7    # "r0W2":I
    .restart local v8    # "r2W":I
    .restart local v9    # "r1W":I
    .restart local v13    # "extraX":I
    :catch_51f
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v32, v7

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v13

    .line 330
    .end local v7    # "r0W2":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v13    # "extraX":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v32    # "r0W2":I
    .restart local v42    # "r2W":I
    .restart local v43    # "r1W":I
    .restart local v44    # "extraX":I
    :goto_52c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v11, v2

    move/from16 v19, v3

    move v0, v5

    .line 333
    .end local v2    # "buttonY":I
    .end local v3    # "buttonX":I
    .end local v5    # "tNumOfProvinces":I
    .local v0, "tNumOfProvinces":I
    .restart local v11    # "buttonY":I
    .restart local v19    # "buttonX":I
    :goto_533
    const/4 v2, 0x0

    .line 335
    .end local v11    # "buttonY":I
    .restart local v2    # "buttonY":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v11, v2

    .end local v2    # "buttonY":I
    .local v5, "iSize":I
    .restart local v11    # "buttonY":I
    :goto_53a
    if-ge v3, v5, :cond_572

    .line 336
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    if-ge v11, v2, :cond_56f

    .line 337
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    move v11, v2

    .line 335
    :cond_56f
    add-int/lit8 v3, v3, 0x1

    goto :goto_53a

    .line 341
    .end local v3    # "i":I
    .end local v5    # "iSize":I
    :cond_572
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v16

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 343
    .local v12, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v14, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$7;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoods;->iActiveResID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Provinces"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0x0

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v24, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move v13, v4

    .end local v4    # "r1W2":I
    .local v13, "r1W2":I
    move v4, v15

    move/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "r2W2":I
    .local v18, "r2W2":I
    move v6, v14

    move/from16 v20, v32

    .end local v32    # "r0W2":I
    .local v20, "r0W2":I
    move v7, v12

    move/from16 v21, v42

    .end local v42    # "r2W":I
    .local v21, "r2W":I
    move-object v8, v1

    move/from16 v22, v43

    .end local v43    # "r1W":I
    .local v22, "r1W":I
    move/from16 v23, v41

    .end local v41    # "r0W":I
    .local v23, "r0W":I
    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 360
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v3, p0

    iput v2, v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->scrollExtraPosX:I

    .line 361
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

    .line 365
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 366
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 369
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 370
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 372
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 373
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 374
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 376
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 377
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 388
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

    .line 381
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 382
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime:J

    .line 383
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGoodsProvinces;->lTime2:J

    .line 384
    return-void
.end method
