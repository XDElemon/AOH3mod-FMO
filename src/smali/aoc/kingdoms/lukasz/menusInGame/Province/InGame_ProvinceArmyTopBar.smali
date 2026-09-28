.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmyTopBar.java"


# static fields
.field public static mPosX:I

.field public static mPosY:I

.field public static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosX:I

    .line 41
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosY:I

    .line 42
    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    .line 44
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 47
    .local v9, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    .line 48
    .local v0, "buttonX":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v1, 0x2

    .line 50
    .local v10, "buttonY":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v1, 0x2

    .line 51
    .local v11, "generalPadding":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v11, 0x2

    add-int v12, v1, v2

    .line 54
    .local v12, "defaultXArmyPos":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v13

    .line 56
    .local v13, "tDivID":I
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$1;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->center:I

    invoke-direct {v1, v8, v2, v0, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v6, v0, v1

    .line 82
    .end local v0    # "buttonX":I
    .local v6, "buttonX":I
    if-ltz v13, :cond_2b3

    .line 83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1c9

    .line 84
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$2;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pin:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->isPinned(Ljava/lang/String;)Z

    move-result v5

    move-object v0, v7

    move-object/from16 v1, p0

    move v3, v6

    move v4, v10

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;IIIZ)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 127
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$3;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->frontLine:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 172
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$4;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->invasion:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 215
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$5;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->movementCancel:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 295
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$6;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->reorganizeArmy:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-le v1, v14, :cond_132

    const/4 v1, 0x1

    goto :goto_133

    :cond_132
    const/4 v1, 0x0

    :goto_133
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    .line 333
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 335
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$7;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->splitArmy:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-le v1, v14, :cond_178

    const/4 v1, 0x1

    goto :goto_179

    :cond_178
    const/4 v1, 0x0

    :goto_179
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    .line 383
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 385
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$8;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mergeArmy:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 459
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$9;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->disbandArmy:I

    invoke-direct {v0, v8, v1, v6, v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 499
    :cond_1c9
    const/4 v0, 0x0

    move v7, v0

    move/from16 v16, v6

    .end local v6    # "buttonX":I
    .local v7, "z":I
    .local v16, "buttonX":I
    :goto_1cd
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v7, v0, :cond_2b0

    .line 500
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    .line 502
    .local v6, "tempDivID":I
    if-ltz v6, :cond_2a8

    .line 503
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 504
    .local v5, "checkCivID":I
    const-string v0, ""

    .line 505
    .local v0, "textUnits":Ljava/lang/String;
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v1, :cond_227

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v1, :cond_227

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v5, v1, :cond_227

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-eqz v1, :cond_220

    goto :goto_227

    .line 509
    :cond_220
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v0, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_ARMIES:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_254

    .line 506
    :cond_227
    :goto_227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 512
    .end local v0    # "textUnits":Ljava/lang/String;
    .local v17, "textUnits":Ljava/lang/String;
    :goto_254
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v15, v4

    move-object/from16 v4, v17

    move/from16 v18, v5

    .end local v5    # "checkCivID":I
    .local v18, "checkCivID":I
    move/from16 v5, v16

    move/from16 v19, v6

    .end local v6    # "tempDivID":I
    .local v19, "tempDivID":I
    move v6, v10

    move/from16 v20, v7

    .end local v7    # "z":I
    .local v20, "z":I
    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;IILjava/lang/String;III)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    goto :goto_2ac

    .line 502
    .end local v17    # "textUnits":Ljava/lang/String;
    .end local v18    # "checkCivID":I
    .end local v19    # "tempDivID":I
    .end local v20    # "z":I
    .restart local v6    # "tempDivID":I
    .restart local v7    # "z":I
    :cond_2a8
    move/from16 v19, v6

    move/from16 v20, v7

    .line 499
    .end local v6    # "tempDivID":I
    .end local v7    # "z":I
    .restart local v20    # "z":I
    :goto_2ac
    add-int/lit8 v7, v20, 0x1

    .end local v20    # "z":I
    .restart local v7    # "z":I
    goto/16 :goto_1cd

    :cond_2b0
    move/from16 v20, v7

    .end local v7    # "z":I
    .restart local v20    # "z":I
    goto :goto_2b5

    .line 82
    .end local v16    # "buttonX":I
    .end local v20    # "z":I
    .local v6, "buttonX":I
    :cond_2b3
    move/from16 v16, v6

    .line 594
    .end local v6    # "buttonX":I
    .restart local v16    # "buttonX":I
    :goto_2b5
    const/4 v0, 0x0

    .line 596
    .end local v10    # "buttonY":I
    .local v0, "buttonY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v10, v0

    .end local v0    # "buttonY":I
    .local v2, "iSize":I
    .restart local v10    # "buttonY":I
    :goto_2bc
    if-ge v1, v2, :cond_2f4

    .line 597
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    if-ge v10, v0, :cond_2f1

    .line 598
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    move v10, v0

    .line 596
    :cond_2f1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2bc

    .line 602
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_2f4
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 604
    .local v14, "menuHeight":I
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosX:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosY:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mWidth:I

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v5, v14

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->drawScrollPositionAlways:Z

    .line 610
    return-void
.end method


# virtual methods
.method public getMenuPosX()I
    .registers 3

    .line 637
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .registers 3

    .line 622
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .registers 3

    .line 632
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 627
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .registers 2

    .line 615
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    .line 617
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceArmy()V

    .line 618
    return-void
.end method
