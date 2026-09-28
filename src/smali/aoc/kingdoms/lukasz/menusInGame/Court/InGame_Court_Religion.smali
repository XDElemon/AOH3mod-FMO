.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Court_Religion.java"


# static fields
.field public static iSortID:I


# instance fields
.field public iNumOfProvinces:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 40

    .line 45
    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 43
    const/4 v14, 0x0

    iput v14, v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iNumOfProvinces:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 48
    .local v13, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v21, v0, v1

    .line 50
    .local v21, "paddingLeft":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    .line 53
    .local v12, "menuWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v22

    .line 54
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

    .line 56
    .local v23, "menuY":I
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x2

    mul-int/lit8 v24, v0, 0x2

    .line 57
    .local v24, "buttonYPadding":I
    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    .line 58
    .local v16, "buttonX":I
    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    .line 60
    .local v9, "buttonY":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_45

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_47

    :cond_45
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_47
    move/from16 v19, v0

    .line 62
    .local v19, "buttonH":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v0, v0

    const v17, 0x3e99999a    # 0.3f

    mul-float v0, v0, v17

    float-to-int v10, v0

    .line 63
    .local v10, "r0W":I
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v12, v0

    int-to-float v0, v0

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v18

    float-to-int v8, v0

    .line 65
    .local v8, "r1W":I
    const/4 v0, 0x0

    .line 66
    .local v0, "tConverted":I
    const/4 v1, 0x0

    .line 68
    .local v1, "tConverted_OfAll":I
    const/4 v2, 0x0

    move v7, v0

    move v6, v1

    .end local v0    # "tConverted":I
    .end local v1    # "tConverted_OfAll":I
    .local v2, "i":I
    .local v6, "tConverted_OfAll":I
    .local v7, "tConverted":I
    :goto_68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v2, v0, :cond_b5

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-ne v0, v1, :cond_b0

    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 74
    :cond_b0
    add-int/lit8 v6, v6, 0x1

    .line 68
    :cond_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 78
    .end local v2    # "i":I
    :cond_b5
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v12, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v20, 0x3eb33333    # 0.35f

    mul-float v0, v0, v20

    float-to-int v4, v0

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v3, v21

    move/from16 v26, v4

    move v4, v9

    move-object v14, v5

    move/from16 v5, v26

    move v11, v6

    .end local v6    # "tConverted_OfAll":I
    .local v11, "tConverted_OfAll":I
    move/from16 v6, v25

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;IIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Provinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v21, v0

    mul-int/lit8 v1, v21, 0x2

    sub-int v1, v12, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float v1, v1, v20

    float-to-int v1, v1

    add-int v5, v0, v1

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v12, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    float-to-int v4, v0

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v25, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v28, v4

    move/from16 v4, v25

    move-object/from16 v29, v6

    move v6, v9

    move/from16 v25, v7

    .end local v7    # "tConverted":I
    .local v25, "tConverted":I
    move/from16 v7, v28

    move/from16 v28, v8

    .end local v8    # "r1W":I
    .local v28, "r1W":I
    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v20, v9, v0

    .line 104
    .end local v9    # "buttonY":I
    .local v20, "buttonY":I
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ConvertReligion"

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v29

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

    const/4 v7, 0x7

    mul-int/lit8 v0, v0, 0x7

    const/16 v6, 0xa

    div-int/lit8 v29, v0, 0xa

    const/16 v30, 0x1

    const/4 v4, -0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v21

    move/from16 v6, v20

    move/from16 v7, v29

    move-object/from16 v33, v8

    move/from16 v8, v30

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "tCost":F
    const/4 v1, 0x0

    move v9, v0

    .end local v0    # "tCost":F
    .local v1, "i":I
    .local v9, "tCost":F
    :goto_1b6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v1, v0, :cond_227

    .line 153
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

    if-nez v0, :cond_224

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_224

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v0, v2, :cond_224

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v9, v0

    .line 152
    :cond_224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b6

    .line 158
    .end local v1    # "i":I
    :cond_227
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    const/4 v6, 0x7

    mul-int/lit8 v1, v1, 0x7

    const/16 v5, 0xa

    div-int/2addr v1, v5

    add-int v4, v0, v1

    mul-int/lit8 v0, v21, 0x2

    sub-int v0, v12, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v29, v0, 0xa

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v31

    const/16 v32, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v5, v20

    move/from16 v6, v29

    move-object/from16 v36, v7

    move/from16 v7, v30

    move-object v14, v8

    move/from16 v8, v31

    move/from16 v30, v9

    .end local v9    # "tCost":F
    .local v30, "tCost":F
    move/from16 v9, v32

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
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

    add-int v20, v20, v0

    .line 205
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-eqz v0, :cond_2b5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b3

    goto :goto_2b6

    :cond_2b3
    const/4 v2, 0x0

    goto :goto_2b7

    :cond_2b5
    const/4 v1, 0x1

    :goto_2b6
    const/4 v2, 0x1

    :goto_2b7
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v0, v1, :cond_2bd

    const/4 v3, 0x1

    goto :goto_2be

    :cond_2bd
    const/4 v3, 0x0

    :goto_2be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v31, v0, v1

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v20

    move v8, v10

    move/from16 v9, v31

    move/from16 v31, v10

    .end local v10    # "r0W":I
    .local v31, "r0W":I
    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
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

    .line 236
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_307

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v10, 0x3

    if-ne v0, v10, :cond_305

    goto :goto_308

    :cond_305
    const/4 v2, 0x0

    goto :goto_309

    :cond_307
    const/4 v10, 0x3

    :goto_308
    const/4 v2, 0x1

    :goto_309
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v0, v10, :cond_30f

    const/4 v3, 0x1

    goto :goto_310

    :cond_30f
    const/4 v3, 0x0

    :goto_310
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Religion"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v32, v0, v1

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v20

    move/from16 v8, v31

    move/from16 v9, v32

    const/4 v15, 0x3

    move/from16 v10, v34

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
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

    .line 267
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$7;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v10, 0x4

    const/4 v9, 0x5

    if-eq v0, v10, :cond_359

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v0, v9, :cond_357

    goto :goto_359

    :cond_357
    const/4 v2, 0x0

    goto :goto_35a

    :cond_359
    :goto_359
    const/4 v2, 0x1

    :goto_35a
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v0, v9, :cond_360

    const/4 v3, 0x1

    goto :goto_361

    :cond_360
    const/4 v3, 0x0

    :goto_361
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ReligionConversionTime"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v8, 0x6

    mul-int/lit8 v1, v1, 0x6

    add-int v32, v0, v1

    sget v34, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v20

    const/4 v15, 0x6

    move/from16 v8, v28

    move/from16 v9, v32

    move/from16 v10, v34

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
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

    .line 298
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$8;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-eq v0, v15, :cond_3a9

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v10, 0x7

    if-ne v0, v10, :cond_3a7

    goto :goto_3aa

    :cond_3a7
    const/4 v2, 0x0

    goto :goto_3ab

    :cond_3a9
    const/4 v10, 0x7

    :goto_3aa
    const/4 v2, 0x1

    :goto_3ab
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v0, v10, :cond_3b1

    const/4 v3, 0x1

    goto :goto_3b2

    :cond_3b1
    const/4 v3, 0x0

    :goto_3b2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Cost"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v9, v0, v1

    sget v32, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/4 v5, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v20

    move/from16 v8, v28

    move/from16 v10, v32

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
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

    add-int v20, v20, v0

    .line 332
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

    .line 333
    .end local v31    # "r0W":I
    .local v0, "r0W":I
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v1, v12, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, v18

    float-to-int v1, v1

    .line 336
    .end local v28    # "r1W":I
    .local v1, "r1W":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    .line 338
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_412
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_46e

    .line 339
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

    if-nez v3, :cond_46b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    if-eq v3, v4, :cond_46b

    .line 340
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_46b
    add-int/lit8 v2, v2, 0x1

    goto :goto_412

    .line 345
    .end local v2    # "i":I
    :cond_46e
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4b9

    .line 346
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

    move/from16 v7, v20

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
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

    add-int v20, v20, v2

    move-object/from16 v9, p0

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v26, v11

    move/from16 v32, v12

    move-object v10, v13

    move-object v15, v14

    move/from16 v11, v20

    const/16 v29, 0x3

    goto/16 :goto_8a8

    .line 345
    :cond_4b9
    move/from16 v28, v20

    .line 350
    .end local v20    # "buttonY":I
    .local v28, "buttonY":I
    :goto_4bb
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_898

    .line 351
    const/4 v2, 0x0

    .line 353
    .local v2, "toAddID":I
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-nez v3, :cond_501

    .line 354
    const/4 v3, 0x1

    .local v3, "o":I
    :goto_4c7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4fb

    .line 355
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v4, :cond_4f8

    .line 356
    move v2, v3

    .line 354
    :cond_4f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c7

    :cond_4fb
    move v7, v2

    const/4 v5, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x4

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 360
    :cond_501
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_541

    .line 361
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_507
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_53b

    .line 362
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    if-eqz v5, :cond_538

    .line 363
    move v2, v3

    .line 361
    :cond_538
    add-int/lit8 v3, v3, 0x1

    goto :goto_507

    :cond_53b
    move v7, v2

    const/4 v5, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x4

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 367
    :cond_541
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_591

    .line 368
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_547
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_58b

    .line 369
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_588

    .line 370
    move v2, v3

    .line 368
    :cond_588
    add-int/lit8 v3, v3, 0x1

    goto :goto_547

    :cond_58b
    move v7, v2

    const/4 v5, 0x3

    const/4 v8, 0x7

    const/4 v9, 0x4

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 374
    :cond_591
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5e0

    .line 375
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_597
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5db

    .line 376
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d8

    .line 377
    move v2, v3

    .line 375
    :cond_5d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_597

    :cond_5db
    move v7, v2

    const/4 v8, 0x7

    const/4 v9, 0x4

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 381
    :cond_5e0
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v9, 0x4

    if-ne v3, v9, :cond_616

    .line 382
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_5e6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_612

    .line 383
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v7

    if-le v6, v7, :cond_60f

    .line 384
    move v2, v3

    .line 382
    :cond_60f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e6

    :cond_612
    move v7, v2

    const/4 v8, 0x7

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 388
    :cond_616
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v3, v10, :cond_64b

    .line 389
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_61b
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_647

    .line 390
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v7

    if-le v6, v7, :cond_644

    .line 391
    move v2, v3

    .line 389
    :cond_644
    add-int/lit8 v3, v3, 0x1

    goto :goto_61b

    :cond_647
    move v7, v2

    const/4 v8, 0x7

    .end local v3    # "o":I
    goto/16 :goto_6b5

    .line 395
    :cond_64b
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    if-ne v3, v15, :cond_67f

    .line 396
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_650
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_67c

    .line 397
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v7

    if-le v6, v7, :cond_679

    .line 398
    move v2, v3

    .line 396
    :cond_679
    add-int/lit8 v3, v3, 0x1

    goto :goto_650

    :cond_67c
    move v7, v2

    const/4 v8, 0x7

    .end local v3    # "o":I
    goto :goto_6b5

    .line 402
    :cond_67f
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iSortID:I

    const/4 v8, 0x7

    if-ne v3, v8, :cond_6b4

    .line 403
    const/4 v3, 0x1

    .restart local v3    # "o":I
    :goto_685
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6b2

    .line 404
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v4

    if-ge v6, v4, :cond_6ae

    .line 405
    move v2, v3

    .line 403
    :cond_6ae
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_685

    :cond_6b2
    move v7, v2

    goto :goto_6b5

    .line 402
    .end local v3    # "o":I
    :cond_6b4
    move v7, v2

    .line 410
    .end local v2    # "toAddID":I
    .local v7, "toAddID":I
    :goto_6b5
    move/from16 v2, v21

    .line 412
    .end local v16    # "buttonX":I
    .local v2, "buttonX":I
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$9;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v26, v11

    const/16 v31, 0x2

    .end local v11    # "tConverted_OfAll":I
    .local v26, "tConverted_OfAll":I
    move-object v11, v3

    move v10, v12

    .end local v12    # "menuWidth":I
    .local v10, "menuWidth":I
    move-object/from16 v12, p0

    move/from16 v32, v10

    move-object v10, v13

    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v10, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v32, "menuWidth":I
    move-object v13, v4

    move-object v4, v14

    const/16 v27, 0x1

    .end local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v4, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v14, v6

    const/16 v29, 0x3

    const/16 v34, 0x6

    move-object/from16 v6, p0

    move/from16 v15, v16

    move/from16 v16, v2

    move/from16 v17, v28

    move/from16 v18, v0

    invoke-direct/range {v11 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int v11, v2, v3

    .line 438
    .end local v2    # "buttonX":I
    .local v11, "buttonX":I
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v36

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v17, v0

    .end local v0    # "r0W":I
    .local v17, "r0W":I
    move-object v0, v12

    move/from16 v18, v1

    .end local v1    # "r1W":I
    .local v18, "r1W":I
    move-object/from16 v1, p0

    move-object v5, v4

    .end local v4    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v5, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v4, v11

    move-object/from16 v37, v5

    .end local v5    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v37, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v5, v28

    move/from16 v6, v17

    move/from16 v38, v7

    .end local v7    # "toAddID":I
    .local v38, "toAddID":I
    move/from16 v7, v19

    const/16 v20, 0x7

    move v8, v14

    const/4 v14, 0x4

    move v9, v15

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
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

    add-int/2addr v11, v0

    .line 458
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$11;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    move-object/from16 v15, v37

    move/from16 v9, v38

    .end local v37    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v38    # "toAddID":I
    .local v9, "toAddID":I
    .local v15, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v8, 0xa

    invoke-static {v1, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v4, -0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v11

    move/from16 v6, v28

    move/from16 v7, v18

    const/16 v35, 0xa

    move/from16 v8, v19

    move v14, v9

    .end local v9    # "toAddID":I
    .local v14, "toAddID":I
    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
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

    .line 480
    .end local v11    # "buttonX":I
    .restart local v16    # "buttonX":I
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$12;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v1

    int-to-float v1, v1

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

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v4, v16

    move/from16 v5, v28

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
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

    add-int v28, v28, v0

    .line 512
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_883

    .line 513
    move-object/from16 v9, p0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iNumOfProvinces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->iNumOfProvinces:I

    goto :goto_885

    .line 512
    :cond_883
    move-object/from16 v9, p0

    .line 516
    :goto_885
    invoke-interface {v15, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 517
    .end local v14    # "toAddID":I
    move-object/from16 v36, v13

    move-object v14, v15

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v11, v26

    move/from16 v12, v32

    const/4 v15, 0x6

    move-object v13, v10

    const/4 v10, 0x5

    goto/16 :goto_4bb

    .line 350
    .end local v10    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "r0W":I
    .end local v18    # "r1W":I
    .end local v26    # "tConverted_OfAll":I
    .end local v32    # "menuWidth":I
    .restart local v0    # "r0W":I
    .restart local v1    # "r1W":I
    .local v11, "tConverted_OfAll":I
    .restart local v12    # "menuWidth":I
    .restart local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .local v14, "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_898
    move-object/from16 v9, p0

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v26, v11

    move/from16 v32, v12

    move-object v10, v13

    move-object v15, v14

    const/16 v29, 0x3

    .end local v0    # "r0W":I
    .end local v1    # "r1W":I
    .end local v11    # "tConverted_OfAll":I
    .end local v12    # "menuWidth":I
    .end local v13    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .end local v14    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    .restart local v15    # "tProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "r0W":I
    .restart local v18    # "r1W":I
    .restart local v26    # "tConverted_OfAll":I
    .restart local v32    # "menuWidth":I
    move/from16 v11, v28

    .line 520
    .end local v28    # "buttonY":I
    .local v11, "buttonY":I
    :goto_8a8
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int v23, v23, v0

    .line 521
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v23

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 523
    .local v12, "menuHeight":I
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v13, v32

    const/4 v14, 0x0

    .end local v32    # "menuWidth":I
    .local v13, "menuWidth":I
    invoke-direct {v0, v14, v14, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move/from16 v3, v23

    move v4, v13

    move v5, v12

    move-object v6, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    .line 527
    iput-boolean v14, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->drawScrollPositionAlways:Z

    .line 529
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setInGame_CivOptions_Title(Ljava/lang/String;)V

    .line 530
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

    .line 534
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    .line 535
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

    .line 538
    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->menuH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 539
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    .line 540
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;->getHeight()I

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

    .line 542
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 543
    return-void
.end method

.method public onHovered()V
    .registers 2

    .line 554
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 555
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    .line 556
    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 547
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 548
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    .line 549
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    .line 550
    return-void
.end method
