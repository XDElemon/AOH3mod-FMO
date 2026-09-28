.class public Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "NewGameCiv.java"


# static fields
.field public static expandCivDesc:Z

.field public static iActiveCivID:I


# instance fields
.field public flagH:I

.field public flagW:I

.field public flagX:I

.field public flagY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    .line 59
    sput-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 38

    .line 61
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 64
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 65
    .local v0, "paddingLeft":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    .line 67
    .local v12, "titleHeight":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    .line 69
    .local v13, "menuWidth":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v14, v1, v2

    .line 70
    .local v14, "menuX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v15, v1, 0xa

    .line 72
    .local v15, "menuY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    .line 73
    .local v16, "buttonYPadding":I
    move/from16 v1, v16

    .line 75
    .local v1, "buttonY":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    .line 77
    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG(I)V

    .line 79
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonWidth()I

    move-result v4

    sub-int v4, v13, v4

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v4, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;-><init>(III)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iput v0, v10, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagX:I

    .line 81
    iput v1, v10, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    .line 82
    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v13, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v10, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagW:I

    .line 85
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 87
    new-instance v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonWidth()I

    move-result v3

    sub-int v3, v13, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->getButtonWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v9, 0x1

    invoke-direct {v2, v10, v3, v1, v9}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$1;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIZ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 152
    iget v2, v10, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagY:I

    sub-int v2, v1, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    iput v2, v10, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->flagH:I

    .line 154
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager;->maxHeight:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager;->maxHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonIdeology;->maxHeight:I

    .line 156
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonWidth()I

    move-result v2

    sub-int v2, v13, v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v17, v2, v3

    .line 158
    .local v17, "tWidth":I
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonIdeology2;

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    .line 161
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v7, v2, v4

    move-object v2, v8

    move v4, v0

    move v5, v1

    move/from16 v6, v17

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonIdeology2;-><init>(IIIII)V

    .line 158
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v0

    add-int v5, v3, v17

    .line 164
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int v8, v3, v6

    move-object v3, v2

    move v6, v1

    move/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;-><init>(IIIII)V

    .line 163
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v8, 0x0

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v18, v2, v3

    .line 175
    .end local v1    # "buttonY":I
    .local v18, "buttonY":I
    move/from16 v19, v0

    .line 178
    .local v19, "buttonX":I
    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v17, v1, 0x2

    .line 180
    new-instance v7, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    .line 181
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v20, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    .line 182
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v21, v1, v2

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v19

    move-object v10, v6

    move/from16 v6, v18

    move/from16 v22, v14

    move-object v14, v7

    .end local v14    # "menuX":I
    .local v22, "menuX":I
    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v20, v12

    const/4 v12, 0x1

    .end local v12    # "titleHeight":I
    .local v20, "titleHeight":I
    move/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$2;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIIII)V

    .line 180
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v19, v19, v1

    .line 191
    new-instance v14, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$3;

    .line 192
    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_1ba

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1bb

    :cond_1ba
    move-object v3, v10

    :goto_1bb
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int v8, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    .line 193
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v9, v1, v2

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v5, v19

    move/from16 v6, v18

    move/from16 v7, v17

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$3;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIIII)V

    .line 191
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v18, v18, v1

    .line 234
    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v13, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x4

    .line 235
    .end local v17    # "tWidth":I
    .local v14, "tWidth":I
    move v9, v0

    .line 236
    .end local v19    # "buttonX":I
    .local v9, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v17, v1, v2

    .line 238
    .local v17, "statsH":I
    new-instance v8, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v1, v8

    move-object/from16 v2, p0

    move v5, v9

    move/from16 v6, v18

    move v7, v14

    move-object v12, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$4;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 253
    new-instance v12, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$5;

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(J)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$5;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 279
    new-instance v12, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$6;

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$6;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v9, v1

    .line 294
    new-instance v12, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v1, v12

    move-object/from16 v2, p0

    move v5, v9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$7;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;IIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v18, v18, v1

    .line 311
    const-string v1, ""

    .line 313
    .local v1, "description":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "scenarios/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "descriptions/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v7, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".txt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a4

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 315
    .local v2, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    move-object v12, v1

    goto/16 :goto_43f

    .line 317
    :cond_3a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_43e

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 319
    .restart local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_43f

    .line 317
    .end local v2    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    :cond_43e
    move-object v12, v1

    .line 322
    .end local v1    # "description":Ljava/lang/String;
    .local v12, "description":Ljava/lang/String;
    :goto_43f
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_470

    .line 323
    new-instance v7, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;

    mul-int/lit8 v1, v0, 0x2

    sub-int v6, v13, v1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v12

    move v4, v0

    move/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;III)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v18, v18, v1

    move/from16 v1, v18

    goto :goto_472

    .line 322
    :cond_470
    move/from16 v1, v18

    .line 333
    .end local v18    # "buttonY":I
    .local v1, "buttonY":I
    :goto_472
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->NEW_GAME_ADVANTAGES:Z

    if-eqz v2, :cond_50f

    .line 334
    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getAdvantagesSmall(I)Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, "toSort":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50f

    .line 340
    div-int/lit8 v3, v13, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getButtonWidth()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    mul-int v4, v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 342
    .local v3, "toSortX":I
    :goto_4a8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_507

    .line 343
    const/4 v4, 0x0

    .line 345
    .local v4, "bestID":I
    const/4 v5, 0x1

    .local v5, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_4b4
    if-ge v5, v6, :cond_4d4

    .line 346
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextToDraw()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextToDraw()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d1

    .line 347
    move v4, v5

    .line 345
    :cond_4d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b4

    .line 351
    .end local v5    # "i":I
    .end local v6    # "iSize":I
    :cond_4d4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    .line 352
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    .line 354
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 357
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    .end local v4    # "bestID":I
    goto :goto_4a8

    .line 360
    :cond_507
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;->getButtonHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 364
    .end local v2    # "toSort":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v3    # "toSortX":I
    :cond_50f
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Diplomacy"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v27, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v29, v13, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int v30, v3, v4

    const/16 v26, -0x1

    move-object/from16 v24, v2

    move/from16 v28, v1

    invoke-direct/range {v24 .. v30}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 367
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 370
    .local v8, "tempElementsBefore":I
    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v13, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v18, v2, v3

    .line 371
    .local v18, "leftW":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    .line 372
    .local v7, "lineH":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v21, v2, v3

    .line 373
    .local v21, "maxIconW":I
    const/4 v2, 0x0

    .line 375
    .local v2, "linesAdded":I
    sget v33, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 377
    .end local v0    # "paddingLeft":I
    .local v33, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-eq v0, v3, :cond_5e3

    .line 378
    add-int v0, v33, v18

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v3

    .line 379
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v25

    add-int v3, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v26, v3, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v27, v1, v3

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v28, 0x1

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZZZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getLord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    mul-int/lit8 v3, v33, 0x2

    sub-int v32, v13, v3

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v28, v1

    move/from16 v29, v18

    move/from16 v30, v7

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/2addr v1, v7

    .line 384
    :cond_5e3
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-lez v0, :cond_6a9

    .line 385
    add-int v0, v33, v18

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    .line 387
    .end local v9    # "buttonX":I
    .local v0, "buttonX":I
    const/4 v3, 0x0

    move v9, v0

    move v0, v3

    .local v0, "i":I
    .restart local v9    # "buttonX":I
    :goto_5f7
    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v0, v3, :cond_679

    .line 388
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v3

    add-int/2addr v3, v9

    if-le v3, v13, :cond_619

    .line 389
    add-int v3, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v3, v4

    .line 390
    add-int/2addr v1, v7

    .line 391
    add-int/lit8 v2, v2, 0x1

    move/from16 v24, v2

    move/from16 v25, v9

    move v9, v1

    goto :goto_61e

    .line 388
    :cond_619
    move/from16 v24, v2

    move/from16 v25, v9

    move v9, v1

    .line 394
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .local v9, "buttonY":I
    .local v24, "linesAdded":I
    .local v25, "buttonX":I
    :goto_61e
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$9;

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v3, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v9, v1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v34, v6

    move/from16 v6, v28

    move/from16 v28, v9

    move v9, v7

    .end local v7    # "lineH":I
    .local v9, "lineH":I
    .local v28, "buttonY":I
    move/from16 v7, v26

    move-object/from16 v35, v12

    move v12, v8

    .end local v8    # "tempElementsBefore":I
    .local v12, "tempElementsBefore":I
    .local v35, "description":Ljava/lang/String;
    move/from16 v8, v27

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$9;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZZZ)V

    move-object/from16 v1, v34

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v1, v25, v1

    .line 387
    .end local v25    # "buttonX":I
    .local v1, "buttonX":I
    add-int/lit8 v0, v0, 0x1

    move v7, v9

    move v8, v12

    move/from16 v2, v24

    move-object/from16 v12, v35

    move v9, v1

    move/from16 v1, v28

    goto/16 :goto_5f7

    .end local v24    # "linesAdded":I
    .end local v28    # "buttonY":I
    .end local v35    # "description":Ljava/lang/String;
    .local v1, "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v7    # "lineH":I
    .restart local v8    # "tempElementsBefore":I
    .local v9, "buttonX":I
    .local v12, "description":Ljava/lang/String;
    :cond_679
    move v3, v9

    move-object/from16 v35, v12

    move v9, v7

    move v12, v8

    .line 401
    .end local v0    # "i":I
    .end local v7    # "lineH":I
    .end local v8    # "tempElementsBefore":I
    .local v3, "buttonX":I
    .local v9, "lineH":I
    .local v12, "tempElementsBefore":I
    .restart local v35    # "description":Ljava/lang/String;
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassals()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    const/4 v2, 0x0

    .line 403
    add-int/2addr v1, v9

    goto :goto_6af

    .line 384
    .end local v3    # "buttonX":I
    .end local v35    # "description":Ljava/lang/String;
    .restart local v7    # "lineH":I
    .restart local v8    # "tempElementsBefore":I
    .local v9, "buttonX":I
    .local v12, "description":Ljava/lang/String;
    :cond_6a9
    move v0, v9

    move-object/from16 v35, v12

    move v9, v7

    move v12, v8

    .end local v7    # "lineH":I
    .end local v8    # "tempElementsBefore":I
    .local v0, "buttonX":I
    .local v9, "lineH":I
    .local v12, "tempElementsBefore":I
    .restart local v35    # "description":Ljava/lang/String;
    move v3, v0

    .line 407
    .end local v0    # "buttonX":I
    .restart local v3    # "buttonX":I
    :goto_6af
    :try_start_6af
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_776

    .line 408
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 410
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 411
    .local v7, "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_6f9

    .line 412
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_6ef
    .catch Ljava/lang/Exception; {:try_start_6af .. :try_end_6ef} :catch_777

    add-int/2addr v4, v5

    .line 413
    .end local v3    # "buttonX":I
    .local v4, "buttonX":I
    add-int/2addr v1, v9

    .line 414
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_6fe

    .line 411
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_6f9
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 417
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .local v8, "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_6fe
    :try_start_6fe
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$10;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$10;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_72a
    .catch Ljava/lang/Exception; {:try_start_6fe .. :try_end_72a} :catch_733

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 422
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_6d7

    .line 429
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_733
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_778

    .line 424
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_73a
    :try_start_73a
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Alliance"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    const/4 v2, 0x0

    .line 427
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_775
    .catch Ljava/lang/Exception; {:try_start_73a .. :try_end_775} :catch_777

    add-int/2addr v1, v0

    .line 431
    :cond_776
    goto :goto_77b

    .line 429
    :catch_777
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/lang/Exception;
    :goto_778
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 434
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_77b
    :try_start_77b
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_842

    .line 435
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 437
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_806

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 438
    .restart local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_7c5

    .line 439
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7bb
    .catch Ljava/lang/Exception; {:try_start_77b .. :try_end_7bb} :catch_843

    add-int/2addr v4, v5

    .line 440
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 441
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_7ca

    .line 438
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_7c5
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 444
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_7ca
    :try_start_7ca
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$11;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$11;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_7f6
    .catch Ljava/lang/Exception; {:try_start_7ca .. :try_end_7f6} :catch_7ff

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 449
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_7a3

    .line 456
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_7ff
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_844

    .line 451
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_806
    :try_start_806
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Truce"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->truce:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    const/4 v2, 0x0

    .line 454
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_841
    .catch Ljava/lang/Exception; {:try_start_806 .. :try_end_841} :catch_843

    add-int/2addr v1, v0

    .line 458
    :cond_842
    goto :goto_847

    .line 456
    :catch_843
    move-exception v0

    .line 457
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_844
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 461
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_847
    :try_start_847
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_90e

    .line 462
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 464
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 465
    .restart local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_891

    .line 466
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_887
    .catch Ljava/lang/Exception; {:try_start_847 .. :try_end_887} :catch_90f

    add-int/2addr v4, v5

    .line 467
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 468
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_896

    .line 465
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_891
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 471
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_896
    :try_start_896
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$12;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$12;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_8c2
    .catch Ljava/lang/Exception; {:try_start_896 .. :try_end_8c2} :catch_8cb

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 476
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_86f

    .line 483
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_8cb
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_910

    .line 478
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_8d2
    :try_start_8d2
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "DefensivePact"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->defensivePact:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    const/4 v2, 0x0

    .line 481
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_90d
    .catch Ljava/lang/Exception; {:try_start_8d2 .. :try_end_90d} :catch_90f

    add-int/2addr v1, v0

    .line 485
    :cond_90e
    goto :goto_913

    .line 483
    :catch_90f
    move-exception v0

    .line 484
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_910
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 488
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_913
    :try_start_913
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_9da

    .line 489
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 491
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_93b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 492
    .restart local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_95d

    .line 493
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_953
    .catch Ljava/lang/Exception; {:try_start_913 .. :try_end_953} :catch_9db

    add-int/2addr v4, v5

    .line 494
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 495
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_962

    .line 492
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_95d
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 498
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_962
    :try_start_962
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$13;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$13;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_98e
    .catch Ljava/lang/Exception; {:try_start_962 .. :try_end_98e} :catch_997

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 503
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_93b

    .line 510
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_997
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_9dc

    .line 505
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_99e
    :try_start_99e
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GuaranteeIndependence"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->guaranteeIndependence:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    const/4 v2, 0x0

    .line 508
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_9d9
    .catch Ljava/lang/Exception; {:try_start_99e .. :try_end_9d9} :catch_9db

    add-int/2addr v1, v0

    .line 512
    :cond_9da
    goto :goto_9df

    .line 510
    :catch_9db
    move-exception v0

    .line 511
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_9dc
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 515
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9df
    :try_start_9df
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_aa6

    .line 516
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 518
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a07
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 519
    .restart local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_a29

    .line 520
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_a1f
    .catch Ljava/lang/Exception; {:try_start_9df .. :try_end_a1f} :catch_aa7

    add-int/2addr v4, v5

    .line 521
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 522
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_a2e

    .line 519
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_a29
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 525
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_a2e
    :try_start_a2e
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$14;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$14;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_a5a
    .catch Ljava/lang/Exception; {:try_start_a2e .. :try_end_a5a} :catch_a63

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 530
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_a07

    .line 537
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_a63
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_aa8

    .line 532
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_a6a
    :try_start_a6a
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GuaranteeTheirIndependence"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->guaranteeIndependence:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const/4 v2, 0x0

    .line 535
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_aa5
    .catch Ljava/lang/Exception; {:try_start_a6a .. :try_end_aa5} :catch_aa7

    add-int/2addr v1, v0

    .line 539
    :cond_aa6
    goto :goto_aab

    .line 537
    :catch_aa7
    move-exception v0

    .line 538
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_aa8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 542
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_aab
    :try_start_aab
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_b7a

    .line 543
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 545
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ad3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 546
    .restart local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_af5

    .line 547
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_aeb
    .catch Ljava/lang/Exception; {:try_start_aab .. :try_end_aeb} :catch_b7b

    add-int/2addr v4, v5

    .line 548
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 549
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_afa

    .line 546
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_af5
    move v8, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 552
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_afa
    :try_start_afa
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$15;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move-object/from16 v27, v0

    move-object v0, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$15;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_b26
    .catch Ljava/lang/Exception; {:try_start_afa .. :try_end_b26} :catch_b2f

    add-int/2addr v0, v1

    add-int v3, v25, v0

    .line 557
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move/from16 v2, v24

    move-object/from16 v0, v27

    goto :goto_ad3

    .line 564
    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_b2f
    move-exception v0

    move v1, v8

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_b7c

    .line 559
    .end local v8    # "buttonY":I
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_b36
    :try_start_b36
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "NonAggressionPact"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->nonAggression:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    const/4 v2, 0x0

    .line 562
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_b79
    .catch Ljava/lang/Exception; {:try_start_b36 .. :try_end_b79} :catch_b7b

    add-int/2addr v1, v0

    .line 566
    :cond_b7a
    goto :goto_b7f

    .line 564
    :catch_b7b
    move-exception v0

    .line 565
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_b7c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 569
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b7f
    :try_start_b7f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_b85
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5
    :try_end_b89
    .catch Ljava/lang/Exception; {:try_start_b7f .. :try_end_b89} :catch_cc8

    if-ge v4, v5, :cond_bae

    .line 572
    :try_start_b8b
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_FRIENDLY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_ba6

    .line 573
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba6
    .catch Ljava/lang/Exception; {:try_start_b8b .. :try_end_ba6} :catch_ba9

    .line 571
    :cond_ba6
    add-int/lit8 v4, v4, 0x1

    goto :goto_b85

    .line 614
    .end local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :catch_ba9
    move-exception v0

    move/from16 v34, v14

    goto/16 :goto_ccb

    .line 578
    .restart local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_bae
    :try_start_bae
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_cc5

    .line 579
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    .line 581
    .end local v3    # "buttonX":I
    .local v4, "buttonX":I
    const/4 v3, 0x0

    move v7, v3

    move v3, v4

    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    .local v7, "i":I
    :goto_bbc
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_FRIENDLY_LIMIT_IN_DIPLOMACY_VIEW:I

    if-ge v7, v4, :cond_c84

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_c84

    .line 582
    const/4 v4, 0x0

    .line 584
    .local v4, "tBestID":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v8, v4

    .end local v4    # "tBestID":I
    .local v5, "j":I
    .local v8, "tBestID":I
    :goto_bd0
    if-lez v5, :cond_c0b

    .line 585
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;
    :try_end_bf8
    .catch Ljava/lang/Exception; {:try_start_bae .. :try_end_bf8} :catch_cc8

    move/from16 v34, v14

    .end local v14    # "tWidth":I
    .local v34, "tWidth":I
    :try_start_bfa
    sget v14, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-virtual {v6, v14}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c06

    .line 586
    move v4, v5

    move v8, v4

    .line 584
    :cond_c06
    add-int/lit8 v5, v5, -0x1

    move/from16 v14, v34

    goto :goto_bd0

    .end local v34    # "tWidth":I
    .restart local v14    # "tWidth":I
    :cond_c0b
    move/from16 v34, v14

    .line 590
    .end local v5    # "j":I
    .end local v14    # "tWidth":I
    .restart local v34    # "tWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_c22

    .line 591
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_c18
    .catch Ljava/lang/Exception; {:try_start_bfa .. :try_end_c18} :catch_cc3

    add-int/2addr v4, v5

    .line 592
    .end local v3    # "buttonX":I
    .local v4, "buttonX":I
    add-int/2addr v1, v9

    .line 593
    add-int/lit8 v2, v2, 0x1

    move v14, v1

    move/from16 v24, v2

    move/from16 v25, v4

    goto :goto_c27

    .line 590
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_c22
    move v14, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 596
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .local v14, "buttonY":I
    .restart local v24    # "linesAdded":I
    .restart local v25    # "buttonX":I
    :goto_c27
    :try_start_c27
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$16;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_c35
    .catch Ljava/lang/Exception; {:try_start_c27 .. :try_end_c35} :catch_c7a

    add-int v5, v14, v1

    const/16 v26, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v25

    move/from16 v27, v14

    move-object v14, v6

    .end local v14    # "buttonY":I
    .local v27, "buttonY":I
    move/from16 v6, v26

    :try_start_c43
    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$16;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_c5b
    .catch Ljava/lang/Exception; {:try_start_c43 .. :try_end_c5b} :catch_c72

    add-int/2addr v1, v2

    add-int v3, v25, v1

    .line 602
    .end local v25    # "buttonX":I
    .restart local v3    # "buttonX":I
    :try_start_c5e
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c61
    .catch Ljava/lang/Exception; {:try_start_c5e .. :try_end_c61} :catch_c6c

    .line 581
    nop

    .end local v8    # "tBestID":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v24

    move/from16 v1, v27

    move/from16 v14, v34

    goto/16 :goto_bbc

    .line 614
    .end local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :catch_c6c
    move-exception v0

    move/from16 v2, v24

    move/from16 v1, v27

    goto :goto_ccb

    .end local v3    # "buttonX":I
    .restart local v25    # "buttonX":I
    :catch_c72
    move-exception v0

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v1, v27

    goto :goto_ccb

    .end local v27    # "buttonY":I
    .restart local v14    # "buttonY":I
    :catch_c7a
    move-exception v0

    move/from16 v27, v14

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v1, v27

    .end local v14    # "buttonY":I
    .restart local v27    # "buttonY":I
    goto :goto_ccb

    .line 581
    .end local v24    # "linesAdded":I
    .end local v25    # "buttonX":I
    .end local v27    # "buttonY":I
    .end local v34    # "tWidth":I
    .restart local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    .restart local v7    # "i":I
    .local v14, "tWidth":I
    :cond_c84
    move/from16 v34, v14

    .line 605
    .end local v7    # "i":I
    .end local v14    # "tWidth":I
    .restart local v34    # "tWidth":I
    :try_start_c86
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "FriendlyCivilizations"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->heart:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v5, v2, 0x1

    mul-int v30, v9, v5

    mul-int/lit8 v5, v33, 0x2

    sub-int v32, v13, v5

    move-object/from16 v24, v4

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    const/4 v2, 0x0

    .line 608
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4
    :try_end_cc1
    .catch Ljava/lang/Exception; {:try_start_c86 .. :try_end_cc1} :catch_cc3

    add-int/2addr v1, v4

    goto :goto_cc7

    .line 614
    .end local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_cc3
    move-exception v0

    goto :goto_ccb

    .line 578
    .end local v34    # "tWidth":I
    .restart local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "tWidth":I
    :cond_cc5
    move/from16 v34, v14

    .line 616
    .end local v0    # "friendly":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "tWidth":I
    .restart local v34    # "tWidth":I
    :goto_cc7
    goto :goto_cce

    .line 614
    .end local v34    # "tWidth":I
    .restart local v14    # "tWidth":I
    :catch_cc8
    move-exception v0

    move/from16 v34, v14

    .line 615
    .end local v14    # "tWidth":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v34    # "tWidth":I
    :goto_ccb
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 619
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_cce
    :try_start_cce
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_d91

    .line 620
    add-int v0, v33, v18

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v0, v4

    .line 622
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cf6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;

    move-object v7, v4

    .line 623
    .local v7, "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_d17

    .line 624
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_d0e
    .catch Ljava/lang/Exception; {:try_start_cce .. :try_end_d0e} :catch_d92

    add-int/2addr v4, v5

    .line 625
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 626
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move v14, v2

    move/from16 v24, v4

    goto :goto_d1b

    .line 623
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_d17
    move v8, v1

    move v14, v2

    move/from16 v24, v3

    .line 629
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .local v8, "buttonY":I
    .local v14, "linesAdded":I
    .local v24, "buttonX":I
    :goto_d1b
    :try_start_d1b
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$17;

    iget v3, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v25, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v24

    move-object/from16 v26, v0

    move-object v0, v6

    move/from16 v6, v25

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$17;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_d47
    .catch Ljava/lang/Exception; {:try_start_d1b .. :try_end_d47} :catch_d4f

    add-int/2addr v0, v1

    add-int v3, v24, v0

    .line 634
    .end local v7    # "nData":Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$DiplomacyData;
    .end local v24    # "buttonX":I
    .restart local v3    # "buttonX":I
    move v1, v8

    move v2, v14

    move-object/from16 v0, v26

    goto :goto_cf6

    .line 641
    .end local v3    # "buttonX":I
    .restart local v24    # "buttonX":I
    :catch_d4f
    move-exception v0

    move v1, v8

    move v2, v14

    move/from16 v3, v24

    goto :goto_d93

    .line 636
    .end local v8    # "buttonY":I
    .end local v14    # "linesAdded":I
    .end local v24    # "buttonX":I
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    :cond_d55
    :try_start_d55
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "HaveMilitaryAccess"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->militaryAccess:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    const/4 v2, 0x0

    .line 639
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_d90
    .catch Ljava/lang/Exception; {:try_start_d55 .. :try_end_d90} :catch_d92

    add-int/2addr v1, v0

    .line 643
    :cond_d91
    goto :goto_d96

    .line 641
    :catch_d92
    move-exception v0

    .line 642
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_d93
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 646
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d96
    :try_start_d96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_d9c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v4, v5, :cond_dca

    .line 649
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-lez v5, :cond_dc7

    .line 650
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    sget v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc7

    .line 651
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_dc7
    add-int/lit8 v4, v4, 0x1

    goto :goto_d9c

    .line 656
    .end local v4    # "i":I
    :cond_dca
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e79

    .line 657
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    .line 659
    .end local v3    # "buttonX":I
    .local v4, "buttonX":I
    const/4 v3, 0x0

    move v7, v3

    move v3, v4

    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    .local v7, "i":I
    :goto_dd8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_e3a

    .line 660
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;->getButtonWidth()I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v13, :cond_df2

    .line 661
    add-int v4, v33, v18

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_de9
    .catch Ljava/lang/Exception; {:try_start_d96 .. :try_end_de9} :catch_e7e

    add-int/2addr v4, v5

    .line 662
    .end local v3    # "buttonX":I
    .restart local v4    # "buttonX":I
    add-int/2addr v1, v9

    .line 663
    add-int/lit8 v2, v2, 0x1

    move v8, v1

    move v14, v2

    move/from16 v24, v4

    goto :goto_df6

    .line 660
    .end local v4    # "buttonX":I
    .restart local v3    # "buttonX":I
    :cond_df2
    move v8, v1

    move v14, v2

    move/from16 v24, v3

    .line 666
    .end local v1    # "buttonY":I
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .restart local v8    # "buttonY":I
    .restart local v14    # "linesAdded":I
    .restart local v24    # "buttonX":I
    :goto_df6
    :try_start_df6
    new-instance v6, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$18;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v8, v1

    const/16 v25, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move/from16 v4, v24

    move-object/from16 v36, v0

    move-object v0, v6

    .end local v0    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v36, "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v6, v25

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$18;-><init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_e2a
    .catch Ljava/lang/Exception; {:try_start_df6 .. :try_end_e2a} :catch_e34

    add-int/2addr v0, v1

    add-int v3, v24, v0

    .line 659
    .end local v24    # "buttonX":I
    .restart local v3    # "buttonX":I
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    move v2, v14

    move-object/from16 v0, v36

    goto :goto_dd8

    .line 678
    .end local v3    # "buttonX":I
    .end local v7    # "i":I
    .end local v36    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "buttonX":I
    :catch_e34
    move-exception v0

    move v1, v8

    move v2, v14

    move/from16 v3, v24

    goto :goto_e7f

    .line 659
    .end local v8    # "buttonY":I
    .end local v14    # "linesAdded":I
    .end local v24    # "buttonX":I
    .restart local v0    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "buttonY":I
    .restart local v2    # "linesAdded":I
    .restart local v3    # "buttonX":I
    .restart local v7    # "i":I
    :cond_e3a
    move-object/from16 v36, v0

    .line 673
    .end local v0    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    .restart local v36    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_e3c
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GivesMilitaryAccess"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->militaryAccess2:I

    mul-int v7, v9, v2

    sub-int v28, v1, v7

    add-int/lit8 v4, v2, 0x1

    mul-int v30, v9, v4

    mul-int/lit8 v4, v33, 0x2

    sub-int v32, v13, v4

    move-object/from16 v24, v0

    move/from16 v27, v33

    move/from16 v29, v18

    move/from16 v31, v21

    invoke-direct/range {v24 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_HorizontalSplit;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    const/4 v2, 0x0

    .line 676
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_e77
    .catch Ljava/lang/Exception; {:try_start_e3c .. :try_end_e77} :catch_e7e

    add-int/2addr v1, v0

    goto :goto_e7b

    .line 656
    .end local v36    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e79
    move-object/from16 v36, v0

    .line 680
    .end local v0    # "tMilitaryAccessGives":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_e7b
    move v0, v2

    move v14, v3

    goto :goto_e84

    .line 678
    :catch_e7e
    move-exception v0

    .line 679
    .local v0, "ex":Ljava/lang/Exception;
    :goto_e7f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v0, v2

    move v14, v3

    .line 682
    .end local v2    # "linesAdded":I
    .end local v3    # "buttonX":I
    .local v0, "linesAdded":I
    .local v14, "buttonX":I
    :goto_e84
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ne v12, v2, :cond_ebd

    .line 683
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    .line 684
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v3, v33, 0x2

    sub-int v30, v13, v3

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const-string v25, "---"

    const/16 v27, -0x1

    move-object/from16 v24, v2

    move/from16 v28, v33

    move/from16 v29, v1

    invoke-direct/range {v24 .. v31}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    move v8, v1

    goto :goto_ebe

    .line 682
    :cond_ebd
    move v8, v1

    .line 688
    .end local v1    # "buttonY":I
    .restart local v8    # "buttonY":I
    :goto_ebe
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v15

    sub-int v1, v1, v20

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v15

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 690
    .local v7, "menuHeight":I
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v2, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    const/4 v4, 0x1

    invoke-direct {v2, v10, v4, v3, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    add-int v4, v20, v15

    const/4 v10, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v22

    move v5, v13

    move v6, v7

    move/from16 v23, v7

    .end local v7    # "menuHeight":I
    .local v23, "menuHeight":I
    move-object v7, v11

    move/from16 v24, v8

    .end local v8    # "buttonY":I
    .local v24, "buttonY":I
    move v8, v10

    move v10, v9

    .end local v9    # "lineH":I
    .local v10, "lineH":I
    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 694
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_f46

    .line 695
    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    sput v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    .line 696
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(FFF)V

    .line 698
    :cond_f46
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 702
    sget-wide v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->lTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_23

    .line 703
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int p2, v0, v1

    .line 707
    :cond_23
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 708
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 709
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 719
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 720
    return-void
.end method

.method public updateLanguage()V
    .registers 3

    .line 724
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    .line 726
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    .line 727
    return-void
.end method
