.class public Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;
.super Ljava/lang/Object;
.source "RevolutionMoveUnits.java"


# instance fields
.field public iMoveUnitsSize:I

.field public lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .line 21
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 23
    return-void
.end method

.method public isArmyAlreadyMoving(II)Z
    .registers 5
    .param p1, "fromProvinceID"    # I
    .param p2, "toProvinceID"    # I

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_26

    .line 220
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v1

    if-ne v1, p2, :cond_23

    .line 221
    const/4 v1, 0x1

    return v1

    .line 219
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final newMove(IILjava/lang/String;IZ)Z
    .registers 24
    .param p1, "fromProvinceID"    # I
    .param p2, "toProvinceID"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "extraArmyY"    # I
    .param p5, "retreat"    # Z

    .line 57
    move-object/from16 v1, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v14, p5

    const/4 v15, 0x0

    move/from16 v11, p2

    if-ne v12, v11, :cond_e

    .line 58
    return v15

    .line 61
    :cond_e
    :try_start_e
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 63
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_3e

    .line 64
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "armyID":I
    if-ltz v0, :cond_3d

    .line 67
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v15, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 68
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    .line 71
    :cond_3d
    return v10

    .line 74
    .end local v0    # "armyID":I
    :cond_3e
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 76
    .restart local v0    # "armyID":I
    if-ltz v0, :cond_212

    .line 77
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_5d

    .line 78
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->isArmyInBattle(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 79
    return v15

    .line 83
    :cond_5d
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    .line 87
    .local v3, "civID":I
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    const/4 v9, 0x0

    move-object/from16 v2, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    move-object/from16 v2, v16

    .line 89
    .local v2, "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_b1

    .line 90
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 91
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    const/16 v17, 0x1

    move-object/from16 v4, v16

    move v5, v3

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v15, 0x1

    move/from16 v10, p5

    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    move-object/from16 v4, v16

    .line 93
    .local v4, "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    iget v5, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v5, v15, :cond_b2

    .line 94
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v5

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v6

    if-ge v5, v6, :cond_b2

    .line 95
    .end local v4    # "nMoveUnitsLand":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    move-object v2, v4

    .line 96
    goto :goto_b2

    .line 90
    :cond_af
    const/4 v15, 0x1

    goto :goto_b2

    .line 89
    :cond_b1
    const/4 v15, 0x1

    .line 102
    :cond_b2
    :goto_b2
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v4, v15, :cond_210

    .line 103
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_b8
    iget v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    if-ge v11, v4, :cond_1df

    .line 104
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 105
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v4, :cond_da

    .line 106
    const/4 v4, 0x0

    return v4

    .line 109
    :cond_da
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v5

    if-ne v4, v5, :cond_137

    .line 110
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 111
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 112
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 113
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 114
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 116
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    goto/16 :goto_1df

    .line 120
    :cond_137
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getProgressPerc()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_LOCKED_MOVE:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1cd

    .line 121
    new-instance v16, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v6

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v9, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v10

    move-object/from16 v4, v16

    move v5, v3

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v2, v16

    .line 123
    iget v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v4, v15, :cond_1cb

    .line 124
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    .line 125
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    .line 126
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 127
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    .line 128
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v4, v4, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    .line 130
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v14, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 133
    return v15

    .line 136
    :cond_1cb
    const/4 v4, 0x0

    return v4

    .line 140
    :cond_1cd
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 145
    goto :goto_1df

    .line 103
    :cond_1db
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b8

    .line 149
    .end local v11    # "i":I
    :cond_1df
    :goto_1df
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 152
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v14, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 153
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {v4, v15}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 154
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    .line 156
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->updateIsUnderSiege()V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20f} :catch_213

    .line 158
    return v15

    .line 161
    :cond_210
    const/4 v4, 0x0

    return v4

    .line 166
    .end local v0    # "armyID":I
    .end local v2    # "nMoveUnits":Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .end local v3    # "civID":I
    :cond_212
    goto :goto_217

    .line 164
    :catch_213
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_217
    const/4 v2, 0x0

    return v2
.end method

.method public final removeAllRebelsArmiesMovingToCiv(I)V
    .registers 6
    .param p1, "civID"    # I

    .line 28
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_68

    .line 29
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v1, p1, :cond_65

    .line 30
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    .line 31
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    .line 33
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 28
    :cond_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 37
    .end local v0    # "i":I
    :cond_68
    return-void
.end method

.method public final removeMove(I)V
    .registers 5
    .param p1, "i"    # I

    .line 205
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "tID":I
    if-ltz v0, :cond_7a

    .line 208
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 209
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 210
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 211
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 214
    :cond_7a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 216
    return-void
.end method

.method public final removeMove(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8c

    .line 185
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 186
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, "tID":I
    if-ltz v1, :cond_79

    .line 189
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    .line 190
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v2, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    .line 191
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput v2, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    .line 194
    :cond_79
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    .line 196
    const/4 v2, 0x1

    return v2

    .line 184
    .end local v1    # "tID":I
    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 200
    .end local v0    # "i":I
    :cond_8c
    return v2
.end method

.method public final updateMoveInBattle(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inBattle"    # Z

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_23

    .line 44
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 45
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_24

    .line 46
    return-void

    .line 43
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_23
    goto :goto_28

    .line 50
    :catch_24
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 53
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method public final updateMoveUnits_Load(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;ZZ)V
    .registers 7
    .param p1, "civMoveUnits"    # Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;
    .param p2, "nInRetreat"    # Z
    .param p3, "nInBattle"    # Z

    .line 172
    iget v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->iMoveUnitsSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_3c

    .line 173
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    iget-object v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 174
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->m:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    .line 176
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    .line 177
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p3, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    .line 178
    return-void

    .line 172
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 181
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method
