.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_IncreaseManpower.java"


# static fields
.field public static CLICK_X_TIMES:I

.field public static iSortID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    .line 42
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->CLICK_X_TIMES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 41

    .line 44
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v10, v1, v2

    .line 49
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 52
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v12

    .line 53
    .local v12, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    .line 55
    .local v1, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x2

    mul-int/lit8 v13, v2, 0x2

    .line 56
    .local v13, "buttonYPadding":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 57
    .local v2, "buttonX":I
    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 59
    .local v14, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_40

    :cond_3e
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_40
    move/from16 v22, v3

    .line 61
    .local v22, "buttonH":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    int-to-float v3, v3

    const v25, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v25

    float-to-int v15, v3

    .line 62
    .local v15, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    int-to-float v3, v3

    mul-float v3, v3, v25

    float-to-int v8, v3

    .line 64
    .local v8, "r1W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x4

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    float-to-int v6, v3

    .line 65
    .local v6, "c0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v25

    float-to-int v5, v3

    .line 67
    .local v5, "c1W":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->COUNCIL_TIPS:Z

    if-eqz v3, :cond_bc

    .line 68
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    mul-int/lit8 v4, v10, 0x2

    sub-int v18, v11, v4

    move-object v4, v3

    move-object v9, v4

    move-object/from16 v4, p0

    move/from16 v37, v5

    .end local v5    # "c1W":I
    .local v37, "c1W":I
    move-object v5, v7

    move/from16 v38, v6

    .end local v6    # "c0W":I
    .local v38, "c0W":I
    move v6, v10

    move/from16 v16, v2

    const/4 v2, 0x4

    .end local v2    # "buttonX":I
    .local v16, "buttonX":I
    move v7, v14

    move/from16 v39, v8

    .end local v8    # "r1W":I
    .local v39, "r1W":I
    move/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v14, v3

    goto :goto_c5

    .line 67
    .end local v16    # "buttonX":I
    .end local v37    # "c1W":I
    .end local v38    # "c0W":I
    .end local v39    # "r1W":I
    .restart local v2    # "buttonX":I
    .restart local v5    # "c1W":I
    .restart local v6    # "c0W":I
    .restart local v8    # "r1W":I
    :cond_bc
    move/from16 v16, v2

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v8

    const/4 v2, 0x4

    .line 76
    .end local v2    # "buttonX":I
    .end local v5    # "c1W":I
    .end local v6    # "c0W":I
    .end local v8    # "r1W":I
    .restart local v16    # "buttonX":I
    .restart local v37    # "c1W":I
    .restart local v38    # "c0W":I
    .restart local v39    # "r1W":I
    :goto_c5
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    .line 77
    .end local v16    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$2;

    sget v18, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v23

    const/16 v24, 0x0

    const-string v17, ""

    move v5, v15

    .end local v15    # "r0W":I
    .local v5, "r0W":I
    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v19, v3

    move/from16 v20, v14

    move/from16 v21, v38

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 90
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;

    const-string v28, "-"

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v29, v3

    move/from16 v30, v14

    move/from16 v31, v37

    move/from16 v32, v22

    invoke-direct/range {v26 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 102
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$4;

    const-string v28, "+"

    move-object/from16 v26, v4

    move/from16 v29, v3

    invoke-direct/range {v26 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v14, v4

    .line 113
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 115
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$5;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-eqz v6, :cond_15d

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15a

    goto :goto_15e

    :cond_15a
    const/16 v28, 0x0

    goto :goto_160

    :cond_15d
    const/4 v7, 0x1

    :goto_15e
    const/16 v28, 0x1

    :goto_160
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v7, :cond_167

    const/16 v29, 0x1

    goto :goto_169

    :cond_167
    const/16 v29, 0x0

    :goto_169
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Name"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v7, v7, 0x6

    add-int v35, v6, v7

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v14

    move/from16 v34, v5

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 146
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$6;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v7, 0x3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1af

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v7, :cond_1ac

    goto :goto_1af

    :cond_1ac
    const/16 v28, 0x0

    goto :goto_1b1

    :cond_1af
    :goto_1af
    const/16 v28, 0x1

    :goto_1b1
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v7, :cond_1b8

    const/16 v29, 0x1

    goto :goto_1ba

    :cond_1b8
    const/16 v29, 0x0

    :goto_1ba
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GrowthRate"

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v35, v6, v9

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v14

    move/from16 v34, v5

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 177
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$7;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v9, 0x5

    if-eq v6, v2, :cond_1fe

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v9, :cond_1fb

    goto :goto_1fe

    :cond_1fb
    const/16 v28, 0x0

    goto :goto_200

    :cond_1fe
    :goto_1fe
    const/16 v28, 0x1

    :goto_200
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v9, :cond_207

    const/16 v29, 0x1

    goto :goto_209

    :cond_207
    const/16 v29, 0x0

    :goto_209
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Manpower"

    invoke-virtual {v6, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v6, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v14

    move/from16 v34, v39

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 208
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$8;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v15, 0x7

    if-eq v6, v8, :cond_24d

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v15, :cond_24a

    goto :goto_24d

    :cond_24a
    const/16 v28, 0x0

    goto :goto_24f

    :cond_24d
    :goto_24d
    const/16 v28, 0x1

    :goto_24f
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v6, v15, :cond_256

    const/16 v29, 0x1

    goto :goto_258

    :cond_256
    const/16 v29, 0x0

    :goto_258
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Cost"

    invoke-virtual {v6, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    mul-int/lit8 v34, v39, 0x2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v6, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v32, v3

    move/from16 v33, v14

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    add-int/2addr v14, v4

    .line 242
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v6, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    sub-int/2addr v4, v15

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v15, v4

    .line 243
    .end local v5    # "r0W":I
    .restart local v15    # "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v25

    float-to-int v6, v4

    .line 246
    .end local v39    # "r1W":I
    .local v6, "r1W":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 248
    .local v5, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2b6
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v4, v8, :cond_2f1

    .line 249
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v8

    if-nez v8, :cond_2ed

    .line 250
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2ed
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x6

    goto :goto_2b6

    :cond_2f1
    move v8, v14

    move v14, v3

    .line 255
    .end local v3    # "buttonX":I
    .end local v4    # "i":I
    .local v8, "buttonY":I
    .local v14, "buttonX":I
    :goto_2f3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_69a

    .line 256
    const/4 v3, 0x0

    .line 258
    .local v3, "toAddID":I
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-nez v4, :cond_339

    .line 259
    const/4 v4, 0x1

    .local v4, "o":I
    :goto_2ff
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_336

    .line 260
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_331

    .line 261
    move v2, v4

    move v3, v2

    .line 259
    :cond_331
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x4

    const/4 v9, 0x5

    goto :goto_2ff

    :cond_336
    const/4 v9, 0x5

    .end local v4    # "o":I
    goto/16 :goto_4c3

    .line 265
    :cond_339
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_376

    .line 266
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_33f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_373

    .line 267
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_370

    .line 268
    move v3, v2

    .line 266
    :cond_370
    add-int/lit8 v2, v2, 0x1

    goto :goto_33f

    :cond_373
    const/4 v9, 0x5

    .end local v2    # "o":I
    goto/16 :goto_4c3

    .line 272
    :cond_376
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3b1

    .line 273
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_37c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3ae

    .line 274
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_3ab

    .line 275
    move v3, v2

    .line 273
    :cond_3ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_37c

    :cond_3ae
    const/4 v9, 0x5

    .end local v2    # "o":I
    goto/16 :goto_4c3

    .line 279
    :cond_3b1
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    if-ne v2, v7, :cond_3eb

    .line 280
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3b6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3e8

    .line 281
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3e5

    .line 282
    move v3, v2

    .line 280
    :cond_3e5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b6

    :cond_3e8
    const/4 v9, 0x5

    .end local v2    # "o":I
    goto/16 :goto_4c3

    .line 286
    :cond_3eb
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_426

    .line 287
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3f1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_423

    .line 288
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v20

    cmpg-float v9, v9, v20

    if-gez v9, :cond_420

    .line 289
    move v3, v2

    .line 287
    :cond_420
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f1

    :cond_423
    const/4 v9, 0x5

    .end local v2    # "o":I
    goto/16 :goto_4c3

    .line 293
    :cond_426
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v9, 0x5

    if-ne v2, v9, :cond_460

    .line 294
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_42c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_45f

    .line 295
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v19

    cmpl-float v4, v4, v19

    if-lez v4, :cond_45b

    .line 296
    move v3, v2

    .line 294
    :cond_45b
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    goto :goto_42c

    .end local v2    # "o":I
    :cond_45f
    goto :goto_4c3

    .line 300
    :cond_460
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_492

    .line 301
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_466
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_491

    .line 302
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v19

    cmpg-float v4, v4, v19

    if-gez v4, :cond_48d

    .line 303
    move v3, v2

    .line 301
    :cond_48d
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x6

    goto :goto_466

    .end local v2    # "o":I
    :cond_491
    goto :goto_4c3

    .line 307
    :cond_492
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->iSortID:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_4c3

    .line 308
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_498
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4c3

    .line 309
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v19

    cmpl-float v4, v4, v19

    if-lez v4, :cond_4bf

    .line 310
    move v3, v2

    .line 308
    :cond_4bf
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x7

    goto :goto_498

    .line 315
    .end local v2    # "o":I
    :cond_4c3
    :goto_4c3
    move v2, v10

    .line 317
    .end local v14    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$9;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v28

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x2

    mul-int/lit8 v30, v14, 0x2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move/from16 v31, v2

    move/from16 v32, v8

    move/from16 v33, v15

    move/from16 v34, v22

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v14

    add-int/2addr v2, v4

    .line 343
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-static/range {v23 .. v23}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v23

    move/from16 v36, v10

    .end local v10    # "paddingLeft":I
    .local v36, "paddingLeft":I
    invoke-virtual/range {v23 .. v23}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v29, -0x1

    move-object/from16 v26, v4

    move/from16 v30, v2

    move/from16 v31, v8

    move/from16 v32, v15

    move/from16 v33, v22

    invoke-direct/range {v26 .. v34}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_GrowthRate;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
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

    add-int/2addr v2, v4

    .line 346
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$10;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v10

    const/16 v14, 0x64

    invoke-static {v10, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v32

    const/16 v27, -0x1

    move-object/from16 v23, v4

    move-object/from16 v24, p0

    move/from16 v28, v2

    move/from16 v29, v8

    move/from16 v30, v6

    move/from16 v31, v22

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
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

    add-int/2addr v2, v4

    .line 398
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$11;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v31

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v23, v4

    move/from16 v27, v2

    move/from16 v28, v8

    move/from16 v29, v6

    move/from16 v30, v22

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
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

    add-int v14, v2, v4

    .line 460
    .end local v2    # "buttonX":I
    .restart local v14    # "buttonX":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$12;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v31

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v23, v2

    move/from16 v27, v14

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v8, v2

    .line 522
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 523
    .end local v3    # "toAddID":I
    move/from16 v10, v36

    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x5

    goto/16 :goto_2f3

    .line 525
    .end local v36    # "paddingLeft":I
    .restart local v10    # "paddingLeft":I
    :cond_69a
    move/from16 v36, v10

    .end local v10    # "paddingLeft":I
    .restart local v36    # "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v10, v1, v2

    .line 526
    .end local v1    # "menuY":I
    .local v10, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 528
    .local v9, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v11, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move v3, v12

    move v4, v10

    move-object/from16 v19, v5

    .end local v5    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v5, v11

    move/from16 v20, v6

    .end local v6    # "r1W":I
    .local v20, "r1W":I
    move v6, v9

    move-object v7, v0

    move/from16 v21, v8

    .end local v8    # "buttonY":I
    .local v21, "buttonY":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "menuHeight":I
    .local v17, "menuHeight":I
    move/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 532
    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->drawScrollPositionAlways:Z

    .line 534
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IncreaseManpower"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 535
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

    .line 539
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 540
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

    .line 543
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 544
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 545
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 547
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 548
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 559
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 560
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 561
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 552
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 553
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 554
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 555
    return-void
.end method
