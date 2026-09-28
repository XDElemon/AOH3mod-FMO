.class public Laoc/kingdoms/lukasz/jakowski/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# static fields
.field public static final CAPITAL_FLAG_L:I = 0x4

.field public static final CAPITAL_FLAG_M:I = 0x1

.field public static buttonTouch:I

.field public static mousePosX:I

.field public static mousePosY:I

.field public static selectArmiesMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Touch;->buttonTouch:I

    .line 15
    sput v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosX:I

    .line 16
    sput v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosY:I

    .line 18
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMousePosX()I
    .registers 1

    .line 28
    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosX:I

    return v0
.end method

.method public static final getMousePosY()I
    .registers 1

    .line 32
    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosY:I

    return v0
.end method

.method public static final isMouseOverArmy(IIII)Z
    .registers 10
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nProvinceID"    # I
    .param p3, "nArmyID"    # I

    .line 406
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v1

    .line 407
    .local v1, "nX":I
    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v2

    .line 408
    .local v2, "nY":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v3

    .line 409
    .local v3, "nWidth":I
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_29

    .line 411
    .local v4, "nHeight":I
    if-lt p0, v1, :cond_28

    add-int v5, v1, v3

    if-gt p0, v5, :cond_28

    if-lt p1, v2, :cond_28

    add-int v5, v2, v4

    if-gt p1, v5, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    .line 412
    .end local v1    # "nX":I
    .end local v2    # "nY":I
    .end local v3    # "nWidth":I
    .end local v4    # "nHeight":I
    :catch_29
    move-exception v1

    .line 416
    return v0
.end method

.method public static final isMouseOverBattle(III)Z
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nBattleID"    # I

    .line 261
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    if-lt p0, v1, :cond_3e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    add-int/2addr v1, v2

    if-gt p0, v1, :cond_3e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    if-lt p1, v1, :cond_3e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3f

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    return v0

    .line 262
    :catch_3f
    move-exception v1

    .line 266
    return v0
.end method

.method public static final isMouseOverCapitalProvince_Flag(III)Z
    .registers 10
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nProvinceID"    # I

    .line 424
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v1, v3, :cond_12e

    .line 425
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_78

    .line 426
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 427
    .local v1, "nX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    .line 428
    .local v3, "nY":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    .line 429
    .local v4, "nWidth":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 431
    .local v5, "nHeight":I
    if-lt p0, v1, :cond_77

    add-int v6, v1, v4

    if-gt p0, v6, :cond_77

    if-lt p1, v3, :cond_77

    add-int v6, v3, v5

    if-gt p1, v6, :cond_77

    const/4 v0, 0x1

    :cond_77
    return v0

    .line 433
    .end local v1    # "nX":I
    .end local v3    # "nY":I
    .end local v4    # "nWidth":I
    .end local v5    # "nHeight":I
    :cond_78
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    if-le v1, v2, :cond_db

    .line 434
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 435
    .restart local v1    # "nX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    .line 436
    .restart local v3    # "nY":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    .line 437
    .restart local v4    # "nWidth":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 439
    .restart local v5    # "nHeight":I
    if-lt p0, v1, :cond_da

    add-int v6, v1, v4

    if-gt p0, v6, :cond_da

    if-lt p1, v3, :cond_da

    add-int v6, v3, v5

    if-gt p1, v6, :cond_da

    const/4 v0, 0x1

    :cond_da
    return v0

    .line 442
    .end local v1    # "nX":I
    .end local v3    # "nY":I
    .end local v4    # "nWidth":I
    .end local v5    # "nHeight":I
    :cond_db
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 443
    .restart local v1    # "nX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    .line 444
    .restart local v3    # "nY":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    .line 445
    .restart local v4    # "nWidth":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    .line 447
    .restart local v5    # "nHeight":I
    if-lt p0, v1, :cond_12d

    add-int v6, v1, v4

    if-gt p0, v6, :cond_12d

    if-lt p1, v3, :cond_12d

    add-int v6, v3, v5

    if-gt p1, v6, :cond_12d

    const/4 v0, 0x1

    :cond_12d
    return v0

    .line 450
    .end local v1    # "nX":I
    .end local v3    # "nY":I
    .end local v4    # "nWidth":I
    .end local v5    # "nHeight":I
    :cond_12e
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 451
    .restart local v1    # "nX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result v3

    .line 452
    .restart local v3    # "nY":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    .line 453
    .restart local v4    # "nWidth":I
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_175} :catch_183

    .line 455
    .restart local v5    # "nHeight":I
    if-lt p0, v1, :cond_182

    add-int v6, v1, v4

    if-gt p0, v6, :cond_182

    if-lt p1, v3, :cond_182

    add-int v6, v3, v5

    if-gt p1, v6, :cond_182

    const/4 v0, 0x1

    :cond_182
    return v0

    .line 457
    .end local v1    # "nX":I
    .end local v3    # "nY":I
    .end local v4    # "nWidth":I
    .end local v5    # "nHeight":I
    :catch_183
    move-exception v1

    .line 461
    return v0
.end method

.method public static final isMouseOverShip(III)Z
    .registers 9
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "shipID"    # I

    .line 466
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 467
    .local v1, "nX":I
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 468
    .local v2, "nY":I
    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    .line 469
    .local v3, "nWidth":I
    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_93

    .line 471
    .local v4, "nHeight":I
    if-lt p0, v1, :cond_92

    add-int v5, v1, v3

    if-gt p0, v5, :cond_92

    if-lt p1, v2, :cond_92

    add-int v5, v2, v4

    if-gt p1, v5, :cond_92

    const/4 v0, 0x1

    :cond_92
    return v0

    .line 472
    .end local v1    # "nX":I
    .end local v2    # "nY":I
    .end local v3    # "nWidth":I
    .end local v4    # "nHeight":I
    :catch_93
    move-exception v1

    .line 476
    return v0
.end method

.method public static final isMouseOverSiege(III)Z
    .registers 6
    .param p0, "nPosX"    # I
    .param p1, "nPosY"    # I
    .param p2, "nProvinceID"    # I

    .line 271
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt p0, v1, :cond_2d

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt p0, v1, :cond_2d

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_2d

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2e

    if-gt p1, v1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0

    .line 272
    :catch_2e
    move-exception v1

    .line 276
    return v0
.end method

.method public static final resetAllModes()V
    .registers 2

    .line 482
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setActiveSliderMenuID(I)V

    .line 483
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setActiveMenuElementID(I)V

    .line 485
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setCloseMenuMode(Z)V

    .line 486
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_MoveByTitleMode(Z)V

    .line 487
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_ResizeMode(Z)V

    .line 488
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_MoveInnerElements(Z)V

    .line 489
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setPieChartMode(Z)V

    .line 490
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setTextScrollableMode(Z)V

    .line 491
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setColorPickerMode(Z)V

    .line 493
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->graphVertical_ScrollMode_X:Z

    .line 494
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->graphVertical_ScrollMode_Y:Z

    .line 496
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleInfo()V

    .line 497
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    .line 499
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 500
    return-void
.end method

.method protected static final setMousePosXY(II)V
    .registers 2
    .param p0, "nMousePosX"    # I
    .param p1, "nMousePosY"    # I

    .line 21
    sput p0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosX:I

    .line 22
    sput p1, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosY:I

    .line 25
    return-void
.end method


# virtual methods
.method protected final actionDown(IIII)V
    .registers 7
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 38
    if-nez p3, :cond_2c

    .line 39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionDown(II)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 40
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    if-eqz v0, :cond_27

    .line 41
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput p1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    .line 42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput p2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    .line 44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    .line 45
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    .line 47
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    goto :goto_2c

    .line 52
    :cond_27
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDown(IIII)V

    .line 56
    :cond_2c
    :goto_2c
    return-void
.end method

.method protected final actionMove(III)V
    .registers 5
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I

    .line 63
    if-nez p3, :cond_f

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionMove(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMove(III)V

    .line 68
    :cond_f
    return-void
.end method

.method protected final actionMove(IIII)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPosX2"    # I
    .param p4, "nPosY2"    # I

    .line 59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMove(IIII)V

    .line 60
    return-void
.end method

.method protected final actionMove_Hover(II)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getFromViewID()I

    move-result v0

    if-gez v0, :cond_db

    .line 91
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z

    .line 98
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    const/4 v1, -0x1

    if-gez v0, :cond_c5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-gez v0, :cond_c5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    if-gez v0, :cond_c5

    .line 99
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v0, :cond_c1

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_bd

    .line 101
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 102
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredArmy(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 103
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 104
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 105
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 106
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto/16 :goto_d6

    .line 108
    :cond_4b
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredBattle(II)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 109
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 110
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 111
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 112
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto/16 :goto_d6

    .line 114
    :cond_5d
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredSiege(II)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 115
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 116
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 118
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_d6

    .line 120
    :cond_70
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredCapitalProvince_Flag(II)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 121
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 122
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 123
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 124
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_d6

    .line 126
    :cond_81
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredShip(II)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 127
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 129
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 130
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    goto :goto_d6

    .line 133
    :cond_94
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_d6

    .line 136
    :cond_98
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-nez v0, :cond_a8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLost()Z

    move-result v0

    if-eqz v0, :cond_b9

    :cond_a8
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredCapitalProvince_Flag(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 137
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 139
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 140
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_d6

    .line 143
    :cond_b9
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_d6

    .line 147
    :cond_bd
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_d6

    .line 151
    :cond_c1
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_HoverInMapMode(II)V

    goto :goto_d6

    .line 155
    :cond_c5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 157
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 158
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    .line 160
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 161
    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    .line 164
    :goto_d6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredMenuElement_Hover(II)V

    .line 166
    :cond_db
    return-void
.end method

.method protected final actionUp(IIII)V
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nPointer"    # I
    .param p4, "button"    # I

    .line 71
    if-nez p3, :cond_13

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionUp(IIII)Z

    move-result v0

    if-nez v0, :cond_f

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUp(IIII)V

    .line 76
    :cond_f
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->resetAllModes()V

    goto :goto_1e

    .line 78
    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getScaleMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 79
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->resetAllModes()V

    .line 82
    :cond_1e
    :goto_1e
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_29

    .line 83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    .line 85
    :cond_29
    return-void
.end method

.method public final updateHoveredArmy(II)Z
    .registers 9
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 308
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    const/4 v2, 0x1

    if-ltz v1, :cond_67

    .line 309
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_5f

    .line 310
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v1, v4, :cond_56

    .line 311
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_4d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1, p2, v1, v4}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_4d

    .line 316
    :cond_4c
    return v2

    .line 312
    :cond_4d
    :goto_4d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 313
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    goto :goto_67

    .line 320
    :cond_56
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 321
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    goto :goto_67

    .line 325
    :cond_5f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 326
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 330
    :cond_67
    :goto_67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_e2

    .line 331
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 332
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7b
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_df

    .line 333
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_dc

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 334
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 335
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 336
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 337
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 339
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    .line 340
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 341
    return v2

    .line 332
    :cond_dc
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 330
    .end local v3    # "j":I
    :cond_df
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 347
    .end local v1    # "i":I
    :cond_e2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_15d

    .line 348
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 349
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_f6
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_15a

    .line 350
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_157

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 351
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 352
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 353
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 354
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 356
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    .line 357
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 358
    return v2

    .line 349
    :cond_157
    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 347
    .end local v3    # "j":I
    :cond_15a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 364
    .end local v1    # "i":I
    :cond_15d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_15e
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_1d8

    .line 365
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_1d5

    .line 366
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_171
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_1d5

    .line 367
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_1d2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 368
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 369
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 370
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 371
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 373
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    .line 374
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    .line 375
    return v2

    .line 366
    :cond_1d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_171

    .line 364
    .end local v3    # "j":I
    :cond_1d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    .line 381
    .end local v1    # "i":I
    :cond_1d8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d9
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_253

    .line 382
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_250

    .line 383
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1ec
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_250

    .line 384
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_24d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 385
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    .line 386
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    .line 387
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    .line 388
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v5, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    .line 390
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    .line 391
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24c} :catch_254

    .line 392
    return v2

    .line 383
    :cond_24d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ec

    .line 381
    .end local v3    # "j":I
    :cond_250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d9

    .line 399
    .end local v1    # "i":I
    :cond_253
    goto :goto_255

    .line 397
    :catch_254
    move-exception v1

    .line 401
    :goto_255
    return v0
.end method

.method public final updateHoveredBattle(II)Z
    .registers 7
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 227
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_40

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 229
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    if-ne v2, v3, :cond_3d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 230
    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 231
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    const/4 v3, -0x1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    goto :goto_40

    .line 234
    :cond_3c
    return v1

    .line 228
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 242
    .end local v0    # "i":I
    :cond_40
    :goto_40
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_41
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v2

    if-ge v0, v2, :cond_73

    .line 243
    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 244
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    .line 245
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    .line 247
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverBattle()V

    .line 248
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6f} :catch_74

    .line 249
    return v1

    .line 242
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 254
    .end local v0    # "i":I
    :cond_73
    goto :goto_75

    .line 252
    :catch_74
    move-exception v0

    .line 256
    :goto_75
    const/4 v0, 0x0

    return v0
.end method

.method public final updateHoveredCapitalProvince_Flag(II)Z
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 191
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 192
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v0

    if-nez v0, :cond_11

    .line 193
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    goto :goto_12

    .line 196
    :cond_11
    return v1

    .line 200
    :cond_12
    :goto_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_48

    .line 201
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_45

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_45

    .line 202
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 203
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 205
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverCapitalFlag()V

    .line 206
    return v1

    .line 200
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 211
    .end local v0    # "i":I
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_49
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_7e

    .line 212
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_7b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_7b

    .line 213
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 214
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    .line 216
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverCapitalFlag()V

    .line 217
    return v1

    .line 211
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 222
    .end local v0    # "i":I
    :cond_7e
    const/4 v0, 0x0

    return v0
.end method

.method public final updateHoveredShip(II)Z
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 169
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 170
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverShip(III)Z

    move-result v0

    if-nez v0, :cond_11

    .line 171
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_12

    .line 174
    :cond_11
    return v1

    .line 178
    :cond_12
    :goto_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    sget v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v0, v2, :cond_26

    .line 179
    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverShip(III)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 180
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    .line 182
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateShipHovered()V

    .line 183
    return v1

    .line 178
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 187
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final updateHoveredSiege(II)Z
    .registers 6
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 281
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1d

    .line 282
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 283
    return v1

    .line 286
    :cond_1a
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 290
    :cond_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    sget v2, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v2, :cond_4e

    .line 291
    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 292
    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    .line 294
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverSiege()V

    .line 295
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4f

    .line 296
    return v1

    .line 290
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 301
    .end local v0    # "i":I
    :cond_4e
    goto :goto_50

    .line 299
    :catch_4f
    move-exception v0

    .line 303
    :goto_50
    const/4 v0, 0x0

    return v0
.end method
