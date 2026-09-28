.class public Laoc/kingdoms/lukasz/map/battles/Battle;
.super Ljava/lang/Object;
.source "Battle.java"


# instance fields
.field public attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

.field public battleWidth:I

.field public defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

.field public iMaxBattleWidth:I

.field public key:Ljava/lang/String;

.field public posX:I

.field public posY:I

.field public provinceID:I

.field public roundID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "iProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "nAttackingArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    .local p3, "nDefendingArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    .line 33
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    .line 35
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    .line 42
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    .line 43
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    .line 44
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    .line 46
    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/Battle;->deployArmies(Ljava/util/List;Ljava/util/List;)V

    .line 47
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

    .line 206
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

    .line 208
    if-gez p3, :cond_47

    .line 209
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

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

    goto :goto_6b

    .line 212
    :cond_47
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

    .line 215
    :goto_6b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 216
    return-void
.end method

.method public static getArmyInFirstLine(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)I"
        }
    .end annotation

    .line 128
    .local p0, "nArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "j":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "jSize":I
    :goto_6
    if-ge v1, v2, :cond_38

    .line 131
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v4, :cond_35

    .line 132
    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_32

    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 130
    .end local v3    # "i":I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 138
    .end local v1    # "j":I
    .end local v2    # "jSize":I
    :cond_38
    return v0
.end method

.method public static final getArmyPosX(I)I
    .registers 3
    .param p0, "nProvinceID"    # I

    .line 219
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

    .line 223
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

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDefendersProvinceBonuses(I)I
    .registers 3
    .param p0, "iProvinceID"    # I

    .line 255
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DefenseBonus:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final deployArmies(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "nAttackingArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    .local p2, "nDefendingArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_BATTLE_WIDTH:I

    .line 53
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_74

    .line 54
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 57
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_71

    .line 58
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v2, :cond_52

    .line 59
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_71

    .line 62
    :cond_52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    .line 53
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 66
    .end local v1    # "i":I
    :cond_74
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e3

    .line 67
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    .line 70
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_e0

    .line 71
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v2, :cond_c1

    .line 72
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_e0

    .line 75
    :cond_c1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    .line 66
    :cond_e0
    :goto_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 80
    .end local v1    # "i":I
    :cond_e3
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    .line 82
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyInFirstLine(Ljava/util/List;)I

    move-result v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyInFirstLine(Ljava/util/List;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 84
    .local v1, "sideArmyMin":I
    new-instance v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;-><init>(Ljava/util/List;IILjava/lang/String;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    .line 85
    new-instance v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-direct {v2, p2, v0, v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;-><init>(Ljava/util/List;IILjava/lang/String;)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    .line 87
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v3, :cond_130

    .line 88
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12f

    .line 89
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v4, :cond_12c

    .line 90
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 91
    goto :goto_12f

    .line 88
    :cond_12c
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    .end local v3    # "i":I
    :cond_12f
    :goto_12f
    goto :goto_13c

    .line 96
    :cond_130
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 99
    :goto_13c
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v3, :cond_168

    .line 100
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_147
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_167

    .line 101
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v4, :cond_164

    .line 102
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v5, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 103
    goto :goto_167

    .line 100
    :cond_164
    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    .end local v3    # "i":I
    :cond_167
    :goto_167
    goto :goto_174

    .line 108
    :cond_168
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    .line 111
    :goto_174
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v4, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    .line 112
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    .line 114
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1af

    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v3, :cond_1ac

    .line 116
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    .line 114
    :cond_1ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_18d

    .line 120
    .end local v2    # "i":I
    :cond_1af
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1b0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d2

    .line 121
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v3, :cond_1cf

    .line 122
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    .line 120
    :cond_1cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b0

    .line 125
    .end local v2    # "i":I
    :cond_1d2
    return-void
.end method

.method public final drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 8
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F

    .line 148
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 149
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getBattleWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    .line 151
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyPosX(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    .line 152
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyPosY(I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    mul-int v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v0, v1, :cond_79

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 155
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 156
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    invoke-static {p1, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 157
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 160
    :cond_79
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    .line 162
    :cond_80
    return-void
.end method

.method public final drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .registers 19
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fAlpha"    # F
    .param p3, "posX"    # I
    .param p4, "posY"    # I

    .line 165
    move-object v0, p0

    move-object v9, p1

    move/from16 v10, p2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 167
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    const/4 v6, 0x0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 169
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v11, v1, 0x2

    .line 171
    .local v11, "nX":I
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p3, v11

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v2, v2, 0xa

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    .line 172
    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    .line 173
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 171
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 175
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    add-int v1, p3, v11

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 177
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    float-to-int v1, v1

    add-int v1, p4, v1

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-int v5, v5

    sub-int v5, v1, v5

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v13, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v13, v13, v10

    invoke-direct {v6, v1, v7, v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 175
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 180
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v1, v1, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 182
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyEnemy:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p3, v11

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v2, v2, 0xa

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    .line 183
    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    .line 184
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    .line 182
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 186
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    .line 188
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    add-int v1, p3, v11

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    .line 190
    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    float-to-int v1, v1

    add-int v1, p4, v1

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-int v5, v5

    sub-int v5, v1, v5

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v12, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v12, v12, v10

    invoke-direct {v6, v1, v7, v8, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 188
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 194
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v11, v1

    .line 196
    add-int v2, p3, v11

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    const/4 v6, 0x1

    move-object v1, p1

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    .line 198
    sget v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    .line 199
    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v2, p3, v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->army:I

    .line 200
    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, p4, v3

    sget v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 198
    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 202
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 203
    return-void
.end method

.method public final endOfBattle()Z
    .registers 2

    .line 259
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    if-lez v0, :cond_f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    if-gtz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final endOfBattle_NoAttacks()Z
    .registers 4

    .line 263
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_16

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method public getBattleWidth()I
    .registers 3

    .line 144
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public isInBattle(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleArmy(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 376
    return v1

    .line 378
    :cond_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleArmy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 379
    return v1

    .line 382
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final updateBattle()V
    .registers 7

    .line 229
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_DEPLOYMENT_PHASE_TURNS:I

    if-le v0, v2, :cond_9c

    .line 230
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDefeated()V

    .line 231
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDefeated()V

    .line 233
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDiceRoll()V

    .line 234
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDiceRoll()V

    .line 236
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V

    .line 237
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V

    .line 239
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateCasualties()V

    .line 240
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateCasualties()V

    .line 242
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleAndRetreat()V

    .line 243
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleAndRetreat()V

    .line 245
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_56

    .line 246
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateNumOfUnits()V

    .line 249
    :cond_56
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/16 v5, 0xa

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    .line 252
    :cond_9c
    return-void
.end method

.method public final updateBattle_Summary(Z)V
    .registers 7
    .param p1, "armyCanBeDestroyed"    # Z

    .line 274
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 276
    .local v0, "aggressorsWon":Z
    :goto_f
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_SummaryCasualties(Z)V

    .line 278
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    invoke-virtual {v1, v4, v2, v3, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateBattle_Summary(IZIZ)V

    .line 279
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    invoke-virtual {v1, v2, v0, v3, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateBattle_Summary(IZIZ)V

    .line 281
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 282
    return-void
.end method

.method public final updateBattle_SummaryCasualties(Z)V
    .registers 23
    .param p1, "aggressorsWon"    # Z

    .line 285
    move-object/from16 v1, p0

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "warKey":Ljava/lang/String;
    if-eqz v11, :cond_337

    .line 289
    :try_start_25
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildCasualties()V

    .line 290
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildCasualties()V

    .line 294
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_39
    if-ltz v0, :cond_65

    .line 295
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->addCasualties(II)V

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 298
    .end local v0    # "i":I
    :cond_65
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_6f
    if-ltz v0, :cond_9b

    .line 299
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->addCasualties(II)V

    .line 298
    add-int/lit8 v0, v0, -0x1

    goto :goto_6f

    .line 302
    .end local v0    # "i":I
    :cond_9b
    if-eqz p1, :cond_16e

    .line 303
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_CASUALTIES:F

    mul-float v0, v0, v3

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getCivsRegimentsLimit()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_MAX:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 304
    .local v0, "fWarScore":F
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result v3

    move v0, v3

    .line 306
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 307
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 308
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    goto :goto_13f

    .line 311
    :cond_126
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v4, v0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 312
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    sub-float/2addr v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    .line 315
    :goto_13f
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_BATTLE:F

    mul-float v4, v4, v0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    .line 317
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_VICTORIOUS_ARMY:F

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    .line 318
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_DEFEATED_ARMY:F

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    goto/16 :goto_23d

    .line 321
    .end local v0    # "fWarScore":F
    :cond_16e
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_CASUALTIES:F

    mul-float v0, v0, v3

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getCivsRegimentsLimit()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_MAX:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 322
    .restart local v0    # "fWarScore":F
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result v3

    move v0, v3

    .line 324
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 325
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 326
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    goto :goto_210

    .line 329
    :cond_1f7
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v4, v0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    .line 330
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    sub-float/2addr v4, v0

    iput v4, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    .line 333
    :goto_210
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_BATTLE:F

    mul-float v4, v4, v0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    .line 335
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_DEFEATED_ARMY:F

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    .line 336
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_VICTORIOUS_ARMY:F

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    .line 339
    :goto_23d
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v3

    if-nez v3, :cond_255

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v3

    if-eqz v3, :cond_332

    .line 340
    :cond_255
    const/4 v3, 0x0

    .line 342
    .local v3, "battleWon":Z
    if-eqz p1, :cond_267

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v4

    if-eqz v4, :cond_267

    .line 343
    const/4 v3, 0x1

    move v12, v3

    goto :goto_279

    .line 344
    :cond_267
    if-nez p1, :cond_278

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v4

    if-eqz v4, :cond_278

    .line 345
    const/4 v3, 0x1

    move v12, v3

    goto :goto_279

    .line 348
    :cond_278
    move v12, v3

    .end local v3    # "battleWon":Z
    .local v12, "battleWon":Z
    :goto_279
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v19

    .line 350
    .local v19, "notificationKey":Ljava/lang/String;
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->BATTLE_REPORT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v12, :cond_28f

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "BattleWon"

    goto :goto_293

    :cond_28f
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "BattleLost"

    :goto_293
    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eqz v12, :cond_2bc

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_2be

    :cond_2bc
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_2be
    move-object/from16 v18, v5

    iget v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    move-object v13, v4

    move/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 352
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    new-instance v9, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    .line 354
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    add-int/2addr v5, v6

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v5, v6

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-direct {v9, v3, v5, v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    new-instance v10, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    .line 360
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    add-int/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-direct {v10, v2, v3, v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    move-object v2, v14

    move-object/from16 v3, v19

    move v5, v0

    move/from16 v6, p1

    move v7, v12

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/map/battles/BattleReport;-><init>(Ljava/lang/String;IFZZILaoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;)V

    .line 352
    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addBattleReport(Laoc/kingdoms/lukasz/map/battles/BattleReport;)V
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_332} :catch_333

    .line 368
    .end local v0    # "fWarScore":F
    .end local v12    # "battleWon":Z
    .end local v19    # "notificationKey":Ljava/lang/String;
    :cond_332
    goto :goto_337

    .line 366
    :catch_333
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 370
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_337
    :goto_337
    return-void
.end method

.method public final updateNumOfUnits()V
    .registers 2

    .line 267
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateNumOfUnits()V

    .line 268
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateNumOfUnits()V

    .line 269
    return-void
.end method
