.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_RightProvinceIncome.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iModeID:I

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J

.field public static totalIncome:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime:J

    .line 44
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime2:J

    .line 46
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    .line 47
    const/4 v0, 0x2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    .line 49
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->totalIncome:F

    return-void
.end method

.method public constructor <init>()V
    .registers 51

    .line 51
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 55
    .local v11, "paddingLeft":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 57
    .local v12, "titleHeight":I
    sget v13, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 59
    .local v13, "extraX":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    .line 61
    .local v14, "menuWidth":I
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v15, v2, v14

    .line 62
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

    .line 64
    .local v16, "menuY":I
    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 65
    .local v17, "buttonYPadding":I
    move/from16 v10, v17

    .line 66
    .local v10, "buttonY":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v33, v11, v2

    .line 68
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

    .line 69
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

    .line 71
    .local v9, "c0W":I
    const/16 v34, 0x0

    sput v34, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->totalIncome:F

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_69
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_89

    .line 73
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_86

    .line 74
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->totalIncome:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v4

    add-float/2addr v3, v4

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->totalIncome:F

    .line 72
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 78
    .end local v2    # "i":I
    :cond_89
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Civilizations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    if-nez v3, :cond_9a

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_9c

    :cond_9a
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_9c
    move/from16 v25, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v21, v33

    move/from16 v22, v10

    move/from16 v23, v9

    invoke-direct/range {v18 .. v25}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v33, v2

    add-int v5, v2, v9

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_c6

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_c8

    :cond_c6
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_c8
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

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
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

    .line 145
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Continents"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_105

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_107

    :cond_105
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_107
    move/from16 v32, v3

    move-object/from16 v25, v2

    move-object/from16 v26, p0

    move/from16 v28, v33

    move/from16 v29, v10

    move/from16 v30, v21

    move/from16 v31, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$4;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Religion"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v33, v3

    add-int v28, v3, v21

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_133

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_135

    :cond_133
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_135
    move/from16 v32, v3

    move-object/from16 v25, v2

    move-object/from16 v26, p0

    move/from16 v29, v10

    move/from16 v30, v21

    move/from16 v31, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
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

    .line 211
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v11, v2

    .line 212
    .local v11, "r0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v2, v2, v6

    float-to-int v9, v2

    .line 213
    .local v9, "r1W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v8, v2

    .line 215
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

    .line 216
    .local v7, "r0W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v3, v2

    .line 217
    .local v3, "r1W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v2, v14, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v22, v22, 0x4

    sub-int v2, v2, v22

    int-to-float v2, v2

    mul-float v2, v2, v6

    float-to-int v6, v2

    .line 219
    .local v6, "r2W2":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 221
    .end local v33    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$5;

    sget v23, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-eqz v23, :cond_1b3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    move/from16 v46, v12

    const/4 v12, 0x1

    .end local v12    # "titleHeight":I
    .local v46, "titleHeight":I
    if-ne v4, v12, :cond_1b0

    goto :goto_1b6

    :cond_1b0
    const/16 v37, 0x0

    goto :goto_1b8

    .end local v46    # "titleHeight":I
    .restart local v12    # "titleHeight":I
    :cond_1b3
    move/from16 v46, v12

    const/4 v12, 0x1

    .end local v12    # "titleHeight":I
    .restart local v46    # "titleHeight":I
    :goto_1b6
    const/16 v37, 0x1

    :goto_1b8
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-ne v4, v12, :cond_1bf

    const/16 v38, 0x1

    goto :goto_1c1

    :cond_1bf
    const/16 v38, 0x0

    :goto_1c1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Name"

    invoke-virtual {v4, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v44, v4, v12

    sget v45, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v35, v5

    move-object/from16 v36, p0

    move/from16 v41, v2

    move/from16 v42, v10

    move/from16 v43, v11

    invoke-direct/range {v35 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
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

    .line 251
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$6;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x2

    if-eq v5, v12, :cond_206

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x3

    if-ne v5, v12, :cond_203

    goto :goto_207

    :cond_203
    const/16 v37, 0x0

    goto :goto_209

    :cond_206
    const/4 v12, 0x3

    :goto_207
    const/16 v37, 0x1

    :goto_209
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-ne v5, v12, :cond_210

    const/16 v38, 0x1

    goto :goto_212

    :cond_210
    const/16 v38, 0x0

    :goto_212
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Income"

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v44, v5, v12

    sget v45, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v35, v4

    move-object/from16 v36, p0

    move/from16 v41, v2

    move/from16 v42, v10

    move/from16 v43, v9

    invoke-direct/range {v35 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
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

    .line 281
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x4

    if-eq v5, v12, :cond_257

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x5

    if-ne v5, v12, :cond_254

    goto :goto_258

    :cond_254
    const/16 v37, 0x0

    goto :goto_25a

    :cond_257
    const/4 v12, 0x5

    :goto_258
    const/16 v37, 0x1

    :goto_25a
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-ne v5, v12, :cond_261

    const/16 v38, 0x1

    goto :goto_263

    :cond_261
    const/16 v38, 0x0

    :goto_263
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Balance"

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v44, v5, v12

    sget v45, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v40, -0x1

    move-object/from16 v35, v4

    move-object/from16 v36, p0

    move/from16 v41, v2

    move/from16 v42, v10

    move/from16 v43, v8

    invoke-direct/range {v35 .. v45}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
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

    .line 313
    :try_start_29b
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    if-nez v4, :cond_57f

    .line 314
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v4, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v5, "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_29b .. :try_end_2ae} :catch_d93

    .line 318
    .local v12, "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/16 v25, 0x1

    move/from16 v26, v2

    move/from16 v2, v25

    .local v2, "i":I
    .local v26, "buttonX":I
    :goto_2b4
    move/from16 v45, v8

    .end local v8    # "r2W":I
    .local v45, "r2W":I
    :try_start_2b6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v8
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2ba} :catch_573

    if-ge v2, v8, :cond_314

    .line 319
    :try_start_2bc
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-lez v8, :cond_2ff

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2d3} :catch_308

    move/from16 v47, v9

    .end local v9    # "r1W":I
    .local v47, "r1W":I
    :try_start_2d5
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2f4} :catch_2f5

    goto :goto_301

    .line 796
    .end local v2    # "i":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_2f5
    move-exception v0

    move-object v4, v0

    move/from16 v48, v11

    move/from16 v49, v13

    move/from16 v2, v26

    goto/16 :goto_d9f

    .line 319
    .end local v47    # "r1W":I
    .restart local v2    # "i":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v9    # "r1W":I
    .restart local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_2ff
    move/from16 v47, v9

    .line 318
    .end local v9    # "r1W":I
    .restart local v47    # "r1W":I
    :goto_301
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v45

    move/from16 v9, v47

    goto :goto_2b4

    .line 796
    .end local v2    # "i":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v47    # "r1W":I
    .restart local v9    # "r1W":I
    :catch_308
    move-exception v0

    move/from16 v47, v9

    move-object v4, v0

    move/from16 v48, v11

    move/from16 v49, v13

    move/from16 v2, v26

    .end local v9    # "r1W":I
    .restart local v47    # "r1W":I
    goto/16 :goto_d9f

    .line 318
    .end local v47    # "r1W":I
    .restart local v2    # "i":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v9    # "r1W":I
    .restart local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_314
    move/from16 v47, v9

    .end local v9    # "r1W":I
    .restart local v47    # "r1W":I
    move/from16 v2, v26

    .line 326
    .end local v26    # "buttonX":I
    .local v2, "buttonX":I
    :goto_318
    :try_start_318
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_561

    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, "toAddID":I
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_321
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_321} :catch_569

    if-nez v9, :cond_36f

    .line 330
    const/4 v9, 0x1

    .local v9, "o":I
    :goto_324
    move/from16 v25, v2

    .end local v2    # "buttonX":I
    .local v25, "buttonX":I
    :try_start_326
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_361

    .line 331
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-static/range {v26 .. v26}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v26

    move/from16 v27, v8

    .end local v8    # "toAddID":I
    .local v27, "toAddID":I
    invoke-virtual/range {v26 .. v26}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_326 .. :try_end_356} :catch_365

    if-eqz v2, :cond_35a

    .line 332
    move v8, v9

    .end local v27    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_35c

    .line 331
    .end local v8    # "toAddID":I
    .restart local v27    # "toAddID":I
    :cond_35a
    move/from16 v8, v27

    .line 330
    .end local v27    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_35c
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v25

    goto :goto_324

    :cond_361
    move/from16 v27, v8

    .end local v8    # "toAddID":I
    .end local v9    # "o":I
    .restart local v27    # "toAddID":I
    goto/16 :goto_458

    .line 796
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v27    # "toAddID":I
    :catch_365
    move-exception v0

    move-object v4, v0

    move/from16 v48, v11

    move/from16 v49, v13

    move/from16 v2, v25

    goto/16 :goto_d9f

    .line 335
    .end local v25    # "buttonX":I
    .restart local v2    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "toAddID":I
    .restart local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_36f
    move/from16 v25, v2

    .end local v2    # "buttonX":I
    .restart local v25    # "buttonX":I
    :try_start_371
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_371 .. :try_end_373} :catch_557

    const/4 v9, 0x1

    if-ne v2, v9, :cond_3b4

    .line 336
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_377
    :try_start_377
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3b0

    .line 337
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-static/range {v26 .. v26}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v26

    move/from16 v27, v8

    .end local v8    # "toAddID":I
    .restart local v27    # "toAddID":I
    invoke-virtual/range {v26 .. v26}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_3a7
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_3a7} :catch_365

    if-eqz v8, :cond_3ab

    .line 338
    move v8, v2

    .end local v27    # "toAddID":I
    .restart local v8    # "toAddID":I
    goto :goto_3ad

    .line 337
    .end local v8    # "toAddID":I
    .restart local v27    # "toAddID":I
    :cond_3ab
    move/from16 v8, v27

    .line 336
    .end local v27    # "toAddID":I
    .restart local v8    # "toAddID":I
    :goto_3ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_377

    :cond_3b0
    move/from16 v27, v8

    .end local v2    # "o":I
    .end local v8    # "toAddID":I
    .restart local v27    # "toAddID":I
    goto/16 :goto_458

    .line 341
    .end local v27    # "toAddID":I
    .restart local v8    # "toAddID":I
    :cond_3b4
    :try_start_3b4
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_3b6
    .catch Ljava/lang/Exception; {:try_start_3b4 .. :try_end_3b6} :catch_557

    const/4 v9, 0x2

    if-ne v2, v9, :cond_3de

    .line 342
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3ba
    :try_start_3ba
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3dc

    .line 343
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_3d4
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_3d4} :catch_365

    cmpg-float v9, v9, v26

    if-gez v9, :cond_3d9

    .line 344
    move v8, v2

    .line 342
    :cond_3d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ba

    .end local v2    # "o":I
    :cond_3dc
    goto/16 :goto_458

    .line 347
    :cond_3de
    :try_start_3de
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_3e0} :catch_557

    const/4 v9, 0x3

    if-ne v2, v9, :cond_407

    .line 348
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_3e4
    :try_start_3e4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_406

    .line 349
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_3fe
    .catch Ljava/lang/Exception; {:try_start_3e4 .. :try_end_3fe} :catch_365

    cmpl-float v9, v9, v26

    if-lez v9, :cond_403

    .line 350
    move v8, v2

    .line 348
    :cond_403
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e4

    .end local v2    # "o":I
    :cond_406
    goto :goto_458

    .line 353
    :cond_407
    :try_start_407
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_407 .. :try_end_409} :catch_557

    const/4 v9, 0x4

    if-ne v2, v9, :cond_430

    .line 354
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_40d
    :try_start_40d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_42f

    .line 355
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_40d .. :try_end_427} :catch_365

    cmpg-float v9, v9, v26

    if-gez v9, :cond_42c

    .line 356
    move v8, v2

    .line 354
    :cond_42c
    add-int/lit8 v2, v2, 0x1

    goto :goto_40d

    .end local v2    # "o":I
    :cond_42f
    goto :goto_458

    .line 359
    :cond_430
    :try_start_430
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_430 .. :try_end_432} :catch_557

    const/4 v9, 0x5

    if-ne v2, v9, :cond_458

    .line 360
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_436
    :try_start_436
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_458

    .line 361
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_436 .. :try_end_450} :catch_365

    cmpl-float v9, v9, v26

    if-lez v9, :cond_455

    .line 362
    move v8, v2

    .line 360
    :cond_455
    add-int/lit8 v2, v2, 0x1

    goto :goto_436

    .line 367
    .end local v2    # "o":I
    :cond_458
    :goto_458
    :try_start_458
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_45c
    .catch Ljava/lang/Exception; {:try_start_458 .. :try_end_45c} :catch_557

    add-int/2addr v2, v9

    .line 371
    .end local v25    # "buttonX":I
    .local v2, "buttonX":I
    :try_start_45d
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$8;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v26, 0x2

    mul-int/lit8 v39, v25, 0x2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move-object/from16 v35, v9

    move-object/from16 v36, p0

    move/from16 v40, v2

    move/from16 v41, v10

    move/from16 v42, v7

    move/from16 v43, v24

    invoke-direct/range {v35 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v9, v25

    add-int/2addr v2, v9

    .line 421
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Float;
    :try_end_4b4
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_4b4} :catch_54f

    move/from16 v48, v11

    .end local v11    # "r0W":I
    .local v48, "r0W":I
    :try_start_4b6
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v11
    :try_end_4ba
    .catch Ljava/lang/Exception; {:try_start_4b6 .. :try_end_4ba} :catch_549

    move/from16 v49, v13

    .end local v13    # "extraX":I
    .local v49, "extraX":I
    const/16 v13, 0xa

    :try_start_4be
    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v9

    move/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v11

    add-int/2addr v2, v9

    .line 424
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v9

    move/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v11

    add-int/2addr v2, v9

    .line 427
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v11

    add-int/2addr v10, v9

    .line 429
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 431
    invoke-interface {v12, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_53f
    .catch Ljava/lang/Exception; {:try_start_4be .. :try_end_53f} :catch_545

    .line 432
    move/from16 v11, v48

    move/from16 v13, v49

    .end local v8    # "toAddID":I
    goto/16 :goto_318

    .line 796
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :catch_545
    move-exception v0

    move-object v4, v0

    goto/16 :goto_d9f

    .end local v49    # "extraX":I
    .restart local v13    # "extraX":I
    :catch_549
    move-exception v0

    move/from16 v49, v13

    move-object v4, v0

    .end local v13    # "extraX":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d9f

    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    :catch_54f
    move-exception v0

    move/from16 v48, v11

    move/from16 v49, v13

    move-object v4, v0

    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d9f

    .end local v2    # "buttonX":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v25    # "buttonX":I
    :catch_557
    move-exception v0

    move/from16 v48, v11

    move/from16 v49, v13

    move-object v4, v0

    move/from16 v2, v25

    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d9f

    .line 326
    .end local v25    # "buttonX":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v2    # "buttonX":I
    .restart local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "r0W":I
    .restart local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v13    # "extraX":I
    :cond_561
    move/from16 v25, v2

    move/from16 v48, v11

    move/from16 v49, v13

    .line 433
    .end local v2    # "buttonX":I
    .end local v4    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "r0W":I
    .end local v12    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v13    # "extraX":I
    .restart local v25    # "buttonX":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d8c

    .line 796
    .end local v25    # "buttonX":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v2    # "buttonX":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    :catch_569
    move-exception v0

    move/from16 v25, v2

    move/from16 v48, v11

    move/from16 v49, v13

    move-object v4, v0

    .end local v2    # "buttonX":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v25    # "buttonX":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d9f

    .end local v25    # "buttonX":I
    .end local v47    # "r1W":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .local v9, "r1W":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    .restart local v26    # "buttonX":I
    :catch_573
    move-exception v0

    move/from16 v47, v9

    move/from16 v48, v11

    move/from16 v49, v13

    move-object v4, v0

    move/from16 v2, v26

    .end local v9    # "r1W":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v47    # "r1W":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    goto/16 :goto_d9f

    .line 434
    .end local v26    # "buttonX":I
    .end local v45    # "r2W":I
    .end local v47    # "r1W":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v2    # "buttonX":I
    .local v8, "r2W":I
    .restart local v9    # "r1W":I
    .restart local v11    # "r0W":I
    .restart local v13    # "extraX":I
    :cond_57f
    move/from16 v26, v2

    move/from16 v45, v8

    move/from16 v47, v9

    move/from16 v48, v11

    move/from16 v49, v13

    .end local v2    # "buttonX":I
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .restart local v26    # "buttonX":I
    .restart local v45    # "r2W":I
    .restart local v47    # "r1W":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    :try_start_589
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7f9

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v2, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v8, "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v11

    if-ge v9, v11, :cond_5dd

    .line 440
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-lez v11, :cond_5da

    .line 441
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v11

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_5da
    add-int/lit8 v9, v9, 0x1

    goto :goto_59e

    .line 447
    .end local v9    # "i":I
    :cond_5dd
    const/16 v9, 0xfa

    .line 449
    .local v9, "maxProvinces":I
    :goto_5df
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7f5

    add-int/lit8 v11, v9, -0x1

    .end local v9    # "maxProvinces":I
    .local v11, "maxProvinces":I
    if-lez v9, :cond_7f3

    .line 450
    const/4 v9, 0x0

    .line 452
    .local v9, "toAddID":I
    sget v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-nez v12, :cond_625

    .line 453
    const/4 v12, 0x1

    .local v12, "o":I
    :goto_5ef
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_623

    .line 454
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_620

    .line 455
    move v9, v12

    .line 453
    :cond_620
    add-int/lit8 v12, v12, 0x1

    goto :goto_5ef

    .end local v12    # "o":I
    :cond_623
    goto/16 :goto_705

    .line 458
    :cond_625
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_661

    .line 459
    const/4 v4, 0x1

    .local v4, "o":I
    :goto_62b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_65f

    .line 460
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v12, :cond_65c

    .line 461
    move v9, v4

    .line 459
    :cond_65c
    add-int/lit8 v4, v4, 0x1

    goto :goto_62b

    .end local v4    # "o":I
    :cond_65f
    goto/16 :goto_705

    .line 464
    :cond_661
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x2

    if-ne v4, v12, :cond_68b

    .line 465
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_667
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_689

    .line 466
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_686

    .line 467
    move v9, v4

    .line 465
    :cond_686
    add-int/lit8 v4, v4, 0x1

    goto :goto_667

    .end local v4    # "o":I
    :cond_689
    goto/16 :goto_705

    .line 470
    :cond_68b
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x3

    if-ne v4, v12, :cond_6b4

    .line 471
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_691
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_6b3

    .line 472
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6b0

    .line 473
    move v9, v4

    .line 471
    :cond_6b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_691

    .end local v4    # "o":I
    :cond_6b3
    goto :goto_705

    .line 476
    :cond_6b4
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x4

    if-ne v4, v12, :cond_6dd

    .line 477
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_6ba
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_6dc

    .line 478
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6d9

    .line 479
    move v9, v4

    .line 477
    :cond_6d9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6ba

    .end local v4    # "o":I
    :cond_6dc
    goto :goto_705

    .line 482
    :cond_6dd
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x5

    if-ne v4, v12, :cond_705

    .line 483
    const/4 v4, 0x1

    .restart local v4    # "o":I
    :goto_6e3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_705

    .line 484
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_702

    .line 485
    move v9, v4

    .line 483
    :cond_702
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e3

    .line 490
    .end local v4    # "o":I
    :cond_705
    :goto_705
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_709
    .catch Ljava/lang/Exception; {:try_start_589 .. :try_end_709} :catch_d8e

    add-int/2addr v4, v12

    .line 493
    .end local v26    # "buttonX":I
    .local v4, "buttonX":I
    :try_start_70a
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$9;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v37

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v25, 0x2

    mul-int/lit8 v39, v13, 0x2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move-object/from16 v35, v12

    move-object/from16 v36, p0

    move/from16 v40, v4

    move/from16 v41, v10

    move/from16 v42, v7

    move/from16 v43, v24

    invoke-direct/range {v35 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
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

    add-int/2addr v4, v12

    .line 538
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move/from16 v34, v11

    const/16 v11, 0x64

    .end local v11    # "maxProvinces":I
    .local v34, "maxProvinces":I
    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v12

    move/from16 v29, v4

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 541
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0x64

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v11

    move/from16 v29, v4

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7ca
    .catch Ljava/lang/Exception; {:try_start_70a .. :try_end_7ca} :catch_7ee

    add-int/2addr v11, v12

    add-int v26, v4, v11

    .line 544
    .end local v4    # "buttonX":I
    .restart local v26    # "buttonX":I
    :try_start_7cd
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v11

    add-int/2addr v10, v4

    .line 546
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 547
    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 548
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 549
    move/from16 v9, v34

    .end local v9    # "toAddID":I
    goto/16 :goto_5df

    .line 796
    .end local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v26    # "buttonX":I
    .end local v34    # "maxProvinces":I
    .restart local v4    # "buttonX":I
    :catch_7ee
    move-exception v0

    move v2, v4

    move-object v4, v0

    goto/16 :goto_d9f

    .line 449
    .end local v4    # "buttonX":I
    .restart local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v8    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v11    # "maxProvinces":I
    .restart local v26    # "buttonX":I
    :cond_7f3
    move/from16 v34, v11

    .line 550
    .end local v2    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v8    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v11    # "maxProvinces":I
    :cond_7f5
    move/from16 v2, v26

    goto/16 :goto_d8c

    .line 551
    :cond_7f9
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_ac7

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v2, "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v4, "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v5, "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_80e
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v8, v9, :cond_82c

    .line 557
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v8, v8, 0x1

    goto :goto_80e

    .line 562
    .end local v8    # "i":I
    :cond_82c
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_82d
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_89b

    .line 563
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-lez v9, :cond_898

    .line 564
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v11

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_898
    add-int/lit8 v8, v8, 0x1

    goto :goto_82d

    .line 569
    .end local v8    # "i":I
    :cond_89b
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 570
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 571
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 573
    :goto_8a5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_ac3

    .line 574
    const/4 v8, 0x0

    .line 576
    .local v8, "toAddID":I
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-nez v9, :cond_8ef

    .line 577
    const/4 v9, 0x1

    .local v9, "o":I
    :goto_8b1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_8ed

    .line 578
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8ea

    .line 579
    move v8, v9

    .line 577
    :cond_8ea
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b1

    .end local v9    # "o":I
    :cond_8ed
    goto/16 :goto_9d7

    .line 582
    :cond_8ef
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_933

    .line 583
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_8f5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_931

    .line 584
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_92e

    .line 585
    move v8, v9

    .line 583
    :cond_92e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8f5

    .end local v9    # "o":I
    :cond_931
    goto/16 :goto_9d7

    .line 588
    :cond_933
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_95d

    .line 589
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_939
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_95b

    .line 590
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_958

    .line 591
    move v8, v9

    .line 589
    :cond_958
    add-int/lit8 v9, v9, 0x1

    goto :goto_939

    .end local v9    # "o":I
    :cond_95b
    goto/16 :goto_9d7

    .line 594
    :cond_95d
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_986

    .line 595
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_963
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_985

    .line 596
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_982

    .line 597
    move v8, v9

    .line 595
    :cond_982
    add-int/lit8 v9, v9, 0x1

    goto :goto_963

    .end local v9    # "o":I
    :cond_985
    goto :goto_9d7

    .line 600
    :cond_986
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x4

    if-ne v9, v11, :cond_9af

    .line 601
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_98c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9ae

    .line 602
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_9ab

    .line 603
    move v8, v9

    .line 601
    :cond_9ab
    add-int/lit8 v9, v9, 0x1

    goto :goto_98c

    .end local v9    # "o":I
    :cond_9ae
    goto :goto_9d7

    .line 606
    :cond_9af
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x5

    if-ne v9, v11, :cond_9d7

    .line 607
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_9b5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9d7

    .line 608
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9d4

    .line 609
    move v8, v9

    .line 607
    :cond_9d4
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b5

    .line 614
    .end local v9    # "o":I
    :cond_9d7
    :goto_9d7
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_9db
    .catch Ljava/lang/Exception; {:try_start_7cd .. :try_end_9db} :catch_d8e

    add-int/2addr v9, v11

    .line 617
    .end local v26    # "buttonX":I
    .local v9, "buttonX":I
    :try_start_9dc
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$10;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    sget v38, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v25, 0x2

    mul-int/lit8 v39, v13, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move-object/from16 v35, v11

    move-object/from16 v36, p0

    move-object/from16 v37, v12

    move/from16 v40, v9

    move/from16 v41, v10

    move/from16 v42, v7

    move/from16 v43, v24

    invoke-direct/range {v35 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 662
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0x64

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v11

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 665
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0x64

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v11

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_aa0
    .catch Ljava/lang/Exception; {:try_start_9dc .. :try_end_aa0} :catch_d83

    add-int/2addr v11, v12

    add-int v26, v9, v11

    .line 668
    .end local v9    # "buttonX":I
    .restart local v26    # "buttonX":I
    :try_start_aa3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v11

    add-int/2addr v10, v9

    .line 670
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 671
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 672
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 673
    nop

    .end local v8    # "toAddID":I
    goto/16 :goto_8a5

    .line 674
    .end local v2    # "tContinents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_ac3
    move/from16 v2, v26

    goto/16 :goto_d8c

    .line 675
    :cond_ac7
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iModeID:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d8a

    .line 676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v2, "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .restart local v4    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .restart local v5    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_adc
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v9

    if-ge v8, v9, :cond_afc

    .line 681
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto :goto_adc

    .line 686
    .end local v8    # "i":I
    :cond_afc
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_afd
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_b6b

    .line 687
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-lez v9, :cond_b68

    .line 688
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v4, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v11

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_b68
    add-int/lit8 v8, v8, 0x1

    goto :goto_afd

    .line 693
    .end local v8    # "i":I
    :cond_b6b
    :goto_b6b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d87

    .line 694
    const/4 v8, 0x0

    .line 696
    .local v8, "toAddID":I
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    if-nez v9, :cond_baf

    .line 697
    const/4 v9, 0x1

    .local v9, "o":I
    :goto_b77
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_bab

    .line 698
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ba8

    .line 699
    move v8, v9

    .line 697
    :cond_ba8
    add-int/lit8 v9, v9, 0x1

    goto :goto_b77

    :cond_bab
    const/4 v12, 0x4

    const/4 v13, 0x5

    .end local v9    # "o":I
    goto/16 :goto_c97

    .line 702
    :cond_baf
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_bed

    .line 703
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_bb5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_be9

    .line 704
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_be6

    .line 705
    move v8, v9

    .line 703
    :cond_be6
    add-int/lit8 v9, v9, 0x1

    goto :goto_bb5

    :cond_be9
    const/4 v12, 0x4

    const/4 v13, 0x5

    .end local v9    # "o":I
    goto/16 :goto_c97

    .line 708
    :cond_bed
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_c19

    .line 709
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_bf3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_c15

    .line 710
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c12

    .line 711
    move v8, v9

    .line 709
    :cond_c12
    add-int/lit8 v9, v9, 0x1

    goto :goto_bf3

    :cond_c15
    const/4 v12, 0x4

    const/4 v13, 0x5

    .end local v9    # "o":I
    goto/16 :goto_c97

    .line 714
    :cond_c19
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x3

    if-ne v9, v12, :cond_c44

    .line 715
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_c1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_c41

    .line 716
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c3e

    .line 717
    move v8, v9

    .line 715
    :cond_c3e
    add-int/lit8 v9, v9, 0x1

    goto :goto_c1f

    :cond_c41
    const/4 v12, 0x4

    const/4 v13, 0x5

    .end local v9    # "o":I
    goto :goto_c97

    .line 720
    :cond_c44
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v12, 0x4

    if-ne v9, v12, :cond_c6e

    .line 721
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_c4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_c6c

    .line 722
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpg-float v13, v13, v22

    if-gez v13, :cond_c69

    .line 723
    move v8, v9

    .line 721
    :cond_c69
    add-int/lit8 v9, v9, 0x1

    goto :goto_c4a

    :cond_c6c
    const/4 v13, 0x5

    .end local v9    # "o":I
    goto :goto_c97

    .line 726
    :cond_c6e
    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->iSortID:I

    const/4 v13, 0x5

    if-ne v9, v13, :cond_c97

    .line 727
    const/4 v9, 0x1

    .restart local v9    # "o":I
    :goto_c74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_c97

    .line 728
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v11, v11, v22

    if-lez v11, :cond_c93

    .line 729
    move v8, v9

    .line 727
    :cond_c93
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x2

    goto :goto_c74

    .line 734
    .end local v9    # "o":I
    :cond_c97
    :goto_c97
    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_c9b
    .catch Ljava/lang/Exception; {:try_start_aa3 .. :try_end_c9b} :catch_d8e

    add-int/2addr v9, v11

    .line 737
    .end local v26    # "buttonX":I
    .local v9, "buttonX":I
    :try_start_c9c
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$11;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v35, v11

    move-object/from16 v36, p0

    move-object/from16 v37, v12

    move/from16 v39, v9

    move/from16 v40, v10

    move/from16 v41, v7

    move/from16 v42, v24

    invoke-direct/range {v35 .. v44}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;IIIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 783
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0x64

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v11

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v3

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 786
    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v13, 0x64

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v26

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v28, -0x1

    move-object/from16 v25, v11

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v6

    move/from16 v32, v24

    invoke-direct/range {v25 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_d60
    .catch Ljava/lang/Exception; {:try_start_c9c .. :try_end_d60} :catch_d83

    add-int/2addr v11, v12

    add-int v26, v9, v11

    .line 789
    .end local v9    # "buttonX":I
    .restart local v26    # "buttonX":I
    :try_start_d63
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v11

    add-int/2addr v10, v9

    .line 791
    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 792
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 793
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_d80
    .catch Ljava/lang/Exception; {:try_start_d63 .. :try_end_d80} :catch_d8e

    .line 794
    nop

    .end local v8    # "toAddID":I
    goto/16 :goto_b6b

    .line 796
    .end local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v26    # "buttonX":I
    .restart local v9    # "buttonX":I
    :catch_d83
    move-exception v0

    move-object v4, v0

    move v2, v9

    goto :goto_d9f

    .line 693
    .end local v9    # "buttonX":I
    .restart local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v5    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v26    # "buttonX":I
    :cond_d87
    move/from16 v2, v26

    goto :goto_d8c

    .line 675
    .end local v2    # "tReligion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "tIncome":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5    # "tBalance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_d8a
    move/from16 v2, v26

    .line 798
    .end local v26    # "buttonX":I
    .local v2, "buttonX":I
    :goto_d8c
    move v11, v2

    goto :goto_da3

    .line 796
    .end local v2    # "buttonX":I
    .restart local v26    # "buttonX":I
    :catch_d8e
    move-exception v0

    move-object v4, v0

    move/from16 v2, v26

    goto :goto_d9f

    .end local v26    # "buttonX":I
    .end local v45    # "r2W":I
    .end local v47    # "r1W":I
    .end local v48    # "r0W":I
    .end local v49    # "extraX":I
    .restart local v2    # "buttonX":I
    .local v8, "r2W":I
    .local v9, "r1W":I
    .local v11, "r0W":I
    .restart local v13    # "extraX":I
    :catch_d93
    move-exception v0

    move/from16 v26, v2

    move/from16 v45, v8

    move/from16 v47, v9

    move/from16 v48, v11

    move/from16 v49, v13

    move-object v4, v0

    .line 797
    .end local v8    # "r2W":I
    .end local v9    # "r1W":I
    .end local v11    # "r0W":I
    .end local v13    # "extraX":I
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v45    # "r2W":I
    .restart local v47    # "r1W":I
    .restart local v48    # "r0W":I
    .restart local v49    # "extraX":I
    :goto_d9f
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v11, v2

    .line 800
    .end local v2    # "buttonX":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .local v11, "buttonX":I
    :goto_da3
    const/4 v2, 0x0

    .line 802
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
    :goto_daa
    if-ge v4, v5, :cond_de2

    .line 803
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v8

    if-ge v12, v2, :cond_ddf

    .line 804
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v8

    move v12, v2

    .line 802
    :cond_ddf
    add-int/lit8 v4, v4, 0x1

    goto :goto_daa

    .line 808
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_de2
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v2, v2, v16

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 810
    .local v13, "menuHeight":I
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v14, v4}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$12;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ProvinceIncome"

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Total"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->totalIncome:F

    const/4 v9, 0x1

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    sget v31, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    const/16 v29, 0x0

    move-object/from16 v25, v4

    move-object/from16 v26, p0

    invoke-direct/range {v25 .. v31}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move/from16 v18, v3

    .end local v3    # "r1W2":I
    .local v18, "r1W2":I
    move-object v3, v4

    move v4, v15

    move/from16 v5, v16

    move/from16 v20, v6

    .end local v6    # "r2W2":I
    .local v20, "r2W2":I
    move v6, v14

    move/from16 v22, v7

    .end local v7    # "r0W2":I
    .local v22, "r0W2":I
    move v7, v13

    move/from16 v23, v45

    .end local v45    # "r2W":I
    .local v23, "r2W":I
    move-object v8, v1

    move/from16 v25, v47

    .end local v47    # "r1W":I
    .local v25, "r1W":I
    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 827
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v3, p0

    iput v2, v3, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->scrollExtraPosX:I

    .line 828
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

    .line 832
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1f

    .line 833
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 836
    :cond_1f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 837
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 839
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 840
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 841
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 845
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 846
    return-void
.end method

.method public getVisible()Z
    .registers 2

    .line 857
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

    .line 850
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 851
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime:J

    .line 852
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightProvinceIncome;->lTime2:J

    .line 853
    return-void
.end method
