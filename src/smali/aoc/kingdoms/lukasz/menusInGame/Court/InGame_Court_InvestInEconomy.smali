.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_InvestInEconomy.java"


# static fields
.field public static CLICK_X_TIMES:I

.field public static iSortID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    .line 55
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->CLICK_X_TIMES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 47

    .line 57
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v1, v2

    .line 62
    .local v13, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 65
    .local v14, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v15

    .line 66
    .local v15, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    .line 68
    .local v1, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v16, v2, 0x2

    .line 69
    .local v16, "buttonYPadding":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 70
    .local v2, "buttonX":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 72
    .local v17, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_40

    :cond_3e
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_40
    move/from16 v25, v3

    .line 74
    .local v25, "buttonH":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    const v28, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v28

    float-to-int v11, v3

    .line 75
    .local v11, "r0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v10, v3

    .line 77
    .local v10, "r1W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x5

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float v3, v3, v4

    float-to-int v8, v3

    .line 78
    .local v8, "c0W":I
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v28

    float-to-int v7, v3

    .line 80
    .local v7, "c1W":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ExploitEconomy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v18, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_DOWN:I

    mul-int/lit8 v3, v13, 0x2

    sub-int v19, v14, v3

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->encyclopedia:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int v22, v3, v4

    const/16 v23, 0x1

    move-object v3, v6

    move-object/from16 v4, p0

    move-object/from16 v40, v6

    move/from16 v6, v18

    move/from16 v41, v7

    .end local v7    # "c1W":I
    .local v41, "c1W":I
    move v7, v13

    move/from16 v42, v8

    .end local v8    # "c0W":I
    .local v42, "c0W":I
    move/from16 v8, v17

    move/from16 v9, v19

    move/from16 v43, v10

    .end local v10    # "r1W":I
    .local v43, "r1W":I
    move/from16 v10, v20

    move/from16 v44, v11

    .end local v11    # "r0W":I
    .local v44, "r0W":I
    move/from16 v11, v22

    move/from16 v18, v2

    const/4 v2, 0x2

    .end local v2    # "buttonX":I
    .local v18, "buttonX":I
    move/from16 v12, v23

    invoke-direct/range {v3 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIIZ)V

    move-object/from16 v3, v40

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v17, v17, v3

    .line 127
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->COUNCIL_TIPS:Z

    if-eqz v3, :cond_10e

    .line 128
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Economy0"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v3, v13, 0x2

    sub-int v8, v14, v3

    move-object v3, v9

    move-object/from16 v4, p0

    move v6, v13

    move/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v17, v17, v3

    .line 136
    :cond_10e
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    .line 137
    .end local v18    # "buttonX":I
    .local v3, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$3;

    sget v21, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v26

    const/16 v27, 0x0

    const-string v20, ""

    move-object/from16 v18, v4

    move-object/from16 v19, p0

    move/from16 v22, v3

    move/from16 v23, v17

    move/from16 v24, v42

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 150
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$4;

    const-string v20, "-"

    move-object/from16 v18, v4

    move/from16 v21, v3

    move/from16 v22, v17

    move/from16 v23, v41

    move/from16 v24, v25

    invoke-direct/range {v18 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 162
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$5;

    const-string v20, "+"

    move-object/from16 v18, v4

    move/from16 v21, v3

    invoke-direct/range {v18 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v17, v17, v4

    .line 174
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 176
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$6;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-eqz v5, :cond_1a1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v11, :cond_19e

    goto :goto_1a1

    :cond_19e
    const/16 v31, 0x0

    goto :goto_1a3

    :cond_1a1
    :goto_1a1
    const/16 v31, 0x1

    :goto_1a3
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v11, :cond_1aa

    const/16 v32, 0x1

    goto :goto_1ac

    :cond_1aa
    const/16 v32, 0x0

    :goto_1ac
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Name"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v7, v7, 0x6

    add-int v38, v5, v7

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v34, -0x1

    move-object/from16 v29, v4

    move-object/from16 v30, p0

    move/from16 v35, v3

    move/from16 v36, v17

    move/from16 v37, v44

    invoke-direct/range {v29 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 207
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v10, 0x3

    if-eq v5, v2, :cond_1f0

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v10, :cond_1ed

    goto :goto_1f0

    :cond_1ed
    const/16 v31, 0x0

    goto :goto_1f2

    :cond_1f0
    :goto_1f0
    const/16 v31, 0x1

    :goto_1f2
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v10, :cond_1f9

    const/16 v32, 0x1

    goto :goto_1fb

    :cond_1f9
    const/16 v32, 0x0

    :goto_1fb
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Resource"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v38, v5, v9

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v34, -0x1

    move-object/from16 v29, v4

    move-object/from16 v30, p0

    move/from16 v35, v3

    move/from16 v36, v17

    move/from16 v37, v44

    invoke-direct/range {v29 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 238
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$8;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v9, 0x4

    if-eq v5, v9, :cond_23f

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v9, 0x5

    if-ne v5, v9, :cond_23c

    goto :goto_240

    :cond_23c
    const/16 v31, 0x0

    goto :goto_242

    :cond_23f
    const/4 v9, 0x5

    :goto_240
    const/16 v31, 0x1

    :goto_242
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v9, :cond_249

    const/16 v32, 0x1

    goto :goto_24b

    :cond_249
    const/16 v32, 0x0

    :goto_24b
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Economy"

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x6

    add-int v38, v5, v19

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v34, -0x1

    move-object/from16 v29, v4

    move-object/from16 v30, p0

    move/from16 v35, v3

    move/from16 v36, v17

    move/from16 v37, v43

    invoke-direct/range {v29 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 269
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$9;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v9, 0x7

    if-eq v5, v8, :cond_28e

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v9, :cond_28b

    goto :goto_28e

    :cond_28b
    const/16 v31, 0x0

    goto :goto_290

    :cond_28e
    :goto_28e
    const/16 v31, 0x1

    :goto_290
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-ne v5, v9, :cond_297

    const/16 v32, 0x1

    goto :goto_299

    :cond_297
    const/16 v32, 0x0

    :goto_299
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    mul-int/lit8 v37, v43, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v38, v5, v9

    sget v39, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v34, -0x1

    move-object/from16 v29, v4

    move-object/from16 v30, p0

    move/from16 v35, v3

    move/from16 v36, v17

    invoke-direct/range {v29 .. v39}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v17, v17, v4

    .line 303
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v28

    float-to-int v9, v4

    .line 304
    .end local v44    # "r0W":I
    .local v9, "r0W":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v14, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v28

    float-to-int v5, v4

    .line 307
    .end local v43    # "r1W":I
    .local v5, "r1W":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v20

    .line 310
    .local v21, "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    move/from16 v8, v20

    .local v8, "i":I
    :goto_2ff
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v8, v10, :cond_356

    .line 311
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v10

    if-eqz v10, :cond_337

    .line 312
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    .end local v21    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v6, "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34e

    .line 315
    .end local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_337
    move-object/from16 v23, v6

    move-object/from16 v6, v21

    .end local v21    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_34e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    const/4 v10, 0x3

    goto :goto_2ff

    .end local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_356
    move-object/from16 v23, v6

    move-object/from16 v6, v21

    .end local v21    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v45, v17

    move/from16 v17, v3

    move/from16 v3, v45

    .line 320
    .end local v8    # "i":I
    .local v3, "buttonY":I
    .local v17, "buttonX":I
    :goto_360
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const-string v10, "None"

    const-string v2, ""

    if-lez v8, :cond_776

    .line 321
    const/4 v8, 0x0

    .line 323
    .local v8, "toAddID":I
    sget v26, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-nez v26, :cond_3b4

    .line 324
    const/16 v26, 0x1

    move/from16 v11, v26

    .local v11, "o":I
    :goto_373
    move/from16 v27, v15

    .end local v15    # "menuX":I
    .local v27, "menuX":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_3b0

    .line 325
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .local v30, "toAddID":I
    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a9

    .line 326
    move v8, v11

    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_3ab

    .line 325
    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    :cond_3a9
    move/from16 v8, v30

    .line 324
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_3ab
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v27

    goto :goto_373

    :cond_3b0
    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .end local v11    # "o":I
    .restart local v30    # "toAddID":I
    goto/16 :goto_564

    .line 330
    .end local v27    # "menuX":I
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    .restart local v15    # "menuX":I
    :cond_3b4
    move/from16 v27, v15

    .end local v15    # "menuX":I
    .restart local v27    # "menuX":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x1

    if-ne v11, v15, :cond_3f9

    .line 331
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_3bc
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_3f5

    .line 332
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f0

    .line 333
    move v8, v11

    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_3f2

    .line 332
    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    :cond_3f0
    move/from16 v8, v30

    .line 331
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_3f2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3bc

    :cond_3f5
    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .end local v11    # "o":I
    .restart local v30    # "toAddID":I
    goto/16 :goto_564

    .line 337
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :cond_3f9
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x2

    if-ne v11, v15, :cond_444

    .line 338
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_3ff
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_440

    .line 339
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v29

    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_43b

    .line 340
    move v8, v11

    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_43d

    .line 339
    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    :cond_43b
    move/from16 v8, v30

    .line 338
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_43d
    add-int/lit8 v11, v11, 0x1

    goto :goto_3ff

    :cond_440
    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .end local v11    # "o":I
    .restart local v30    # "toAddID":I
    goto/16 :goto_564

    .line 344
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :cond_444
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x3

    if-ne v11, v15, :cond_490

    .line 345
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_44a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_48c

    .line 346
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v29

    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_486

    .line 347
    move v8, v11

    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_488

    .line 346
    .end local v8    # "toAddID":I
    .restart local v30    # "toAddID":I
    :cond_486
    move/from16 v8, v30

    .line 345
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_488
    add-int/lit8 v11, v11, 0x1

    const/4 v15, 0x3

    goto :goto_44a

    :cond_48c
    move/from16 v30, v8

    .end local v8    # "toAddID":I
    .end local v11    # "o":I
    .restart local v30    # "toAddID":I
    goto/16 :goto_564

    .line 351
    .end local v30    # "toAddID":I
    .restart local v8    # "toAddID":I
    :cond_490
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x4

    if-ne v11, v15, :cond_4ca

    .line 352
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_496
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_4c8

    .line 353
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v29

    cmpg-float v15, v15, v29

    if-gez v15, :cond_4c5

    .line 354
    move v8, v11

    .line 352
    :cond_4c5
    add-int/lit8 v11, v11, 0x1

    goto :goto_496

    .end local v11    # "o":I
    :cond_4c8
    goto/16 :goto_564

    .line 358
    :cond_4ca
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x5

    if-ne v11, v15, :cond_503

    .line 359
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_4d0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_502

    .line 360
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v29

    cmpl-float v15, v15, v29

    if-lez v15, :cond_4ff

    .line 361
    move v8, v11

    .line 359
    :cond_4ff
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d0

    .end local v11    # "o":I
    :cond_502
    goto :goto_564

    .line 365
    :cond_503
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x6

    if-ne v11, v15, :cond_534

    .line 366
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_509
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_533

    .line 367
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v29

    cmpg-float v15, v15, v29

    if-gez v15, :cond_530

    .line 368
    move v8, v11

    .line 366
    :cond_530
    add-int/lit8 v11, v11, 0x1

    goto :goto_509

    .end local v11    # "o":I
    :cond_533
    goto :goto_564

    .line 372
    :cond_534
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v15, 0x7

    if-ne v11, v15, :cond_564

    .line 373
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_53a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_564

    .line 374
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v15

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v29

    cmpl-float v15, v15, v29

    if-lez v15, :cond_561

    .line 375
    move v8, v11

    .line 373
    :cond_561
    add-int/lit8 v11, v11, 0x1

    goto :goto_53a

    .line 380
    .end local v11    # "o":I
    :cond_564
    :goto_564
    move v11, v13

    .line 382
    .end local v17    # "buttonX":I
    .local v11, "buttonX":I
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$10;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v24, 0x2

    mul-int/lit8 v33, v17, 0x2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    move/from16 v34, v11

    move/from16 v35, v3

    move/from16 v36, v9

    move/from16 v37, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v15

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v15, v17

    add-int/2addr v11, v15

    .line 408
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    if-ltz v15, :cond_61b

    .line 409
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$11;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v32

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v15}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v37

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v10

    move-object/from16 v30, p0

    move/from16 v33, v11

    move/from16 v34, v3

    move/from16 v35, v9

    move/from16 v36, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v39, v1

    goto :goto_639

    .line 416
    :cond_61b
    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    move/from16 v39, v1

    .end local v1    # "menuY":I
    .local v39, "menuY":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v32, -0x1

    move-object/from16 v29, v15

    move/from16 v33, v11

    move/from16 v34, v3

    move/from16 v35, v9

    move/from16 v36, v25

    invoke-direct/range {v29 .. v36}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :goto_639
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v10

    add-int/2addr v11, v1

    .line 420
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$12;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v15

    move/from16 v40, v9

    const/16 v9, 0x64

    .end local v9    # "r0W":I
    .local v40, "r0W":I
    invoke-static {v15, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v33, -0x1

    move-object/from16 v29, v1

    move-object/from16 v30, p0

    move/from16 v34, v11

    move/from16 v35, v3

    move/from16 v36, v5

    move/from16 v37, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v9

    add-int/2addr v11, v1

    .line 485
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$13;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v10

    const/16 v15, 0xa

    invoke-static {v10, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v37

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v1

    move/from16 v33, v11

    move/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v9

    add-int v17, v11, v1

    .line 560
    .end local v11    # "buttonX":I
    .restart local v17    # "buttonX":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$14;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v9

    invoke-static {v9, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v37

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v1

    move/from16 v33, v17

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    .line 635
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 636
    .end local v8    # "toAddID":I
    move/from16 v15, v27

    move/from16 v1, v39

    move/from16 v9, v40

    const/4 v2, 0x2

    const/4 v11, 0x1

    goto/16 :goto_360

    .line 639
    .end local v27    # "menuX":I
    .end local v39    # "menuY":I
    .end local v40    # "r0W":I
    .restart local v1    # "menuY":I
    .restart local v9    # "r0W":I
    .restart local v15    # "menuX":I
    :cond_776
    move/from16 v39, v1

    move/from16 v40, v9

    move/from16 v27, v15

    .end local v1    # "menuY":I
    .end local v9    # "r0W":I
    .end local v15    # "menuX":I
    .restart local v27    # "menuX":I
    .restart local v39    # "menuY":I
    .restart local v40    # "r0W":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$15;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaximumEconomy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget v33, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int v35, v14, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x6

    mul-int/lit8 v9, v9, 0x6

    add-int v36, v8, v9

    const/16 v32, -0x1

    move-object/from16 v29, v1

    move-object/from16 v30, p0

    move/from16 v34, v3

    invoke-direct/range {v29 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v3, v1

    .line 654
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7fc

    .line 655
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    .line 656
    .end local v3    # "buttonY":I
    .local v1, "buttonY":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v13, 0x2

    sub-int v9, v14, v3

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v11, -0x1

    move-object v3, v2

    move-object v15, v4

    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v4, v7

    move/from16 v29, v5

    .end local v5    # "r1W":I
    .local v29, "r1W":I
    move v5, v8

    move-object v12, v6

    .end local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v12, "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v6, v11

    move v7, v13

    move v8, v1

    move/from16 v11, v40

    .end local v40    # "r0W":I
    .local v11, "r0W":I
    const/4 v11, 0x3

    .end local v11    # "r0W":I
    .restart local v40    # "r0W":I
    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v10, v1

    move-object v9, v12

    goto/16 :goto_cad

    .line 660
    .end local v1    # "buttonY":I
    .end local v12    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "r1W":I
    .restart local v3    # "buttonY":I
    .restart local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "r1W":I
    .restart local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7fc
    move-object v15, v4

    move/from16 v29, v5

    move-object v9, v6

    const/4 v11, 0x3

    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "r1W":I
    .end local v6    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v9, "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "r1W":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 661
    .end local v17    # "buttonX":I
    .local v1, "buttonX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v14, v4

    int-to-float v4, v4

    const v6, 0x3e99999a    # 0.3f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 662
    .end local v40    # "r0W":I
    .local v4, "r0W":I
    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v5, v14, v8

    int-to-float v5, v5

    mul-float v5, v5, v28

    float-to-int v5, v5

    .line 664
    .end local v29    # "r1W":I
    .restart local v5    # "r1W":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$16;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v6, v23

    invoke-virtual {v11, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v22, 0x6

    mul-int/lit8 v11, v11, 0x6

    add-int v36, v6, v11

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v32, -0x1

    move-object/from16 v29, v8

    move-object/from16 v30, p0

    move/from16 v33, v1

    move/from16 v34, v3

    move/from16 v35, v4

    invoke-direct/range {v29 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 695
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$17;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x6

    mul-int/lit8 v8, v8, 0x6

    add-int v36, v7, v8

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v29, v6

    move/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 726
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$18;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x6

    mul-int/lit8 v8, v8, 0x6

    add-int v36, v7, v8

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v29, v6

    move/from16 v33, v1

    move/from16 v35, v5

    invoke-direct/range {v29 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    .line 757
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$19;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GrowthRate"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x6

    mul-int/lit8 v8, v8, 0x6

    add-int v36, v7, v8

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v29, v6

    move/from16 v33, v1

    invoke-direct/range {v29 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 789
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v14, v6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x5

    mul-int/lit8 v8, v8, 0x5

    sub-int/2addr v6, v8

    int-to-float v6, v6

    const v8, 0x3e99999a    # 0.3f

    mul-float v6, v6, v8

    float-to-int v4, v6

    .line 790
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v14, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v6, v6, v28

    float-to-int v5, v6

    move/from16 v17, v1

    move v1, v3

    .line 792
    .end local v3    # "buttonY":I
    .local v1, "buttonY":I
    .restart local v17    # "buttonX":I
    :goto_90b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ca8

    .line 793
    const/4 v3, 0x0

    .line 795
    .local v3, "toAddID":I
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    if-nez v6, :cond_950

    .line 796
    const/4 v6, 0x1

    .local v6, "o":I
    :goto_917
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_94b

    .line 797
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_948

    .line 798
    move v3, v6

    .line 796
    :cond_948
    add-int/lit8 v6, v6, 0x1

    goto :goto_917

    :cond_94b
    const/4 v8, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 802
    :cond_950
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_98f

    .line 803
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_956
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_98a

    .line 804
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_987

    .line 805
    move v3, v6

    .line 803
    :cond_987
    add-int/lit8 v6, v6, 0x1

    goto :goto_956

    :cond_98a
    const/4 v8, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 809
    :cond_98f
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9d6

    .line 810
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_995
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9d1

    .line 811
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9ce

    .line 812
    move v3, v6

    .line 810
    :cond_9ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_995

    :cond_9d1
    const/4 v8, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 816
    :cond_9d6
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a1d

    .line 817
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_9dc
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a18

    .line 818
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a15

    .line 819
    move v3, v6

    .line 817
    :cond_a15
    add-int/lit8 v6, v6, 0x1

    goto :goto_9dc

    :cond_a18
    const/4 v8, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 823
    :cond_a1d
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a5a

    .line 824
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_a23
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_a55

    .line 825
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v8

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_a52

    .line 826
    move v3, v6

    .line 824
    :cond_a52
    add-int/lit8 v6, v6, 0x1

    goto :goto_a23

    :cond_a55
    const/4 v8, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 830
    :cond_a5a
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_a96

    .line 831
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_a60
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_a92

    .line 832
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a8f

    .line 833
    move v3, v6

    .line 831
    :cond_a8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_a60

    :cond_a92
    const/4 v11, 0x6

    const/4 v12, 0x7

    .end local v6    # "o":I
    goto/16 :goto_b09

    .line 837
    :cond_a96
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v11, 0x6

    if-ne v6, v11, :cond_ad0

    .line 838
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_a9c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_ace

    .line 839
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v12

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v22

    cmpg-float v12, v12, v22

    if-gez v12, :cond_acb

    .line 840
    move v3, v6

    .line 838
    :cond_acb
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9c

    :cond_ace
    const/4 v12, 0x7

    .end local v6    # "o":I
    goto :goto_b09

    .line 844
    :cond_ad0
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->iSortID:I

    const/4 v12, 0x7

    if-ne v6, v12, :cond_b09

    .line 845
    const/4 v6, 0x1

    .restart local v6    # "o":I
    :goto_ad6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b09

    .line 846
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v7

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v19

    cmpl-float v7, v7, v19

    if-lez v7, :cond_b05

    .line 847
    move v3, v6

    .line 845
    :cond_b05
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    goto :goto_ad6

    .line 852
    .end local v6    # "o":I
    :cond_b09
    :goto_b09
    move v6, v13

    .line 854
    .end local v17    # "buttonX":I
    .local v6, "buttonX":I
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$20;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v31

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v19, 0x2

    mul-int/lit8 v33, v17, 0x2

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v7

    move-object/from16 v30, p0

    move/from16 v34, v6

    move/from16 v35, v1

    move/from16 v36, v4

    move/from16 v37, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/16 v17, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, v7, v17

    add-int/2addr v6, v7

    .line 875
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v7

    if-ltz v7, :cond_bbe

    .line 876
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$21;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v32

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v37

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v29, v7

    move-object/from16 v30, p0

    move/from16 v33, v6

    move/from16 v34, v1

    move/from16 v35, v4

    move/from16 v36, v25

    invoke-direct/range {v29 .. v38}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bda

    .line 883
    :cond_bbe
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v32, -0x1

    move-object/from16 v29, v7

    move/from16 v33, v6

    move/from16 v34, v1

    move/from16 v35, v4

    move/from16 v36, v25

    invoke-direct/range {v29 .. v36}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    :goto_bda
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 887
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$22;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    const/16 v12, 0x64

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v32, -0x1

    move-object/from16 v28, v7

    move-object/from16 v29, p0

    move/from16 v33, v6

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v36, v25

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v17, v6, v7

    .line 898
    .end local v6    # "buttonX":I
    .restart local v17    # "buttonX":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v28, v6

    move/from16 v33, v17

    invoke-direct/range {v28 .. v37}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v8

    add-int/2addr v1, v6

    .line 944
    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 945
    .end local v3    # "toAddID":I
    goto/16 :goto_90b

    .line 792
    :cond_ca8
    move v10, v1

    move/from16 v40, v4

    move/from16 v29, v5

    .line 948
    .end local v1    # "buttonY":I
    .end local v4    # "r0W":I
    .end local v5    # "r1W":I
    .local v10, "buttonY":I
    .restart local v29    # "r1W":I
    .restart local v40    # "r0W":I
    :goto_cad
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v11, v39, v1

    .line 949
    .end local v39    # "menuY":I
    .local v11, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v11

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 951
    .local v12, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v14, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    const/4 v8, 0x0

    const/16 v19, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v27

    move v4, v11

    move v5, v14

    move v6, v12

    move-object v7, v0

    move-object/from16 v20, v9

    .end local v9    # "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "tProvincesMaxLvl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 955
    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->drawScrollPositionAlways:Z

    .line 957
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "InvestInEconomy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 958
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

    .line 962
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 963
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

    .line 966
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 967
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 968
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy;->getHeight()I

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

    .line 970
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 971
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 982
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 983
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 984
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 975
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 976
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 977
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 978
    return-void
.end method
