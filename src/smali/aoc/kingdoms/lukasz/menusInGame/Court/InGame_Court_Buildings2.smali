.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Buildings2.java"


# static fields
.field public static SHOW_BONUSES:Z

.field public static modeID:I

.field public static oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

.field public static saveMenuPos_X:I

.field public static saveMenuPos_Y:I

.field public static savePos_X:I

.field public static savePos_Y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    .line 45
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->savePos_X:I

    .line 46
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->savePos_Y:I

    .line 48
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->saveMenuPos_X:I

    .line 49
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->saveMenuPos_Y:I

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    .line 53
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 74

    .line 55
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 60
    .local v2, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    .line 63
    .local v1, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v16

    .line 64
    .local v16, "menuX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v17, v4, v5

    .line 66
    .local v17, "menuY":I
    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 67
    .local v18, "buttonYPadding":I
    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 68
    .local v19, "buttonX":I
    const/4 v12, 0x0

    .line 71
    .local v12, "buttonY":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v1, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    float-to-int v15, v4

    .line 72
    .local v15, "tW0":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v1, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v5

    float-to-int v14, v4

    .line 74
    .local v14, "tW1":I
    const/4 v4, 0x0

    sput-object v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    .line 76
    const/16 v20, 0x0

    .line 78
    .local v20, "tempAdded":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v1, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    div-int/lit8 v31, v4, 0x2

    .line 80
    .local v31, "topButtonW":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    .line 82
    .local v13, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v4, 0x0

    .line 84
    .local v4, "buildingsConstructedAll":I
    const/4 v5, 0x0

    move v11, v4

    .end local v4    # "buildingsConstructedAll":I
    .local v5, "i":I
    .local v11, "buildingsConstructedAll":I
    :goto_69
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v5, v4, :cond_7d

    .line 85
    invoke-virtual {v13, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v11, v4

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 88
    .end local v5    # "i":I
    :cond_7d
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    div-int/lit8 v32, v4, 0x4

    .line 90
    .local v32, "titleW":I
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    if-ne v4, v9, :cond_9d

    const/16 v22, 0x1

    goto :goto_9f

    :cond_9d
    const/16 v22, 0x0

    :goto_9f
    move-object v4, v10

    move-object/from16 v23, v13

    const/4 v13, 0x1

    .end local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v23, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move-object/from16 v5, p0

    move v8, v12

    move/from16 v9, v32

    move-object v3, v10

    move/from16 v10, v21

    move/from16 v35, v11

    .end local v11    # "buildingsConstructedAll":I
    .local v35, "buildingsConstructedAll":I
    move/from16 v11, v22

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Administration"

    invoke-virtual {v4, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v7, v4, v32

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-nez v4, :cond_cc

    const/16 v21, 0x1

    goto :goto_ce

    :cond_cc
    const/16 v21, 0x0

    :goto_ce
    move-object v4, v3

    move-object/from16 v5, p0

    move v8, v12

    move/from16 v9, v32

    move-object/from16 v36, v11

    move/from16 v11, v21

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$3;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Military"

    invoke-virtual {v4, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v32, 0x2

    add-int v7, v4, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    if-ne v4, v13, :cond_f7

    const/16 v21, 0x1

    goto :goto_f9

    :cond_f7
    const/16 v21, 0x0

    :goto_f9
    move-object v4, v3

    move-object/from16 v5, p0

    move v8, v12

    move/from16 v9, v32

    move-object/from16 v37, v11

    move/from16 v11, v21

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Economy"

    invoke-virtual {v4, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v32, 0x3

    add-int v7, v4, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_123

    const/16 v21, 0x1

    goto :goto_125

    :cond_123
    const/16 v21, 0x0

    :goto_125
    move-object v4, v3

    move-object/from16 v5, p0

    move v8, v12

    move/from16 v9, v32

    move-object/from16 v38, v11

    move/from16 v11, v21

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int v3, v3, v18

    add-int/2addr v3, v12

    .line 212
    .end local v12    # "buttonY":I
    .local v3, "buttonY":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$5;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v10, v35

    .end local v35    # "buildingsConstructedAll":I
    .local v10, "buildingsConstructedAll":I
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v22, v4, v5

    const/16 v24, 0x1

    move-object v4, v12

    move-object/from16 v5, p0

    move v8, v2

    move v9, v3

    .end local v10    # "buildingsConstructedAll":I
    .restart local v35    # "buildingsConstructedAll":I
    move/from16 v10, v31

    move-object/from16 v39, v11

    move/from16 v11, v21

    move/from16 v40, v14

    move-object v14, v12

    .end local v14    # "tW1":I
    .local v40, "tW1":I
    move/from16 v12, v22

    move/from16 v41, v15

    move-object/from16 v42, v23

    const/4 v15, 0x1

    .end local v15    # "tW0":I
    .end local v23    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v41, "tW0":I
    .local v42, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v13, v24

    invoke-direct/range {v4 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$6;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Bonuses"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-boolean v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v5, :cond_1b7

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->v:I

    goto :goto_1b9

    :cond_1b7
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->x:I

    :goto_1b9
    move/from16 v24, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v2

    add-int v25, v5, v31

    sget v28, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int v29, v5, v6

    const/16 v30, 0x1

    move-object/from16 v21, v4

    move-object/from16 v22, p0

    move/from16 v26, v3

    move/from16 v27, v31

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
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

    add-int/2addr v3, v4

    .line 257
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_1fc

    const/4 v8, 0x0

    goto :goto_1fe

    :cond_1fc
    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    :goto_1fe
    move v4, v8

    move v13, v4

    .local v13, "x":I
    :goto_200
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v12, 0x3

    if-ne v4, v14, :cond_207

    const/4 v4, 0x3

    goto :goto_20a

    :cond_207
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    add-int/2addr v4, v15

    :goto_20a
    const-string v11, "None"

    const-string v10, " / "

    if-ge v13, v4, :cond_4db

    .line 258
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    .line 259
    if-nez v13, :cond_222

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v36

    invoke-virtual {v5, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v9, v37

    :goto_21f
    move-object/from16 v8, v38

    goto :goto_23b

    :cond_222
    move-object/from16 v12, v36

    if-ne v13, v15, :cond_230

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v37

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_21f

    :cond_230
    move-object/from16 v9, v37

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v8, v38

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_23b
    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v22, v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v23, v5, v7

    const/4 v7, -0x1

    move-object v5, v4

    move-object/from16 v24, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move v9, v3

    move-object/from16 v36, v12

    move-object v12, v10

    move/from16 v10, v22

    move-object/from16 v43, v11

    move/from16 v11, v23

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    .line 258
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 263
    const/4 v4, 0x0

    .line 265
    .end local v20    # "tempAdded":I
    .local v4, "tempAdded":I
    const/4 v5, 0x0

    move/from16 v20, v4

    move v11, v5

    .end local v4    # "tempAdded":I
    .local v11, "i":I
    .restart local v20    # "tempAdded":I
    :goto_27b
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v11, v4, :cond_487

    .line 266
    const/4 v4, 0x0

    move v10, v4

    .local v10, "j":I
    :goto_281
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v10, v4, :cond_46f

    .line 267
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v4, v13, :cond_448

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v4, :cond_448

    .line 268
    move-object/from16 v9, v42

    .end local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v9, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v9, v11, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v4

    if-eqz v4, :cond_435

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 269
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v4, :cond_2e0

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    if-ne v4, v5, :cond_2cc

    goto :goto_2e0

    :cond_2cc
    move-object/from16 v49, v9

    move v6, v10

    move v5, v11

    move-object/from16 v48, v12

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    const/16 v33, 0x1

    goto/16 :goto_45a

    :cond_2e0
    :goto_2e0
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 270
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v4, :cond_311

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    if-ne v4, v5, :cond_2fd

    goto :goto_311

    :cond_2fd
    move-object/from16 v49, v9

    move v6, v10

    move v5, v11

    move-object/from16 v48, v12

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    const/16 v33, 0x1

    goto/16 :goto_45a

    .line 272
    :cond_311
    :goto_311
    add-int/lit8 v20, v20, 0x1

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "tNum":I
    const/4 v5, 0x0

    .line 277
    .local v5, "tPossible":I
    const/4 v6, 0x0

    move v8, v4

    move v7, v5

    .end local v4    # "tNum":I
    .end local v5    # "tPossible":I
    .local v6, "k":I
    .local v7, "tPossible":I
    .local v8, "tNum":I
    :goto_318
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v6, v4, :cond_35c

    .line 278
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v4, :cond_339

    .line 279
    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v4

    if-gez v4, :cond_339

    .line 280
    goto :goto_359

    .line 284
    :cond_339
    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-nez v4, :cond_355

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v4

    if-eqz v4, :cond_357

    .line 285
    :cond_355
    add-int/lit8 v8, v8, 0x1

    .line 288
    :cond_357
    add-int/lit8 v7, v7, 0x1

    .line 277
    :goto_359
    add-int/lit8 v6, v6, 0x1

    goto :goto_318

    .line 291
    .end local v6    # "k":I
    :cond_35c
    move/from16 v22, v3

    .line 293
    .local v22, "tempY":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$7;

    mul-int/lit8 v4, v2, 0x2

    sub-int v23, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v39

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    if-lez v8, :cond_386

    if-ne v8, v7, :cond_386

    const/16 v26, 0x1

    goto :goto_388

    :cond_386
    const/16 v26, 0x0

    :goto_388
    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object v4, v6

    move-object/from16 v44, v5

    move-object/from16 v5, p0

    move-object/from16 v45, v6

    move/from16 v6, v27

    move/from16 v27, v7

    .end local v7    # "tPossible":I
    .local v27, "tPossible":I
    move v7, v11

    move/from16 v30, v8

    .end local v8    # "tNum":I
    .local v30, "tNum":I
    move v8, v10

    move-object/from16 v33, v9

    .end local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v33, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move v9, v2

    move/from16 v46, v10

    .end local v10    # "j":I
    .local v46, "j":I
    move v10, v3

    move/from16 v47, v11

    .end local v11    # "i":I
    .local v47, "i":I
    move/from16 v11, v23

    move-object/from16 v48, v12

    move-object/from16 v23, v36

    move/from16 v12, v28

    move/from16 v28, v13

    .end local v13    # "x":I
    .local v28, "x":I
    move/from16 v13, v29

    move/from16 v29, v40

    .end local v40    # "tW1":I
    .local v29, "tW1":I
    move-object/from16 v14, v25

    move-object/from16 v49, v33

    move/from16 v25, v41

    const/16 v33, 0x1

    .end local v33    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v41    # "tW0":I
    .local v25, "tW0":I
    .local v49, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v15, v26

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;Z)V

    move-object/from16 v4, v45

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 333
    sget-boolean v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v4, :cond_430

    .line 334
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v2

    move/from16 v6, v46

    move/from16 v5, v47

    .end local v46    # "j":I
    .end local v47    # "i":I
    .local v5, "i":I
    .local v6, "j":I
    invoke-static {v5, v6, v4, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_45a

    .line 337
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_3ee
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_41c

    .line 338
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 339
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int v8, v8, v18

    add-int/2addr v3, v8

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ee

    .line 344
    .end local v7    # "a":I
    :cond_41c
    sub-int v7, v3, v22

    .line 345
    .end local v22    # "tempY":I
    .local v7, "tempY":I
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v9, v3, v7

    mul-int/lit8 v10, v2, 0x2

    sub-int v10, v1, v10

    invoke-direct {v8, v2, v9, v10, v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    goto :goto_45a

    .line 333
    .end local v4    # "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "tempY":I
    .restart local v22    # "tempY":I
    .restart local v46    # "j":I
    .restart local v47    # "i":I
    :cond_430
    move/from16 v6, v46

    move/from16 v5, v47

    .end local v46    # "j":I
    .end local v47    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    goto :goto_45a

    .line 268
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v22    # "tempY":I
    .end local v25    # "tW0":I
    .end local v27    # "tPossible":I
    .end local v28    # "x":I
    .end local v29    # "tW1":I
    .end local v30    # "tNum":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v10    # "j":I
    .restart local v11    # "i":I
    .restart local v13    # "x":I
    .restart local v40    # "tW1":I
    .restart local v41    # "tW0":I
    :cond_435
    move-object/from16 v49, v9

    move v6, v10

    move v5, v11

    move-object/from16 v48, v12

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    const/16 v33, 0x1

    .end local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v10    # "j":I
    .end local v11    # "i":I
    .end local v13    # "x":I
    .end local v40    # "tW1":I
    .end local v41    # "tW0":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v25    # "tW0":I
    .restart local v28    # "x":I
    .restart local v29    # "tW1":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_45a

    .line 267
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v25    # "tW0":I
    .end local v28    # "x":I
    .end local v29    # "tW1":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v10    # "j":I
    .restart local v11    # "i":I
    .restart local v13    # "x":I
    .restart local v40    # "tW1":I
    .restart local v41    # "tW0":I
    .restart local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_448
    move v6, v10

    move v5, v11

    move-object/from16 v48, v12

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    move-object/from16 v49, v42

    const/16 v33, 0x1

    .line 266
    .end local v10    # "j":I
    .end local v11    # "i":I
    .end local v13    # "x":I
    .end local v40    # "tW1":I
    .end local v41    # "tW0":I
    .end local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v25    # "tW0":I
    .restart local v28    # "x":I
    .restart local v29    # "tW1":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_45a
    :goto_45a
    add-int/lit8 v10, v6, 0x1

    move v11, v5

    move-object/from16 v36, v23

    move/from16 v41, v25

    move/from16 v13, v28

    move/from16 v40, v29

    move-object/from16 v39, v44

    move-object/from16 v12, v48

    move-object/from16 v42, v49

    const/4 v14, -0x1

    const/4 v15, 0x1

    .end local v6    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_281

    .end local v5    # "i":I
    .end local v25    # "tW0":I
    .end local v28    # "x":I
    .end local v29    # "tW1":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v11    # "i":I
    .restart local v13    # "x":I
    .restart local v40    # "tW1":I
    .restart local v41    # "tW0":I
    .restart local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_46f
    move v6, v10

    move v5, v11

    move-object/from16 v48, v12

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    move-object/from16 v49, v42

    const/16 v33, 0x1

    .line 265
    .end local v10    # "j":I
    .end local v11    # "i":I
    .end local v13    # "x":I
    .end local v40    # "tW1":I
    .end local v41    # "tW0":I
    .end local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v5    # "i":I
    .restart local v25    # "tW0":I
    .restart local v28    # "x":I
    .restart local v29    # "tW1":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    add-int/lit8 v11, v5, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x1

    .end local v5    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_27b

    .end local v25    # "tW0":I
    .end local v28    # "x":I
    .end local v29    # "tW1":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v13    # "x":I
    .restart local v40    # "tW1":I
    .restart local v41    # "tW0":I
    .restart local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_487
    move v5, v11

    move/from16 v28, v13

    move-object/from16 v23, v36

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    move-object/from16 v49, v42

    const/16 v33, 0x1

    .line 354
    .end local v11    # "i":I
    .end local v13    # "x":I
    .end local v40    # "tW1":I
    .end local v41    # "tW0":I
    .end local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v25    # "tW0":I
    .restart local v28    # "x":I
    .restart local v29    # "tW1":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    if-nez v20, :cond_4c7

    .line 355
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v15, v43

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v2, 0x2

    sub-int v10, v1, v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v12

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 257
    :cond_4c7
    add-int/lit8 v13, v28, 0x1

    move-object/from16 v37, v21

    move-object/from16 v36, v23

    move-object/from16 v38, v24

    move/from16 v41, v25

    move/from16 v40, v29

    move-object/from16 v39, v44

    move-object/from16 v42, v49

    const/4 v14, -0x1

    const/4 v15, 0x1

    .end local v28    # "x":I
    .restart local v13    # "x":I
    goto/16 :goto_200

    .end local v25    # "tW0":I
    .end local v29    # "tW1":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v40    # "tW1":I
    .restart local v41    # "tW0":I
    .restart local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_4db
    move-object/from16 v48, v10

    move-object v15, v11

    move/from16 v28, v13

    move-object/from16 v44, v39

    move/from16 v29, v40

    move/from16 v25, v41

    move-object/from16 v49, v42

    const/16 v33, 0x1

    .line 360
    .end local v13    # "x":I
    .end local v40    # "tW1":I
    .end local v41    # "tW0":I
    .end local v42    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v25    # "tW0":I
    .restart local v29    # "tW1":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const-string v14, "Resources"

    const/4 v13, -0x1

    if-eq v4, v13, :cond_503

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4f7

    goto :goto_503

    :cond_4f7
    move-object/from16 v56, v14

    move-object v14, v15

    move-object/from16 v62, v44

    move-object/from16 v61, v48

    move-object/from16 v60, v49

    move v15, v1

    goto/16 :goto_990

    .line 361
    :cond_503
    :goto_503
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v10, v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v11, v5, v7

    const/4 v7, -0x1

    move-object v5, v4

    move v9, v3

    invoke-direct/range {v5 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 365
    const/4 v4, 0x0

    .line 367
    .end local v20    # "tempAdded":I
    .local v4, "tempAdded":I
    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move/from16 v20, v4

    move v11, v5

    .end local v4    # "tempAdded":I
    .restart local v11    # "i":I
    .restart local v20    # "tempAdded":I
    :goto_53e
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v11, v4, :cond_732

    .line 368
    const/4 v4, 0x0

    move v10, v4

    .restart local v10    # "j":I
    :goto_544
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v10, v4, :cond_720

    .line 369
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v4, :cond_703

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v4, :cond_703

    .line 370
    move-object/from16 v9, v49

    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v9, v11, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v4

    if-eqz v4, :cond_6f6

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 371
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v4, :cond_59d

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    if-ne v4, v5, :cond_58f

    goto :goto_59d

    :cond_58f
    move-object/from16 v52, v9

    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    goto/16 :goto_70f

    :cond_59d
    :goto_59d
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    .line 372
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v4, :cond_5c8

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    if-ne v4, v5, :cond_5ba

    goto :goto_5c8

    :cond_5ba
    move-object/from16 v52, v9

    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    goto/16 :goto_70f

    .line 374
    :cond_5c8
    :goto_5c8
    const/4 v4, 0x0

    .line 375
    .local v4, "tNum":I
    const/4 v5, 0x0

    .line 377
    .local v5, "tPossible":I
    const/4 v6, 0x0

    move v8, v4

    move v7, v5

    .end local v4    # "tNum":I
    .end local v5    # "tPossible":I
    .local v6, "k":I
    .local v7, "tPossible":I
    .restart local v8    # "tNum":I
    :goto_5cd
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v6, v4, :cond_60e

    .line 378
    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-nez v4, :cond_5ef

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v4

    if-eqz v4, :cond_5f1

    .line 379
    :cond_5ef
    add-int/lit8 v8, v8, 0x1

    .line 382
    :cond_5f1
    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v4, v5, :cond_60b

    .line 383
    add-int/lit8 v7, v7, 0x1

    .line 377
    :cond_60b
    add-int/lit8 v6, v6, 0x1

    goto :goto_5cd

    .line 387
    .end local v6    # "k":I
    :cond_60e
    if-lez v7, :cond_6e5

    .line 388
    add-int/lit8 v20, v20, 0x1

    .line 390
    move/from16 v21, v3

    .line 392
    .local v21, "tempY":I
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$8;

    mul-int/lit8 v4, v2, 0x2

    sub-int v22, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v44

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v13, v48

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    if-lez v8, :cond_63e

    if-ne v8, v7, :cond_63e

    const/16 v24, 0x1

    goto :goto_640

    :cond_63e
    const/16 v24, 0x0

    :goto_640
    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object v4, v6

    move-object/from16 v50, v5

    move-object/from16 v5, p0

    move-object/from16 v51, v6

    move/from16 v6, v26

    move/from16 v26, v7

    .end local v7    # "tPossible":I
    .local v26, "tPossible":I
    move v7, v11

    move/from16 v30, v8

    .end local v8    # "tNum":I
    .restart local v30    # "tNum":I
    move v8, v10

    move-object/from16 v52, v9

    .end local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v52, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move v9, v2

    move/from16 v53, v10

    .end local v10    # "j":I
    .local v53, "j":I
    move v10, v3

    move/from16 v54, v11

    .end local v11    # "i":I
    .local v54, "i":I
    move/from16 v11, v22

    move/from16 v12, v27

    move-object/from16 v55, v13

    move/from16 v13, v28

    move-object/from16 v56, v14

    move-object/from16 v14, v23

    move-object/from16 v57, v15

    move/from16 v15, v24

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;Z)V

    move-object/from16 v4, v51

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 432
    sget-boolean v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v4, :cond_6e0

    .line 433
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v2

    move/from16 v6, v53

    move/from16 v5, v54

    .end local v53    # "j":I
    .end local v54    # "i":I
    .local v5, "i":I
    .local v6, "j":I
    invoke-static {v5, v6, v4, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v4

    .line 435
    .local v4, "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_70f

    .line 436
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_69e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6cc

    .line 437
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 438
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int v8, v8, v18

    add-int/2addr v3, v8

    .line 436
    add-int/lit8 v7, v7, 0x1

    goto :goto_69e

    .line 443
    .end local v7    # "a":I
    :cond_6cc
    sub-int v7, v3, v21

    .line 444
    .end local v21    # "tempY":I
    .local v7, "tempY":I
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v9, v3, v7

    mul-int/lit8 v10, v2, 0x2

    sub-int v10, v1, v10

    invoke-direct {v8, v2, v9, v10, v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v8

    goto :goto_70f

    .line 432
    .end local v4    # "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "tempY":I
    .restart local v21    # "tempY":I
    .restart local v53    # "j":I
    .restart local v54    # "i":I
    :cond_6e0
    move/from16 v6, v53

    move/from16 v5, v54

    .end local v53    # "j":I
    .end local v54    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    goto :goto_70f

    .line 387
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v21    # "tempY":I
    .end local v26    # "tPossible":I
    .end local v30    # "tNum":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v7, "tPossible":I
    .restart local v8    # "tNum":I
    .restart local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v10    # "j":I
    .restart local v11    # "i":I
    :cond_6e5
    move/from16 v26, v7

    move/from16 v30, v8

    move-object/from16 v52, v9

    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    .end local v7    # "tPossible":I
    .end local v8    # "tNum":I
    .end local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v10    # "j":I
    .end local v11    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v26    # "tPossible":I
    .restart local v30    # "tNum":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_70f

    .line 370
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v26    # "tPossible":I
    .end local v30    # "tNum":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v10    # "j":I
    .restart local v11    # "i":I
    :cond_6f6
    move-object/from16 v52, v9

    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    .end local v9    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v10    # "j":I
    .end local v11    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_70f

    .line 369
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v10    # "j":I
    .restart local v11    # "i":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_703
    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    move-object/from16 v52, v49

    .line 368
    .end local v10    # "j":I
    .end local v11    # "i":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_70f
    :goto_70f
    add-int/lit8 v10, v6, 0x1

    move v11, v5

    move-object/from16 v44, v50

    move-object/from16 v49, v52

    move-object/from16 v48, v55

    move-object/from16 v14, v56

    move-object/from16 v15, v57

    const/4 v12, 0x3

    const/4 v13, -0x1

    .end local v6    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_544

    .end local v5    # "i":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v11    # "i":I
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_720
    move v6, v10

    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    move-object/from16 v52, v49

    .line 367
    .end local v10    # "j":I
    .end local v11    # "i":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v5    # "i":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    add-int/lit8 v11, v5, 0x1

    const/4 v12, 0x3

    const/4 v13, -0x1

    .end local v5    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_53e

    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_732
    move v5, v11

    move-object/from16 v56, v14

    move-object/from16 v57, v15

    move-object/from16 v50, v44

    move-object/from16 v55, v48

    move-object/from16 v52, v49

    .line 454
    .end local v11    # "i":I
    .end local v49    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_BUILDINGS_NO_PROVINCES_SIDEBAR:Z

    if-eqz v4, :cond_987

    .line 455
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v15, -0x1

    if-ne v4, v15, :cond_94b

    .line 456
    const/4 v4, 0x0

    .line 458
    .local v4, "addedTitleNoProvinces":Z
    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move v14, v5

    .local v14, "i":I
    :goto_74c
    sget v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v14, v5, :cond_942

    .line 459
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_751
    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_934

    .line 460
    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v6, :cond_91d

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v6, :cond_91d

    .line 461
    move-object/from16 v13, v52

    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v13, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v13, v14, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v6

    if-eqz v6, :cond_913

    .line 462
    const/4 v6, 0x0

    .line 463
    .local v6, "tNum":I
    const/4 v7, 0x0

    .line 465
    .restart local v7    # "tPossible":I
    const/4 v8, 0x0

    move v12, v6

    move v11, v7

    .end local v6    # "tNum":I
    .end local v7    # "tPossible":I
    .local v8, "k":I
    .local v11, "tPossible":I
    .local v12, "tNum":I
    :goto_784
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v8, v6, :cond_7c5

    .line 466
    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v14, v5}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v6

    if-nez v6, :cond_7a6

    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v14, v5}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v6

    if-eqz v6, :cond_7a8

    .line 467
    :cond_7a6
    add-int/lit8 v12, v12, 0x1

    .line 470
    :cond_7a8
    invoke-virtual {v13, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v6, v7, :cond_7c2

    .line 471
    add-int/lit8 v11, v11, 0x1

    .line 465
    :cond_7c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_784

    .line 475
    .end local v8    # "k":I
    :cond_7c5
    if-nez v11, :cond_905

    .line 476
    if-nez v4, :cond_826

    .line 477
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Provinces"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    sub-int v22, v1, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int v23, v6, v7

    const/4 v9, -0x1

    move-object v6, v10

    move-object/from16 v7, p0

    move-object v15, v10

    move/from16 v10, v21

    move/from16 v58, v11

    .end local v11    # "tPossible":I
    .local v58, "tPossible":I
    move v11, v3

    move/from16 v59, v12

    .end local v12    # "tNum":I
    .local v59, "tNum":I
    move/from16 v12, v22

    move-object/from16 v60, v13

    .end local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v60, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v13, v23

    invoke-direct/range {v6 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v6

    add-int v6, v6, v18

    add-int/2addr v3, v6

    .line 483
    const/4 v4, 0x1

    move/from16 v21, v4

    goto :goto_82e

    .line 476
    .end local v58    # "tPossible":I
    .end local v59    # "tNum":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v11    # "tPossible":I
    .restart local v12    # "tNum":I
    .restart local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_826
    move/from16 v58, v11

    move/from16 v59, v12

    move-object/from16 v60, v13

    .end local v11    # "tPossible":I
    .end local v12    # "tNum":I
    .end local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v58    # "tPossible":I
    .restart local v59    # "tNum":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v21, v4

    .line 486
    .end local v4    # "addedTitleNoProvinces":Z
    .local v21, "addedTitleNoProvinces":Z
    :goto_82e
    add-int/lit8 v20, v20, 0x1

    .line 488
    move/from16 v22, v3

    .line 490
    .restart local v22    # "tempY":I
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$10;

    mul-int/lit8 v4, v2, 0x2

    sub-int v11, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v50

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v12, v59

    .end local v59    # "tNum":I
    .restart local v12    # "tNum":I
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v10, v55

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v9, v58

    .end local v58    # "tPossible":I
    .local v9, "tPossible":I
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    if-lez v12, :cond_860

    if-ne v12, v9, :cond_860

    const/16 v24, 0x1

    goto :goto_862

    :cond_860
    const/16 v24, 0x0

    :goto_862
    const/4 v6, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object v4, v15

    move v7, v5

    .end local v5    # "j":I
    .local v7, "j":I
    move-object/from16 v5, p0

    move/from16 v28, v7

    .end local v7    # "j":I
    .local v28, "j":I
    move v7, v14

    move/from16 v8, v28

    move/from16 v30, v9

    .end local v9    # "tPossible":I
    .local v30, "tPossible":I
    move v9, v2

    move-object/from16 v61, v10

    move v10, v3

    move/from16 v36, v12

    .end local v12    # "tNum":I
    .local v36, "tNum":I
    move/from16 v12, v26

    move-object/from16 v62, v13

    move/from16 v13, v27

    move/from16 v63, v14

    .end local v14    # "i":I
    .local v63, "i":I
    move-object/from16 v14, v23

    move/from16 v23, v1

    move-object v1, v15

    .end local v1    # "menuWidth":I
    .local v23, "menuWidth":I
    move/from16 v15, v24

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v3, v1

    .line 530
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->SHOW_BONUSES:Z

    if-eqz v1, :cond_8fc

    .line 531
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    move/from16 v15, v23

    move/from16 v6, v28

    move/from16 v5, v63

    .end local v23    # "menuWidth":I
    .end local v28    # "j":I
    .end local v63    # "i":I
    .local v5, "i":I
    .local v6, "j":I
    .local v15, "menuWidth":I
    invoke-static {v5, v6, v1, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getBuildingBonuses(IIII)Ljava/util/List;

    move-result-object v1

    .line 533
    .local v1, "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_902

    .line 534
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_8b8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8e6

    .line 535
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 536
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int v7, v7, v18

    add-int/2addr v3, v7

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b8

    .line 541
    .end local v4    # "a":I
    :cond_8e6
    sub-int v4, v3, v22

    .line 542
    .end local v22    # "tempY":I
    .local v4, "tempY":I
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sub-int v8, v3, v4

    mul-int/lit8 v9, v2, 0x2

    sub-int v9, v15, v9

    invoke-direct {v7, v2, v8, v9, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    move/from16 v4, v21

    goto :goto_926

    .line 530
    .end local v1    # "bonuses":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v4    # "tempY":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v15    # "menuWidth":I
    .restart local v22    # "tempY":I
    .restart local v23    # "menuWidth":I
    .restart local v28    # "j":I
    .restart local v63    # "i":I
    :cond_8fc
    move/from16 v15, v23

    move/from16 v6, v28

    move/from16 v5, v63

    .line 459
    .end local v22    # "tempY":I
    .end local v23    # "menuWidth":I
    .end local v28    # "j":I
    .end local v30    # "tPossible":I
    .end local v36    # "tNum":I
    .end local v63    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v15    # "menuWidth":I
    :cond_902
    move/from16 v4, v21

    goto :goto_926

    .line 475
    .end local v6    # "j":I
    .end local v15    # "menuWidth":I
    .end local v21    # "addedTitleNoProvinces":Z
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v1, "menuWidth":I
    .local v4, "addedTitleNoProvinces":Z
    .local v5, "j":I
    .restart local v11    # "tPossible":I
    .restart local v12    # "tNum":I
    .restart local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v14    # "i":I
    :cond_905
    move v15, v1

    move v6, v5

    move/from16 v30, v11

    move/from16 v36, v12

    move-object/from16 v60, v13

    move v5, v14

    move-object/from16 v62, v50

    move-object/from16 v61, v55

    .end local v1    # "menuWidth":I
    .end local v11    # "tPossible":I
    .end local v12    # "tNum":I
    .end local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v14    # "i":I
    .local v5, "i":I
    .restart local v6    # "j":I
    .restart local v15    # "menuWidth":I
    .restart local v30    # "tPossible":I
    .restart local v36    # "tNum":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_926

    .line 461
    .end local v6    # "j":I
    .end local v15    # "menuWidth":I
    .end local v30    # "tPossible":I
    .end local v36    # "tNum":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v1    # "menuWidth":I
    .local v5, "j":I
    .restart local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v14    # "i":I
    :cond_913
    move v15, v1

    move v6, v5

    move-object/from16 v60, v13

    move v5, v14

    move-object/from16 v62, v50

    move-object/from16 v61, v55

    .end local v1    # "menuWidth":I
    .end local v13    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v14    # "i":I
    .local v5, "i":I
    .restart local v6    # "j":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_926

    .line 460
    .end local v6    # "j":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v1    # "menuWidth":I
    .local v5, "j":I
    .restart local v14    # "i":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_91d
    move v15, v1

    move v6, v5

    move v5, v14

    move-object/from16 v62, v50

    move-object/from16 v60, v52

    move-object/from16 v61, v55

    .line 459
    .end local v1    # "menuWidth":I
    .end local v14    # "i":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v5, "i":I
    .restart local v6    # "j":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :goto_926
    add-int/lit8 v1, v6, 0x1

    move v14, v5

    move-object/from16 v52, v60

    move-object/from16 v55, v61

    move-object/from16 v50, v62

    move v5, v1

    move v1, v15

    const/4 v15, -0x1

    .end local v6    # "j":I
    .local v1, "j":I
    goto/16 :goto_751

    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v1, "menuWidth":I
    .local v5, "j":I
    .restart local v14    # "i":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_934
    move v15, v1

    move v6, v5

    move v5, v14

    move-object/from16 v62, v50

    move-object/from16 v60, v52

    move-object/from16 v61, v55

    .line 458
    .end local v1    # "menuWidth":I
    .end local v14    # "i":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v5, "i":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    add-int/lit8 v14, v5, 0x1

    const/4 v15, -0x1

    .end local v5    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_74c

    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v1    # "menuWidth":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_942
    move v15, v1

    move v5, v14

    move-object/from16 v62, v50

    move-object/from16 v60, v52

    move-object/from16 v61, v55

    .end local v1    # "menuWidth":I
    .end local v14    # "i":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v5    # "i":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    goto :goto_952

    .line 455
    .end local v4    # "addedTitleNoProvinces":Z
    .end local v5    # "i":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v1    # "menuWidth":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_94b
    move v15, v1

    move-object/from16 v62, v50

    move-object/from16 v60, v52

    move-object/from16 v61, v55

    .line 553
    .end local v1    # "menuWidth":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :goto_952
    if-nez v20, :cond_984

    .line 554
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v14, v57

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v2, 0x2

    sub-int v10, v15, v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v3, v1

    goto :goto_990

    .line 553
    :cond_984
    move-object/from16 v14, v57

    goto :goto_990

    .line 454
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v1    # "menuWidth":I
    .restart local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_987
    move v15, v1

    move-object/from16 v62, v50

    move-object/from16 v60, v52

    move-object/from16 v61, v55

    move-object/from16 v14, v57

    .line 560
    .end local v1    # "menuWidth":I
    .end local v52    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :goto_990
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_TO_BE_RESEARCHED_BUILDINGS_SIDEBAR:Z

    if-eqz v1, :cond_d3c

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->modeID:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_d3c

    .line 561
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$11;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 562
    const-string v13, "ToBeResearched"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v10, v15, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v11, v4, v5

    const/4 v7, -0x1

    move-object v4, v1

    move-object/from16 v5, p0

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    .line 561
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v3, v1

    .line 569
    const/4 v1, 0x0

    .line 571
    .end local v20    # "tempAdded":I
    .local v1, "tempAdded":I
    const/4 v4, 0x0

    move v12, v4

    .local v12, "x":I
    :goto_9d7
    const/4 v11, 0x3

    if-ge v12, v11, :cond_b2d

    .line 572
    const/4 v4, 0x0

    move v10, v4

    .local v10, "i":I
    :goto_9dc
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v10, v4, :cond_b17

    .line 573
    const/4 v4, 0x0

    move v9, v4

    .local v9, "j":I
    :goto_9e2
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v9, v4, :cond_afe

    .line 574
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v4, v12, :cond_ad5

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v4, :cond_ad5

    .line 575
    move-object/from16 v8, v60

    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v8, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v8, v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v4

    if-nez v4, :cond_ac0

    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 578
    const/4 v4, 0x0

    .line 579
    .local v4, "tNum":I
    const/4 v5, 0x0

    .line 581
    .local v5, "tPossible":I
    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    move v6, v5

    .end local v5    # "tPossible":I
    .local v4, "k":I
    .local v6, "tPossible":I
    .local v7, "tNum":I
    :goto_a18
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_a41

    .line 582
    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v5

    if-nez v5, :cond_a3a

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v5

    if-eqz v5, :cond_a3c

    .line 583
    :cond_a3a
    add-int/lit8 v7, v7, 0x1

    .line 586
    :cond_a3c
    add-int/lit8 v6, v6, 0x1

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_a18

    .line 589
    .end local v4    # "k":I
    :cond_a41
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$12;

    mul-int/lit8 v4, v2, 0x2

    sub-int v20, v15, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v13

    move-object/from16 v13, v62

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v39, v13

    move-object/from16 v13, v61

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    if-lez v7, :cond_a6f

    if-ne v7, v6, :cond_a6f

    const/16 v23, 0x1

    goto :goto_a71

    :cond_a6f
    const/16 v23, 0x0

    :goto_a71
    const/16 v24, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object v4, v5

    move-object/from16 v64, v5

    move-object/from16 v5, p0

    move/from16 v28, v6

    .end local v6    # "tPossible":I
    .local v28, "tPossible":I
    move/from16 v6, v24

    move/from16 v24, v7

    .end local v7    # "tNum":I
    .local v24, "tNum":I
    move v7, v10

    move-object/from16 v65, v8

    .end local v8    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v65, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move v8, v9

    move/from16 v30, v9

    .end local v9    # "j":I
    .local v30, "j":I
    move v9, v2

    move/from16 v36, v10

    .end local v10    # "i":I
    .local v36, "i":I
    move v10, v3

    const/16 v37, 0x3

    move/from16 v11, v20

    move/from16 v20, v12

    .end local v12    # "x":I
    .local v20, "x":I
    move/from16 v12, v26

    move-object/from16 v67, v13

    move-object/from16 v66, v21

    move-object/from16 v68, v39

    move/from16 v13, v27

    move-object/from16 v69, v14

    move-object/from16 v14, v22

    move/from16 v70, v15

    .end local v15    # "menuWidth":I
    .local v70, "menuWidth":I
    move/from16 v15, v23

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;Z)V

    move-object/from16 v4, v64

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    goto :goto_ae9

    .line 575
    .end local v20    # "x":I
    .end local v24    # "tNum":I
    .end local v28    # "tPossible":I
    .end local v30    # "j":I
    .end local v36    # "i":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v70    # "menuWidth":I
    .restart local v8    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    .restart local v12    # "x":I
    .restart local v15    # "menuWidth":I
    :cond_ac0
    move-object/from16 v65, v8

    move/from16 v30, v9

    move/from16 v36, v10

    move/from16 v20, v12

    move-object/from16 v66, v13

    move-object/from16 v69, v14

    move/from16 v70, v15

    move-object/from16 v67, v61

    move-object/from16 v68, v62

    const/16 v37, 0x3

    .end local v8    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v9    # "j":I
    .end local v10    # "i":I
    .end local v12    # "x":I
    .end local v15    # "menuWidth":I
    .restart local v20    # "x":I
    .restart local v30    # "j":I
    .restart local v36    # "i":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v70    # "menuWidth":I
    goto :goto_ae9

    .line 574
    .end local v20    # "x":I
    .end local v30    # "j":I
    .end local v36    # "i":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v70    # "menuWidth":I
    .restart local v9    # "j":I
    .restart local v10    # "i":I
    .restart local v12    # "x":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_ad5
    move/from16 v30, v9

    move/from16 v36, v10

    move/from16 v20, v12

    move-object/from16 v66, v13

    move-object/from16 v69, v14

    move/from16 v70, v15

    move-object/from16 v65, v60

    move-object/from16 v67, v61

    move-object/from16 v68, v62

    const/16 v37, 0x3

    .line 573
    .end local v9    # "j":I
    .end local v10    # "i":I
    .end local v12    # "x":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v20    # "x":I
    .restart local v30    # "j":I
    .restart local v36    # "i":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v70    # "menuWidth":I
    :goto_ae9
    add-int/lit8 v9, v30, 0x1

    move/from16 v12, v20

    move/from16 v10, v36

    move-object/from16 v60, v65

    move-object/from16 v13, v66

    move-object/from16 v61, v67

    move-object/from16 v62, v68

    move-object/from16 v14, v69

    move/from16 v15, v70

    const/4 v11, 0x3

    .end local v30    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_9e2

    .end local v20    # "x":I
    .end local v36    # "i":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v70    # "menuWidth":I
    .restart local v10    # "i":I
    .restart local v12    # "x":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_afe
    move/from16 v30, v9

    move/from16 v36, v10

    move/from16 v20, v12

    move-object/from16 v66, v13

    move-object/from16 v69, v14

    move/from16 v70, v15

    move-object/from16 v65, v60

    move-object/from16 v67, v61

    move-object/from16 v68, v62

    const/16 v37, 0x3

    .line 572
    .end local v9    # "j":I
    .end local v10    # "i":I
    .end local v12    # "x":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v20    # "x":I
    .restart local v36    # "i":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v70    # "menuWidth":I
    add-int/lit8 v10, v36, 0x1

    const/4 v11, 0x3

    .end local v36    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_9dc

    .end local v20    # "x":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v70    # "menuWidth":I
    .restart local v12    # "x":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_b17
    move/from16 v36, v10

    move/from16 v20, v12

    move-object/from16 v66, v13

    move-object/from16 v69, v14

    move/from16 v70, v15

    move-object/from16 v65, v60

    move-object/from16 v67, v61

    move-object/from16 v68, v62

    const/16 v37, 0x3

    .line 571
    .end local v10    # "i":I
    .end local v12    # "x":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v20    # "x":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v70    # "menuWidth":I
    add-int/lit8 v12, v20, 0x1

    .end local v20    # "x":I
    .restart local v12    # "x":I
    goto/16 :goto_9d7

    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v70    # "menuWidth":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_b2d
    move/from16 v20, v12

    move-object/from16 v66, v13

    move-object/from16 v69, v14

    move/from16 v70, v15

    move-object/from16 v65, v60

    move-object/from16 v67, v61

    move-object/from16 v68, v62

    const/16 v37, 0x3

    .line 620
    .end local v12    # "x":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v70    # "menuWidth":I
    if-nez v1, :cond_b71

    .line 621
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v15, v69

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v4, v2, 0x2

    move/from16 v14, v70

    .end local v70    # "menuWidth":I
    .local v14, "menuWidth":I
    sub-int v10, v14, v4

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v12

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    goto :goto_b75

    .line 620
    .end local v14    # "menuWidth":I
    .restart local v70    # "menuWidth":I
    :cond_b71
    move-object/from16 v15, v69

    move/from16 v14, v70

    .line 625
    .end local v70    # "menuWidth":I
    .restart local v14    # "menuWidth":I
    :goto_b75
    const/4 v1, 0x0

    .line 627
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$13;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 628
    move-object/from16 v6, v66

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v6, v56

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    sub-int v10, v14, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int v11, v4, v5

    const/4 v7, -0x1

    move-object v4, v12

    move-object/from16 v5, p0

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;Ljava/lang/String;IIIII)V

    .line 627
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    .line 635
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    move/from16 v20, v1

    move v1, v4

    .local v1, "i":I
    .local v20, "tempAdded":I
    :goto_bd3
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v1, v4, :cond_cfd

    .line 636
    const/4 v4, 0x0

    move v13, v4

    .local v13, "j":I
    :goto_bd9
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v13, v4, :cond_cea

    .line 637
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v4, :cond_cce

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v4, :cond_cce

    .line 638
    move-object/from16 v12, v65

    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v12, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v12, v1, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v4

    if-nez v4, :cond_cc0

    .line 639
    add-int/lit8 v20, v20, 0x1

    .line 641
    const/4 v4, 0x0

    .line 642
    .local v4, "tNum":I
    const/4 v5, 0x0

    .line 644
    .restart local v5    # "tPossible":I
    const/4 v6, 0x0

    move v11, v4

    move v10, v5

    .end local v4    # "tNum":I
    .end local v5    # "tPossible":I
    .local v6, "k":I
    .local v10, "tPossible":I
    .local v11, "tNum":I
    :goto_c0e
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v6, v4, :cond_c4f

    .line 645
    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1, v13}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v4

    if-nez v4, :cond_c30

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1, v13}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v4

    if-eqz v4, :cond_c32

    .line 646
    :cond_c30
    add-int/lit8 v11, v11, 0x1

    .line 649
    :cond_c32
    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v4, v5, :cond_c4c

    .line 650
    add-int/lit8 v10, v10, 0x1

    .line 644
    :cond_c4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_c0e

    .line 654
    .end local v6    # "k":I
    :cond_c4f
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$14;

    mul-int/lit8 v4, v2, 0x2

    sub-int v21, v14, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v68

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v7, v67

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    if-lez v11, :cond_c79

    if-ne v11, v10, :cond_c79

    const/16 v23, 0x1

    goto :goto_c7b

    :cond_c79
    const/16 v23, 0x0

    :goto_c7b
    const/4 v6, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x0

    move-object v4, v9

    move-object/from16 v5, p0

    move-object/from16 v27, v7

    move v7, v1

    move-object/from16 v28, v8

    move v8, v13

    move-object/from16 v71, v9

    move v9, v2

    move/from16 v30, v10

    .end local v10    # "tPossible":I
    .local v30, "tPossible":I
    move v10, v3

    move/from16 v34, v11

    .end local v11    # "tNum":I
    .local v34, "tNum":I
    move/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .local v21, "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    move/from16 v12, v24

    move/from16 v24, v13

    .end local v13    # "j":I
    .local v24, "j":I
    move/from16 v13, v26

    move/from16 v72, v14

    .end local v14    # "menuWidth":I
    .local v72, "menuWidth":I
    move-object/from16 v14, v22

    move/from16 v22, v2

    move-object v2, v15

    .end local v2    # "paddingLeft":I
    .local v22, "paddingLeft":I
    move/from16 v15, v23

    invoke-direct/range {v4 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;ZIIIIIZZLjava/lang/String;Z)V

    move-object/from16 v4, v71

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int v4, v4, v18

    add-int/2addr v3, v4

    goto :goto_cdb

    .line 638
    .end local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v22    # "paddingLeft":I
    .end local v24    # "j":I
    .end local v30    # "tPossible":I
    .end local v34    # "tNum":I
    .end local v72    # "menuWidth":I
    .restart local v2    # "paddingLeft":I
    .restart local v12    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v13    # "j":I
    .restart local v14    # "menuWidth":I
    :cond_cc0
    move/from16 v22, v2

    move-object/from16 v21, v12

    move/from16 v24, v13

    move/from16 v72, v14

    move-object v2, v15

    move-object/from16 v27, v67

    move-object/from16 v28, v68

    .end local v2    # "paddingLeft":I
    .end local v12    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v13    # "j":I
    .end local v14    # "menuWidth":I
    .restart local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v22    # "paddingLeft":I
    .restart local v24    # "j":I
    .restart local v72    # "menuWidth":I
    goto :goto_cdb

    .line 637
    .end local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v22    # "paddingLeft":I
    .end local v24    # "j":I
    .end local v72    # "menuWidth":I
    .restart local v2    # "paddingLeft":I
    .restart local v13    # "j":I
    .restart local v14    # "menuWidth":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_cce
    move/from16 v22, v2

    move/from16 v24, v13

    move/from16 v72, v14

    move-object v2, v15

    move-object/from16 v21, v65

    move-object/from16 v27, v67

    move-object/from16 v28, v68

    .line 636
    .end local v2    # "paddingLeft":I
    .end local v13    # "j":I
    .end local v14    # "menuWidth":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v22    # "paddingLeft":I
    .restart local v24    # "j":I
    .restart local v72    # "menuWidth":I
    :goto_cdb
    add-int/lit8 v13, v24, 0x1

    move-object v15, v2

    move-object/from16 v65, v21

    move/from16 v2, v22

    move-object/from16 v67, v27

    move-object/from16 v68, v28

    move/from16 v14, v72

    .end local v24    # "j":I
    .restart local v13    # "j":I
    goto/16 :goto_bd9

    .end local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v22    # "paddingLeft":I
    .end local v72    # "menuWidth":I
    .restart local v2    # "paddingLeft":I
    .restart local v14    # "menuWidth":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_cea
    move/from16 v22, v2

    move/from16 v24, v13

    move/from16 v72, v14

    move-object v2, v15

    move-object/from16 v21, v65

    move-object/from16 v27, v67

    move-object/from16 v28, v68

    .line 635
    .end local v2    # "paddingLeft":I
    .end local v13    # "j":I
    .end local v14    # "menuWidth":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v22    # "paddingLeft":I
    .restart local v72    # "menuWidth":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v22

    goto/16 :goto_bd3

    .end local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v22    # "paddingLeft":I
    .end local v72    # "menuWidth":I
    .restart local v2    # "paddingLeft":I
    .restart local v14    # "menuWidth":I
    .restart local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_cfd
    move/from16 v22, v2

    move/from16 v72, v14

    move-object v2, v15

    move-object/from16 v21, v65

    .line 674
    .end local v1    # "i":I
    .end local v2    # "paddingLeft":I
    .end local v14    # "menuWidth":I
    .end local v65    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v22    # "paddingLeft":I
    .restart local v72    # "menuWidth":I
    if-nez v20, :cond_d38

    .line 675
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v22, 0x2

    move/from16 v12, v72

    .end local v72    # "menuWidth":I
    .local v12, "menuWidth":I
    sub-int v10, v12, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v7, -0x1

    move-object v4, v1

    move/from16 v8, v22

    move v9, v3

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v1, v1, v18

    add-int/2addr v3, v1

    move v10, v3

    goto :goto_d44

    .line 674
    .end local v12    # "menuWidth":I
    .restart local v72    # "menuWidth":I
    :cond_d38
    move/from16 v12, v72

    .end local v72    # "menuWidth":I
    .restart local v12    # "menuWidth":I
    move v10, v3

    goto :goto_d44

    .line 560
    .end local v12    # "menuWidth":I
    .end local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v22    # "paddingLeft":I
    .restart local v2    # "paddingLeft":I
    .restart local v15    # "menuWidth":I
    .restart local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_d3c
    move/from16 v22, v2

    move v12, v15

    move-object/from16 v21, v60

    const/16 v37, 0x3

    .line 680
    .end local v2    # "paddingLeft":I
    .end local v15    # "menuWidth":I
    .end local v60    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v12    # "menuWidth":I
    .restart local v21    # "civPlayer":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .restart local v22    # "paddingLeft":I
    move v10, v3

    .end local v3    # "buttonY":I
    .local v10, "buttonY":I
    :goto_d44
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v17, v17, v1

    .line 681
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 683
    .local v11, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v12, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v14, v22

    .end local v22    # "paddingLeft":I
    .local v14, "paddingLeft":I
    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v12

    move v6, v11

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 687
    iput-boolean v13, v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->drawScrollPositionAlways:Z

    .line 689
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Buildings"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 690
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

    .line 694
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 695
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

    .line 698
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 699
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 700
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civOptionsOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->getHeight()I

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

    .line 702
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 703
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 714
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 715
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 716
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 707
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 708
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 709
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 710
    return-void
.end method
