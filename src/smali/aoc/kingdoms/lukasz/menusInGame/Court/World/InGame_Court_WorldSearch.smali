.class public Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_WorldSearch.java"


# static fields
.field public static iSortID:I

.field public static sSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 59

    .line 58
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 61
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v23, v0, v1

    .line 62
    .local v23, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    .line 64
    .local v9, "paddingLeft2":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    .line 67
    .local v8, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v1

    add-int v24, v0, v1

    .line 68
    .local v24, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    .line 70
    .local v1, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v25, v0, 0x2

    .line 71
    .local v25, "buttonYPadding":I
    move/from16 v0, v23

    .line 72
    .local v0, "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 75
    .local v3, "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v5, v23, 0x2

    sub-int v17, v8, v5

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    add-int v19, v5, v6

    const/16 v20, 0x1

    move-object v11, v4

    move-object/from16 v12, p0

    move/from16 v15, v23

    move/from16 v16, v3

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 108
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Search"

    invoke-virtual {v11, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v11, v23, 0x2

    sub-int v18, v8, v11

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v11, v4

    move-object/from16 v26, v15

    move v15, v6

    move/from16 v16, v23

    move/from16 v17, v3

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 121
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_df

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_e1

    :cond_df
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_e1
    move/from16 v27, v4

    .line 123
    .local v27, "buttonH":I
    mul-int/lit8 v4, v23, 0x2

    sub-int v4, v8, v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/lit8 v6, v6, 0x6

    sub-int/2addr v4, v6

    const/4 v6, 0x7

    div-int/lit8 v37, v4, 0x7

    .line 124
    .local v37, "statsRightW":I
    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 126
    .local v38, "statsRightH":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v27, v4

    add-int v4, v4, v38

    .line 129
    .local v4, "emptyBGH":I
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v8, v11

    int-to-float v11, v11

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    float-to-int v14, v11

    .line 130
    .local v14, "r0W":I
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v8, v11

    int-to-float v11, v11

    const/high16 v12, 0x40a00000    # 5.0f

    div-float/2addr v11, v12

    float-to-int v13, v11

    .line 133
    .local v13, "r1W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 135
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$3;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-eqz v11, :cond_11e

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v11, v5, :cond_11b

    goto :goto_11e

    :cond_11b
    const/16 v16, 0x0

    goto :goto_120

    :cond_11e
    :goto_11e
    const/16 v16, 0x1

    :goto_120
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v11, v5, :cond_127

    const/16 v17, 0x1

    goto :goto_129

    :cond_127
    const/16 v17, 0x0

    :goto_129
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Name"

    invoke-virtual {v11, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v18, 0x6

    add-int v20, v11, v18

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v18, -0x1

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, p0

    move/from16 v52, v13

    .end local v13    # "r1W":I
    .local v52, "r1W":I
    move/from16 v13, v16

    move/from16 v53, v14

    .end local v14    # "r0W":I
    .local v53, "r0W":I
    move/from16 v14, v17

    move-object v15, v6

    move/from16 v16, v18

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v53

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 166
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$4;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v15, 0x3

    if-eq v7, v2, :cond_176

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v15, :cond_174

    goto :goto_176

    :cond_174
    const/4 v13, 0x0

    goto :goto_177

    :cond_176
    :goto_176
    const/4 v13, 0x1

    :goto_177
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v15, :cond_17d

    const/4 v14, 0x1

    goto :goto_17e

    :cond_17d
    const/4 v14, 0x0

    :goto_17e
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Population"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x6

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v16, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move-object v15, v7

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v53

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 197
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$5;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v15, 0x5

    const/4 v11, 0x4

    if-eq v7, v11, :cond_1c2

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v15, :cond_1c0

    goto :goto_1c2

    :cond_1c0
    const/4 v13, 0x0

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    const/4 v13, 0x1

    :goto_1c3
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v15, :cond_1c9

    const/4 v14, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v14, 0x0

    :goto_1ca
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Income"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v16, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move-object v15, v7

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v53

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 228
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$6;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-eq v7, v2, :cond_20c

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v11, 0x7

    if-ne v7, v11, :cond_20a

    goto :goto_20d

    :cond_20a
    const/4 v13, 0x0

    goto :goto_20e

    :cond_20c
    const/4 v11, 0x7

    :goto_20d
    const/4 v13, 0x1

    :goto_20e
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v11, :cond_214

    const/4 v14, 0x1

    goto :goto_215

    :cond_214
    const/4 v14, 0x0

    :goto_215
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "TaxEfficiency"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v20, v7, v11

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v16, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v53

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 260
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 263
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$7;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v15, 0x8

    const/16 v14, 0x9

    if-eq v7, v15, :cond_25c

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v14, :cond_259

    goto :goto_25c

    :cond_259
    const/16 v41, 0x0

    goto :goto_25e

    :cond_25c
    :goto_25c
    const/16 v41, 0x1

    :goto_25e
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v14, :cond_265

    const/16 v42, 0x1

    goto :goto_267

    :cond_265
    const/16 v42, 0x0

    :goto_267
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GrowthRate"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v48, v7, v11

    sget v49, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v44, -0x1

    move-object/from16 v39, v6

    move-object/from16 v40, p0

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v52

    invoke-direct/range {v39 .. v49}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 295
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$8;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v13, 0xb

    const/16 v12, 0xa

    if-eq v7, v12, :cond_2ad

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_2aa

    goto :goto_2ad

    :cond_2aa
    const/16 v41, 0x0

    goto :goto_2af

    :cond_2ad
    :goto_2ad
    const/16 v41, 0x1

    :goto_2af
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_2b6

    const/16 v42, 0x1

    goto :goto_2b8

    :cond_2b6
    const/16 v42, 0x0

    :goto_2b8
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Manpower"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v48, v7, v11

    sget v49, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v44, -0x1

    move-object/from16 v39, v6

    move-object/from16 v40, p0

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v52

    invoke-direct/range {v39 .. v49}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 326
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$9;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0xc

    const/16 v13, 0xd

    if-eq v7, v11, :cond_2fe

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_2fb

    goto :goto_2fe

    :cond_2fb
    const/16 v41, 0x0

    goto :goto_300

    :cond_2fe
    :goto_2fe
    const/16 v41, 0x1

    :goto_300
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_307

    const/16 v42, 0x1

    goto :goto_309

    :cond_307
    const/16 v42, 0x0

    :goto_309
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Infrastructure"

    invoke-virtual {v7, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x6

    add-int v48, v7, v13

    sget v49, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v44, -0x1

    move-object/from16 v39, v6

    move-object/from16 v40, p0

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v52

    invoke-direct/range {v39 .. v49}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 357
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$10;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v13, 0xe

    const/16 v11, 0xf

    if-eq v7, v13, :cond_34f

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v11, :cond_34c

    goto :goto_34f

    :cond_34c
    const/16 v41, 0x0

    goto :goto_351

    :cond_34f
    :goto_34f
    const/16 v41, 0x1

    :goto_351
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v11, :cond_358

    const/16 v42, 0x1

    goto :goto_35a

    :cond_358
    const/16 v42, 0x0

    :goto_35a
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Economy"

    invoke-virtual {v7, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v48, v7, v11

    sget v49, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v44, -0x1

    move-object/from16 v39, v6

    move-object/from16 v40, p0

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v52

    invoke-direct/range {v39 .. v49}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 388
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$11;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0x10

    const/16 v13, 0x11

    if-eq v7, v11, :cond_3a0

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_39d

    goto :goto_3a0

    :cond_39d
    const/16 v41, 0x0

    goto :goto_3a2

    :cond_3a0
    :goto_3a0
    const/16 v41, 0x1

    :goto_3a2
    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v7, v13, :cond_3a9

    const/16 v42, 0x1

    goto :goto_3ab

    :cond_3a9
    const/16 v42, 0x0

    :goto_3ab
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Resource"

    invoke-virtual {v7, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x6

    add-int v48, v7, v13

    sget v49, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v44, -0x1

    move-object/from16 v39, v6

    move-object/from16 v40, p0

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v52

    invoke-direct/range {v39 .. v49}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 421
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 423
    move/from16 v6, v23

    .line 427
    .end local v0    # "buttonX":I
    .local v6, "buttonX":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 429
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44b

    .line 430
    const/4 v13, -0x1

    .line 433
    .local v13, "num":I
    :try_start_403
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_409} :catch_40b

    move v13, v0

    .line 436
    goto :goto_40c

    .line 434
    :catch_40b
    move-exception v0

    .line 438
    :goto_40c
    if-ltz v13, :cond_41c

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge v13, v0, :cond_41c

    .line 439
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44a

    .line 442
    :cond_41c
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "tSearch":Ljava/lang/String;
    const/16 v22, 0x0

    move/from16 v11, v22

    .local v11, "i":I
    :goto_426
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_44a

    .line 445
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_445

    .line 446
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_445
    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0xa

    goto :goto_426

    .line 450
    .end local v0    # "tSearch":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v13    # "num":I
    :cond_44a
    :goto_44a
    goto :goto_45c

    .line 452
    :cond_44b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v0, v11, :cond_45c

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_44c

    .line 457
    .end local v0    # "i":I
    :cond_45c
    :goto_45c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b74

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "numOfAdded":I
    :goto_463
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_b6c

    add-int/lit8 v39, v0, 0x1

    .end local v0    # "numOfAdded":I
    .local v39, "numOfAdded":I
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->COURT_PROVINCES_LIMIT:I

    if-ge v0, v11, :cond_b65

    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-nez v11, :cond_4b0

    .line 464
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_477
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4ab

    .line 465
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v12, :cond_4a8

    .line 466
    move v0, v11

    .line 464
    :cond_4a8
    add-int/lit8 v11, v11, 0x1

    goto :goto_477

    :cond_4ab
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v11    # "o":I
    goto/16 :goto_908

    .line 469
    :cond_4b0
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v11, v5, :cond_4ee

    .line 470
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_4b5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4e9

    .line 471
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v12, :cond_4e6

    .line 472
    move v0, v11

    .line 470
    :cond_4e6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b5

    :cond_4e9
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v11    # "o":I
    goto/16 :goto_908

    .line 475
    :cond_4ee
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_529

    .line 476
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_4f4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_524

    .line 477
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v13

    if-le v12, v13, :cond_521

    .line 478
    move v0, v11

    .line 476
    :cond_521
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f4

    :cond_524
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v11    # "o":I
    goto/16 :goto_908

    .line 481
    :cond_529
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_565

    .line 482
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_52f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_560

    .line 483
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v13

    if-ge v12, v13, :cond_55c

    .line 484
    move v0, v11

    .line 482
    :cond_55c
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x3

    goto :goto_52f

    :cond_560
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v11    # "o":I
    goto/16 :goto_908

    .line 487
    :cond_565
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_5c6

    .line 488
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_56b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5c1

    .line 489
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v12, v13

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v13

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v13, v5

    cmpl-float v5, v12, v13

    if-lez v5, :cond_5bc

    .line 490
    move v0, v11

    .line 488
    :cond_5bc
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x4

    goto :goto_56b

    :cond_5c1
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v11    # "o":I
    goto/16 :goto_908

    .line 493
    :cond_5c6
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v13, 0x5

    if-ne v5, v13, :cond_626

    .line 494
    const/4 v5, 0x1

    .local v5, "o":I
    :goto_5cc
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_621

    .line 495
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v11

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v11, v12

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_61d

    .line 496
    move v0, v5

    .line 494
    :cond_61d
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x5

    goto :goto_5cc

    :cond_621
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v5    # "o":I
    goto/16 :goto_908

    .line 499
    :cond_626
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v5, v2, :cond_662

    .line 500
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_62b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_65d

    .line 501
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_65a

    .line 502
    move v0, v5

    .line 500
    :cond_65a
    add-int/lit8 v5, v5, 0x1

    goto :goto_62b

    :cond_65d
    const/16 v12, 0xa

    const/4 v13, 0x7

    .end local v5    # "o":I
    goto/16 :goto_908

    .line 505
    :cond_662
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/4 v13, 0x7

    if-ne v5, v13, :cond_69e

    .line 506
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_668
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_69a

    .line 507
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_697

    .line 508
    move v0, v5

    .line 506
    :cond_697
    add-int/lit8 v5, v5, 0x1

    goto :goto_668

    :cond_69a
    const/16 v12, 0xa

    .end local v5    # "o":I
    goto/16 :goto_908

    .line 511
    :cond_69e
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v5, v15, :cond_6d9

    .line 512
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_6a3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_6d5

    .line 513
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6d2

    .line 514
    move v0, v5

    .line 512
    :cond_6d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a3

    :cond_6d5
    const/16 v12, 0xa

    .end local v5    # "o":I
    goto/16 :goto_908

    .line 517
    :cond_6d9
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    if-ne v5, v14, :cond_714

    .line 518
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_6de
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_710

    .line 519
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_70d

    .line 520
    move v0, v5

    .line 518
    :cond_70d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6de

    :cond_710
    const/16 v12, 0xa

    .end local v5    # "o":I
    goto/16 :goto_908

    .line 523
    :cond_714
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v12, 0xa

    if-ne v5, v12, :cond_74f

    .line 524
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_71b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_74d

    .line 525
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v22

    cmpl-float v11, v11, v22

    if-lez v11, :cond_74a

    .line 526
    move v0, v5

    .line 524
    :cond_74a
    add-int/lit8 v5, v5, 0x1

    goto :goto_71b

    .end local v5    # "o":I
    :cond_74d
    goto/16 :goto_908

    .line 529
    :cond_74f
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0xb

    if-ne v5, v11, :cond_78b

    .line 530
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_756
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_789

    .line 531
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v16

    cmpg-float v2, v2, v16

    if-gez v2, :cond_785

    .line 532
    move v0, v5

    .line 530
    :cond_785
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x6

    goto :goto_756

    .end local v5    # "o":I
    :cond_789
    goto/16 :goto_908

    .line 535
    :cond_78b
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v5, 0xc

    if-ne v2, v5, :cond_7c8

    .line 536
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_792
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7c6

    .line 537
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v11

    if-le v5, v11, :cond_7bf

    .line 538
    move v0, v2

    .line 536
    :cond_7bf
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0xc

    const/16 v11, 0xb

    goto :goto_792

    .end local v2    # "o":I
    :cond_7c6
    goto/16 :goto_908

    .line 541
    :cond_7c8
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v5, 0xd

    if-ne v2, v5, :cond_803

    .line 542
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_7cf
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_801

    .line 543
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v5

    if-ge v11, v5, :cond_7fc

    .line 544
    move v0, v2

    .line 542
    :cond_7fc
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0xd

    goto :goto_7cf

    .end local v2    # "o":I
    :cond_801
    goto/16 :goto_908

    .line 547
    :cond_803
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v5, 0xe

    if-ne v2, v5, :cond_83e

    .line 548
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_80a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_83c

    .line 549
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v16

    cmpl-float v11, v11, v16

    if-lez v11, :cond_839

    .line 550
    move v0, v2

    .line 548
    :cond_839
    add-int/lit8 v2, v2, 0x1

    goto :goto_80a

    .end local v2    # "o":I
    :cond_83c
    goto/16 :goto_908

    .line 553
    :cond_83e
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v11, 0xf

    if-ne v2, v11, :cond_87b

    .line 554
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_845
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_879

    .line 555
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v16

    cmpg-float v5, v5, v16

    if-gez v5, :cond_874

    .line 556
    move v0, v2

    .line 554
    :cond_874
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0xe

    goto :goto_845

    .end local v2    # "o":I
    :cond_879
    goto/16 :goto_908

    .line 559
    :cond_87b
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v5, 0x10

    if-ne v2, v5, :cond_8c3

    .line 560
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_882
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8c2

    .line 561
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8bb

    .line 562
    move v0, v2

    .line 560
    :cond_8bb
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x10

    const/16 v11, 0xf

    goto :goto_882

    .end local v2    # "o":I
    :cond_8c2
    goto :goto_908

    .line 565
    :cond_8c3
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->iSortID:I

    const/16 v5, 0x11

    if-ne v2, v5, :cond_908

    .line 566
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_8ca
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_908

    .line 567
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_903

    .line 568
    move v0, v2

    .line 566
    :cond_903
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x11

    goto :goto_8ca

    .line 573
    .end local v2    # "o":I
    :cond_908
    :goto_908
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 576
    .local v2, "nProvinceID":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$12;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v16

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v41, 0x2

    mul-int/lit8 v30, v11, 0x2

    mul-int/lit8 v11, v23, 0x2

    sub-int v31, v8, v11

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->population:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v6

    .end local v6    # "buttonX":I
    .local v33, "buttonX":I
    const-string v6, ""

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v18, 0xb

    const/16 v42, 0x10

    const/16 v43, 0xc

    const/16 v44, 0xf

    move-object v11, v5

    move/from16 v45, v1

    const/16 v1, 0xa

    .end local v1    # "menuY":I
    .local v45, "menuY":I
    move-object/from16 v12, p0

    const/16 v46, 0xe

    const/16 v47, 0x11

    const/16 v48, 0xd

    const/16 v49, 0xb

    const/16 v50, 0x5

    const/16 v51, 0x3

    const/16 v54, 0x7

    const/16 v55, 0x4

    move-object/from16 v13, v16

    const/16 v56, 0x9

    move/from16 v14, v29

    const/16 v57, 0x8

    move/from16 v15, v30

    move/from16 v16, v23

    move/from16 v17, v3

    move/from16 v18, v31

    move/from16 v19, v27

    move/from16 v20, v2

    move/from16 v21, v32

    move-object/from16 v22, v34

    invoke-direct/range {v11 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 630
    move/from16 v5, v23

    .line 631
    .end local v33    # "buttonX":I
    .local v5, "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$13;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v13

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v13, v14

    const/16 v14, 0x64

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v28, v11

    move-object/from16 v29, p0

    move/from16 v30, v2

    move/from16 v33, v5

    move/from16 v34, v3

    move/from16 v35, v37

    move/from16 v36, v38

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 639
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$14;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v13

    invoke-static {v13, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object/from16 v28, v11

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 664
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$15;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v14

    invoke-static {v14, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object/from16 v28, v11

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 689
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;

    const-string v31, "1"

    sget v32, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object/from16 v28, v11

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 714
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$17;

    const-string v31, ""

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object/from16 v28, v11

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 739
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    invoke-static {v12, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object/from16 v28, v11

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v11

    add-int/2addr v5, v6

    .line 764
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$19;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v31

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v32

    move-object/from16 v28, v6

    move/from16 v33, v5

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;ILjava/lang/String;IIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v12

    add-int/2addr v5, v6

    .line 786
    move/from16 v6, v23

    .line 787
    .end local v5    # "buttonX":I
    .restart local v6    # "buttonX":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v11

    add-int/2addr v3, v5

    .line 789
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v11, v3, v4

    mul-int/lit8 v12, v9, 0x2

    sub-int v12, v8, v12

    invoke-direct {v5, v9, v11, v12, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    .line 793
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 794
    .end local v0    # "toAddID":I
    .end local v2    # "nProvinceID":I
    move/from16 v0, v39

    move/from16 v1, v45

    const/4 v2, 0x6

    const/4 v5, 0x1

    const/16 v14, 0x9

    const/16 v15, 0x8

    goto/16 :goto_463

    .line 460
    .end local v45    # "menuY":I
    .restart local v1    # "menuY":I
    :cond_b65
    move/from16 v45, v1

    move/from16 v33, v6

    const/16 v51, 0x3

    .end local v1    # "menuY":I
    .end local v6    # "buttonX":I
    .restart local v33    # "buttonX":I
    .restart local v45    # "menuY":I
    goto :goto_b72

    .end local v33    # "buttonX":I
    .end local v39    # "numOfAdded":I
    .end local v45    # "menuY":I
    .local v0, "numOfAdded":I
    .restart local v1    # "menuY":I
    .restart local v6    # "buttonX":I
    :cond_b6c
    move/from16 v45, v1

    move/from16 v33, v6

    const/16 v51, 0x3

    .line 795
    .end local v0    # "numOfAdded":I
    .end local v1    # "menuY":I
    .end local v6    # "buttonX":I
    .restart local v33    # "buttonX":I
    .restart local v45    # "menuY":I
    :goto_b72
    move v0, v3

    goto :goto_bad

    .line 797
    .end local v33    # "buttonX":I
    .end local v45    # "menuY":I
    .restart local v1    # "menuY":I
    .restart local v6    # "buttonX":I
    :cond_b74
    move/from16 v45, v1

    const/16 v51, 0x3

    .end local v1    # "menuY":I
    .restart local v45    # "menuY":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v1, v23, 0x2

    sub-int v17, v8, v1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v14, -0x1

    move-object v11, v0

    move/from16 v15, v23

    move/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    move v0, v3

    move/from16 v33, v6

    .line 806
    .end local v3    # "buttonY":I
    .end local v6    # "buttonX":I
    .local v0, "buttonY":I
    .restart local v33    # "buttonX":I
    :goto_bad
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v11, v45, v1

    .line 807
    .end local v45    # "menuY":I
    .local v11, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v11

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 809
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v8, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v24

    move v15, v4

    .end local v4    # "emptyBGH":I
    .local v15, "emptyBGH":I
    move v4, v11

    move v5, v8

    move v6, v12

    move-object/from16 v16, v7

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, v10

    move/from16 v17, v8

    .end local v8    # "menuWidth":I
    .local v17, "menuWidth":I
    move v8, v13

    move v13, v9

    .end local v9    # "paddingLeft2":I
    .local v13, "paddingLeft2":I
    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 813
    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->drawScrollPositionAlways:Z

    .line 815
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v4, v26

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 816
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 850
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 852
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 853
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 820
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 821
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 824
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 825
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 826
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldSearch;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 828
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 829
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 844
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 845
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 846
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 833
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 834
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 835
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 837
    if-nez p1, :cond_12

    .line 838
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 840
    :cond_12
    return-void
.end method
