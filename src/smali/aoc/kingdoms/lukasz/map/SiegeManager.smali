.class public Laoc/kingdoms/lukasz/map/SiegeManager;
.super Ljava/lang/Object;
.source "SiegeManager.java"


# static fields
.field public static iProvincesSize:I

.field public static lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final nextDestinations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 278
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e70f0f1

    const v2, 0x3e20a0a1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    .line 279
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v4, 0x3f57d7d8

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->nextDestinations:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNextProvince(Ljava/lang/String;I)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "provinceID"    # I

    .prologue
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->nextDestinations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final addProvinceSiege(I)V
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v1, :cond_17

    .line 46
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_14

    .line 47
    return-void

    .line 45
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "i":I
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 53
    return-void
.end method

.method public static buildProvinceUnderSiege_Load()V
    .registers 3

    .line 28
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 32
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 33
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 34
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 39
    .end local v0    # "i":I
    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 40
    return-void
.end method

.method public static final checkForSiege(I)V
    .registers 11
    .param p0, "nProvinceID"    # I

    .line 81
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    return-void

    :goto_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 86
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    .line 87
    .local v1, "occupierCivID":I
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    .line 88
    .local v2, "ownerCivID":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_22
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_ad

    .line 89
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 90
    .local v4, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v5, :cond_48

    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v5, :cond_48

    .line 91
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 92
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince()V

    .line 93
    return-void

    .line 94
    :cond_40
    iget v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v5, v2, :cond_48

    .line 95
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince_Peace()V

    .line 96
    return-void

    .line 88
    .end local v4    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 102
    .end local v1    # "occupierCivID":I
    .end local v2    # "ownerCivID":I
    .end local v3    # "j":I
    :cond_4b
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    .line 103
    .local v1, "ownerCivID":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_50
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_ad

    .line 104
    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    .line 105
    .local v3, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_aa

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_aa

    .line 106
    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 107
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince()V

    .line 109
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v4, :cond_a9

    .line 110
    new-instance v4, Laoc/kingdoms/lukasz/map/SiegeManager$1;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "UnderSiege"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move p0, p0

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/map/SiegeManager$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 117
    :cond_a9
    return-void

    .line 103
    .end local v3    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 122
    .end local v1    # "ownerCivID":I
    .end local v2    # "j":I
    :cond_ad
    goto :goto_b2

    .line 120
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b2
    return-void
.end method

.method public static clearData()V
    .registers 3

    .line 354
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 355
    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_22

    .line 354
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 359
    .end local v1    # "i":I
    :cond_21
    goto :goto_26

    .line 357
    :catch_22
    move-exception v1

    .line 358
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 361
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_26
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 362
    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 363
    return-void
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 244
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 245
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 248
    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1e

    .line 249
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_33

    .line 251
    :cond_1e
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_33

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_33

    .line 252
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 255
    :cond_33
    :goto_33
    return-void
.end method

.method private static final drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .registers 14
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nCivID"    # I
    .param p4, "ImageID"    # I
    .param p5, "flipX"    # Z

    .line 329
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v1, 0x2

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 331
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v3, p1, 0x3

    add-int/lit8 v4, p2, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 333
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 334
    return-void
.end method

.method private static final drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .registers 15
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F
    .param p2, "iProvinceID"    # I

    .line 283
    :try_start_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v0

    .line 284
    .local v0, "iPosX":I
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result v1

    .line 286
    .local v1, "iPosY":I
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 288
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 289
    .local v2, "tCenterX":I
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 291
    .local v4, "tCenterY":I
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    .line 292
    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    .line 293
    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    .line 291
    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 295
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 296
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    .line 298
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 299
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v6, v0, v2

    add-int v7, v1, v4

    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 303
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ne v5, p2, :cond_c2

    .line 304
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_d6

    .line 306
    :cond_c2
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 308
    :goto_d6
    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    add-int v8, v0, v2

    add-int v9, v1, v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 311
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result v7

    mul-float v5, v5, v7

    float-to-int v10, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    .line 312
    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    .line 308
    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 314
    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 316
    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 321
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11a} :catch_11b

    .line 325
    .end local v0    # "iPosX":I
    .end local v1    # "iPosY":I
    .end local v2    # "tCenterX":I
    .end local v4    # "tCenterY":I
    goto :goto_11f

    .line 323
    :catch_11b
    move-exception v0

    .line 324
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11f
    return-void
.end method

.method private static final drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p0, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p1, "fAlpha"    # F

    .line 259
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_49

    .line 260
    sget v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_48

    .line 261
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 262
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    .line 260
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_48
    goto :goto_77

    .line 267
    :cond_49
    sget v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_4d
    if-ltz v0, :cond_77

    .line 268
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 269
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_78

    .line 267
    :cond_74
    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 275
    .end local v0    # "i":I
    :cond_77
    :goto_77
    goto :goto_79

    .line 273
    :catch_78
    move-exception v0

    .line 276
    :goto_79
    return-void
.end method

.method public static final getArmyPosX(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 337
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getArmyPosY(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 341
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final getDailySiegeProgress(I)F
    .registers 6
    .param p0, "iProvinceID"    # I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "fSiegeProgress":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_69

    .line 169
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_68

    .line 170
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v3, :cond_65

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v3, :cond_65

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 171
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getSiegeProgressPerDay()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    .line 169
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1    # "j":I
    :cond_68
    goto :goto_c4

    .line 176
    :cond_69
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_6a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_c4

    .line 177
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v3, :cond_c1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v3, :cond_c1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 178
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getSiegeProgressPerDay()F

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    .line 176
    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 183
    .end local v1    # "j":I
    :cond_c4
    :goto_c4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_MAX_PROGRESS:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    return v1
.end method

.method public static final getHeight()I
    .registers 2

    .line 349
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static getSiegeDaysLeft(I)I
    .registers 5
    .param p0, "iProvinceID"    # I

    .line 162
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->getDailySiegeProgress(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static final getWidth()I
    .registers 1

    .line 345
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public static final isProvinceUnderSiege(I)Z
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v1, :cond_18

    .line 69
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_15

    .line 70
    const/4 v1, 0x1

    return v1

    .line 68
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isStillUnderSiege(I)Z
    .registers 5
    .param p0, "nProvinceID"    # I

    .line 188
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 189
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 190
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 191
    return v1

    .line 189
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .end local v0    # "j":I
    :cond_32
    goto :goto_5a

    .line 196
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_34
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v0, v2, :cond_5a

    .line 197
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_5b

    if-eqz v2, :cond_57

    .line 198
    return v1

    .line 196
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 204
    .end local v0    # "j":I
    :cond_5a
    :goto_5a
    goto :goto_5f

    .line 202
    :catch_5b
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5f
    const/4 v0, 0x0

    return v0
.end method

.method public static final removeProvinceSiege(I)V
    .registers 4
    .param p0, "nProvinceID"    # I

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v1, :cond_2c

    .line 57
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_29

    .line 58
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 61
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    .line 62
    return-void

    .line 56
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method public static final updateSieges()V
    .registers 6

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v1, :cond_94

    .line 212
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .local v1, "provinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7c

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->isStillUnderSiege(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 215
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v4

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->getDailySiegeProgress(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    .line 217
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_90

    .line 218
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 219
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince()V

    goto :goto_71

    .line 222
    :cond_6a
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince()V

    .line 225
    :goto_71
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    .line 226
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    goto :goto_90

    .line 230
    :cond_7c
    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 231
    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    .line 233
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_90} :catch_95

    .line 211
    :cond_90
    :goto_90
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 238
    .end local v0    # "i":I
    .end local v1    # "provinceID":I
    :cond_94
    goto :goto_99

    .line 236
    :catch_95
    move-exception v0

    .line 237
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 239
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_99
    return-void
.end method
