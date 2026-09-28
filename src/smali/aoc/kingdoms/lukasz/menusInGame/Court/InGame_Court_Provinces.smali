.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Provinces.java"


# static fields
.field public static iSortID:I

.field public static sSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    .line 52
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->sSearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 61

    .line 54
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    .line 58
    .local v16, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v1

    .line 60
    .local v2, "paddingLeft2":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    .line 63
    .local v1, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v17

    .line 64
    .local v17, "menuX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v4, v5

    .line 66
    .local v18, "menuY":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v4, 0x2

    .line 67
    .local v19, "buttonYPadding":I
    move/from16 v4, v16

    .line 68
    .local v4, "buttonX":I
    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 70
    .local v14, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_46

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_48

    :cond_46
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_48
    move/from16 v20, v5

    .line 72
    .local v20, "buttonH":I
    mul-int/lit8 v5, v16, 0x2

    sub-int v5, v1, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/lit8 v6, v6, 0x6

    sub-int/2addr v5, v6

    const/4 v13, 0x7

    div-int/lit8 v30, v5, 0x7

    .line 73
    .local v30, "statsRightW":I
    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    .line 75
    .local v31, "statsRightH":I
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v20, v5

    add-int v12, v5, v31

    .line 78
    .local v12, "emptyBGH":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    float-to-int v11, v5

    .line 79
    .local v11, "r0W":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    int-to-float v5, v5

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-int v10, v5

    .line 81
    .local v10, "r1W":I
    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 83
    .end local v4    # "buttonX":I
    .local v21, "buttonX":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v4, v16, 0x2

    sub-int v22, v1, v4

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x4

    mul-int/lit8 v5, v5, 0x4

    add-int v24, v4, v5

    const/16 v25, 0x1

    move-object v4, v9

    move-object/from16 v5, p0

    move/from16 v8, v16

    move-object v15, v9

    move v9, v14

    move/from16 v44, v10

    .end local v10    # "r1W":I
    .local v44, "r1W":I
    move/from16 v10, v22

    move/from16 v45, v11

    .end local v11    # "r0W":I
    .local v45, "r0W":I
    move/from16 v11, v23

    move/from16 v46, v12

    .end local v12    # "emptyBGH":I
    .local v46, "emptyBGH":I
    move/from16 v12, v24

    move/from16 v13, v25

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v14, v4

    .line 117
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Search"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v4, v16, 0x2

    sub-int v11, v1, v4

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v4, v13

    move-object/from16 v5, p0

    move/from16 v9, v16

    move v10, v14

    move-object/from16 v48, v12

    move/from16 v12, v22

    invoke-direct/range {v4 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v14, v4

    .line 130
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$3;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-eqz v5, :cond_127

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v15, :cond_124

    goto :goto_127

    :cond_124
    const/16 v34, 0x0

    goto :goto_129

    :cond_127
    :goto_127
    const/16 v34, 0x1

    :goto_129
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v15, :cond_130

    const/16 v35, 0x1

    goto :goto_132

    :cond_130
    const/16 v35, 0x0

    :goto_132
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Name"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int v41, v5, v6

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move/from16 v38, v21

    move/from16 v39, v14

    move/from16 v40, v45

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v21, v21, v4

    .line 161
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$4;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/4 v12, 0x3

    if-eq v5, v3, :cond_177

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v12, :cond_174

    goto :goto_177

    :cond_174
    const/16 v34, 0x0

    goto :goto_179

    :cond_177
    :goto_177
    const/16 v34, 0x1

    :goto_179
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v12, :cond_180

    const/16 v35, 0x1

    goto :goto_182

    :cond_180
    const/16 v35, 0x0

    :goto_182
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Population"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int v41, v5, v6

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move/from16 v38, v21

    move/from16 v39, v14

    move/from16 v40, v45

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v21, v21, v4

    .line 192
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$5;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/4 v11, 0x5

    const/4 v10, 0x4

    if-eq v5, v10, :cond_1c8

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v11, :cond_1c5

    goto :goto_1c8

    :cond_1c5
    const/16 v34, 0x0

    goto :goto_1ca

    :cond_1c8
    :goto_1c8
    const/16 v34, 0x1

    :goto_1ca
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v11, :cond_1d1

    const/16 v35, 0x1

    goto :goto_1d3

    :cond_1d1
    const/16 v35, 0x0

    :goto_1d3
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Income"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int v41, v5, v6

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move/from16 v38, v21

    move/from16 v39, v14

    move/from16 v40, v45

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int v21, v21, v4

    .line 223
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$6;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_219

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/4 v9, 0x7

    if-ne v5, v9, :cond_216

    goto :goto_21a

    :cond_216
    const/16 v34, 0x0

    goto :goto_21c

    :cond_219
    const/4 v9, 0x7

    :goto_21a
    const/16 v34, 0x1

    :goto_21c
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v9, :cond_223

    const/16 v35, 0x1

    goto :goto_225

    :cond_223
    const/16 v35, 0x0

    :goto_225
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "TaxEfficiency"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/lit8 v6, v6, 0x6

    add-int v41, v5, v6

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move/from16 v38, v21

    move/from16 v39, v14

    move/from16 v40, v45

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 255
    .end local v21    # "buttonX":I
    .restart local v4    # "buttonX":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v14, v5

    .line 258
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$7;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v8, 0x8

    const/16 v7, 0x9

    if-eq v6, v8, :cond_26e

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_26b

    goto :goto_26e

    :cond_26b
    const/16 v34, 0x0

    goto :goto_270

    :cond_26e
    :goto_26e
    const/16 v34, 0x1

    :goto_270
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_277

    const/16 v35, 0x1

    goto :goto_279

    :cond_277
    const/16 v35, 0x0

    :goto_279
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "GrowthRate"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v22, 0x6

    mul-int/lit8 v13, v13, 0x6

    add-int v41, v6, v13

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v5

    move-object/from16 v33, p0

    move/from16 v38, v4

    move/from16 v39, v14

    move/from16 v40, v44

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 290
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$8;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v13, 0xb

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2c1

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v13, :cond_2be

    goto :goto_2c1

    :cond_2be
    const/16 v34, 0x0

    goto :goto_2c3

    :cond_2c1
    :goto_2c1
    const/16 v34, 0x1

    :goto_2c3
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v13, :cond_2ca

    const/16 v35, 0x1

    goto :goto_2cc

    :cond_2ca
    const/16 v35, 0x0

    :goto_2cc
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Manpower"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v24, 0x6

    mul-int/lit8 v13, v13, 0x6

    add-int v41, v6, v13

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v5

    move-object/from16 v33, p0

    move/from16 v38, v4

    move/from16 v39, v14

    move/from16 v40, v44

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 321
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$9;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v13, 0xc

    const/16 v7, 0xd

    if-eq v6, v13, :cond_314

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_311

    goto :goto_314

    :cond_311
    const/16 v34, 0x0

    goto :goto_316

    :cond_314
    :goto_314
    const/16 v34, 0x1

    :goto_316
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_31d

    const/16 v35, 0x1

    goto :goto_31f

    :cond_31d
    const/16 v35, 0x0

    :goto_31f
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Infrastructure"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x6

    mul-int/lit8 v7, v7, 0x6

    add-int v41, v6, v7

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v5

    move-object/from16 v33, p0

    move/from16 v38, v4

    move/from16 v39, v14

    move/from16 v40, v44

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 352
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$10;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v7, 0xe

    const/16 v13, 0xf

    if-eq v6, v7, :cond_367

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v13, :cond_364

    goto :goto_367

    :cond_364
    const/16 v34, 0x0

    goto :goto_369

    :cond_367
    :goto_367
    const/16 v34, 0x1

    :goto_369
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v13, :cond_370

    const/16 v35, 0x1

    goto :goto_372

    :cond_370
    const/16 v35, 0x0

    :goto_372
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Economy"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x6

    mul-int/lit8 v13, v13, 0x6

    add-int v41, v6, v13

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v5

    move-object/from16 v33, p0

    move/from16 v38, v4

    move/from16 v39, v14

    move/from16 v40, v44

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 383
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$11;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v13, 0x10

    const/16 v7, 0x11

    if-eq v6, v13, :cond_3ba

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_3b7

    goto :goto_3ba

    :cond_3b7
    const/16 v34, 0x0

    goto :goto_3bc

    :cond_3ba
    :goto_3ba
    const/16 v34, 0x1

    :goto_3bc
    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v6, v7, :cond_3c3

    const/16 v35, 0x1

    goto :goto_3c5

    :cond_3c3
    const/16 v35, 0x0

    :goto_3c5
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Resource"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x6

    mul-int/lit8 v7, v7, 0x6

    add-int v41, v6, v7

    sget v42, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v37, -0x1

    move-object/from16 v32, v5

    move-object/from16 v33, p0

    move/from16 v38, v4

    move/from16 v39, v14

    move/from16 v40, v44

    invoke-direct/range {v32 .. v42}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v14, v5

    .line 418
    move/from16 v32, v16

    .line 422
    .end local v4    # "buttonX":I
    .local v32, "buttonX":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    .line 424
    .local v7, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->sSearch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_468

    .line 425
    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->sSearch:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "tSearch":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_425
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_467

    .line 428
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_464

    .line 429
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_464
    add-int/lit8 v5, v5, 0x1

    goto :goto_425

    .line 432
    .end local v4    # "tSearch":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_467
    goto :goto_48d

    .line 434
    :cond_468
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_469
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_48d

    .line 435
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_469

    .line 443
    .end local v4    # "i":I
    :cond_48d
    :goto_48d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_bdd

    .line 444
    const/4 v4, 0x0

    move/from16 v33, v32

    move/from16 v32, v14

    .line 446
    .end local v14    # "buttonY":I
    .local v4, "numOfAdded":I
    .local v32, "buttonY":I
    .local v33, "buttonX":I
    :goto_498
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_bd0

    add-int/lit8 v34, v4, 0x1

    .end local v4    # "numOfAdded":I
    .local v34, "numOfAdded":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->COURT_PROVINCES_LIMIT:I

    if-ge v4, v5, :cond_bc7

    .line 447
    const/4 v4, 0x0

    .line 449
    .local v4, "toAddID":I
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-nez v5, :cond_4e6

    .line 450
    const/4 v5, 0x1

    .local v5, "o":I
    :goto_4ac
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4e0

    .line 451
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4dd

    .line 452
    move v4, v5

    .line 450
    :cond_4dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_4ac

    :cond_4e0
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 455
    :cond_4e6
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v15, :cond_525

    .line 456
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_4eb
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_51f

    .line 457
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51c

    .line 458
    move v4, v5

    .line 456
    :cond_51c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4eb

    :cond_51f
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 461
    :cond_525
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v3, :cond_560

    .line 462
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_52a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_55a

    .line 463
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    if-le v6, v14, :cond_557

    .line 464
    move v4, v5

    .line 462
    :cond_557
    add-int/lit8 v5, v5, 0x1

    goto :goto_52a

    :cond_55a
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 467
    :cond_560
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v12, :cond_59b

    .line 468
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_565
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_595

    .line 469
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    if-ge v6, v14, :cond_592

    .line 470
    move v4, v5

    .line 468
    :cond_592
    add-int/lit8 v5, v5, 0x1

    goto :goto_565

    :cond_595
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 473
    :cond_59b
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v10, :cond_5fb

    .line 474
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_5a0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5f5

    .line 475
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v6, v14

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v14

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v14, v10

    cmpl-float v6, v6, v14

    if-lez v6, :cond_5f1

    .line 476
    move v4, v5

    .line 474
    :cond_5f1
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x4

    goto :goto_5a0

    :cond_5f5
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 479
    :cond_5fb
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v11, :cond_65a

    .line 480
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_600
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_654

    .line 481
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v6, v10

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v10

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v10, v14

    cmpg-float v6, v6, v10

    if-gez v6, :cond_651

    .line 482
    move v4, v5

    .line 480
    :cond_651
    add-int/lit8 v5, v5, 0x1

    goto :goto_600

    :cond_654
    move v8, v4

    const/16 v10, 0x9

    const/4 v14, 0x6

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 485
    :cond_65a
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/4 v14, 0x6

    if-ne v5, v14, :cond_697

    .line 486
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_660
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_692

    .line 487
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v10

    cmpl-float v6, v6, v10

    if-lez v6, :cond_68f

    .line 488
    move v4, v5

    .line 486
    :cond_68f
    add-int/lit8 v5, v5, 0x1

    goto :goto_660

    :cond_692
    move v8, v4

    const/16 v10, 0x9

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 491
    :cond_697
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v9, :cond_6d3

    .line 492
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_69c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6ce

    .line 493
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v10

    cmpg-float v6, v6, v10

    if-gez v6, :cond_6cb

    .line 494
    move v4, v5

    .line 492
    :cond_6cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_69c

    :cond_6ce
    move v8, v4

    const/16 v10, 0x9

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 497
    :cond_6d3
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v8, :cond_70f

    .line 498
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_6d8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_70a

    .line 499
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v10

    cmpl-float v6, v6, v10

    if-lez v6, :cond_707

    .line 500
    move v4, v5

    .line 498
    :cond_707
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d8

    :cond_70a
    move v8, v4

    const/16 v10, 0x9

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 503
    :cond_70f
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v10, 0x9

    if-ne v5, v10, :cond_74b

    .line 504
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_716
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_748

    .line 505
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v22

    cmpg-float v6, v6, v22

    if-gez v6, :cond_745

    .line 506
    move v4, v5

    .line 504
    :cond_745
    add-int/lit8 v5, v5, 0x1

    goto :goto_716

    :cond_748
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 509
    :cond_74b
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_789

    .line 510
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_752
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_786

    .line 511
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v22

    cmpl-float v6, v6, v22

    if-lez v6, :cond_781

    .line 512
    move v4, v5

    .line 510
    :cond_781
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    goto :goto_752

    :cond_786
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 515
    :cond_789
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_7c7

    .line 516
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_790
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7c4

    .line 517
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v22

    cmpg-float v6, v6, v22

    if-gez v6, :cond_7bf

    .line 518
    move v4, v5

    .line 516
    :cond_7bf
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xb

    goto :goto_790

    :cond_7c4
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 521
    :cond_7c7
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_805

    .line 522
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_7ce
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_802

    .line 523
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v8

    if-le v6, v8, :cond_7fb

    .line 524
    move v4, v5

    .line 522
    :cond_7fb
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xc

    const/16 v8, 0x8

    goto :goto_7ce

    :cond_802
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 527
    :cond_805
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v8, 0xd

    if-ne v5, v8, :cond_841

    .line 528
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_80c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_83e

    .line 529
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v8

    if-ge v6, v8, :cond_839

    .line 530
    move v4, v5

    .line 528
    :cond_839
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0xd

    goto :goto_80c

    :cond_83e
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 533
    :cond_841
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v8, 0xe

    if-ne v5, v8, :cond_87d

    .line 534
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_848
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_87a

    .line 535
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v22

    cmpl-float v6, v6, v22

    if-lez v6, :cond_877

    .line 536
    move v4, v5

    .line 534
    :cond_877
    add-int/lit8 v5, v5, 0x1

    goto :goto_848

    :cond_87a
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 539
    :cond_87d
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_8bb

    .line 540
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_884
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8b8

    .line 541
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v22

    cmpg-float v6, v6, v22

    if-gez v6, :cond_8b3

    .line 542
    move v4, v5

    .line 540
    :cond_8b3
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xf

    goto :goto_884

    :cond_8b8
    move v8, v4

    .end local v5    # "o":I
    goto/16 :goto_948

    .line 545
    :cond_8bb
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    if-ne v5, v13, :cond_900

    .line 546
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_8c0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8fe

    .line 547
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f9

    .line 548
    move v4, v5

    .line 546
    :cond_8f9
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0xe

    goto :goto_8c0

    :cond_8fe
    move v8, v4

    .end local v5    # "o":I
    goto :goto_948

    .line 551
    :cond_900
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->iSortID:I

    const/16 v8, 0x11

    if-ne v5, v8, :cond_947

    .line 552
    const/4 v5, 0x1

    .restart local v5    # "o":I
    :goto_907
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_945

    .line 553
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v22

    invoke-static/range {v22 .. v22}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_940

    .line 554
    move v4, v5

    .line 552
    :cond_940
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0x11

    goto :goto_907

    :cond_945
    move v8, v4

    goto :goto_948

    .line 551
    .end local v5    # "o":I
    :cond_947
    move v8, v4

    .line 559
    .end local v4    # "toAddID":I
    .local v8, "toAddID":I
    :goto_948
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 562
    .local v35, "nProvinceID":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$12;

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v22

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v38, v4, 0x2

    mul-int/lit8 v4, v16, 0x2

    sub-int v39, v1, v4

    sget v40, Laoc/kingdoms/lukasz/textures/Images;->population:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v6

    move/from16 v41, v1

    move-object v1, v5

    .end local v1    # "menuWidth":I
    .local v41, "menuWidth":I
    move-object/from16 v5, p0

    move/from16 v47, v2

    move-object v2, v6

    const/16 v23, 0xc

    const/16 v24, 0xf

    const/16 v27, 0xb

    const/16 v28, 0xa

    .end local v2    # "paddingLeft2":I
    .local v47, "paddingLeft2":I
    move-object/from16 v6, v22

    move-object v10, v7

    const/16 v43, 0xe

    const/16 v49, 0x11

    const/16 v50, 0xd

    const/16 v51, 0x9

    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v7, v37

    move/from16 v52, v8

    const/16 v37, 0x8

    .end local v8    # "toAddID":I
    .local v52, "toAddID":I
    move/from16 v8, v38

    const/16 v38, 0x7

    move/from16 v9, v16

    move-object/from16 v53, v10

    const/16 v36, 0x4

    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v53, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v10, v32

    const/16 v54, 0x5

    move/from16 v11, v39

    const/16 v39, 0x3

    move/from16 v12, v20

    const/16 v55, 0x10

    const/16 v56, 0xc

    const/16 v57, 0xf

    const/16 v58, 0xb

    move/from16 v13, v35

    const/16 v21, 0x6

    move/from16 v14, v40

    const/16 v40, 0x6

    const/16 v59, 0x1

    move-object v15, v3

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v32, v32, v2

    .line 593
    move/from16 v2, v16

    .line 594
    .end local v33    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$13;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v5

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v5, v6

    const/16 v6, 0x64

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move/from16 v23, v35

    move/from16 v26, v2

    move/from16 v27, v32

    move/from16 v28, v30

    move/from16 v29, v31

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 635
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$14;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object/from16 v21, v3

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 693
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$15;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v7

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object/from16 v21, v3

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 751
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$16;

    const-string v24, "1"

    sget v25, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object/from16 v21, v3

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 809
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$17;

    const-string v24, ""

    sget v25, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object/from16 v21, v3

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 867
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$18;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    invoke-static {v4, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object/from16 v21, v3

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 925
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v35 .. v35}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v25

    move-object/from16 v21, v1

    move/from16 v26, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 947
    move/from16 v33, v16

    .line 948
    .end local v2    # "buttonX":I
    .restart local v33    # "buttonX":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v32, v32, v1

    .line 950
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    move/from16 v12, v46

    .end local v46    # "emptyBGH":I
    .restart local v12    # "emptyBGH":I
    sub-int v2, v32, v12

    mul-int/lit8 v3, v47, 0x2

    sub-int v3, v41, v3

    move/from16 v13, v47

    .end local v47    # "paddingLeft2":I
    .local v13, "paddingLeft2":I
    invoke-direct {v1, v13, v2, v3, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v32, v32, v1

    .line 954
    move/from16 v4, v52

    move-object/from16 v15, v53

    .end local v52    # "toAddID":I
    .end local v53    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "toAddID":I
    .local v15, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 955
    .end local v4    # "toAddID":I
    .end local v35    # "nProvinceID":I
    move v2, v13

    move-object v7, v15

    move/from16 v4, v34

    move/from16 v1, v41

    const/4 v3, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v13, 0x10

    const/4 v15, 0x1

    goto/16 :goto_498

    .line 446
    .end local v12    # "emptyBGH":I
    .end local v13    # "paddingLeft2":I
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v41    # "menuWidth":I
    .restart local v1    # "menuWidth":I
    .local v2, "paddingLeft2":I
    .restart local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v46    # "emptyBGH":I
    :cond_bc7
    move/from16 v41, v1

    move v13, v2

    move-object v15, v7

    move/from16 v12, v46

    const/16 v39, 0x3

    .end local v1    # "menuWidth":I
    .end local v2    # "paddingLeft2":I
    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "emptyBGH":I
    .restart local v12    # "emptyBGH":I
    .restart local v13    # "paddingLeft2":I
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "menuWidth":I
    goto :goto_bd8

    .end local v12    # "emptyBGH":I
    .end local v13    # "paddingLeft2":I
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v34    # "numOfAdded":I
    .end local v41    # "menuWidth":I
    .restart local v1    # "menuWidth":I
    .restart local v2    # "paddingLeft2":I
    .local v4, "numOfAdded":I
    .restart local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v46    # "emptyBGH":I
    :cond_bd0
    move/from16 v41, v1

    move v13, v2

    move-object v15, v7

    move/from16 v12, v46

    const/16 v39, 0x3

    .line 956
    .end local v1    # "menuWidth":I
    .end local v2    # "paddingLeft2":I
    .end local v4    # "numOfAdded":I
    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "emptyBGH":I
    .restart local v12    # "emptyBGH":I
    .restart local v13    # "paddingLeft2":I
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "menuWidth":I
    :goto_bd8
    move/from16 v10, v32

    move/from16 v32, v33

    goto :goto_c19

    .line 958
    .end local v12    # "emptyBGH":I
    .end local v13    # "paddingLeft2":I
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v33    # "buttonX":I
    .end local v41    # "menuWidth":I
    .restart local v1    # "menuWidth":I
    .restart local v2    # "paddingLeft2":I
    .restart local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "buttonY":I
    .local v32, "buttonX":I
    .restart local v46    # "emptyBGH":I
    :cond_bdd
    move/from16 v41, v1

    move v13, v2

    move-object v15, v7

    move/from16 v12, v46

    const/16 v39, 0x3

    const/16 v59, 0x1

    .end local v1    # "menuWidth":I
    .end local v2    # "paddingLeft2":I
    .end local v7    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "emptyBGH":I
    .restart local v12    # "emptyBGH":I
    .restart local v13    # "paddingLeft2":I
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v41    # "menuWidth":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v16, 0x2

    sub-int v10, v41, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v1

    move/from16 v8, v16

    move v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, v14

    move v10, v1

    .line 962
    .end local v14    # "buttonY":I
    .local v10, "buttonY":I
    :goto_c19
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v18, v18, v1

    .line 963
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v18

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 965
    .local v11, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, v41

    const/4 v14, 0x0

    .end local v41    # "menuWidth":I
    .local v3, "menuWidth":I
    invoke-direct {v1, v14, v14, v3, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    move/from16 v21, v3

    .end local v3    # "menuWidth":I
    .local v21, "menuWidth":I
    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v21

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 969
    iput-boolean v14, v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->drawScrollPositionAlways:Z

    .line 971
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Provinces"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v48

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 972
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 2

    .line 1006
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 1008
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 1009
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 976
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 977
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

    .line 980
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 981
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 982
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->getHeight()I

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

    .line 984
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 985
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 1000
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 1001
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 1002
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 989
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 990
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 991
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 993
    if-nez p1, :cond_12

    .line 994
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 996
    :cond_12
    return-void
.end method
