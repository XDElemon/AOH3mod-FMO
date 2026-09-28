.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightTaxEfficiency.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime:J

    .line 44
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime2:J

    .line 46
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    .line 47
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 54

    .line 49
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 53
    .local v11, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 55
    .local v12, "titleHeight":I
    sget v13, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 57
    .local v13, "extraX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 59
    .local v14, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v15, v2, v14

    .line 60
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

    .line 62
    .local v16, "menuY":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 63
    .local v17, "buttonYPadding":I
    move/from16 v10, v17

    .line 64
    .local v10, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v33, v11, v2

    .line 66
    .local v33, "buttonX":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_51

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_53

    :cond_51
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_53
    move/from16 v24, v2

    .line 67
    .local v24, "buttonH":I
    mul-int/lit8 v2, v11, 0x2

    sub-int v2, v14, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v9, v2

    .line 69
    .local v9, "c0W":I
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Civilizations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    if-nez v3, :cond_75

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_77

    :cond_75
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_77
    move/from16 v25, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v21, v33

    move/from16 v22, v10

    move/from16 v23, v9

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v33, v2

    add-int v5, v2, v9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_a3

    :cond_a1
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_a3
    move/from16 v18, v2

    move-object v2, v8

    move-object/from16 v3, p0

    move v6, v10

    move/from16 v19, v11

    const/4 v11, 0x1

    .end local v11    # "paddingLeft":I
    .local v19, "paddingLeft":I
    move v7, v9

    move-object v11, v8

    move/from16 v8, v24

    move/from16 v21, v9

    .end local v9    # "c0W":I
    .local v21, "c0W":I
    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 136
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Continents"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_e2

    :cond_e0
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_e2
    move/from16 v32, v3

    move-object/from16 v25, v2

    move-object/from16 v26, p0

    move/from16 v28, v33

    move/from16 v29, v10

    move/from16 v30, v21

    move/from16 v31, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$4;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Religion"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v33, v3

    add-int v28, v3, v21

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_10e

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_110

    :cond_10e
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_110
    move/from16 v32, v3

    move-object/from16 v25, v2

    move-object/from16 v26, p0

    move/from16 v29, v10

    move/from16 v30, v21

    move/from16 v31, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 202
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v11, v2

    .line 203
    .local v11, "r0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v2, v2, v6

    float-to-int v9, v2

    .line 204
    .local v9, "r1W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v8, v2

    .line 206
    .local v8, "r2W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x4

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v2, v7

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v7, v2

    .line 207
    .local v7, "r0W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v3, v2

    .line 208
    .local v3, "r1W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v22, 0x4

    sub-int v2, v2, v22

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v6, v2

    .line 210
    .local v6, "r2W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 212
    .end local v33    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$5;

    sget v23, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-eqz v23, :cond_18e

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    move/from16 v45, v12

    const/4 v12, 0x1

    .end local v12    # "titleHeight":I
    .local v45, "titleHeight":I
    if-ne v4, v12, :cond_18b

    goto :goto_191

    :cond_18b
    const/16 v36, 0x0

    goto :goto_193

    .end local v45    # "titleHeight":I
    .restart local v12    # "titleHeight":I
    :cond_18e
    move/from16 v45, v12

    const/4 v12, 0x1

    .end local v12    # "titleHeight":I
    .restart local v45    # "titleHeight":I
    :goto_191
    const/16 v36, 0x1

    :goto_193
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-ne v4, v12, :cond_19a

    const/16 v37, 0x1

    goto :goto_19c

    :cond_19a
    const/16 v37, 0x0

    :goto_19c
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Name"

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v43, v4, v12

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v34, v5

    move-object/from16 v35, p0

    move/from16 v40, v2

    move/from16 v41, v10

    move/from16 v42, v11

    invoke-direct/range {v34 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 242
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$6;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v12, 0x2

    if-eq v5, v12, :cond_1e1

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v12, 0x3

    if-ne v5, v12, :cond_1de

    goto :goto_1e2

    :cond_1de
    const/16 v36, 0x0

    goto :goto_1e4

    :cond_1e1
    const/4 v12, 0x3

    :goto_1e2
    const/16 v36, 0x1

    :goto_1e4
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-ne v5, v12, :cond_1eb

    const/16 v37, 0x1

    goto :goto_1ed

    :cond_1eb
    const/16 v37, 0x0

    :goto_1ed
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "TaxEfficiency"

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v25, v25, 0x6

    add-int v43, v5, v25

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v34, v4

    move-object/from16 v35, p0

    move/from16 v40, v2

    move/from16 v41, v10

    move/from16 v42, v9

    invoke-direct/range {v34 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 272
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    move/from16 v46, v9

    .end local v9    # "r1W":I
    .local v46, "r1W":I
    const/4 v9, 0x4

    if-eq v5, v9, :cond_234

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v9, 0x5

    if-ne v5, v9, :cond_231

    goto :goto_235

    :cond_231
    const/16 v36, 0x0

    goto :goto_237

    :cond_234
    const/4 v9, 0x5

    :goto_235
    const/16 v36, 0x1

    :goto_237
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-ne v5, v9, :cond_23e

    const/16 v37, 0x1

    goto :goto_240

    :cond_23e
    const/16 v37, 0x0

    :goto_240
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "IncomeTaxation"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int v43, v5, v9

    sget v44, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v39, -0x1

    move-object/from16 v34, v4

    move-object/from16 v35, p0

    move/from16 v40, v2

    move/from16 v41, v10

    move/from16 v42, v8

    invoke-direct/range {v34 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v10, v4

    .line 304
    :try_start_278
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27a} :catch_f6c

    const-string v9, "%"

    if-nez v4, :cond_61d

    .line 305
    :try_start_27e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v4, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v47, v25

    .line 307
    .local v47, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_28f} :catch_607

    move-object/from16 v48, v25

    .line 309
    .local v48, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v25, 0x1

    move/from16 v5, v25

    .local v5, "i":I
    :goto_295
    move/from16 v25, v2

    .end local v2    # "buttonX":I
    .local v25, "buttonX":I
    :try_start_297
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29b} :catch_5f1

    if-ge v5, v2, :cond_328

    .line 310
    :try_start_29d
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2fd

    .line 311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAverageTaxEfficiency()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2ba} :catch_312

    move/from16 v49, v8

    move-object/from16 v8, v47

    .end local v47    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v8, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v49, "r2W":I
    :try_start_2be
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTotalProvinceIncomeTax()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2cd} :catch_2e9

    move/from16 v26, v10

    move-object/from16 v10, v48

    .end local v48    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v26, "buttonY":I
    :try_start_2d1
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_2d4} :catch_2d5

    goto :goto_305

    .line 787
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_2d5
    move-exception v0

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move/from16 v2, v25

    move/from16 v10, v26

    goto/16 :goto_f80

    .end local v26    # "buttonY":I
    .local v10, "buttonY":I
    :catch_2e9
    move-exception v0

    move/from16 v26, v10

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move/from16 v2, v25

    .end local v10    # "buttonY":I
    .restart local v26    # "buttonY":I
    goto/16 :goto_f80

    .line 310
    .end local v26    # "buttonY":I
    .end local v49    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    .local v8, "r2W":I
    .restart local v10    # "buttonY":I
    .restart local v47    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v48    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_2fd
    move/from16 v49, v8

    move/from16 v26, v10

    move-object/from16 v8, v47

    move-object/from16 v10, v48

    .line 309
    .end local v47    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v48    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v8, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v26    # "buttonY":I
    .restart local v49    # "r2W":I
    :goto_305
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v47, v8

    move-object/from16 v48, v10

    move/from16 v2, v25

    move/from16 v10, v26

    move/from16 v8, v49

    goto :goto_295

    .line 787
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v26    # "buttonY":I
    .end local v49    # "r2W":I
    .local v8, "r2W":I
    .local v10, "buttonY":I
    :catch_312
    move-exception v0

    move/from16 v49, v8

    move/from16 v26, v10

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move/from16 v2, v25

    .end local v8    # "r2W":I
    .end local v10    # "buttonY":I
    .restart local v26    # "buttonY":I
    .restart local v49    # "r2W":I
    goto/16 :goto_f80

    .line 309
    .end local v26    # "buttonY":I
    .end local v49    # "r2W":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    .restart local v8    # "r2W":I
    .restart local v10    # "buttonY":I
    .restart local v47    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v48    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_328
    move/from16 v49, v8

    move/from16 v26, v10

    move-object/from16 v8, v47

    move-object/from16 v10, v48

    .end local v47    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v48    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v8, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v10, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v26    # "buttonY":I
    .restart local v49    # "r2W":I
    move/from16 v2, v25

    move/from16 v5, v26

    .line 317
    .end local v25    # "buttonX":I
    .end local v26    # "buttonY":I
    .restart local v2    # "buttonX":I
    .local v5, "buttonY":I
    :goto_334
    :try_start_334
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_5cd

    .line 318
    const/16 v25, 0x0

    .line 320
    .local v25, "toAddID":I
    sget v26, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_33e} :catch_5de

    if-nez v26, :cond_39c

    .line 321
    const/16 v26, 0x1

    move/from16 v27, v2

    move/from16 v47, v11

    move/from16 v2, v25

    move/from16 v11, v26

    .end local v25    # "toAddID":I
    .local v2, "toAddID":I
    .local v11, "o":I
    .local v27, "buttonX":I
    .local v47, "r0W":I
    :goto_34a
    move/from16 v48, v13

    .end local v13    # "extraX":I
    .local v48, "extraX":I
    :try_start_34c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_387

    .line 322
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v25

    move/from16 v26, v2

    .end local v2    # "toAddID":I
    .local v26, "toAddID":I
    invoke-virtual/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_37c
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_37c} :catch_38d

    if-eqz v2, :cond_380

    .line 323
    move v2, v11

    .end local v26    # "toAddID":I
    .restart local v2    # "toAddID":I
    goto :goto_382

    .line 322
    .end local v2    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_380
    move/from16 v2, v26

    .line 321
    .end local v26    # "toAddID":I
    .restart local v2    # "toAddID":I
    :goto_382
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v48

    goto :goto_34a

    :cond_387
    move/from16 v26, v2

    .end local v2    # "toAddID":I
    .restart local v26    # "toAddID":I
    move/from16 v11, v26

    .end local v11    # "o":I
    goto/16 :goto_495

    .line 787
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v26    # "toAddID":I
    :catch_38d
    move-exception v0

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    move-object/from16 v51, v12

    move/from16 v52, v14

    move/from16 v50, v15

    move/from16 v2, v27

    goto/16 :goto_f80

    .line 326
    .end local v27    # "buttonX":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .local v2, "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v11, "r0W":I
    .restart local v13    # "extraX":I
    .restart local v25    # "toAddID":I
    :cond_39c
    move/from16 v27, v2

    move/from16 v47, v11

    move/from16 v48, v13

    .end local v2    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v27    # "buttonX":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    :try_start_3a2
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_3a2 .. :try_end_3a4} :catch_5be

    const/4 v11, 0x1

    if-ne v2, v11, :cond_3e7

    .line 327
    const/4 v2, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .local v2, "o":I
    .local v11, "toAddID":I
    :goto_3aa
    :try_start_3aa
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_3e3

    .line 328
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v25

    move/from16 v26, v11

    .end local v11    # "toAddID":I
    .restart local v26    # "toAddID":I
    invoke-virtual/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_3da
    .catch Ljava/lang/Exception; {:try_start_3aa .. :try_end_3da} :catch_38d

    if-eqz v11, :cond_3de

    .line 329
    move v11, v2

    .end local v26    # "toAddID":I
    .restart local v11    # "toAddID":I
    goto :goto_3e0

    .line 328
    .end local v11    # "toAddID":I
    .restart local v26    # "toAddID":I
    :cond_3de
    move/from16 v11, v26

    .line 327
    .end local v26    # "toAddID":I
    .restart local v11    # "toAddID":I
    :goto_3e0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3aa

    :cond_3e3
    move/from16 v26, v11

    .end local v2    # "o":I
    .end local v11    # "toAddID":I
    .restart local v26    # "toAddID":I
    goto/16 :goto_495

    .line 332
    .end local v26    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_3e7
    :try_start_3e7
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_3e9
    .catch Ljava/lang/Exception; {:try_start_3e7 .. :try_end_3e9} :catch_5be

    const/4 v11, 0x2

    if-ne v2, v11, :cond_413

    .line 333
    const/4 v2, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .restart local v2    # "o":I
    .restart local v11    # "toAddID":I
    :goto_3ef
    :try_start_3ef
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_411

    .line 334
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_409} :catch_38d

    cmpg-float v13, v13, v25

    if-gez v13, :cond_40e

    .line 335
    move v11, v2

    .line 333
    :cond_40e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ef

    .end local v2    # "o":I
    :cond_411
    goto/16 :goto_495

    .line 338
    .end local v11    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_413
    :try_start_413
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_415
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_415} :catch_5be

    const/4 v11, 0x3

    if-ne v2, v11, :cond_43e

    .line 339
    const/4 v2, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .restart local v2    # "o":I
    .restart local v11    # "toAddID":I
    :goto_41b
    :try_start_41b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_43d

    .line 340
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25
    :try_end_435
    .catch Ljava/lang/Exception; {:try_start_41b .. :try_end_435} :catch_38d

    cmpl-float v13, v13, v25

    if-lez v13, :cond_43a

    .line 341
    move v11, v2

    .line 339
    :cond_43a
    add-int/lit8 v2, v2, 0x1

    goto :goto_41b

    .end local v2    # "o":I
    :cond_43d
    goto :goto_495

    .line 344
    .end local v11    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_43e
    :try_start_43e
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_440} :catch_5be

    const/4 v11, 0x4

    if-ne v2, v11, :cond_469

    .line 345
    const/4 v2, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .restart local v2    # "o":I
    .restart local v11    # "toAddID":I
    :goto_446
    :try_start_446
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_468

    .line 346
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_446 .. :try_end_460} :catch_38d

    cmpg-float v13, v13, v25

    if-gez v13, :cond_465

    .line 347
    move v11, v2

    .line 345
    :cond_465
    add-int/lit8 v2, v2, 0x1

    goto :goto_446

    .end local v2    # "o":I
    :cond_468
    goto :goto_495

    .line 350
    .end local v11    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_469
    :try_start_469
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_469 .. :try_end_46b} :catch_5be

    const/4 v11, 0x5

    if-ne v2, v11, :cond_493

    .line 351
    const/4 v2, 0x1

    move/from16 v11, v25

    .end local v25    # "toAddID":I
    .restart local v2    # "o":I
    .restart local v11    # "toAddID":I
    :goto_471
    :try_start_471
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_495

    .line 352
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25
    :try_end_48b
    .catch Ljava/lang/Exception; {:try_start_471 .. :try_end_48b} :catch_38d

    cmpl-float v13, v13, v25

    if-lez v13, :cond_490

    .line 353
    move v11, v2

    .line 351
    :cond_490
    add-int/lit8 v2, v2, 0x1

    goto :goto_471

    .line 350
    .end local v2    # "o":I
    .end local v11    # "toAddID":I
    .restart local v25    # "toAddID":I
    :cond_493
    move/from16 v11, v25

    .line 358
    .end local v25    # "toAddID":I
    .restart local v11    # "toAddID":I
    :cond_495
    :goto_495
    :try_start_495
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_499
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_499} :catch_5be

    add-int/2addr v2, v13

    .line 362
    .end local v27    # "buttonX":I
    .local v2, "buttonX":I
    :try_start_49a
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$8;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v36

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x2

    mul-int/lit8 v38, v25, 0x2

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v34, v13

    move-object/from16 v35, p0

    move/from16 v39, v2

    move/from16 v40, v5

    move/from16 v41, v7

    move/from16 v42, v24

    invoke-direct/range {v34 .. v43}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/16 v20, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v13, v25

    add-int/2addr v2, v13

    .line 404
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
    :try_end_4eb
    .catch Ljava/lang/Exception; {:try_start_49a .. :try_end_4eb} :catch_5b1

    move/from16 v50, v15

    .end local v15    # "menuX":I
    .local v50, "menuX":I
    :try_start_4ed
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;
    :try_end_4f8
    .catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_4f8} :catch_5a6

    move-object/from16 v51, v12

    :try_start_4fa
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v12
    :try_end_4fe
    .catch Ljava/lang/Exception; {:try_start_4fa .. :try_end_4fe} :catch_5a4

    move/from16 v52, v14

    const/16 v14, 0xa

    .end local v14    # "menuWidth":I
    .local v52, "menuWidth":I
    :try_start_502
    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v13

    move/from16 v29, v2

    move/from16 v30, v5

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 407
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0x64

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v12

    move/from16 v29, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v2, v12

    .line 410
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v5, v12

    .line 412
    invoke-interface {v4, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 413
    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 414
    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_502 .. :try_end_591} :catch_59d

    .line 415
    move/from16 v11, v47

    move/from16 v13, v48

    move/from16 v15, v50

    move-object/from16 v12, v51

    move/from16 v14, v52

    .end local v11    # "toAddID":I
    goto/16 :goto_334

    .line 787
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_59d
    move-exception v0

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    goto/16 :goto_f80

    .end local v52    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    :catch_5a4
    move-exception v0

    goto :goto_5a9

    :catch_5a6
    move-exception v0

    move-object/from16 v51, v12

    :goto_5a9
    move/from16 v52, v14

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    .end local v14    # "menuWidth":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :catch_5b1
    move-exception v0

    move-object/from16 v51, v12

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .end local v2    # "buttonX":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    .restart local v27    # "buttonX":I
    :catch_5be
    move-exception v0

    move-object/from16 v51, v12

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    move/from16 v2, v27

    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .line 317
    .end local v27    # "buttonX":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local v11, "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :cond_5cd
    move/from16 v27, v2

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    .line 416
    .end local v2    # "buttonX":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v27    # "buttonX":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    move v10, v5

    move/from16 v44, v7

    goto/16 :goto_f5a

    .line 787
    .end local v27    # "buttonX":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :catch_5de
    move-exception v0

    move/from16 v27, v2

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    move v10, v5

    move/from16 v44, v7

    .end local v2    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v27    # "buttonX":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .end local v5    # "buttonY":I
    .end local v27    # "buttonX":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v49    # "r2W":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .local v8, "r2W":I
    .local v10, "buttonY":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    .local v25, "buttonX":I
    :catch_5f1
    move-exception v0

    move/from16 v49, v8

    move/from16 v26, v10

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v2, v25

    .end local v8    # "r2W":I
    .end local v10    # "buttonY":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .local v26, "buttonY":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v49    # "r2W":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .end local v25    # "buttonX":I
    .end local v26    # "buttonY":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v49    # "r2W":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v8    # "r2W":I
    .restart local v10    # "buttonY":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :catch_607
    move-exception v0

    move/from16 v25, v2

    move/from16 v49, v8

    move/from16 v26, v10

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    move/from16 v44, v7

    .end local v2    # "buttonX":I
    .end local v8    # "r2W":I
    .end local v10    # "buttonY":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v25    # "buttonX":I
    .restart local v26    # "buttonY":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v49    # "r2W":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    goto/16 :goto_f80

    .line 417
    .end local v25    # "buttonX":I
    .end local v26    # "buttonY":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v49    # "r2W":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v8    # "r2W":I
    .restart local v10    # "buttonY":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :cond_61d
    move/from16 v25, v2

    move/from16 v49, v8

    move/from16 v26, v10

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    .end local v2    # "buttonX":I
    .end local v8    # "r2W":I
    .end local v10    # "buttonY":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .restart local v25    # "buttonX":I
    .restart local v26    # "buttonY":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v49    # "r2W":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    :try_start_62d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I
    :try_end_62f
    .catch Ljava/lang/Exception; {:try_start_62d .. :try_end_62f} :catch_f63

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8bc

    .line 418
    :try_start_632
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v2, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v4, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v5, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_642
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v8, v10, :cond_678

    .line 423
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_675

    .line 424
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_675
    .catch Ljava/lang/Exception; {:try_start_632 .. :try_end_675} :catch_8b2

    .line 422
    :cond_675
    add-int/lit8 v8, v8, 0x1

    goto :goto_642

    .line 430
    .end local v8    # "i":I
    :cond_678
    const/16 v8, 0xfa

    move/from16 v10, v26

    .line 432
    .end local v26    # "buttonY":I
    .local v8, "maxProvinces":I
    .restart local v10    # "buttonY":I
    :goto_67c
    :try_start_67c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8a4

    add-int/lit8 v11, v8, -0x1

    .end local v8    # "maxProvinces":I
    .local v11, "maxProvinces":I
    if-lez v8, :cond_8a2

    .line 433
    const/4 v8, 0x0

    .line 435
    .local v8, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-nez v12, :cond_6c2

    .line 436
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_68c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6c0

    .line 437
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6bd

    .line 438
    move v8, v12

    .line 436
    :cond_6bd
    add-int/lit8 v12, v12, 0x1

    goto :goto_68c

    .end local v12    # "o":I
    :cond_6c0
    goto/16 :goto_7a2

    .line 441
    :cond_6c2
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6fe

    .line 442
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_6c8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6fc

    .line 443
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6f9

    .line 444
    move v8, v12

    .line 442
    :cond_6f9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6c8

    .end local v12    # "o":I
    :cond_6fc
    goto/16 :goto_7a2

    .line 447
    :cond_6fe
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_728

    .line 448
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_704
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_726

    .line 449
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_723

    .line 450
    move v8, v12

    .line 448
    :cond_723
    add-int/lit8 v12, v12, 0x1

    goto :goto_704

    .end local v12    # "o":I
    :cond_726
    goto/16 :goto_7a2

    .line 453
    :cond_728
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_751

    .line 454
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_72e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_750

    .line 455
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_74d

    .line 456
    move v8, v12

    .line 454
    :cond_74d
    add-int/lit8 v12, v12, 0x1

    goto :goto_72e

    .end local v12    # "o":I
    :cond_750
    goto :goto_7a2

    .line 459
    :cond_751
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_77a

    .line 460
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_757
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_779

    .line 461
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_776

    .line 462
    move v8, v12

    .line 460
    :cond_776
    add-int/lit8 v12, v12, 0x1

    goto :goto_757

    .end local v12    # "o":I
    :cond_779
    goto :goto_7a2

    .line 465
    :cond_77a
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_7a2

    .line 466
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_780
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_7a2

    .line 467
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_79f

    .line 468
    move v8, v12

    .line 466
    :cond_79f
    add-int/lit8 v12, v12, 0x1

    goto :goto_780

    .line 473
    .end local v12    # "o":I
    :cond_7a2
    :goto_7a2
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7a6
    .catch Ljava/lang/Exception; {:try_start_67c .. :try_end_7a6} :catch_8aa

    add-int/2addr v12, v13

    .line 476
    .end local v25    # "buttonX":I
    .local v12, "buttonX":I
    :try_start_7a7
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$9;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v36

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x2

    mul-int/lit8 v38, v14, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v34, v13

    move-object/from16 v35, p0

    move/from16 v39, v12

    move/from16 v40, v10

    move/from16 v41, v7

    move/from16 v42, v24

    invoke-direct/range {v34 .. v43}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 521
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move/from16 v34, v11

    const/16 v11, 0xa

    .end local v11    # "maxProvinces":I
    .local v34, "maxProvinces":I
    invoke-static {v15, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v13

    move/from16 v29, v12

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 524
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v15, 0x64

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v13

    move/from16 v29, v12

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_877
    .catch Ljava/lang/Exception; {:try_start_7a7 .. :try_end_877} :catch_89b

    add-int/2addr v13, v14

    add-int v25, v12, v13

    .line 527
    .end local v12    # "buttonX":I
    .restart local v25    # "buttonX":I
    :try_start_87a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 529
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 531
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_897
    .catch Ljava/lang/Exception; {:try_start_87a .. :try_end_897} :catch_8aa

    .line 532
    move/from16 v8, v34

    .end local v8    # "toAddID":I
    goto/16 :goto_67c

    .line 787
    .end local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v25    # "buttonX":I
    .end local v34    # "maxProvinces":I
    .restart local v12    # "buttonX":I
    :catch_89b
    move-exception v0

    move-object v4, v0

    move/from16 v44, v7

    move v2, v12

    goto/16 :goto_f80

    .line 432
    .end local v12    # "buttonX":I
    .restart local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "maxProvinces":I
    .restart local v25    # "buttonX":I
    :cond_8a2
    move/from16 v34, v11

    .line 533
    .end local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "maxProvinces":I
    :cond_8a4
    move/from16 v44, v7

    move/from16 v2, v25

    goto/16 :goto_f5a

    .line 787
    :catch_8aa
    move-exception v0

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v2, v25

    goto/16 :goto_f80

    .end local v10    # "buttonY":I
    .restart local v26    # "buttonY":I
    :catch_8b2
    move-exception v0

    move-object v4, v0

    move/from16 v44, v7

    move/from16 v2, v25

    move/from16 v10, v26

    goto/16 :goto_f80

    .line 534
    :cond_8bc
    :try_start_8bc
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c26

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v2, "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v5, "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v8, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v10, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8d7
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I
    :try_end_8db
    .catch Ljava/lang/Exception; {:try_start_8bc .. :try_end_8db} :catch_f63

    if-ge v11, v12, :cond_8fd

    .line 541
    :try_start_8dd
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8fa
    .catch Ljava/lang/Exception; {:try_start_8dd .. :try_end_8fa} :catch_8b2

    .line 540
    add-int/lit8 v11, v11, 0x1

    goto :goto_8d7

    .line 547
    .end local v11    # "i":I
    :cond_8fd
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8fe
    :try_start_8fe
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11
    :try_end_902
    .catch Ljava/lang/Exception; {:try_start_8fe .. :try_end_902} :catch_f63

    if-ge v4, v11, :cond_987

    .line 548
    :try_start_904
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_983

    .line 549
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v12

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_983
    .catch Ljava/lang/Exception; {:try_start_904 .. :try_end_983} :catch_8b2

    .line 547
    :cond_983
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8fe

    .line 555
    .end local v4    # "i":I
    :cond_987
    const/4 v4, 0x0

    :try_start_988
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 556
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 557
    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 558
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 560
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_995
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11
    :try_end_999
    .catch Ljava/lang/Exception; {:try_start_988 .. :try_end_999} :catch_f63

    if-ge v4, v11, :cond_9bb

    .line 561
    :try_start_99b
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v4, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9b8
    .catch Ljava/lang/Exception; {:try_start_99b .. :try_end_9b8} :catch_8b2

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto :goto_995

    :cond_9bb
    move/from16 v4, v26

    .line 564
    .end local v26    # "buttonY":I
    .local v4, "buttonY":I
    :goto_9bd
    :try_start_9bd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_c16

    .line 565
    const/4 v11, 0x0

    .line 567
    .local v11, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_9c6
    .catch Ljava/lang/Exception; {:try_start_9bd .. :try_end_9c6} :catch_c1d

    if-nez v12, :cond_a10

    .line 568
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_9c9
    :try_start_9c9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a05

    .line 569
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_9ff
    .catch Ljava/lang/Exception; {:try_start_9c9 .. :try_end_9ff} :catch_a07

    if-eqz v13, :cond_a02

    .line 570
    move v11, v12

    .line 568
    :cond_a02
    add-int/lit8 v12, v12, 0x1

    goto :goto_9c9

    .end local v12    # "o":I
    :cond_a05
    goto/16 :goto_af8

    .line 787
    .end local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "toAddID":I
    :catch_a07
    move-exception v0

    move v10, v4

    move/from16 v44, v7

    move/from16 v2, v25

    move-object v4, v0

    goto/16 :goto_f80

    .line 573
    .restart local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "toAddID":I
    :cond_a10
    :try_start_a10
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_a12
    .catch Ljava/lang/Exception; {:try_start_a10 .. :try_end_a12} :catch_c1d

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a54

    .line 574
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a16
    :try_start_a16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a52

    .line 575
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_a4c
    .catch Ljava/lang/Exception; {:try_start_a16 .. :try_end_a4c} :catch_a07

    if-eqz v13, :cond_a4f

    .line 576
    move v11, v12

    .line 574
    :cond_a4f
    add-int/lit8 v12, v12, 0x1

    goto :goto_a16

    .end local v12    # "o":I
    :cond_a52
    goto/16 :goto_af8

    .line 579
    :cond_a54
    :try_start_a54
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_a56
    .catch Ljava/lang/Exception; {:try_start_a54 .. :try_end_a56} :catch_c1d

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a7e

    .line 580
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a5a
    :try_start_a5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a7c

    .line 581
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14
    :try_end_a74
    .catch Ljava/lang/Exception; {:try_start_a5a .. :try_end_a74} :catch_a07

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a79

    .line 582
    move v11, v12

    .line 580
    :cond_a79
    add-int/lit8 v12, v12, 0x1

    goto :goto_a5a

    .end local v12    # "o":I
    :cond_a7c
    goto/16 :goto_af8

    .line 585
    :cond_a7e
    :try_start_a7e
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_a80
    .catch Ljava/lang/Exception; {:try_start_a7e .. :try_end_a80} :catch_c1d

    const/4 v13, 0x3

    if-ne v12, v13, :cond_aa7

    .line 586
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_a84
    :try_start_a84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_aa6

    .line 587
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14
    :try_end_a9e
    .catch Ljava/lang/Exception; {:try_start_a84 .. :try_end_a9e} :catch_a07

    cmpl-float v13, v13, v14

    if-lez v13, :cond_aa3

    .line 588
    move v11, v12

    .line 586
    :cond_aa3
    add-int/lit8 v12, v12, 0x1

    goto :goto_a84

    .end local v12    # "o":I
    :cond_aa6
    goto :goto_af8

    .line 591
    :cond_aa7
    :try_start_aa7
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_aa9
    .catch Ljava/lang/Exception; {:try_start_aa7 .. :try_end_aa9} :catch_c1d

    const/4 v13, 0x4

    if-ne v12, v13, :cond_ad0

    .line 592
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_aad
    :try_start_aad
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_acf

    .line 593
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14
    :try_end_ac7
    .catch Ljava/lang/Exception; {:try_start_aad .. :try_end_ac7} :catch_a07

    cmpg-float v13, v13, v14

    if-gez v13, :cond_acc

    .line 594
    move v11, v12

    .line 592
    :cond_acc
    add-int/lit8 v12, v12, 0x1

    goto :goto_aad

    .end local v12    # "o":I
    :cond_acf
    goto :goto_af8

    .line 597
    :cond_ad0
    :try_start_ad0
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I
    :try_end_ad2
    .catch Ljava/lang/Exception; {:try_start_ad0 .. :try_end_ad2} :catch_c1d

    const/4 v13, 0x5

    if-ne v12, v13, :cond_af8

    .line 598
    const/4 v12, 0x1

    .restart local v12    # "o":I
    :goto_ad6
    :try_start_ad6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_af8

    .line 599
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14
    :try_end_af0
    .catch Ljava/lang/Exception; {:try_start_ad6 .. :try_end_af0} :catch_a07

    cmpl-float v13, v13, v14

    if-lez v13, :cond_af5

    .line 600
    move v11, v12

    .line 598
    :cond_af5
    add-int/lit8 v12, v12, 0x1

    goto :goto_ad6

    .line 605
    .end local v12    # "o":I
    :cond_af8
    :goto_af8
    :try_start_af8
    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_afc
    .catch Ljava/lang/Exception; {:try_start_af8 .. :try_end_afc} :catch_c1d

    add-int/2addr v12, v13

    .line 608
    .end local v25    # "buttonX":I
    .local v12, "buttonX":I
    :try_start_afd
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$10;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget v37, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v25, 0x2

    mul-int/lit8 v38, v15, 0x2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move-object/from16 v34, v13

    move-object/from16 v35, p0

    move-object/from16 v36, v14

    move/from16 v39, v12

    move/from16 v40, v4

    move/from16 v41, v7

    move/from16 v42, v24

    invoke-direct/range {v34 .. v43}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 649
    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_b60
    .catch Ljava/lang/Exception; {:try_start_afd .. :try_end_b60} :catch_c0e

    move/from16 v44, v7

    const/16 v7, 0x64

    .end local v7    # "r0W2":I
    .local v44, "r0W2":I
    :try_start_b64
    invoke-static {v15, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v13

    move/from16 v29, v12

    move/from16 v30, v4

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v7

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_b9a
    .catch Ljava/lang/Exception; {:try_start_b64 .. :try_end_b9a} :catch_c08

    add-int/2addr v7, v13

    add-int/2addr v7, v12

    .line 652
    .end local v12    # "buttonX":I
    .local v7, "buttonX":I
    :try_start_b9c
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0x64

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v12

    move/from16 v29, v7

    move/from16 v30, v4

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_bd4
    .catch Ljava/lang/Exception; {:try_start_b9c .. :try_end_bd4} :catch_c02

    add-int/2addr v12, v13

    add-int v25, v7, v12

    .line 655
    .end local v7    # "buttonX":I
    .restart local v25    # "buttonX":I
    :try_start_bd7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v12

    add-int/2addr v4, v7

    .line 657
    invoke-interface {v2, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 658
    invoke-interface {v5, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 659
    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 660
    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_bf7
    .catch Ljava/lang/Exception; {:try_start_bd7 .. :try_end_bf7} :catch_bfb

    .line 661
    move/from16 v7, v44

    .end local v11    # "toAddID":I
    goto/16 :goto_9bd

    .line 787
    .end local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_bfb
    move-exception v0

    move v10, v4

    move/from16 v2, v25

    move-object v4, v0

    goto/16 :goto_f80

    .end local v25    # "buttonX":I
    .restart local v7    # "buttonX":I
    :catch_c02
    move-exception v0

    move v10, v4

    move v2, v7

    move-object v4, v0

    goto/16 :goto_f80

    .end local v7    # "buttonX":I
    .restart local v12    # "buttonX":I
    :catch_c08
    move-exception v0

    move v10, v4

    move v2, v12

    move-object v4, v0

    goto/16 :goto_f80

    .end local v44    # "r0W2":I
    .local v7, "r0W2":I
    :catch_c0e
    move-exception v0

    move/from16 v44, v7

    move v10, v4

    move v2, v12

    move-object v4, v0

    .end local v7    # "r0W2":I
    .restart local v44    # "r0W2":I
    goto/16 :goto_f80

    .line 564
    .end local v12    # "buttonX":I
    .end local v44    # "r0W2":I
    .restart local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "r0W2":I
    .restart local v8    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "buttonX":I
    :cond_c16
    move/from16 v44, v7

    .line 662
    .end local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "r0W2":I
    .end local v8    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v44    # "r0W2":I
    move v10, v4

    move/from16 v2, v25

    goto/16 :goto_f5a

    .line 787
    .end local v44    # "r0W2":I
    .restart local v7    # "r0W2":I
    :catch_c1d
    move-exception v0

    move/from16 v44, v7

    move v10, v4

    move/from16 v2, v25

    move-object v4, v0

    .end local v7    # "r0W2":I
    .restart local v44    # "r0W2":I
    goto/16 :goto_f80

    .line 663
    .end local v4    # "buttonY":I
    .end local v44    # "r0W2":I
    .restart local v7    # "r0W2":I
    .restart local v26    # "buttonY":I
    :cond_c26
    move/from16 v44, v7

    .end local v7    # "r0W2":I
    .restart local v44    # "r0W2":I
    :try_start_c28
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iModeID:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_f56

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v2, "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .restart local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v7, "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v8, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c42
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v11

    if-ge v10, v11, :cond_c6a

    .line 670
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v10, v10, 0x1

    goto :goto_c42

    .line 676
    .end local v10    # "i":I
    :cond_c6a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c6b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v10

    if-ge v4, v10, :cond_cf4

    .line 677
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-lez v10, :cond_cf0

    .line 678
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_cf0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c6b

    .line 684
    .end local v4    # "i":I
    :cond_cf4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_cf5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_d1b

    .line 685
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v5, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_d18
    .catch Ljava/lang/Exception; {:try_start_c28 .. :try_end_d18} :catch_f5c

    .line 684
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf5

    :cond_d1b
    move/from16 v10, v26

    .line 688
    .end local v4    # "i":I
    .end local v26    # "buttonY":I
    .local v10, "buttonY":I
    :goto_d1d
    :try_start_d1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f4e

    .line 689
    const/4 v4, 0x0

    .line 691
    .local v4, "toAddID":I
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    if-nez v11, :cond_d62

    .line 692
    const/4 v11, 0x1

    .local v11, "o":I
    :goto_d29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_d5d

    .line 693
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d5a

    .line 694
    move v4, v11

    .line 692
    :cond_d5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_d29

    :cond_d5d
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_e4a

    .line 697
    :cond_d62
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_da1

    .line 698
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_d68
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_d9c

    .line 699
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d99

    .line 700
    move v4, v11

    .line 698
    :cond_d99
    add-int/lit8 v11, v11, 0x1

    goto :goto_d68

    :cond_d9c
    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_e4a

    .line 703
    :cond_da1
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_dcd

    .line 704
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_da7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_dc9

    .line 705
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_dc6

    .line 706
    move v4, v11

    .line 704
    :cond_dc6
    add-int/lit8 v11, v11, 0x1

    goto :goto_da7

    :cond_dc9
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto/16 :goto_e4a

    .line 709
    :cond_dcd
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_df8

    .line 710
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_dd3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_df5

    .line 711
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_df2

    .line 712
    move v4, v11

    .line 710
    :cond_df2
    add-int/lit8 v11, v11, 0x1

    goto :goto_dd3

    :cond_df5
    const/4 v13, 0x4

    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_e4a

    .line 715
    :cond_df8
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_e22

    .line 716
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_dfe
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_e20

    .line 717
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_e1d

    .line 718
    move v4, v11

    .line 716
    :cond_e1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_dfe

    :cond_e20
    const/4 v14, 0x5

    .end local v11    # "o":I
    goto :goto_e4a

    .line 721
    :cond_e22
    sget v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->iSortID:I

    const/4 v14, 0x5

    if-ne v11, v14, :cond_e4a

    .line 722
    const/4 v11, 0x1

    .restart local v11    # "o":I
    :goto_e28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_e4a

    .line 723
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v15, v15, v22

    if-lez v15, :cond_e47

    .line 724
    move v4, v11

    .line 722
    :cond_e47
    add-int/lit8 v11, v11, 0x1

    goto :goto_e28

    .line 729
    .end local v11    # "o":I
    :cond_e4a
    :goto_e4a
    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_e4e
    .catch Ljava/lang/Exception; {:try_start_d1d .. :try_end_e4e} :catch_f51

    add-int/2addr v11, v15

    .line 732
    .end local v25    # "buttonX":I
    .local v11, "buttonX":I
    :try_start_e4f
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$11;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v42

    const/16 v43, 0x0

    move-object/from16 v34, v15

    move-object/from16 v35, p0

    move-object/from16 v36, v12

    move/from16 v38, v11

    move/from16 v39, v10

    move/from16 v40, v44

    move/from16 v41, v24

    invoke-direct/range {v34 .. v43}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 773
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const/16 v14, 0x64

    invoke-static {v15, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v12

    move/from16 v29, v11

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    .line 776
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0x64

    invoke-static {v13, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v12

    move/from16 v29, v11

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_f24
    .catch Ljava/lang/Exception; {:try_start_e4f .. :try_end_f24} :catch_f4a

    add-int/2addr v12, v13

    add-int v25, v11, v12

    .line 779
    .end local v11    # "buttonX":I
    .restart local v25    # "buttonX":I
    :try_start_f27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v13

    add-int/2addr v10, v11

    .line 781
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 782
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 783
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 784
    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_f47
    .catch Ljava/lang/Exception; {:try_start_f27 .. :try_end_f47} :catch_f51

    .line 785
    nop

    .end local v4    # "toAddID":I
    goto/16 :goto_d1d

    .line 787
    .end local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v25    # "buttonX":I
    .restart local v11    # "buttonX":I
    :catch_f4a
    move-exception v0

    move-object v4, v0

    move v2, v11

    goto :goto_f80

    .line 688
    .end local v11    # "buttonX":I
    .restart local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v7    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "buttonX":I
    :cond_f4e
    move/from16 v2, v25

    goto :goto_f5a

    .line 787
    .end local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tTax":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7    # "tIncomeTaxation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_f51
    move-exception v0

    move-object v4, v0

    move/from16 v2, v25

    goto :goto_f80

    .line 663
    .end local v10    # "buttonY":I
    .restart local v26    # "buttonY":I
    :cond_f56
    move/from16 v2, v25

    move/from16 v10, v26

    .line 789
    .end local v25    # "buttonX":I
    .end local v26    # "buttonY":I
    .local v2, "buttonX":I
    .restart local v10    # "buttonY":I
    :goto_f5a
    move v11, v2

    goto :goto_f84

    .line 787
    .end local v2    # "buttonX":I
    .end local v10    # "buttonY":I
    .restart local v25    # "buttonX":I
    .restart local v26    # "buttonY":I
    :catch_f5c
    move-exception v0

    move-object v4, v0

    move/from16 v2, v25

    move/from16 v10, v26

    goto :goto_f80

    .end local v44    # "r0W2":I
    .local v7, "r0W2":I
    :catch_f63
    move-exception v0

    move/from16 v44, v7

    move-object v4, v0

    move/from16 v2, v25

    move/from16 v10, v26

    .end local v7    # "r0W2":I
    .restart local v44    # "r0W2":I
    goto :goto_f80

    .end local v25    # "buttonX":I
    .end local v26    # "buttonY":I
    .end local v44    # "r0W2":I
    .end local v47    # "r0W":I
    .end local v48    # "extraX":I
    .end local v49    # "r2W":I
    .end local v50    # "menuX":I
    .end local v52    # "menuWidth":I
    .restart local v2    # "buttonX":I
    .restart local v7    # "r0W2":I
    .local v8, "r2W":I
    .restart local v10    # "buttonY":I
    .local v11, "r0W":I
    .restart local v13    # "extraX":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "menuX":I
    :catch_f6c
    move-exception v0

    move/from16 v25, v2

    move/from16 v44, v7

    move/from16 v49, v8

    move/from16 v26, v10

    move/from16 v47, v11

    move-object/from16 v51, v12

    move/from16 v48, v13

    move/from16 v52, v14

    move/from16 v50, v15

    move-object v4, v0

    .line 788
    .end local v7    # "r0W2":I
    .end local v8    # "r2W":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .end local v14    # "menuWidth":I
    .end local v15    # "menuX":I
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v44    # "r0W2":I
    .restart local v47    # "r0W":I
    .restart local v48    # "extraX":I
    .restart local v49    # "r2W":I
    .restart local v50    # "menuX":I
    .restart local v52    # "menuWidth":I
    :goto_f80
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v11, v2

    .line 791
    .end local v2    # "buttonX":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v11, "buttonX":I
    :goto_f84
    const/4 v2, 0x0

    .line 793
    .end local v10    # "buttonY":I
    .local v2, "buttonY":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v12, v2

    .end local v2    # "buttonY":I
    .local v5, "iSize":I
    .local v12, "buttonY":I
    :goto_f8b
    if-ge v4, v5, :cond_fc3

    .line 794
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    if-ge v12, v2, :cond_fc0

    .line 795
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    move v12, v2

    .line 793
    :cond_fc0
    add-int/lit8 v4, v4, 0x1

    goto :goto_f8b

    .line 799
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_fc3
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v16

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 801
    .local v13, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v14, v52

    const/4 v5, 0x0

    .end local v52    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    invoke-direct {v2, v5, v5, v14, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$12;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v5, v51

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v28, 0x0

    move-object/from16 v25, v4

    move-object/from16 v26, p0

    invoke-direct/range {v25 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move v15, v3

    .end local v3    # "r1W2":I
    .local v15, "r1W2":I
    move-object v3, v4

    move/from16 v4, v50

    move/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "r2W2":I
    .local v18, "r2W2":I
    move v6, v14

    move/from16 v20, v44

    .end local v44    # "r0W2":I
    .local v20, "r0W2":I
    move v7, v13

    move/from16 v22, v49

    .end local v49    # "r2W":I
    .local v22, "r2W":I
    move-object v8, v1

    move/from16 v23, v46

    .end local v46    # "r1W":I
    .local v23, "r1W":I
    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 818
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v3, p0

    iput v2, v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->scrollExtraPosX:I

    .line 819
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

    .line 823
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 824
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 827
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 828
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 830
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 831
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 832
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 836
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 837
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 848
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

    .line 841
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 842
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime:J

    .line 843
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightTaxEfficiency;->lTime2:J

    .line 844
    return-void
.end method
