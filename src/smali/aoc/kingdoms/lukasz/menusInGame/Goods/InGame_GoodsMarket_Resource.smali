.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GoodsMarket_Resource.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I

.field public static iResourceID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    .line 40
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime2:J

    .line 45
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 40

    .line 47
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v1, v2

    .line 52
    .local v12, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 54
    .local v13, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v14

    .line 55
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v15, v1, v2

    .line 57
    .local v15, "menuY":I
    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 58
    .local v16, "buttonYPadding":I
    move v1, v12

    .line 59
    .local v1, "buttonX":I
    const/4 v2, 0x0

    .line 61
    .local v2, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 63
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v5

    float-to-int v3, v3

    .line 64
    .local v3, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v13, v6

    int-to-float v6, v6

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 66
    .local v6, "r1W":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$1;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v10, 0x1

    if-eqz v9, :cond_68

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v10, :cond_65

    goto :goto_68

    :cond_65
    const/16 v19, 0x0

    goto :goto_6a

    :cond_68
    :goto_68
    const/16 v19, 0x1

    :goto_6a
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v10, :cond_71

    const/16 v20, 0x1

    goto :goto_73

    :cond_71
    const/16 v20, 0x0

    :goto_73
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Name"

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v11, v11, 0x6

    add-int v26, v9, v11

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v17, v8

    move-object/from16 v18, p0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v1, v8

    .line 96
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$2;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v11, 0x3

    if-eq v9, v4, :cond_b7

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v11, :cond_b4

    goto :goto_b7

    :cond_b4
    const/16 v19, 0x0

    goto :goto_b9

    :cond_b7
    :goto_b7
    const/16 v19, 0x1

    :goto_b9
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v11, :cond_c0

    const/16 v20, 0x1

    goto :goto_c2

    :cond_c0
    const/16 v20, 0x0

    :goto_c2
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "ProductionEfficiency"

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v26, v9, v11

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v17, v8

    move-object/from16 v18, p0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v6

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v1, v8

    .line 126
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$3;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v11, 0x4

    const/4 v5, 0x5

    if-eq v9, v11, :cond_106

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v5, :cond_103

    goto :goto_106

    :cond_103
    const/16 v19, 0x0

    goto :goto_108

    :cond_106
    :goto_106
    const/16 v19, 0x1

    :goto_108
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v5, :cond_10f

    const/16 v20, 0x1

    goto :goto_111

    :cond_10f
    const/16 v20, 0x0

    :goto_111
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Production"

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v26, v9, v11

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v17, v8

    move-object/from16 v18, p0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v6

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v8

    add-int/2addr v1, v8

    .line 156
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$4;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v11, 0x7

    if-eq v9, v7, :cond_154

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v11, :cond_151

    goto :goto_154

    :cond_151
    const/16 v19, 0x0

    goto :goto_156

    :cond_154
    :goto_154
    const/16 v19, 0x1

    :goto_156
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v9, v11, :cond_15d

    const/16 v20, 0x1

    goto :goto_15f

    :cond_15d
    const/16 v20, 0x0

    :goto_15f
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Income"

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v26, v9, v11

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object/from16 v17, v8

    move-object/from16 v18, p0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v6

    invoke-direct/range {v17 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 189
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v8

    if-eqz v8, :cond_19f

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_1a1

    :cond_19f
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_1a1
    move/from16 v25, v8

    .line 190
    .local v25, "buttonH":I
    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v13, v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x5

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float v8, v8, v9

    float-to-int v11, v8

    .line 191
    .end local v3    # "r0W":I
    .local v11, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    sub-int/2addr v3, v8

    int-to-float v3, v3

    const v8, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v8

    float-to-int v9, v3

    .line 193
    .end local v6    # "r1W":I
    .local v9, "r1W":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    .line 195
    .local v8, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1ce
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v3, v6, :cond_205

    .line 196
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iResourceID:I

    if-ne v6, v7, :cond_201

    .line 197
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_201
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x6

    goto :goto_1ce

    .line 201
    .end local v3    # "i":I
    :cond_205
    const/16 v17, 0x1

    .line 203
    .local v17, "tID":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_56e

    move/from16 v3, v17

    .line 204
    .end local v17    # "tID":I
    .local v3, "tID":I
    :goto_20f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_55d

    .line 205
    const/4 v6, 0x0

    .line 207
    .local v6, "toAddID":I
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-nez v7, :cond_255

    .line 208
    const/4 v7, 0x1

    .local v7, "o":I
    :goto_21b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_252

    .line 209
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 210
    move v4, v7

    move v6, v4

    .line 208
    :cond_24d
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    goto :goto_21b

    :cond_252
    const/4 v7, 0x3

    .end local v7    # "o":I
    goto/16 :goto_3c3

    .line 214
    :cond_255
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    if-ne v4, v10, :cond_292

    .line 215
    const/4 v4, 0x1

    .local v4, "o":I
    :goto_25a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_28f

    .line 216
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28c

    .line 217
    move v5, v4

    move v6, v5

    .line 215
    :cond_28c
    add-int/lit8 v4, v4, 0x1

    goto :goto_25a

    :cond_28f
    const/4 v7, 0x3

    .end local v4    # "o":I
    goto/16 :goto_3c3

    .line 221
    :cond_292
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2c6

    .line 222
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_298
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2c3

    .line 223
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2c0

    .line 224
    move v5, v4

    move v6, v5

    .line 222
    :cond_2c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_298

    :cond_2c3
    const/4 v7, 0x3

    .end local v4    # "o":I
    goto/16 :goto_3c3

    .line 228
    :cond_2c6
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2f9

    .line 229
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_2cc
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f7

    .line 230
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v17

    cmpg-float v5, v5, v17

    if-gez v5, :cond_2f4

    .line 231
    move v5, v4

    move v6, v5

    .line 229
    :cond_2f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2cc

    .end local v4    # "o":I
    :cond_2f7
    goto/16 :goto_3c3

    .line 235
    :cond_2f9
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_32d

    .line 236
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_2ff
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_32b

    .line 237
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v17

    cmpl-float v5, v5, v17

    if-lez v5, :cond_327

    .line 238
    move v5, v4

    move v6, v5

    .line 236
    :cond_327
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    goto :goto_2ff

    .end local v4    # "o":I
    :cond_32b
    goto/16 :goto_3c3

    .line 242
    :cond_32d
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_360

    .line 243
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_333
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_35f

    .line 244
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v17

    cmpg-float v5, v5, v17

    if-gez v5, :cond_35b

    .line 245
    move v5, v4

    move v6, v5

    .line 243
    :cond_35b
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    goto :goto_333

    .end local v4    # "o":I
    :cond_35f
    goto :goto_3c3

    .line 249
    :cond_360
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_392

    .line 250
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_366
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_391

    .line 251
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v17

    cmpl-float v5, v5, v17

    if-lez v5, :cond_38d

    .line 252
    move v6, v4

    .line 250
    :cond_38d
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x6

    goto :goto_366

    .end local v4    # "o":I
    :cond_391
    goto :goto_3c3

    .line 256
    :cond_392
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iSortID:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3c3

    .line 257
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_398
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3c3

    .line 258
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v5

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v17

    cmpg-float v5, v5, v17

    if-gez v5, :cond_3bf

    .line 259
    move v6, v4

    .line 257
    :cond_3bf
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x7

    goto :goto_398

    .line 264
    .end local v4    # "o":I
    :cond_3c3
    :goto_3c3
    move v1, v12

    .line 266
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v38, v3, 0x1

    .end local v3    # "tID":I
    .local v38, "tID":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v3, :cond_40c

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_40e

    :cond_40c
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_40e
    move/from16 v20, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v21, v3, 0x2

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v17, v4

    move-object/from16 v18, p0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v11

    invoke-direct/range {v17 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 291
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$6;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v17

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v5, v17, v18

    const/16 v10, 0xa

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v32, -0x1

    move-object/from16 v28, v3

    move-object/from16 v29, p0

    move/from16 v33, v1

    move/from16 v34, v2

    move/from16 v35, v9

    move/from16 v36, v25

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
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

    add-int/2addr v1, v3

    .line 321
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$7;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v5

    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v28, v3

    move/from16 v33, v1

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
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

    add-int/2addr v1, v3

    .line 351
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v3

    .line 352
    .local v3, "fGold":F
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$8;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-lez v10, :cond_512

    const-string v7, "+"

    :cond_512
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x64

    invoke-static {v3, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v17, v4

    move-object/from16 v18, p0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v9

    move/from16 v23, v25

    invoke-direct/range {v17 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 382
    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    .end local v3    # "fGold":F
    .end local v6    # "toAddID":I
    move/from16 v3, v38

    const/4 v4, 0x2

    const/4 v5, 0x5

    goto/16 :goto_20f

    .line 204
    .end local v38    # "tID":I
    .local v3, "tID":I
    :cond_55d
    move/from16 v21, v1

    move v10, v2

    move/from16 v17, v3

    move-object/from16 v20, v8

    move/from16 v23, v9

    move/from16 v18, v11

    move/from16 v26, v12

    const/4 v12, 0x0

    const/16 v22, 0x3

    goto :goto_5b8

    .line 386
    .end local v3    # "tID":I
    .restart local v17    # "tID":I
    :cond_56e
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "None"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v12, 0x2

    sub-int v18, v13, v3

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v20, -0x1

    move-object v3, v7

    move-object/from16 v4, p0

    move/from16 v21, v1

    move-object v1, v7

    const/16 v22, 0x3

    .end local v1    # "buttonX":I
    .local v21, "buttonX":I
    move/from16 v7, v20

    move-object/from16 v20, v8

    .end local v8    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v12

    move/from16 v23, v9

    .end local v9    # "r1W":I
    .local v23, "r1W":I
    move v9, v2

    const/16 v24, 0x1

    move/from16 v10, v18

    move/from16 v18, v11

    move/from16 v26, v12

    const/4 v12, 0x0

    .end local v11    # "r0W":I
    .end local v12    # "paddingLeft":I
    .local v18, "r0W":I
    .local v26, "paddingLeft":I
    move/from16 v11, v19

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    move v10, v2

    .line 396
    .end local v2    # "buttonY":I
    .local v10, "buttonY":I
    :goto_5b8
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v15

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 398
    .local v11, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v12, v12, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$10;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iResourceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/4 v7, 0x0

    move-object v3, v2

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move v3, v14

    move v4, v15

    move v5, v13

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 411
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

    .line 415
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 416
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 419
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 420
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 421
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 423
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 424
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 428
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 429
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    .line 430
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;->lTime2:J

    .line 431
    return-void
.end method
