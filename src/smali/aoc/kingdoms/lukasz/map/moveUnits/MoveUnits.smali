.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;,
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;
    }
.end annotation


# static fields
.field public static final PRECISION:I = 0x10


# instance fields
.field public colorLine:Lcom/badlogic/gdx/graphics/Color;

.field public currentMovementProgressWidth:F

.field public doneMovementProgressWidth:F

.field public extraArmyY:I

.field public fCurrentMovingPercentage:F

.field public fMovingPercentage:F

.field public fSpeed:F

.field private iPrecision:I

.field public iRouteSize:I

.field public iWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inBattle:Z

.field public inRetreat:Z

.field public isBelowZero:Z

.field public key:Ljava/lang/String;

.field public lCurrentMovingTime:J

.field public lMovingTime:J

.field private lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public movementProgressOverWidth:F

.field private vPoints:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .registers 12
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "iFromProvinceIDExtra"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 36
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 37
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 39
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 40
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 48
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 50
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 51
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 53
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 66
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 95
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    .line 96
    iput p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 98
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    .line 100
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    .line 102
    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    .line 104
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_87

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "tRoute":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v2, v3, :cond_5b

    .line 108
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 110
    .end local v2    # "i":I
    :cond_5b
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 112
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6a
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v2, v3, :cond_7c

    .line 114
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 116
    .end local v2    # "i":I
    :cond_7c
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 118
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine_FromToTheSameProvince(ZI)V

    .line 120
    .end local v0    # "tRoute":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_87
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZ)V
    .registers 12
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "inRetreat"    # Z
    .param p7, "landOnly"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 36
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 37
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 39
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 40
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 48
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 50
    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 51
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 53
    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 55
    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 66
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 71
    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    .line 72
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v0

    mul-int v0, v0, p5

    mul-int/lit8 v1, p5, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    .line 74
    iput-boolean p6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 76
    invoke-virtual {p0, p1, p6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    .line 78
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    .line 80
    invoke-virtual {p0, p1, p2, p3, p7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    .line 82
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_85

    .line 83
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    .line 85
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "armyID":I
    if-ltz v0, :cond_85

    .line 88
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftX()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    .line 89
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftY()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    .line 92
    .end local v0    # "armyID":I
    :cond_85
    return-void
.end method

.method public static canBeUsedInPath(IIZI)Z
    .registers 9
    .param p0, "nCivID"    # I
    .param p1, "nProvinceID"    # I
    .param p2, "inRetreat"    # Z
    .param p3, "fromProvince"    # I

    .line 490
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    .line 491
    return v1

    .line 494
    :cond_c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v3

    if-lez v3, :cond_46

    :cond_2a
    if-nez p2, :cond_44

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v0, v2, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1

    :cond_46
    const/4 v1, 0x0

    return v1
.end method

.method public static final isFriendlyProvince(II)Z
    .registers 4
    .param p0, "civID"    # I
    .param p1, "toProvinceID"    # I

    .line 472
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->ENABLE_MOVE_UNITS_TO_ANY_PROVINCE:Z

    if-nez v0, :cond_a7

    .line 473
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p0, :cond_a7

    .line 474
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_a7

    .line 475
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 476
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveAlliance(I)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 477
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->areInAllianceSpecial(I)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 478
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v0, v1, :cond_a7

    .line 479
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq v0, p0, :cond_a7

    .line 480
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v0, v1, :cond_a7

    .line 481
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    if-gez p0, :cond_a5

    goto :goto_a7

    :cond_a5
    const/4 v0, 0x0

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v0, 0x1

    .line 472
    :goto_a8
    return v0
.end method

.method public static final isFriendlyProvince_OrAtWAr(II)Z
    .registers 3
    .param p0, "civID"    # I
    .param p1, "nProvinceID"    # I

    .line 486
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince(II)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;
    .registers 3
    .param p0, "node"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_5
    if-eqz p0, :cond_13

    .line 265
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object p0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    goto :goto_5

    .line 268
    :cond_13
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 270
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    return-object v0
.end method


# virtual methods
.method public final buildLine(I)V
    .registers 11
    .param p1, "civID"    # I

    .line 719
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p1, v0, :cond_e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v0, :cond_264

    .line 722
    :cond_e
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    .line 723
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    .line 724
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    .line 726
    .local v0, "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    const/4 v1, 0x0

    .end local v0    # "dataSet":[Lcom/badlogic/gdx/math/Vector2;
    .local v1, "i":I
    :goto_21
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 727
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 728
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 729
    goto :goto_42

    .line 726
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 733
    .end local v1    # "i":I
    :cond_42
    :goto_42
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a0

    .line 734
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_48
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v4, :cond_bb

    .line 735
    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 736
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v7

    if-nez v7, :cond_9c

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_9c

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    neg-int v7, v7

    goto :goto_9d

    :cond_9c
    const/4 v7, 0x0

    :goto_9d
    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 737
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v5, v0, v4

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 740
    .end local v1    # "i":I
    :cond_bb
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 741
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v5

    if-nez v5, :cond_109

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_109

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_10a

    :cond_109
    const/4 v5, 0x0

    :goto_10a
    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 742
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v2

    .line 743
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    .line 744
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v6

    if-nez v6, :cond_17f

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_17f

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_180

    :cond_17f
    const/4 v6, 0x0

    :goto_180
    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    .line 745
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    goto/16 :goto_23d

    .line 748
    :cond_1a0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1a1
    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v4, :cond_1d8

    .line 749
    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 750
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v6, v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 751
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v5, v0, v4

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a1

    .line 754
    .end local v1    # "i":I
    :cond_1d8
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 755
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    .line 756
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, v0, v2

    .line 757
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    .line 758
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v7, v3

    .line 759
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, v0, v1

    .line 762
    :goto_23d
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move-object v0, v1

    .line 764
    .local v0, "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_244
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    if-ge v1, v2, :cond_263

    .line 765
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v3, v2, v1

    .line 766
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v2, v2, v1

    int-to-float v3, v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_244

    .line 769
    .end local v1    # "j":I
    :cond_263
    nop

    .line 771
    .end local v0    # "oCatmull":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<Lcom/badlogic/gdx/math/Vector2;>;"
    :cond_264
    return-void
.end method

.method public final buildMoveUnitsLine(ZI)V
    .registers 5
    .param p1, "updateAnimation"    # Z
    .param p2, "civID"    # I

    .line 686
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 689
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    .line 691
    if-eqz p1, :cond_1d

    .line 692
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 693
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 695
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 713
    :cond_1d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 715
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    .line 716
    return-void
.end method

.method public final buildMoveUnitsLine_FromToTheSameProvince(ZI)V
    .registers 5
    .param p1, "updateAnimation"    # Z
    .param p2, "civID"    # I

    .line 787
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    .line 790
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    .line 792
    if-eqz p1, :cond_1d

    .line 793
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    .line 794
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    .line 796
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 814
    :cond_1d
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    .line 816
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    .line 817
    return-void
.end method

.method protected buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z
    .registers 33
    .param p1, "civID"    # I
    .param p5, "from"    # I
    .param p6, "lookingFor"    # I
    .param p7, "forDirection"    # Z
    .param p8, "landOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;IIZZ)Z"
        }
    .end annotation

    .line 337
    .local p2, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v9, p6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 338
    .local v8, "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 340
    .local v7, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x1

    if-eqz p7, :cond_27f

    .line 341
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_1f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_27c

    .line 342
    const/4 v1, 0x0

    move v5, v1

    .local v5, "j":I
    :goto_27
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v5, v1, :cond_151

    .line 343
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_14c

    .line 344
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-boolean v2, v10, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v11, v1, v2, v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 346
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_b5

    .line 347
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v16, v5

    .end local v5    # "j":I
    .local v16, "j":I
    move/from16 v5, p6

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 348
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 349
    return v0

    .line 352
    .end local v16    # "j":I
    .end local v17    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_b5
    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "j":I
    .restart local v16    # "j":I
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v2, v16

    .end local v16    # "j":I
    .local v2, "j":I
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .local v1, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v10, v3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 359
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14d

    .line 344
    .end local v1    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_14a
    move v2, v5

    .end local v5    # "j":I
    .restart local v2    # "j":I
    goto :goto_14d

    .line 343
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_14c
    move v2, v5

    .line 342
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_14d
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_27

    :cond_151
    move v2, v5

    .line 365
    .end local v5    # "j":I
    if-nez p8, :cond_277

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_277

    .line 366
    const/4 v1, 0x0

    move v5, v1

    .restart local v5    # "j":I
    :goto_16a
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v5, v1, :cond_274

    .line 367
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_26d

    .line 368
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_1d6

    .line 369
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v18, v5

    .end local v5    # "j":I
    .local v18, "j":I
    move/from16 v5, p6

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 370
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 371
    return v0

    .line 374
    .end local v18    # "j":I
    .end local v19    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_1d6
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v18    # "j":I
    .restart local v19    # "i":I
    move/from16 v1, v19

    .end local v19    # "i":I
    .local v1, "i":I
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move/from16 v3, v18

    .end local v18    # "j":I
    .local v3, "j":I
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 376
    .local v2, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v10, v4, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 381
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26f

    .line 367
    .end local v1    # "i":I
    .end local v2    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_26d
    move v3, v5

    move v1, v6

    .line 366
    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :goto_26f
    add-int/lit8 v5, v3, 0x1

    move v6, v1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_16a

    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_274
    move v3, v5

    move v1, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    goto :goto_278

    .line 365
    .end local v1    # "i":I
    .end local v3    # "j":I
    .restart local v6    # "i":I
    :cond_277
    move v1, v6

    .line 341
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :goto_278
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1f

    :cond_27c
    move v1, v6

    .end local v6    # "i":I
    goto/16 :goto_4df

    .line 391
    :cond_27f
    const/4 v1, 0x0

    move v6, v1

    .restart local v6    # "i":I
    :goto_281
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_4de

    .line 392
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    sub-int/2addr v1, v0

    move v5, v1

    .restart local v5    # "j":I
    :goto_29b
    if-ltz v5, :cond_3b3

    .line 393
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_3ae

    .line 394
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-boolean v2, v10, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v11, v1, v2, v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_3ac

    .line 395
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_317

    .line 396
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v20, v5

    .end local v5    # "j":I
    .local v20, "j":I
    move/from16 v5, p6

    move/from16 v21, v6

    .end local v6    # "i":I
    .local v21, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 397
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 398
    return v0

    .line 401
    .end local v20    # "j":I
    .end local v21    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_317
    move/from16 v20, v5

    move/from16 v21, v6

    .end local v5    # "j":I
    .restart local v20    # "j":I
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v2, v20

    .end local v20    # "j":I
    .local v2, "j":I
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 403
    .local v1, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v10, v3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 408
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3af

    .line 394
    .end local v1    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_3ac
    move v2, v5

    .end local v5    # "j":I
    .restart local v2    # "j":I
    goto :goto_3af

    .line 393
    .end local v2    # "j":I
    .restart local v5    # "j":I
    :cond_3ae
    move v2, v5

    .line 392
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_3af
    add-int/lit8 v5, v2, -0x1

    .end local v2    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_29b

    :cond_3b3
    move v2, v5

    .line 414
    .end local v5    # "j":I
    if-nez p8, :cond_4d9

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_4d9

    .line 415
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    sub-int/2addr v1, v0

    move v5, v1

    .restart local v5    # "j":I
    :goto_3de
    if-ltz v5, :cond_4d6

    .line 416
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v1

    if-nez v1, :cond_4cf

    .line 417
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v1, v9, :cond_438

    .line 418
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v22, v5

    .end local v5    # "j":I
    .local v22, "j":I
    move/from16 v5, p6

    move/from16 v23, v6

    .end local v6    # "i":I
    .local v23, "i":I
    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 419
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 420
    return v0

    .line 423
    .end local v22    # "j":I
    .end local v23    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_438
    move/from16 v22, v5

    move/from16 v23, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v22    # "j":I
    .restart local v23    # "i":I
    move/from16 v1, v23

    .end local v23    # "i":I
    .local v1, "i":I
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move/from16 v3, v22

    .end local v22    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 425
    .local v2, "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v10, v4, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 430
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d1

    .line 416
    .end local v1    # "i":I
    .end local v2    # "tPL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "j":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_4cf
    move v3, v5

    move v1, v6

    .line 415
    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :goto_4d1
    add-int/lit8 v5, v3, -0x1

    move v6, v1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    goto/16 :goto_3de

    .end local v1    # "i":I
    .restart local v6    # "i":I
    :cond_4d6
    move v3, v5

    move v1, v6

    .end local v5    # "j":I
    .end local v6    # "i":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    goto :goto_4da

    .line 414
    .end local v1    # "i":I
    .end local v3    # "j":I
    .restart local v6    # "i":I
    :cond_4d9
    move v1, v6

    .line 391
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :goto_4da
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_281

    :cond_4de
    move v1, v6

    .line 438
    .end local v6    # "i":I
    :goto_4df
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_4e8

    .line 439
    return v16

    .line 443
    :cond_4e8
    if-nez p7, :cond_4eb

    goto :goto_4ec

    :cond_4eb
    const/4 v0, 0x0

    :goto_4ec
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v7

    move/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v17, "nINPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    move/from16 v7, p6

    move-object/from16 v18, v8

    .end local v8    # "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v18, "nIN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v8, v0

    move/from16 v9, p8

    :try_start_4ff
    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    move-result v0
    :try_end_503
    .catch Ljava/lang/StackOverflowError; {:try_start_4ff .. :try_end_503} :catch_504

    return v0

    .line 444
    :catch_504
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 445
    .local v0, "ex":Ljava/lang/StackOverflowError;
    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 446
    return v16
.end method

.method protected buildRoute(IIIZ)Z
    .registers 22
    .param p1, "nCivID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I
    .param p4, "landOnly"    # Z

    .line 278
    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    const/4 v0, 0x0

    if-ltz v10, :cond_164

    if-ltz v11, :cond_164

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_1c

    goto/16 :goto_164

    .line 284
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 285
    .local v12, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 287
    invoke-virtual {v9, v1, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 289
    .end local v1    # "i":I
    :cond_36
    const/4 v13, 0x1

    invoke-virtual {v9, v10, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 292
    .local v14, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 294
    .local v15, "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    .line 296
    .local v8, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4b
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_b2

    .line 297
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    iget-boolean v2, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    move/from16 v7, p1

    invoke-static {v7, v1, v2, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 298
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v9, v2, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 296
    .end local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_b2
    move/from16 v7, p1

    .line 310
    .end local v0    # "i":I
    if-nez p4, :cond_116

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_116

    .line 311
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bd
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_116

    .line 312
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v9, v2, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 311
    .end local v1    # "tP":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 323
    .end local v0    # "i":I
    :cond_116
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_118
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_14d

    .line 324
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    if-ne v0, v11, :cond_14a

    .line 325
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 326
    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    .line 327
    return v13

    .line 323
    :cond_14a
    add-int/lit8 v6, v6, 0x1

    goto :goto_118

    .line 331
    .end local v6    # "i":I
    :cond_14d
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v12

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v16

    move-object/from16 v16, v8

    .end local v8    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .local v16, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    move/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    .line 333
    return v13

    .line 281
    .end local v12    # "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "inPath":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v16    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_164
    :goto_164
    return v0
.end method

.method protected buildRoute2(IIIZ)Z
    .registers 25
    .param p1, "nCivID"    # I
    .param p2, "fromProvinceID"    # I
    .param p3, "toProvinceID"    # I
    .param p4, "landOnly"    # Z

    .line 189
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    const/4 v9, 0x0

    if-ltz v7, :cond_16a

    if-ltz v8, :cond_16a

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_1c

    goto/16 :goto_16a

    .line 195
    :cond_1c
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    move-object v10, v0

    .line 196
    .local v10, "openSet":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 198
    .local v11, "closedSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    new-instance v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 199
    .local v12, "startNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v10, v12}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :goto_48
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_169

    .line 203
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    .line 205
    .local v13, "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    iget v0, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    if-ne v0, v8, :cond_6c

    .line 206
    invoke-static {v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    .line 207
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_6c
    iget v0, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_78
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 211
    .local v15, "neighbor":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 212
    invoke-static {v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget-boolean v1, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    move/from16 v5, p1

    invoke-static {v5, v0, v1, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 213
    iget v0, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v1

    add-float v16, v0, v1

    .line 214
    .local v16, "gCost":F
    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v17

    .line 215
    .local v17, "hCost":F
    add-float v18, v16, v17

    .line 217
    .local v18, "fCost":F
    new-instance v19, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 219
    .local v0, "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v1

    cmpg-float v1, v18, v1

    if-gez v1, :cond_e3

    .line 220
    :cond_d7
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 221
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 223
    :cond_e0
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_e3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v16    # "gCost":F
    .end local v17    # "hCost":F
    .end local v18    # "fCost":F
    goto :goto_f3

    .line 228
    :cond_eb
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v15    # "neighbor":I
    :cond_f3
    :goto_f3
    goto :goto_78

    .line 233
    :cond_f4
    if-nez p4, :cond_167

    .line 234
    iget v0, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_102
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 235
    .restart local v15    # "neighbor":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_166

    .line 236
    iget v0, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v13, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v15}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    add-float v16, v0, v1

    .line 237
    .restart local v16    # "gCost":F
    invoke-static {v15, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v17

    .line 238
    .restart local v17    # "hCost":F
    add-float v18, v16, v17

    .line 240
    .restart local v18    # "fCost":F
    new-instance v19, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v15

    move-object v3, v13

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    .line 242
    .restart local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    .line 243
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_15f

    .line 245
    :cond_145
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v1

    cmpg-float v1, v18, v1

    if-gez v1, :cond_15f

    .line 246
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 247
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_15c
    invoke-virtual {v10, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_15f
    :goto_15f
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v0    # "neighborNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .end local v15    # "neighbor":I
    .end local v16    # "gCost":F
    .end local v17    # "hCost":F
    .end local v18    # "fCost":F
    :cond_166
    goto :goto_102

    .line 256
    .end local v13    # "currentNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_167
    goto/16 :goto_48

    .line 258
    :cond_169
    return v9

    .line 192
    .end local v10    # "openSet":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    .end local v11    # "closedSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;>;"
    .end local v12    # "startNode":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    :cond_16a
    :goto_16a
    return v9
.end method

.method public final buildWidth()V
    .registers 10

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_62

    .line 776
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 777
    .local v1, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 779
    .local v3, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    iget v6, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v6, v7

    mul-int v5, v5, v6

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v7, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v6, v7

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v8, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v7, v8

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_63

    .line 775
    nop

    .end local v1    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 783
    .end local v0    # "i":I
    :cond_62
    goto :goto_67

    .line 781
    :catch_63
    move-exception v0

    .line 782
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 784
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_67
    return-void
.end method

.method protected final clearWas(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local p1, "was":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 452
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    .line 451
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 454
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 551
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 553
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_197

    .line 554
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 555
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2b
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_78

    .line 556
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 557
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 556
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .end local v1    # "j":I
    :cond_78
    goto :goto_b7

    .line 561
    :cond_79
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7a
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_b7

    .line 562
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 563
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 562
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 567
    .end local v1    # "j":I
    :cond_b7
    :goto_b7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v8, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 568
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v2

    add-float/2addr v8, v3

    mul-float v8, v8, v4

    sget-object v9, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v8, v9, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 571
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 573
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 574
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_f5
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_13a

    .line 575
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 576
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 575
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .end local v1    # "j":I
    :cond_13a
    goto :goto_171

    .line 580
    :cond_13b
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_13c
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_171

    .line 581
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float v8, v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 582
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, p2

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 581
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_13c

    .line 586
    .end local v1    # "j":I
    :cond_171
    :goto_171
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 587
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    mul-float v5, v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_24e

    .line 590
    :cond_197
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 591
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1ae
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_1f3

    .line 592
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 593
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 592
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ae

    .end local v1    # "j":I
    :cond_1f3
    goto :goto_22a

    .line 597
    :cond_1f4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1f5
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_22a

    .line 598
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float v8, v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 599
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, p2

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 598
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f5

    .line 603
    .end local v1    # "j":I
    :cond_22a
    :goto_22a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 604
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    mul-float v5, v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24e} :catch_24f

    .line 610
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :goto_24e
    goto :goto_250

    .line 608
    :catch_24f
    move-exception v0

    .line 611
    :goto_250
    return-void
.end method

.method public draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 615
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 617
    .local v0, "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_197

    .line 618
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 619
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2b
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_78

    .line 620
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 621
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 620
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .end local v1    # "j":I
    :cond_78
    goto :goto_b7

    .line 625
    :cond_79
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7a
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_b7

    .line 626
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 627
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 626
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 631
    .end local v1    # "j":I
    :cond_b7
    :goto_b7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v11, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v8, v9, v10, v11, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 632
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v2

    add-float/2addr v8, v3

    mul-float v8, v8, v4

    sget-object v9, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v8, v9, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    .line 634
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 636
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 637
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_f5
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_13a

    .line 638
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 639
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 638
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    .end local v1    # "j":I
    :cond_13a
    goto :goto_171

    .line 643
    :cond_13b
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_13c
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_171

    .line 644
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float v8, v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 645
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, p2

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 644
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_13c

    .line 649
    .end local v1    # "j":I
    :cond_171
    :goto_171
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 650
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    mul-float v5, v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_24e

    .line 653
    :cond_197
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 654
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1ae
    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    iget v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-ge v1, v8, :cond_1f3

    .line 655
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v9, v9, p2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 656
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p2

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 655
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ae

    .end local v1    # "j":I
    :cond_1f3
    goto :goto_22a

    .line 660
    :cond_1f4
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1f5
    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v6, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-ge v1, v6, :cond_22a

    .line 661
    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float v8, v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v1

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    .line 662
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float v9, v9, p2

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 661
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f5

    .line 666
    .end local v1    # "j":I
    :cond_22a
    :goto_22a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v8, v9, v10, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    .line 667
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    mul-float v5, v5, v4

    sget-object v2, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v1, v0, v5, v2, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24e} :catch_24f

    .line 673
    .end local v0    # "nPath":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    :goto_24e
    goto :goto_250

    .line 671
    :catch_24f
    move-exception v0

    .line 674
    :goto_250
    return-void
.end method

.method public getFromProvinceID()I
    .registers 3

    .line 844
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProgressPerc()F
    .registers 4

    .line 858
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRouteProvinceID(I)I
    .registers 3
    .param p1, "index"    # I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceID()I
    .registers 3

    .line 848
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceLastID()I
    .registers 3

    .line 852
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWas(I)Z
    .registers 3
    .param p1, "nProvinceID"    # I

    .line 884
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    return v0
.end method

.method public getWidthTotal()I
    .registers 4

    .line 862
    const/4 v0, 0x0

    .line 864
    .local v0, "out":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 865
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 864
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 868
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public haveSeaProvince()Z
    .registers 3

    .line 872
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v0, v1, :cond_20

    .line 873
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 874
    const/4 v1, 0x1

    return v1

    .line 872
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method protected final setPath(IILjava/util/List;II)V
    .registers 9
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p4, "toProvinceID"    # I
    .param p5, "fromProvinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 457
    .local p3, "lPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 460
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 462
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 463
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_3d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 467
    return-void
.end method

.method public setWas(IZ)V
    .registers 4
    .param p1, "nProvinceID"    # I
    .param p2, "nWas"    # Z

    .line 888
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput-boolean p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    .line 889
    return-void
.end method

.method public update()V
    .registers 10

    .line 507
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    .line 508
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    .line 511
    :try_start_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 513
    .local v0, "armyID":I
    if-gez v0, :cond_24

    .line 514
    return-void

    .line 517
    :cond_24
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 518
    .local v2, "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    .line 520
    .local v3, "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_51

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_5e

    :cond_51
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_5e

    goto :goto_89

    .line 539
    :cond_5e
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_15d

    .line 521
    :cond_89
    :goto_89
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 522
    iget v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_cd

    .line 523
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_15d

    .line 526
    :cond_cd
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_15d

    .line 530
    :cond_f7
    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_134

    .line 531
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_15d

    .line 534
    :cond_134
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 542
    :goto_15d
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    float-to-int v1, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v1, v5

    iput v1, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_192} :catch_193

    .line 546
    .end local v0    # "armyID":I
    .end local v2    # "provinceA":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "provinceB":Laoc/kingdoms/lukasz/map/province/Province;
    goto :goto_194

    .line 544
    :catch_193
    move-exception v0

    .line 547
    :goto_194
    return-void
.end method

.method public updateColorLine(IZ)V
    .registers 8
    .param p1, "nCivID"    # I
    .param p2, "inRetreat"    # Z

    .line 125
    if-eqz p2, :cond_7

    .line 126
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    .line 128
    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_12

    .line 129
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2b

    .line 132
    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/16 v2, 0x64

    const v3, 0x3ecccccd    # 0.4f

    const/16 v4, 0x3c

    invoke-static {v0, v1, v4, v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    .line 135
    :goto_2b
    return-void
.end method

.method public updateLittleAnimationMovingArmy()V
    .registers 3

    .line 820
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 821
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 823
    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    .line 839
    return-void
.end method

.method public updateSpeed(II)V
    .registers 9
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I

    .line 138
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "tArmyID":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 142
    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_38

    .line 144
    :try_start_14
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    .line 145
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v3

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_2d

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_2f

    :cond_2d
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2f
    mul-float v3, v3, v4

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_85

    .line 148
    :cond_38
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v2

    .line 150
    .local v2, "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    if-eqz v2, :cond_68

    .line 151
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v5, v2, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v4

    iget-boolean v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v5, :cond_5d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_5f

    :cond_5d
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_5f
    mul-float v4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_85

    .line 154
    :cond_68
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_85

    .line 155
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_7f

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_81

    :cond_7f
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_81
    mul-float v3, v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_85} :catch_86

    .line 165
    .end local v2    # "nArmyPos":Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;
    :cond_85
    :goto_85
    goto :goto_a4

    .line 159
    :catch_86
    move-exception v2

    .line 160
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 162
    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a4

    .line 163
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_a0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    :cond_a0
    mul-float v3, v3, v1

    iput v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    .line 166
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_a4
    :goto_a4
    return-void
.end method

.method public final updateToNextProvince(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 679
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    .line 682
    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    .line 683
    return-void
.end method
