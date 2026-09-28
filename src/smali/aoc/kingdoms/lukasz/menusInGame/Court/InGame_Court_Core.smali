.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Core.java"


# static fields
.field public static iSortID:I


# instance fields
.field public iNumOfProvinces:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 37

    .line 46
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 44
    const/4 v14, 0x0

    iput v14, v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iNumOfProvinces:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 49
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v21, v0, v1

    .line 51
    .local v21, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    .line 54
    .local v12, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v22

    .line 55
    .local v22, "menuX":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v0, v1

    .line 57
    .local v23, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x2

    mul-int/lit8 v24, v0, 0x2

    .line 58
    .local v24, "buttonYPadding":I
    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 59
    .local v16, "buttonX":I
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 61
    .local v6, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_47

    :cond_45
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_47
    move/from16 v19, v0

    .line 63
    .local v19, "buttonH":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v0, v0

    const/high16 v17, 0x3e800000    # 0.25f

    mul-float v0, v0, v17

    float-to-int v10, v0

    .line 64
    .local v10, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v0, v0

    mul-float v0, v0, v17

    float-to-int v9, v0

    .line 66
    .local v9, "r1W":I
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->COUNCIL_TIPS:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_96

    .line 67
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CoreIsALegitimatePartOfCivilization"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v21, 0x2

    sub-int v5, v12, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v3, v21

    move v4, v6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;III)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    move/from16 v18, v6

    goto :goto_98

    .line 66
    :cond_96
    move/from16 v18, v6

    .line 75
    .end local v6    # "buttonY":I
    .local v18, "buttonY":I
    :goto_98
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AddCore"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AllProvinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v12, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    const/4 v6, 0x7

    mul-int/lit8 v0, v0, 0x7

    const/16 v5, 0xa

    div-int/lit8 v20, v0, 0xa

    const/16 v25, 0x1

    const/4 v4, -0x1

    move-object v0, v7

    move-object/from16 v1, p0

    const/16 v11, 0xa

    move/from16 v5, v21

    move/from16 v27, v9

    const/4 v9, 0x7

    .end local v9    # "r1W":I
    .local v27, "r1W":I
    move/from16 v6, v18

    move-object v14, v7

    move/from16 v7, v20

    const/4 v11, 0x1

    move/from16 v8, v25

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "tCost":F
    const/4 v1, 0x0

    move v14, v0

    .end local v0    # "tCost":F
    .local v1, "i":I
    .local v14, "tCost":F
    :goto_ef
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v1, v0, :cond_155

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_152

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_152

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_152

    .line 127
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v0

    add-float/2addr v14, v0

    .line 125
    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_ef

    .line 131
    .end local v1    # "i":I
    :cond_155
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v21, v0

    mul-int/lit8 v1, v21, 0x2

    sub-int v1, v12, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x7

    const/16 v20, 0xa

    div-int/lit8 v1, v1, 0xa

    add-int v4, v0, v1

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v12, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    const/4 v6, 0x3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v25, v0, 0xa

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v30

    const/16 v31, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v18

    move/from16 v6, v25

    move-object/from16 v33, v7

    move/from16 v7, v29

    move-object v11, v8

    move/from16 v8, v30

    const/4 v15, 0x7

    move/from16 v9, v31

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 179
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-eqz v0, :cond_1e2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e0

    goto :goto_1e3

    :cond_1e0
    const/4 v2, 0x0

    goto :goto_1e4

    :cond_1e2
    const/4 v1, 0x1

    :goto_1e3
    const/4 v2, 0x1

    :goto_1e4
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v0, v1, :cond_1ea

    const/4 v3, 0x1

    goto :goto_1eb

    :cond_1ea
    const/4 v3, 0x0

    :goto_1eb
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v29, v0, v1

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v18

    move v8, v10

    const/4 v15, 0x6

    move/from16 v9, v29

    move/from16 v29, v10

    .end local v10    # "r0W":I
    .local v29, "r0W":I
    move/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v16, v16, v0

    .line 210
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_235

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v10, 0x3

    if-ne v0, v10, :cond_233

    goto :goto_236

    :cond_233
    const/4 v2, 0x0

    goto :goto_237

    :cond_235
    const/4 v10, 0x3

    :goto_236
    const/4 v2, 0x1

    :goto_237
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v0, v10, :cond_23d

    const/4 v3, 0x1

    goto :goto_23e

    :cond_23d
    const/4 v3, 0x0

    :goto_23e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v8, v29

    move/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v16, v16, v0

    .line 241
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v10, 0x4

    const/4 v9, 0x5

    if-eq v0, v10, :cond_283

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v0, v9, :cond_281

    goto :goto_283

    :cond_281
    const/4 v2, 0x0

    goto :goto_284

    :cond_283
    :goto_283
    const/4 v2, 0x1

    :goto_284
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v0, v9, :cond_28a

    const/4 v3, 0x1

    goto :goto_28b

    :cond_28a
    const/4 v3, 0x0

    :goto_28b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ConstructionTime"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v30, v0, v1

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v8, v27

    move/from16 v9, v30

    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v16, v16, v0

    .line 272
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$7;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-eq v0, v15, :cond_2d1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2cf

    goto :goto_2d2

    :cond_2cf
    const/4 v2, 0x0

    goto :goto_2d3

    :cond_2d1
    const/4 v1, 0x7

    :goto_2d2
    const/4 v2, 0x1

    :goto_2d3
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v0, v1, :cond_2d9

    const/4 v3, 0x1

    goto :goto_2da

    :cond_2d9
    const/4 v3, 0x0

    :goto_2da
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Cost"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v8, v27

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 306
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x5

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v17

    float-to-int v0, v0

    .line 307
    .end local v29    # "r0W":I
    .local v0, "r0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v1, v12, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v17

    float-to-int v1, v1

    .line 310
    .end local v27    # "r1W":I
    .local v1, "r1W":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    .line 312
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_338
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_38c

    .line 313
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_389

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-nez v3, :cond_389

    .line 314
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_389
    add-int/lit8 v2, v2, 0x1

    goto :goto_338

    .line 319
    .end local v2    # "i":I
    :cond_38c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3d7

    .line 320
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v2, v21, 0x2

    sub-int v8, v12, v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/4 v5, -0x1

    move-object v2, v10

    move/from16 v6, v21

    move/from16 v7, v18

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v18, v18, v2

    move-object/from16 v9, p0

    move/from16 v25, v0

    move/from16 v30, v1

    move/from16 v34, v12

    move-object v10, v13

    move/from16 v28, v14

    const/16 v20, 0x3

    move-object v14, v11

    move/from16 v11, v18

    goto/16 :goto_770

    .line 319
    :cond_3d7
    move/from16 v27, v18

    .line 324
    .end local v18    # "buttonY":I
    .local v27, "buttonY":I
    :goto_3d9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_760

    .line 325
    const/4 v2, 0x0

    .line 327
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-nez v3, :cond_420

    .line 328
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_3e5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_419

    .line 329
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_416

    .line 330
    move v2, v3

    .line 328
    :cond_416
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e5

    :cond_419
    move v7, v2

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 334
    :cond_420
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_460

    .line 335
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_426
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_45a

    .line 336
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_457

    .line 337
    move v2, v3

    .line 335
    :cond_457
    add-int/lit8 v3, v3, 0x1

    goto :goto_426

    :cond_45a
    move v7, v2

    const/4 v5, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 341
    :cond_460
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_49e

    .line 342
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_466
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_498

    .line 343
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_495

    .line 344
    move v2, v3

    .line 342
    :cond_495
    add-int/lit8 v3, v3, 0x1

    goto :goto_466

    :cond_498
    move v7, v2

    const/4 v5, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 348
    :cond_49e
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v9, 0x3

    if-ne v3, v9, :cond_4db

    .line 349
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4a4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4d6

    .line 350
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v5

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4d3

    .line 351
    move v2, v3

    .line 349
    :cond_4d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a4

    :cond_4d6
    move v7, v2

    const/4 v5, 0x7

    const/4 v8, 0x4

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 355
    :cond_4db
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v8, 0x4

    if-ne v3, v8, :cond_50d

    .line 356
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_4e1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_509

    .line 357
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v5

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v6

    if-le v5, v6, :cond_506

    .line 358
    move v2, v3

    .line 356
    :cond_506
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e1

    :cond_509
    move v7, v2

    const/4 v5, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 362
    :cond_50d
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v3, v10, :cond_53e

    .line 363
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_512
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_53a

    .line 364
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v5

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v6

    if-le v5, v6, :cond_537

    .line 365
    move v2, v3

    .line 363
    :cond_537
    add-int/lit8 v3, v3, 0x1

    goto :goto_512

    :cond_53a
    move v7, v2

    const/4 v5, 0x7

    .end local v3    # "o":I
    goto/16 :goto_5a3

    .line 369
    :cond_53e
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    if-ne v3, v15, :cond_570

    .line 370
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_543
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_56d

    .line 371
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v5

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_56a

    .line 372
    move v2, v3

    .line 370
    :cond_56a
    add-int/lit8 v3, v3, 0x1

    goto :goto_543

    :cond_56d
    move v7, v2

    const/4 v5, 0x7

    .end local v3    # "o":I
    goto :goto_5a3

    .line 376
    :cond_570
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iSortID:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_5a2

    .line 377
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_576
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5a0

    .line 378
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v6

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_59d

    .line 379
    move v2, v3

    .line 377
    :cond_59d
    add-int/lit8 v3, v3, 0x1

    goto :goto_576

    :cond_5a0
    move v7, v2

    goto :goto_5a3

    .line 376
    .end local v3    # "o":I
    :cond_5a2
    move v7, v2

    .line 384
    .end local v2    # "toAddID":I
    .local v7, "toAddID":I
    :goto_5a3
    move/from16 v2, v21

    .line 386
    .end local v16    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$8;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v18, 0x2

    mul-int/lit8 v17, v17, 0x2

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object v4, v11

    const/16 v10, 0xa

    const/16 v26, 0x1

    const/16 v29, 0x2

    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v11, v3

    move/from16 v34, v12

    .end local v12    # "menuWidth":I
    .local v34, "menuWidth":I
    move-object/from16 v12, p0

    move-object v10, v13

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    move-object v13, v6

    move/from16 v28, v14

    const/4 v6, 0x0

    .end local v14    # "tCost":F
    .local v28, "tCost":F
    move/from16 v14, v16

    const/16 v31, 0x7

    const/16 v32, 0x6

    move-object/from16 v5, p0

    move/from16 v15, v17

    move/from16 v16, v2

    move/from16 v17, v27

    move/from16 v18, v0

    move/from16 v20, v25

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v11

    add-int v11, v2, v3

    .line 412
    .end local v2    # "buttonX":I
    .local v11, "buttonX":I
    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v33

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    const/16 v14, 0x64

    invoke-static {v3, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v16, -0x1

    move-object v2, v12

    move-object v14, v4

    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v4, v15

    move-object v15, v5

    move/from16 v5, v16

    move v6, v11

    move/from16 v35, v7

    .end local v7    # "toAddID":I
    .local v35, "toAddID":I
    move/from16 v7, v27

    const/16 v18, 0x4

    move v8, v0

    const/16 v20, 0x3

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v11, v2

    .line 415
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$9;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v9, v35

    .end local v35    # "toAddID":I
    .local v9, "toAddID":I
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v8, 0xa

    invoke-static {v3, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v4, -0x1

    move/from16 v25, v0

    .end local v0    # "r0W":I
    .local v25, "r0W":I
    move-object v0, v12

    move/from16 v30, v1

    .end local v1    # "r1W":I
    .local v30, "r1W":I
    move-object/from16 v1, p0

    move v5, v11

    move/from16 v6, v27

    move/from16 v7, v30

    const/16 v33, 0xa

    move/from16 v8, v19

    move v15, v9

    .end local v9    # "toAddID":I
    .local v15, "toAddID":I
    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v11, v0

    .line 442
    .end local v11    # "buttonX":I
    .restart local v16    # "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v27

    move/from16 v6, v30

    move/from16 v7, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v27, v0

    .line 479
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_749

    .line 480
    move-object/from16 v9, p0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iNumOfProvinces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->iNumOfProvinces:I

    goto :goto_74b

    .line 479
    :cond_749
    move-object/from16 v9, p0

    .line 483
    :goto_74b
    invoke-interface {v14, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 484
    .end local v15    # "toAddID":I
    move-object/from16 v33, v13

    move-object v11, v14

    move/from16 v0, v25

    move/from16 v14, v28

    move/from16 v1, v30

    move/from16 v12, v34

    const/4 v15, 0x6

    const/16 v20, 0xa

    move-object v13, v10

    const/4 v10, 0x5

    goto/16 :goto_3d9

    .line 324
    .end local v10    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v25    # "r0W":I
    .end local v28    # "tCost":F
    .end local v30    # "r1W":I
    .end local v34    # "menuWidth":I
    .restart local v0    # "r0W":I
    .restart local v1    # "r1W":I
    .local v11, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tCost":F
    :cond_760
    move-object/from16 v9, p0

    move/from16 v25, v0

    move/from16 v30, v1

    move/from16 v34, v12

    move-object v10, v13

    move/from16 v28, v14

    const/16 v20, 0x3

    move-object v14, v11

    .end local v0    # "r0W":I
    .end local v1    # "r1W":I
    .end local v11    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "menuWidth":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v10    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "r0W":I
    .restart local v28    # "tCost":F
    .restart local v30    # "r1W":I
    .restart local v34    # "menuWidth":I
    move/from16 v11, v27

    .line 487
    .end local v27    # "buttonY":I
    .local v11, "buttonY":I
    :goto_770
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v23, v23, v0

    .line 488
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 490
    .local v12, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v13, v34

    const/4 v15, 0x0

    .end local v34    # "menuWidth":I
    .local v13, "menuWidth":I
    invoke-direct {v0, v15, v15, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move/from16 v3, v23

    move v4, v13

    move v5, v12

    move-object v6, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 494
    iput-boolean v15, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->drawScrollPositionAlways:Z

    .line 496
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CoreConstruction"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 497
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

    .line 501
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 502
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

    .line 505
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 506
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 507
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Core;->getHeight()I

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

    .line 509
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 510
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 521
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 522
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 523
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 514
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 515
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 516
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 517
    return-void
.end method
