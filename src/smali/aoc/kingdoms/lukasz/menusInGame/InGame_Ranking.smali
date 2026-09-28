.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Ranking.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static sSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    .line 56
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime2:J

    .line 58
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    .line 60
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 52

    .line 62
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v13, v1, v3

    .line 66
    .local v13, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v14

    .line 68
    .local v14, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    .line 70
    .local v15, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v16

    .line 71
    .local v16, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v17, v1, v3

    .line 73
    .local v17, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 74
    .local v1, "buttonY":I
    sget v18, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 76
    .local v18, "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v15, v3

    int-to-float v3, v3

    const v19, 0x3e19999a    # 0.15f

    mul-float v3, v3, v19

    float-to-int v3, v3

    .line 77
    .local v3, "r0W0":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    int-to-float v4, v4

    const v31, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v31

    float-to-int v12, v4

    .line 78
    .local v12, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    float-to-int v11, v4

    .line 80
    .local v11, "r1W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x4

    mul-int/lit8 v5, v5, 0x4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    float-to-int v9, v4

    .line 81
    .local v9, "c0W":I
    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 82
    .local v32, "buttonH":I
    mul-int/lit8 v4, v13, 0x2

    sub-int v4, v15, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v33, v4, 0x2

    .line 84
    .local v33, "searchButtonW":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Search"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v4, 0x2

    move-object v4, v8

    move-object/from16 v5, p0

    move-object v2, v7

    move/from16 v7, v20

    move/from16 v20, v3

    move-object v3, v8

    .end local v3    # "r0W0":I
    .local v20, "r0W0":I
    move/from16 v8, v21

    move/from16 v34, v9

    .end local v9    # "c0W":I
    .local v34, "c0W":I
    move v9, v13

    move/from16 v35, v14

    const/4 v14, 0x4

    .end local v14    # "titleHeight":I
    .local v35, "titleHeight":I
    move v10, v1

    move/from16 v36, v11

    .end local v11    # "r1W":I
    .local v36, "r1W":I
    move/from16 v11, v33

    move/from16 v37, v12

    .end local v12    # "r0W":I
    .local v37, "r0W":I
    move/from16 v12, v32

    invoke-direct/range {v4 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, "civsInGame":I
    const/4 v4, 0x0

    move v12, v3

    .end local v3    # "civsInGame":I
    .local v4, "i":I
    .local v12, "civsInGame":I
    :goto_cf
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v4, v3, :cond_e4

    .line 99
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_e1

    .line 100
    add-int/lit8 v12, v12, 0x1

    .line 98
    :cond_e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 104
    .end local v4    # "i":I
    :cond_e4
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Style;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 105
    const-string v5, "Civilizations"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->council:I

    add-int v2, v13, v33

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v2, v3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 108
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    move/from16 v38, v20

    .end local v20    # "r0W0":I
    .local v38, "r0W0":I
    move-object v3, v11

    move v8, v1

    move/from16 v9, v33

    move-object/from16 v39, v10

    move/from16 v10, v32

    move-object v14, v11

    move v11, v2

    invoke-direct/range {v3 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses_Style;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 104
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 114
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 115
    .end local v18    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$2;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-eqz v5, :cond_15a

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v3, :cond_157

    goto :goto_15a

    :cond_157
    const/16 v22, 0x0

    goto :goto_15c

    :cond_15a
    :goto_15a
    const/16 v22, 0x1

    :goto_15c
    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v3, :cond_163

    const/16 v23, 0x1

    goto :goto_165

    :cond_163
    const/16 v23, 0x0

    :goto_165
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Ranking"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int v29, v5, v6

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v25, -0x1

    move-object/from16 v20, v4

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v38

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 146
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$3;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1aa

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v6, :cond_1a7

    goto :goto_1aa

    :cond_1a7
    const/16 v22, 0x0

    goto :goto_1ac

    :cond_1aa
    :goto_1aa
    const/16 v22, 0x1

    :goto_1ac
    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v6, :cond_1b3

    const/16 v23, 0x1

    goto :goto_1b5

    :cond_1b3
    const/16 v23, 0x0

    :goto_1b5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Name"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v29, v5, v8

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v25, -0x1

    move-object/from16 v20, v4

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v37

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 176
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$4;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v5, v9, :cond_1f9

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v8, :cond_1f6

    goto :goto_1f9

    :cond_1f6
    const/16 v22, 0x0

    goto :goto_1fb

    :cond_1f9
    :goto_1f9
    const/16 v22, 0x1

    :goto_1fb
    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v8, :cond_202

    const/16 v23, 0x1

    goto :goto_204

    :cond_202
    const/16 v23, 0x0

    :goto_204
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Prestige"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v29, v5, v9

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v25, -0x1

    move-object/from16 v20, v4

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v36

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 206
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$5;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v9, 0x7

    if-eq v5, v7, :cond_247

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v9, :cond_244

    goto :goto_247

    :cond_244
    const/16 v22, 0x0

    goto :goto_249

    :cond_247
    :goto_247
    const/16 v22, 0x1

    :goto_249
    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v9, :cond_250

    const/16 v23, 0x1

    goto :goto_252

    :cond_250
    const/16 v23, 0x0

    :goto_252
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Economy"

    invoke-virtual {v5, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v29, v5, v11

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v25, -0x1

    move-object/from16 v20, v4

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v36

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 236
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$6;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/16 v11, 0x8

    const/16 v14, 0x9

    if-eq v5, v11, :cond_298

    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v14, :cond_295

    goto :goto_298

    :cond_295
    const/16 v22, 0x0

    goto :goto_29a

    :cond_298
    :goto_298
    const/16 v22, 0x1

    :goto_29a
    sget v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-ne v5, v14, :cond_2a1

    const/16 v23, 0x1

    goto :goto_2a3

    :cond_2a1
    const/16 v23, 0x0

    :goto_2a3
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Population"

    invoke-virtual {v5, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x6

    add-int v29, v5, v10

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v25, -0x1

    move-object/from16 v20, v4

    move-object/from16 v21, p0

    move/from16 v26, v2

    move/from16 v27, v1

    move/from16 v28, v36

    invoke-direct/range {v20 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 268
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x6

    sub-int/2addr v4, v10

    int-to-float v4, v4

    mul-float v4, v4, v19

    float-to-int v10, v4

    .line 269
    .end local v38    # "r0W0":I
    .local v10, "r0W0":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v15, v4

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v20, v20, 0x6

    sub-int v4, v4, v20

    int-to-float v4, v4

    mul-float v4, v4, v31

    float-to-int v4, v4

    .line 270
    .end local v37    # "r0W":I
    .local v4, "r0W":I
    sget v20, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v20, v20, 0x2

    sub-int v5, v15, v20

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v20, v20, 0x6

    sub-int v5, v5, v20

    int-to-float v5, v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    .line 272
    .end local v36    # "r1W":I
    .local v5, "r1W":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v19

    if-eqz v19, :cond_313

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_315

    :cond_313
    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_315
    move/from16 v27, v19

    .line 274
    .end local v32    # "buttonH":I
    .local v27, "buttonH":I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v19

    .line 275
    .local v29, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v19

    .line 276
    .local v30, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v19

    .line 278
    .local v31, "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3af

    .line 279
    sget-object v19, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 281
    .local v14, "tempSearch":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v11, v19

    .local v11, "i":I
    :goto_33e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v9

    if-ge v11, v9, :cond_3a8

    .line 282
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-lez v9, :cond_395

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ltz v9, :cond_395

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v7, -0x1

    if-eq v9, v7, :cond_395

    .line 283
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v9, v29

    .end local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v8, v30

    .end local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v8, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v6, v31

    .end local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v6, "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39b

    .line 282
    .end local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_395
    move-object/from16 v9, v29

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    .line 281
    .end local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_39b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v31, v6

    move-object/from16 v30, v8

    move-object/from16 v29, v9

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x7

    goto :goto_33e

    .end local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3a8
    move-object/from16 v9, v29

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    .line 288
    .end local v11    # "i":I
    .end local v14    # "tempSearch":Ljava/lang/String;
    .end local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3f6

    .line 290
    .end local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3af
    move-object/from16 v9, v29

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    .end local v29    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v31    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_3b6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v11

    if-ge v7, v11, :cond_3f6

    .line 291
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-lez v11, :cond_3f3

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ltz v11, :cond_3f3

    .line 292
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_3f3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b6

    .line 299
    .end local v7    # "i":I
    :cond_3f6
    :goto_3f6
    move v11, v2

    .end local v2    # "buttonX":I
    .local v11, "buttonX":I
    :goto_3f7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_802

    .line 300
    const/4 v2, 0x0

    .line 302
    .local v2, "toAddID":I
    sget v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    if-nez v7, :cond_433

    .line 303
    const/4 v7, 0x1

    .local v7, "o":I
    :goto_403
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_430

    .line 304
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-le v14, v3, :cond_42c

    .line 305
    move v2, v7

    .line 303
    :cond_42c
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto :goto_403

    :cond_430
    const/4 v14, 0x7

    .end local v7    # "o":I
    goto/16 :goto_5fe

    .line 309
    :cond_433
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_468

    .line 310
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_439
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_465

    .line 311
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    if-ge v7, v14, :cond_462

    .line 312
    move v2, v3

    .line 310
    :cond_462
    add-int/lit8 v3, v3, 0x1

    goto :goto_439

    :cond_465
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 316
    :cond_468
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_4a5

    .line 317
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_46e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4a2

    .line 318
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49f

    .line 319
    move v2, v3

    .line 317
    :cond_49f
    add-int/lit8 v3, v3, 0x1

    goto :goto_46e

    :cond_4a2
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 323
    :cond_4a5
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_4e2

    .line 324
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4ab
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4df

    .line 325
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4dc

    .line 326
    move v2, v3

    .line 324
    :cond_4dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_4ab

    :cond_4df
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 330
    :cond_4e2
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_51a

    .line 331
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4e8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_517

    .line 332
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    cmpg-float v7, v14, v7

    if-gez v7, :cond_513

    .line 333
    move v2, v3

    .line 331
    :cond_513
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x4

    goto :goto_4e8

    :cond_517
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 337
    :cond_51a
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_552

    .line 338
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_520
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_54f

    .line 339
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    cmpl-float v7, v14, v7

    if-lez v7, :cond_54b

    .line 340
    move v2, v3

    .line 338
    :cond_54b
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x5

    goto :goto_520

    :cond_54f
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 344
    :cond_552
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v7, 0x6

    if-ne v3, v7, :cond_57d

    .line 345
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_558
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_57a

    .line 346
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    cmpg-float v14, v14, v20

    if-gez v14, :cond_577

    .line 347
    move v2, v3

    .line 345
    :cond_577
    add-int/lit8 v3, v3, 0x1

    goto :goto_558

    :cond_57a
    const/4 v14, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5fe

    .line 351
    :cond_57d
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/4 v14, 0x7

    if-ne v3, v14, :cond_5a7

    .line 352
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_583
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5a6

    .line 353
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpl-float v7, v7, v19

    if-lez v7, :cond_5a2

    .line 354
    move v2, v3

    .line 352
    :cond_5a2
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x6

    goto :goto_583

    .end local v3    # "o":I
    :cond_5a6
    goto :goto_5fe

    .line 358
    :cond_5a7
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/16 v7, 0x8

    if-ne v3, v7, :cond_5d3

    .line 359
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_5ae
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5d2

    .line 360
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v7, v19, v21

    if-gez v7, :cond_5cd

    .line 361
    move v2, v3

    .line 359
    :cond_5cd
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x8

    goto :goto_5ae

    .end local v3    # "o":I
    :cond_5d2
    goto :goto_5fe

    .line 365
    :cond_5d3
    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->iSortID:I

    const/16 v7, 0x9

    if-ne v3, v7, :cond_5fe

    .line 366
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_5da
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5fe

    .line 367
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v7, v19, v21

    if-lez v7, :cond_5f9

    .line 368
    move v2, v3

    .line 366
    :cond_5f9
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x9

    goto :goto_5da

    .line 373
    .end local v3    # "o":I
    :cond_5fe
    :goto_5fe
    move v3, v13

    .line 375
    .end local v11    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$7;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v39

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v38, v12

    .end local v12    # "civsInGame":I
    .local v38, "civsInGame":I
    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v23

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v28

    move-object/from16 v20, v7

    move-object/from16 v21, p0

    move/from16 v24, v3

    move/from16 v25, v1

    move/from16 v26, v10

    invoke-direct/range {v20 .. v28}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 454
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$8;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v45, v11, 0x2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v41, v7

    move-object/from16 v42, p0

    move/from16 v46, v3

    move/from16 v47, v1

    move/from16 v48, v4

    move/from16 v49, v27

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 477
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$9;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    move/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "r0W":I
    .local v20, "r0W":I
    invoke-static {v12, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v50

    const/16 v45, -0x1

    move-object/from16 v41, v7

    move/from16 v46, v3

    move/from16 v48, v5

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 491
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move/from16 v21, v10

    const/4 v10, 0x1

    .end local v10    # "r0W0":I
    .local v21, "r0W0":I
    invoke-static {v12, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v41, v4

    move/from16 v46, v3

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 508
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v41, v4

    move/from16 v46, v3

    invoke-direct/range {v41 .. v50}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v10

    add-int v11, v3, v4

    .line 560
    .end local v3    # "buttonX":I
    .restart local v11    # "buttonX":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 562
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 563
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 564
    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 565
    .end local v2    # "toAddID":I
    move/from16 v4, v20

    move/from16 v10, v21

    move/from16 v12, v38

    const/4 v3, 0x1

    goto/16 :goto_3f7

    .line 567
    .end local v20    # "r0W":I
    .end local v21    # "r0W0":I
    .end local v38    # "civsInGame":I
    .restart local v4    # "r0W":I
    .restart local v10    # "r0W0":I
    .restart local v12    # "civsInGame":I
    :cond_802
    move/from16 v20, v4

    move/from16 v21, v10

    move/from16 v38, v12

    .end local v4    # "r0W":I
    .end local v10    # "r0W0":I
    .end local v12    # "civsInGame":I
    .restart local v20    # "r0W":I
    .restart local v21    # "r0W0":I
    .restart local v38    # "civsInGame":I
    const/4 v1, 0x0

    .line 569
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v10, v1

    .end local v1    # "buttonY":I
    .local v3, "iSize":I
    .local v10, "buttonY":I
    :goto_80f
    if-ge v2, v3, :cond_84f

    .line 570
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    if-ge v10, v1, :cond_84b

    .line 571
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move v10, v1

    .end local v10    # "buttonY":I
    .restart local v1    # "buttonY":I
    goto :goto_84c

    .line 570
    .end local v1    # "buttonY":I
    .restart local v10    # "buttonY":I
    :cond_84b
    const/4 v7, 0x2

    .line 569
    :goto_84c
    add-int/lit8 v2, v2, 0x1

    goto :goto_80f

    .line 575
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_84f
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 577
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v15, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$12;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "CivilizationRanking"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const/16 v43, 0x0

    sget v44, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v42, 0x0

    move-object/from16 v39, v2

    move-object/from16 v40, p0

    invoke-direct/range {v39 .. v44}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;ZZI)V

    const/4 v14, 0x0

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v22, v5

    .end local v5    # "r1W":I
    .local v22, "r1W":I
    move v5, v15

    move-object/from16 v23, v6

    .end local v6    # "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v23, "tPopulationTotal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move v6, v12

    move-object v7, v0

    move-object/from16 v24, v8

    .end local v8    # "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v24, "tEconomy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move v8, v14

    move-object v14, v9

    .end local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 586
    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->drawScrollPositionAlways:Z

    .line 587
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

    .line 591
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 592
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p3, v0, v1

    .line 595
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 596
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 597
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goodsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->getHeight()I

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

    .line 599
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 600
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 604
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 605
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    .line 606
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->lTime2:J

    .line 607
    return-void
.end method
