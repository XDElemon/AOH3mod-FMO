.class public Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Civ_MilitaryAcademy.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime:J

    .line 48
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime2:J

    .line 50
    const/4 v0, 0x4

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 38

    .line 52
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int v10, v1, v2

    .line 57
    .local v10, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    .line 59
    .local v11, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v12

    .line 60
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

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v13, v1, v2

    .line 62
    .local v13, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v1, 0x2

    .line 63
    .local v14, "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    .line 64
    .local v1, "buttonX":I
    move v2, v14

    .line 66
    .local v2, "buttonY":I
    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    .line 68
    .local v25, "buttonH":I
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_64

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_64

    .line 69
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    goto :goto_6e

    .line 71
    :cond_64
    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-gtz v4, :cond_6e

    .line 72
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    .line 75
    :cond_6e
    :goto_6e
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 76
    .local v4, "r0W":I
    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v11, v6

    int-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 78
    .local v6, "r1W":I
    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v10

    .line 80
    .end local v1    # "buttonX":I
    .local v8, "buttonX":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 82
    .local v9, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_92
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v15

    if-ge v1, v15, :cond_ac

    .line 83
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v15

    if-lez v15, :cond_a9

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 88
    .end local v1    # "i":I
    :cond_ac
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$1;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 89
    const-string v5, "Civilizations"

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v5, v10, 0x2

    sub-int v22, v11, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    .line 92
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v24

    move-object v15, v1

    move-object/from16 v16, p0

    move/from16 v20, v8

    move/from16 v21, v2

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v15

    add-int/2addr v2, v1

    .line 122
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 124
    .end local v8    # "buttonX":I
    .local v1, "buttonX":I
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$2;

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-eqz v15, :cond_123

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v15, v5, :cond_120

    goto :goto_123

    :cond_120
    const/16 v28, 0x0

    goto :goto_125

    :cond_123
    :goto_123
    const/16 v28, 0x1

    :goto_125
    sget v15, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v15, v5, :cond_12c

    const/16 v29, 0x1

    goto :goto_12e

    :cond_12c
    const/16 v29, 0x0

    :goto_12e
    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Name"

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v35, v3, v15

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v8

    move-object/from16 v27, p0

    move/from16 v32, v1

    move/from16 v33, v2

    move/from16 v34, v4

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 154
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$3;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v15, 0x3

    const/4 v5, 0x2

    if-eq v8, v5, :cond_172

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v5, v15, :cond_16f

    goto :goto_172

    :cond_16f
    const/16 v28, 0x0

    goto :goto_174

    :cond_172
    :goto_172
    const/16 v28, 0x1

    :goto_174
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v5, v15, :cond_17b

    const/16 v29, 0x1

    goto :goto_17d

    :cond_17b
    const/16 v29, 0x0

    :goto_17d
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MilitaryAcademy"

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x6

    add-int v35, v5, v16

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v1

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 184
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$4;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v15, 0x4

    move/from16 v17, v4

    .end local v4    # "r0W":I
    .local v17, "r0W":I
    const/4 v4, 0x5

    if-eq v5, v15, :cond_1c4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v5, v4, :cond_1c1

    goto :goto_1c4

    :cond_1c1
    const/16 v28, 0x0

    goto :goto_1c6

    :cond_1c4
    :goto_1c4
    const/16 v28, 0x1

    :goto_1c6
    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-ne v5, v4, :cond_1cd

    const/16 v29, 0x1

    goto :goto_1cf

    :cond_1cd
    const/16 v29, 0x0

    :goto_1cf
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "MilitaryAcademyForGenerals"

    invoke-virtual {v5, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x6

    add-int v35, v5, v19

    sget v36, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v31, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, p0

    move/from16 v32, v1

    move/from16 v33, v2

    move/from16 v34, v6

    invoke-direct/range {v26 .. v36}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 217
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v11, v3

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v19, v19, 0x5

    sub-int v3, v3, v19

    int-to-float v3, v3

    const v19, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v19

    float-to-int v3, v3

    .line 218
    .end local v17    # "r0W":I
    .local v3, "r0W":I
    sget v17, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v17, v17, 0x2

    sub-int v5, v11, v17

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v17, 0x5

    sub-int v5, v5, v17

    int-to-float v5, v5

    const v17, 0x3e99999a    # 0.3f

    mul-float v5, v5, v17

    float-to-int v6, v5

    move/from16 v17, v1

    move v5, v2

    .line 221
    .end local v1    # "buttonX":I
    .end local v2    # "buttonY":I
    .local v5, "buttonY":I
    .local v17, "buttonX":I
    :goto_231
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f5

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "toAddID":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    if-nez v2, :cond_27b

    .line 225
    const/4 v2, 0x1

    .local v2, "o":I
    :goto_23d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_277

    .line 226
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .local v20, "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_271

    .line 227
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_273

    .line 226
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_271
    move/from16 v1, v20

    .line 225
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_273
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x5

    goto :goto_23d

    :cond_277
    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .end local v2    # "o":I
    .restart local v20    # "toAddID":I
    goto/16 :goto_3ba

    .line 231
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :cond_27b
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2be

    .line 232
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_281
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2ba

    .line 233
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 234
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_2b7

    .line 233
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_2b5
    move/from16 v1, v20

    .line 232
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_2b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_281

    :cond_2ba
    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .end local v2    # "o":I
    .restart local v20    # "toAddID":I
    goto/16 :goto_3ba

    .line 238
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :cond_2be
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2fd

    .line 239
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_2c4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f9

    .line 240
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    if-ge v4, v1, :cond_2f4

    .line 241
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_2f6

    .line 240
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_2f4
    move/from16 v1, v20

    .line 239
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_2f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c4

    :cond_2f9
    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .end local v2    # "o":I
    .restart local v20    # "toAddID":I
    goto/16 :goto_3ba

    .line 245
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :cond_2fd
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_33d

    .line 246
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_303
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_339

    .line 247
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v1

    if-le v4, v1, :cond_333

    .line 248
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_335

    .line 247
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_333
    move/from16 v1, v20

    .line 246
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_335
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    goto :goto_303

    :cond_339
    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .end local v2    # "o":I
    .restart local v20    # "toAddID":I
    goto/16 :goto_3ba

    .line 252
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :cond_33d
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_37c

    .line 253
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_343
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_379

    .line 254
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    if-ge v4, v1, :cond_373

    .line 255
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_375

    .line 254
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_373
    move/from16 v1, v20

    .line 253
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_375
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    goto :goto_343

    :cond_379
    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .end local v2    # "o":I
    .restart local v20    # "toAddID":I
    goto :goto_3ba

    .line 259
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :cond_37c
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->iSortID:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3ba

    .line 260
    const/4 v2, 0x1

    .restart local v2    # "o":I
    :goto_382
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3b8

    .line 261
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v4

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v19

    move/from16 v20, v1

    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    invoke-virtual/range {v19 .. v19}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v1

    if-le v4, v1, :cond_3b2

    .line 262
    move v1, v2

    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    goto :goto_3b4

    .line 261
    .end local v1    # "toAddID":I
    .restart local v20    # "toAddID":I
    :cond_3b2
    move/from16 v1, v20

    .line 260
    .end local v20    # "toAddID":I
    .restart local v1    # "toAddID":I
    :goto_3b4
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x5

    goto :goto_382

    :cond_3b8
    move/from16 v20, v1

    .line 267
    .end local v2    # "o":I
    :cond_3ba
    :goto_3ba
    move v2, v10

    .line 269
    .end local v17    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$5;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v17

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v27, 0x2

    mul-int/lit8 v20, v20, 0x2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v28, v10

    move-object v10, v15

    const/16 v29, 0x4

    const/16 v30, 0x3

    .end local v10    # "paddingLeft":I
    .local v28, "paddingLeft":I
    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v2

    move/from16 v21, v5

    move/from16 v22, v3

    move/from16 v23, v25

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v15

    add-int/2addr v2, v4

    .line 292
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$6;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    move/from16 v31, v3

    .end local v3    # "r0W":I
    .local v31, "r0W":I
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " / "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v32, v14

    .end local v14    # "buttonYPadding":I
    .local v32, "buttonYPadding":I
    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v19, -0x1

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v20, v2

    move/from16 v22, v6

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
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

    .line 311
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$7;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object v15, v4

    move/from16 v20, v2

    invoke-direct/range {v15 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v14

    add-int/2addr v5, v3

    .line 330
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 331
    .end local v1    # "toAddID":I
    move/from16 v17, v2

    move-object v15, v10

    move/from16 v10, v28

    move/from16 v3, v31

    move/from16 v14, v32

    const/4 v4, 0x5

    goto/16 :goto_231

    .line 334
    .end local v2    # "buttonX":I
    .end local v28    # "paddingLeft":I
    .end local v31    # "r0W":I
    .end local v32    # "buttonYPadding":I
    .restart local v3    # "r0W":I
    .restart local v10    # "paddingLeft":I
    .restart local v14    # "buttonYPadding":I
    .restart local v17    # "buttonX":I
    :cond_4f5
    move/from16 v31, v3

    move/from16 v28, v10

    move/from16 v32, v14

    move-object v10, v15

    const/16 v30, 0x3

    .end local v3    # "r0W":I
    .end local v10    # "paddingLeft":I
    .end local v14    # "buttonYPadding":I
    .restart local v28    # "paddingLeft":I
    .restart local v31    # "r0W":I
    .restart local v32    # "buttonYPadding":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 336
    .local v14, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v11, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$8;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v24}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move/from16 v15, v31

    .end local v31    # "r0W":I
    .local v15, "r0W":I
    move v3, v12

    move v4, v13

    move/from16 v16, v5

    .end local v5    # "buttonY":I
    .local v16, "buttonY":I
    move v5, v11

    move/from16 v18, v6

    .end local v6    # "r1W":I
    .local v18, "r1W":I
    move v6, v14

    move-object v7, v0

    move-object/from16 v19, v9

    .end local v9    # "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "tCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v9, v10

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 344
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 1

    .line 368
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    .line 369
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    .line 370
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 348
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 349
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    .line 352
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 353
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 354
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 356
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 357
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 361
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 362
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime:J

    .line 363
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_MilitaryAcademy;->lTime2:J

    .line 364
    return-void
.end method
