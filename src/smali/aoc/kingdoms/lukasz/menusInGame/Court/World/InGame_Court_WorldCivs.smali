.class public Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_WorldCivs.java"


# static fields
.field public static iSortID:I

.field public static sSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    .line 49
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 51

    .line 51
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 54
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v23, v0, v1

    .line 55
    .local v23, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    .line 57
    .local v9, "paddingLeft2":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    .line 60
    .local v8, "menuWidth":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v1

    add-int v24, v0, v1

    .line 61
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

    .line 63
    .local v1, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v25, v0, 0x2

    .line 64
    .local v25, "buttonYPadding":I
    move/from16 v0, v23

    .line 65
    .local v0, "buttonX":I
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 68
    .local v3, "buttonY":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$1;

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

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
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

    .line 101
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$2;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Search"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

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

    mul-int/lit8 v15, v6, 0x2

    mul-int/lit8 v6, v23, 0x2

    sub-int v18, v8, v6

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v11, v4

    move-object/from16 v12, p0

    move/from16 v16, v23

    move/from16 v17, v3

    invoke-direct/range {v11 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
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

    .line 114
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_de

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_e0

    :cond_de
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_e0
    move/from16 v26, v4

    .line 116
    .local v26, "buttonH":I
    mul-int/lit8 v4, v23, 0x2

    sub-int v4, v8, v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/lit8 v6, v6, 0x6

    sub-int/2addr v4, v6

    const/4 v6, 0x7

    div-int/lit8 v35, v4, 0x7

    .line 117
    .local v35, "statsRightW":I
    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 119
    .local v36, "statsRightH":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v26, v4

    add-int v4, v4, v36

    .line 122
    .local v4, "emptyBGH":I
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v8, v11

    int-to-float v11, v11

    const/high16 v12, 0x40a00000    # 5.0f

    div-float/2addr v11, v12

    float-to-int v14, v11

    .line 127
    .local v14, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 129
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$3;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-eqz v11, :cond_112

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v5, :cond_10f

    goto :goto_112

    :cond_10f
    const/16 v16, 0x0

    goto :goto_114

    :cond_112
    :goto_112
    const/16 v16, 0x1

    :goto_114
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v5, :cond_11b

    const/16 v17, 0x1

    goto :goto_11d

    :cond_11b
    const/16 v17, 0x0

    :goto_11d
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, -0x1

    move-object v11, v13

    move-object/from16 v12, p0

    move-object v6, v13

    move/from16 v13, v16

    move/from16 v38, v14

    .end local v14    # "r0W":I
    .local v38, "r0W":I
    move/from16 v14, v17

    const/4 v7, 0x6

    move-object/from16 v15, v19

    move/from16 v16, v22

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v38

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 160
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$4;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v15, 0x3

    if-eq v11, v2, :cond_16a

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v15, :cond_168

    goto :goto_16a

    :cond_168
    const/4 v13, 0x0

    goto :goto_16b

    :cond_16a
    :goto_16a
    const/4 v13, 0x1

    :goto_16b
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v15, :cond_171

    const/4 v14, 0x1

    goto :goto_172

    :cond_171
    const/4 v14, 0x0

    :goto_172
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Population"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v17, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v38

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 191
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$5;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v15, 0x5

    const/4 v12, 0x4

    if-eq v11, v12, :cond_1b8

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v15, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v13, 0x0

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v13, 0x1

    :goto_1b9
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v15, :cond_1bf

    const/4 v14, 0x1

    goto :goto_1c0

    :cond_1bf
    const/4 v14, 0x0

    :goto_1c0
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Provinces"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v17, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v38

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 222
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$6;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-eq v11, v7, :cond_205

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_203

    goto :goto_206

    :cond_203
    const/4 v13, 0x0

    goto :goto_207

    :cond_205
    const/4 v12, 0x7

    :goto_206
    const/4 v13, 0x1

    :goto_207
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v12, :cond_20d

    const/4 v14, 0x1

    goto :goto_20e

    :cond_20d
    const/4 v14, 0x0

    :goto_20e
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Economy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v16, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v38

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    .line 253
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$7;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/16 v15, 0x8

    const/16 v14, 0x9

    if-eq v11, v15, :cond_252

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v14, :cond_250

    goto :goto_252

    :cond_250
    const/4 v13, 0x0

    goto :goto_253

    :cond_252
    :goto_252
    const/4 v13, 0x1

    :goto_253
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-ne v11, v14, :cond_25a

    const/16 v16, 0x1

    goto :goto_25c

    :cond_25a
    const/16 v16, 0x0

    :goto_25c
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Technologies"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v20, v11, v12

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v18, -0x1

    move-object v11, v6

    move-object/from16 v12, p0

    move/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v38

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v11

    add-int/2addr v3, v6

    .line 286
    move/from16 v6, v23

    .line 288
    .end local v0    # "buttonX":I
    .local v6, "buttonX":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 289
    .local v15, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 290
    .local v14, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 291
    .local v13, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 293
    .local v12, "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_35c

    .line 294
    const/4 v11, -0x1

    .line 297
    .local v11, "num":I
    :try_start_2bb
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2c1} :catch_2c3

    move v11, v0

    .line 300
    goto :goto_2c4

    .line 298
    :catch_2c3
    move-exception v0

    .line 302
    :goto_2c4
    if-ltz v11, :cond_301

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    if-ge v11, v0, :cond_301

    .line 303
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35b

    .line 309
    :cond_301
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "tSearch":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_30b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    if-ge v7, v5, :cond_35b

    .line 312
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_357

    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_357
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_30b

    .line 320
    .end local v0    # "tSearch":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v11    # "num":I
    :cond_35b
    :goto_35b
    goto :goto_39a

    .line 322
    :cond_35c
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_35d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v0, v5, :cond_39a

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_35d

    .line 330
    .end local v0    # "i":I
    :cond_39a
    :goto_39a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7dd

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "numOfAdded":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->COURT_PROVINCES_LIMIT:I

    mul-int/lit8 v5, v5, 0x2

    .line 334
    .local v5, "limit":I
    :goto_3a7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7cd

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "numOfAdded":I
    .local v7, "numOfAdded":I
    if-ge v0, v5, :cond_7be

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    if-nez v11, :cond_3f5

    .line 338
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_3b7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_3f1

    .line 339
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .local v17, "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3eb

    .line 340
    move v0, v11

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_3ed

    .line 339
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_3eb
    move/from16 v0, v17

    .line 338
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_3ed
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x2

    goto :goto_3b7

    :cond_3f1
    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .end local v11    # "o":I
    .restart local v17    # "toAddID":I
    goto/16 :goto_5c3

    .line 343
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :cond_3f5
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_438

    .line 344
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_3fb
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_434

    .line 345
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42f

    .line 346
    move v0, v2

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_431

    .line 345
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_42f
    move/from16 v0, v17

    .line 344
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_431
    add-int/lit8 v2, v2, 0x1

    goto :goto_3fb

    :cond_434
    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .end local v2    # "o":I
    .restart local v17    # "toAddID":I
    goto/16 :goto_5c3

    .line 350
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :cond_438
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_462

    .line 351
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_43e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_460

    .line 352
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v11, v16, v18

    if-lez v11, :cond_45d

    .line 353
    move v0, v2

    .line 351
    :cond_45d
    add-int/lit8 v2, v2, 0x1

    goto :goto_43e

    .end local v2    # "o":I
    :cond_460
    goto/16 :goto_5c3

    .line 356
    :cond_462
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x3

    if-ne v2, v11, :cond_48d

    .line 357
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_468
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_48b

    .line 358
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v11, v16, v18

    if-gez v11, :cond_487

    .line 359
    move v0, v2

    .line 357
    :cond_487
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x3

    goto :goto_468

    .end local v2    # "o":I
    :cond_48b
    goto/16 :goto_5c3

    .line 363
    :cond_48d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x4

    if-ne v2, v11, :cond_4cd

    .line 364
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_493
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_4c9

    .line 365
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-le v11, v0, :cond_4c3

    .line 366
    move v0, v2

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_4c5

    .line 365
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_4c3
    move/from16 v0, v17

    .line 364
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_4c5
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x4

    goto :goto_493

    :cond_4c9
    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .end local v2    # "o":I
    .restart local v17    # "toAddID":I
    goto/16 :goto_5c3

    .line 369
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :cond_4cd
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x5

    if-ne v2, v11, :cond_50d

    .line 370
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_4d3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_509

    .line 371
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v11, v0, :cond_503

    .line 372
    move v0, v2

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_505

    .line 371
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_503
    move/from16 v0, v17

    .line 370
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_505
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x5

    goto :goto_4d3

    :cond_509
    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .end local v2    # "o":I
    .restart local v17    # "toAddID":I
    goto/16 :goto_5c3

    .line 375
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :cond_50d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x6

    if-ne v2, v11, :cond_538

    .line 376
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_513
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_536

    .line 377
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v11, v11, v16

    if-lez v11, :cond_532

    .line 378
    move v0, v2

    .line 376
    :cond_532
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x6

    goto :goto_513

    .end local v2    # "o":I
    :cond_536
    goto/16 :goto_5c3

    .line 381
    :cond_538
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/4 v11, 0x7

    if-ne v2, v11, :cond_562

    .line 382
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_53e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_561

    .line 383
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpg-float v11, v11, v16

    if-gez v11, :cond_55d

    .line 384
    move v0, v2

    .line 382
    :cond_55d
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x7

    goto :goto_53e

    .end local v2    # "o":I
    :cond_561
    goto :goto_5c3

    .line 387
    :cond_562
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/16 v11, 0x8

    if-ne v2, v11, :cond_593

    .line 388
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_569
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_590

    .line 389
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v11, v0, :cond_589

    .line 390
    move v0, v2

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_58b

    .line 389
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_589
    move/from16 v0, v17

    .line 388
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_58b
    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0x8

    goto :goto_569

    :cond_590
    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .end local v2    # "o":I
    .restart local v17    # "toAddID":I
    goto :goto_5c3

    .line 393
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :cond_593
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->iSortID:I

    const/16 v11, 0x9

    if-ne v2, v11, :cond_5c3

    .line 394
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_59a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_5c1

    .line 395
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v0

    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v11, v0, :cond_5ba

    .line 396
    move v0, v2

    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    goto :goto_5bc

    .line 395
    .end local v0    # "toAddID":I
    .restart local v17    # "toAddID":I
    :cond_5ba
    move/from16 v0, v17

    .line 394
    .end local v17    # "toAddID":I
    .restart local v0    # "toAddID":I
    :goto_5bc
    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0x9

    goto :goto_59a

    :cond_5c1
    move/from16 v17, v0

    .line 401
    .end local v2    # "o":I
    :cond_5c3
    :goto_5c3
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 403
    .local v2, "nCivID":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$8;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v44, 0x2

    mul-int/lit8 v18, v18, 0x2

    mul-int/lit8 v19, v23, 0x2

    sub-int v19, v8, v19

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move/from16 v45, v5

    .end local v5    # "limit":I
    .local v45, "limit":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v6

    .end local v6    # "buttonX":I
    .local v27, "buttonX":I
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v46, v7

    .end local v7    # "numOfAdded":I
    .local v46, "numOfAdded":I
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object v5, v11

    const/16 v7, 0x8

    const/16 v37, 0x9

    const/16 v39, 0x5

    const/16 v40, 0x3

    const/16 v41, 0x7

    const/16 v42, 0x6

    const/16 v43, 0x4

    move-object v7, v12

    .end local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v12, p0

    move/from16 v47, v1

    move-object v1, v13

    .end local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v1, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v47, "menuY":I
    move-object/from16 v13, v16

    move-object/from16 v48, v14

    .end local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v48, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move/from16 v14, v17

    move-object/from16 v49, v15

    .end local v15    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v49, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v15, v18

    move/from16 v16, v23

    move/from16 v17, v3

    move/from16 v18, v19

    move/from16 v19, v26

    move/from16 v20, v2

    invoke-direct/range {v11 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
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

    .line 454
    move/from16 v5, v23

    .line 455
    .end local v27    # "buttonX":I
    .local v5, "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$9;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v18

    mul-int/lit8 v12, v35, 0x2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v21, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v17, p0

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v22, v36

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
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

    .line 461
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v18

    mul-int/lit8 v12, v35, 0x2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v21, v12, v13

    move-object/from16 v16, v11

    move/from16 v19, v5

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
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

    .line 467
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$11;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object/from16 v27, v11

    move-object/from16 v28, p0

    move/from16 v31, v5

    move/from16 v32, v3

    move/from16 v33, v35

    move/from16 v34, v36

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
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

    .line 482
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$12;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object/from16 v27, v11

    move/from16 v31, v5

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
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

    .line 497
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$13;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object/from16 v27, v11

    move/from16 v31, v5

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;Ljava/lang/String;IIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
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

    .line 515
    move/from16 v6, v23

    .line 516
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

    .line 518
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v11, v3, v4

    mul-int/lit8 v12, v9, 0x2

    sub-int v12, v8, v12

    invoke-direct {v5, v9, v11, v12, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    .line 522
    move-object/from16 v5, v49

    .end local v49    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 523
    move-object/from16 v15, v48

    .end local v48    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 524
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 525
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 526
    .end local v0    # "toAddID":I
    .end local v2    # "nCivID":I
    move-object v13, v1

    move-object v12, v7

    move-object v14, v15

    move/from16 v0, v46

    move/from16 v1, v47

    const/4 v2, 0x2

    move-object v15, v5

    move/from16 v5, v45

    goto/16 :goto_3a7

    .line 334
    .end local v45    # "limit":I
    .end local v46    # "numOfAdded":I
    .end local v47    # "menuY":I
    .local v1, "menuY":I
    .local v5, "limit":I
    .local v7, "numOfAdded":I
    .restart local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7be
    move/from16 v47, v1

    move/from16 v45, v5

    move/from16 v27, v6

    move/from16 v46, v7

    move-object v7, v12

    move-object v1, v13

    move-object v5, v15

    const/16 v40, 0x3

    move-object v15, v14

    .end local v6    # "buttonX":I
    .end local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v27    # "buttonX":I
    .restart local v45    # "limit":I
    .restart local v46    # "numOfAdded":I
    .restart local v47    # "menuY":I
    goto :goto_7d9

    .end local v7    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v27    # "buttonX":I
    .end local v45    # "limit":I
    .end local v46    # "numOfAdded":I
    .end local v47    # "menuY":I
    .local v0, "numOfAdded":I
    .local v1, "menuY":I
    .local v5, "limit":I
    .restart local v6    # "buttonX":I
    .restart local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7cd
    move/from16 v47, v1

    move/from16 v45, v5

    move/from16 v27, v6

    move-object v7, v12

    move-object v1, v13

    move-object v5, v15

    const/16 v40, 0x3

    move-object v15, v14

    .line 527
    .end local v0    # "numOfAdded":I
    .end local v6    # "buttonX":I
    .end local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v5, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v27    # "buttonX":I
    .restart local v47    # "menuY":I
    :goto_7d9
    move v0, v3

    move-object/from16 v19, v15

    goto :goto_81c

    .line 529
    .end local v5    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v27    # "buttonX":I
    .end local v47    # "menuY":I
    .local v1, "menuY":I
    .restart local v6    # "buttonX":I
    .restart local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_7dd
    move/from16 v47, v1

    move-object v7, v12

    move-object v1, v13

    move-object v5, v15

    const/16 v40, 0x3

    move-object v15, v14

    .end local v12    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v14    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v1, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v15, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v47    # "menuY":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "None"

    invoke-virtual {v2, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v23, 0x2

    sub-int v17, v8, v2

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v14, -0x1

    move-object v11, v0

    move-object/from16 v19, v15

    .end local v15    # "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v19, "tPop":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move/from16 v15, v23

    move/from16 v16, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    move v0, v3

    move/from16 v27, v6

    .line 538
    .end local v3    # "buttonY":I
    .end local v6    # "buttonX":I
    .local v0, "buttonY":I
    .restart local v27    # "buttonX":I
    :goto_81c
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v11, v47, v2

    .line 539
    .end local v47    # "menuY":I
    .local v11, "menuY":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 541
    .local v12, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v13, 0x0

    invoke-direct {v2, v13, v13, v8, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    move-object/from16 v16, v1

    .end local v1    # "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v16, "tEco":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v1, p0

    move/from16 v3, v24

    move/from16 v17, v4

    .end local v4    # "emptyBGH":I
    .local v17, "emptyBGH":I
    move v4, v11

    move-object/from16 v18, v5

    .end local v5    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v5, v8

    move v6, v12

    move-object/from16 v20, v7

    .end local v7    # "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "tTech":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v7, v10

    move/from16 v21, v8

    .end local v8    # "menuWidth":I
    .local v21, "menuWidth":I
    move v8, v14

    move v14, v9

    .end local v9    # "paddingLeft2":I
    .local v14, "paddingLeft2":I
    move v9, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 545
    iput-boolean v13, v1, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->drawScrollPositionAlways:Z

    .line 547
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Civilizations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 548
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 582
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 584
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 585
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 552
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 553
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

    .line 556
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 557
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 558
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->getHeight()I

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

    .line 560
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 561
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 576
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 577
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 578
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 565
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 566
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 567
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 569
    if-nez p1, :cond_12

    .line 570
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 572
    :cond_12
    return-void
.end method
