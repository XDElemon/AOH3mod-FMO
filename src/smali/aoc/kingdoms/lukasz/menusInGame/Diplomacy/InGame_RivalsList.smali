.class public Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RivalsList.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->lTime:J

    .line 48
    const/4 v0, 0x6

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 48

    .line 50
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 53
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v20, v0, v2

    .line 54
    .local v20, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v21

    .line 56
    .local v21, "titleHeight":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    .line 58
    .local v9, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v22, v0, v2

    .line 60
    .local v22, "menuY":I
    const/4 v2, 0x0

    .line 61
    .local v2, "buttonY":I
    move/from16 v3, v20

    .line 63
    .local v3, "buttonX":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->NUM_OF_RIVALS_TO_CHOOSE_FROM:I

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/RivalsManager;->buildRivals(II)Ljava/util/List;

    move-result-object v8

    .line 64
    .local v8, "rivals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 67
    .local v7, "rivalsSize":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 68
    .local v6, "iActiveCivID":I
    mul-int/lit8 v0, v20, 0x2

    sub-int v0, v9, v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int v23, v0, v4

    .line 69
    .local v23, "leftW":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v24, v0, v4

    .line 70
    .local v24, "lineH":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v25, v0, v4

    .line 71
    .local v25, "maxIconW":I
    const/4 v4, 0x0

    .line 74
    .local v4, "linesAdded":I
    const/4 v15, 0x1

    :try_start_8d
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_141

    .line 75
    add-int v0, v20, v23

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v11

    .line 77
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    .line 79
    .local v11, "data":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v12

    add-int/2addr v12, v3

    if-le v12, v9, :cond_ce

    .line 80
    add-int v12, v20, v23

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    .line 81
    .end local v3    # "buttonX":I
    .local v12, "buttonX":I
    add-int v2, v2, v24

    .line 82
    add-int/lit8 v4, v4, 0x1

    move v3, v12

    .line 85
    .end local v12    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_ce
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    iget v13, v11, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v2

    invoke-direct {v12, v13, v3, v14, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v15

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v3, v12

    .line 88
    .end local v11    # "data":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    goto :goto_b1

    .line 90
    :cond_ef
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Rivals"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->rivals:I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_fb} :catch_144

    mul-int v11, v24, v4

    sub-int v16, v2, v11

    add-int/lit8 v11, v4, 0x1

    mul-int v17, v24, v11

    mul-int/lit8 v11, v20, 0x2

    sub-int v19, v9, v11

    move-object v11, v0

    move/from16 v14, v20

    const/4 v5, 0x1

    move/from16 v15, v16

    move/from16 v16, v23

    move/from16 v18, v25

    :try_start_111
    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v4, 0x0

    .line 93
    add-int v0, v2, v24

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_13d} :catch_13f

    move v2, v0

    goto :goto_142

    .line 96
    :catch_13f
    move-exception v0

    goto :goto_146

    .line 74
    :cond_141
    const/4 v5, 0x1

    .line 98
    :goto_142
    move v0, v4

    goto :goto_14a

    .line 96
    :catch_144
    move-exception v0

    const/4 v5, 0x1

    .line 97
    .local v0, "ex":Ljava/lang/Exception;
    :goto_146
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v0, v4

    .line 100
    .end local v4    # "linesAdded":I
    .local v0, "linesAdded":I
    :goto_14a
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v9, v4

    int-to-float v4, v4

    const v11, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v11

    float-to-int v4, v4

    .line 101
    .local v4, "r0W":I
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v9, v12

    int-to-float v12, v12

    const v13, 0x3e4ccccd    # 0.2f

    mul-float v12, v12, v13

    float-to-int v12, v12

    .line 104
    .local v12, "r1W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 106
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$1;

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v13, 0x7

    const/4 v11, 0x6

    if-eq v15, v11, :cond_176

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v15, v13, :cond_173

    goto :goto_176

    :cond_173
    const/16 v28, 0x0

    goto :goto_178

    :cond_176
    :goto_176
    const/16 v28, 0x1

    :goto_178
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v15, v11, :cond_17f

    const/16 v29, 0x1

    goto :goto_181

    :cond_17f
    const/16 v29, 0x0

    :goto_181
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Ranking"

    invoke-virtual {v15, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v13, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v14

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v12

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    add-int/2addr v3, v13

    .line 137
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$2;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-eqz v14, :cond_1c3

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v14, v5, :cond_1c0

    goto :goto_1c3

    :cond_1c0
    const/16 v28, 0x0

    goto :goto_1c5

    :cond_1c3
    :goto_1c3
    const/16 v28, 0x1

    :goto_1c5
    sget v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v14, v5, :cond_1cc

    const/16 v29, 0x1

    goto :goto_1ce

    :cond_1cc
    const/16 v29, 0x0

    :goto_1ce
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Name"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v14, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v13

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    add-int/2addr v3, v13

    .line 168
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$3;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v15, 0x3

    const/4 v1, 0x2

    if-eq v14, v1, :cond_212

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v1, v15, :cond_20f

    goto :goto_212

    :cond_20f
    const/16 v28, 0x0

    goto :goto_214

    :cond_212
    :goto_212
    const/16 v28, 0x1

    :goto_214
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v1, v15, :cond_21b

    const/16 v29, 0x1

    goto :goto_21d

    :cond_21b
    const/16 v29, 0x0

    :goto_21d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Opinion"

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x6

    add-int v35, v1, v14

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v13

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v12

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v3, v1

    .line 199
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$4;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v14, 0x5

    const/4 v15, 0x4

    if-eq v13, v15, :cond_261

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v13, v14, :cond_25e

    goto :goto_261

    :cond_25e
    const/16 v28, 0x0

    goto :goto_263

    :cond_261
    :goto_261
    const/16 v28, 0x1

    :goto_263
    sget v13, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v13, v14, :cond_26a

    const/16 v29, 0x1

    goto :goto_26c

    :cond_26a
    const/16 v29, 0x0

    :goto_26c
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "RegimentsLimit"

    invoke-virtual {v13, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v13, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v1

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v2

    move/from16 v34, v12

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v13

    add-int/2addr v2, v1

    .line 231
    move/from16 v1, v20

    .line 233
    .end local v3    # "buttonX":I
    .local v1, "buttonX":I
    mul-int/lit8 v3, v20, 0x2

    sub-int v3, v9, v3

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x3

    mul-int/lit8 v13, v13, 0x3

    sub-int/2addr v3, v13

    int-to-float v3, v3

    const v13, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v13

    float-to-int v4, v3

    .line 234
    mul-int/lit8 v3, v20, 0x2

    sub-int v3, v9, v3

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x3

    sub-int/2addr v3, v13

    int-to-float v3, v3

    const v13, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v13

    float-to-int v3, v3

    .line 236
    .end local v12    # "r1W":I
    .local v3, "r1W":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v12

    if-eqz v12, :cond_2cf

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    goto :goto_2d1

    :cond_2cf
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_2d1
    move/from16 v44, v12

    .line 239
    .local v44, "buttonH":I
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_31b

    .line 240
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "None"

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v11, v20, 0x2

    sub-int v26, v9, v11

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v28, -0x1

    move-object v11, v13

    move/from16 v46, v0

    move-object v5, v13

    const/4 v0, 0x7

    .end local v0    # "linesAdded":I
    .local v46, "linesAdded":I
    move/from16 v13, v17

    move/from16 v14, v28

    move/from16 v15, v20

    move/from16 v16, v2

    move/from16 v17, v26

    move/from16 v18, v27

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v11

    add-int/2addr v2, v5

    move v11, v1

    move v12, v2

    goto :goto_320

    .line 239
    .end local v46    # "linesAdded":I
    .restart local v0    # "linesAdded":I
    :cond_31b
    move/from16 v46, v0

    const/4 v0, 0x7

    .end local v0    # "linesAdded":I
    .restart local v46    # "linesAdded":I
    move v11, v1

    move v12, v2

    .line 244
    .end local v1    # "buttonX":I
    .end local v2    # "buttonY":I
    .local v11, "buttonX":I
    .local v12, "buttonY":I
    :goto_320
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6be

    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_35d

    .line 248
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_32d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_359

    .line 249
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v13, v14, :cond_356

    .line 250
    move v1, v2

    .line 248
    :cond_356
    add-int/lit8 v2, v2, 0x1

    goto :goto_32d

    :cond_359
    const/4 v13, 0x3

    const/4 v14, 0x5

    .end local v2    # "o":I
    goto/16 :goto_504

    .line 254
    :cond_35d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-ne v2, v0, :cond_392

    .line 255
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_362
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_38e

    .line 256
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v13, v14, :cond_38b

    .line 257
    move v1, v2

    .line 255
    :cond_38b
    add-int/lit8 v2, v2, 0x1

    goto :goto_362

    :cond_38e
    const/4 v13, 0x3

    const/4 v14, 0x5

    .end local v2    # "o":I
    goto/16 :goto_504

    .line 261
    :cond_392
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    if-nez v2, :cond_3cf

    .line 262
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_397
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3cb

    .line 263
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3c8

    .line 264
    move v1, v2

    .line 262
    :cond_3c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_397

    :cond_3cb
    const/4 v13, 0x3

    const/4 v14, 0x5

    .end local v2    # "o":I
    goto/16 :goto_504

    .line 268
    :cond_3cf
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v13, 0x1

    if-ne v2, v13, :cond_40d

    .line 269
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3d5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_409

    .line 270
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_406

    .line 271
    move v1, v2

    .line 269
    :cond_406
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d5

    :cond_409
    const/4 v13, 0x3

    const/4 v14, 0x5

    .end local v2    # "o":I
    goto/16 :goto_504

    .line 275
    :cond_40d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v13, 0x2

    if-ne v2, v13, :cond_455

    .line 276
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_413
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_451

    .line 277
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v13

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_44e

    .line 278
    move v1, v2

    .line 276
    :cond_44e
    add-int/lit8 v2, v2, 0x1

    goto :goto_413

    :cond_451
    const/4 v13, 0x3

    const/4 v14, 0x5

    .end local v2    # "o":I
    goto/16 :goto_504

    .line 282
    :cond_455
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v13, 0x3

    if-ne v2, v13, :cond_49d

    .line 283
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_45b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_49b

    .line 284
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v14

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v15, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_497

    .line 285
    move v0, v2

    move v1, v0

    .line 283
    :cond_497
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x7

    goto :goto_45b

    :cond_49b
    const/4 v14, 0x5

    .end local v2    # "o":I
    goto :goto_504

    .line 289
    :cond_49d
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4d1

    .line 290
    const/4 v0, 0x1

    .local v0, "o":I
    :goto_4a3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_4cf

    .line 291
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-ge v14, v15, :cond_4cc

    .line 292
    move v1, v0

    .line 290
    :cond_4cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a3

    :cond_4cf
    const/4 v14, 0x5

    .end local v0    # "o":I
    goto :goto_504

    .line 296
    :cond_4d1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->iSortID:I

    const/4 v14, 0x5

    if-ne v0, v14, :cond_504

    .line 297
    const/4 v0, 0x1

    .restart local v0    # "o":I
    :goto_4d7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v0, v15, :cond_504

    .line 298
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    if-le v15, v2, :cond_500

    .line 299
    move v1, v0

    .line 297
    :cond_500
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    goto :goto_4d7

    .line 304
    .end local v0    # "o":I
    :cond_504
    :goto_504
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$5;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v40

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v45

    move-object/from16 v37, v0

    move-object/from16 v38, p0

    move/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v3

    invoke-direct/range {v37 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 382
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    .line 385
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/lit8 v30, v2, 0x2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v26, v0

    move-object/from16 v27, p0

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v4

    move/from16 v34, v44

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    .line 405
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$7;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v13}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    const/4 v13, 0x1

    invoke-static {v5, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v30, -0x1

    move-object/from16 v26, v0

    move/from16 v31, v11

    move/from16 v33, v3

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    .line 414
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    .line 415
    .local v0, "tDiff":F
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$8;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    cmpl-float v13, v0, v13

    if-lez v13, :cond_66b

    const-string v15, "+"

    :cond_66b
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x1

    invoke-static {v0, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "%"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v30, -0x1

    move-object/from16 v26, v2

    move-object/from16 v27, p0

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v3

    move/from16 v34, v44

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    move/from16 v11, v20

    .line 423
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v13

    add-int/2addr v12, v2

    .line 425
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    .end local v0    # "tDiff":F
    .end local v1    # "toAddID":I
    const/4 v0, 0x7

    goto/16 :goto_320

    .line 429
    :cond_6be
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    sub-int v0, v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 431
    .local v0, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v9, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ChooseYourRivals"

    invoke-virtual {v5, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " / "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v16, 0x1

    move-object v13, v2

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v5, 0x2

    div-int/2addr v1, v5

    div-int/lit8 v5, v9, 0x2

    sub-int v5, v1, v5

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move v15, v3

    .end local v3    # "r1W":I
    .local v15, "r1W":I
    move v3, v5

    move/from16 v16, v4

    .end local v4    # "r0W":I
    .local v16, "r0W":I
    move/from16 v4, v22

    move v5, v9

    move/from16 v17, v6

    .end local v6    # "iActiveCivID":I
    .local v17, "iActiveCivID":I
    move v6, v0

    move/from16 v18, v7

    .end local v7    # "rivalsSize":I
    .local v18, "rivalsSize":I
    move-object v7, v10

    move-object/from16 v19, v8

    .end local v8    # "rivals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "rivals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v13

    move v13, v9

    .end local v9    # "menuWidth":I
    .local v13, "menuWidth":I
    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 439
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

    .line 443
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    .line 444
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 447
    :cond_28
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 448
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 449
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->outlinerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 451
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 452
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 456
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 457
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_RivalsList;->lTime:J

    .line 458
    return-void
.end method
