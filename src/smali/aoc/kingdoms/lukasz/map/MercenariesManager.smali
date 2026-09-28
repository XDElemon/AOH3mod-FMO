.class public Laoc/kingdoms/lukasz/map/MercenariesManager;
.super Ljava/lang/Object;
.source "MercenariesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;,
        Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMercenaryArmies(I)Ljava/util/List;
    .registers 13
    .param p0, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;>;"
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v1

    .line 51
    .local v1, "width":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_272

    .line 52
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_LIMIT_TO_CHOOSE_FROM:I

    if-ge v2, v3, :cond_272

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "bestUnits":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;>;"
    new-instance v4, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    .line 56
    .local v4, "mercenaryArmy":Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;
    int-to-float v5, v1

    int-to-float v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MERCENARIES_LIMIT_TO_CHOOSE_FROM:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 57
    .local v5, "limit":I
    const/4 v6, 0x0

    .line 59
    .local v6, "random":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v7, "tempMercenary":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_38
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_cf

    .line 64
    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v9, :cond_79

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_cb

    :cond_79
    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    .line 65
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v9, :cond_cb

    .line 67
    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;-><init>(II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_cb
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_38

    .line 71
    .end local v8    # "i":I
    :cond_cf
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_153

    .line 72
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_d6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e7

    .line 73
    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_d6

    .line 76
    .end local v8    # "i":I
    :cond_e7
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_e8
    if-ge v8, v5, :cond_110

    .line 77
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 78
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    invoke-virtual {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    .line 76
    add-int/lit8 v8, v8, 0x1

    goto :goto_e8

    .line 81
    .end local v8    # "i":I
    :cond_110
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_111
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_153

    .line 82
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_118
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_150

    .line 83
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    .line 82
    add-int/lit8 v9, v9, 0x1

    goto :goto_118

    .line 81
    .end local v9    # "j":I
    :cond_150
    add-int/lit8 v8, v8, 0x1

    goto :goto_111

    .line 89
    .end local v8    # "i":I
    :cond_153
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 94
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_15a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1d6

    .line 95
    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1d3

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v9, :cond_1d3

    .line 96
    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;-><init>(II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1d3
    add-int/lit8 v8, v8, 0x1

    goto :goto_15a

    .line 100
    .end local v8    # "i":I
    :cond_1d6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_25a

    .line 101
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1dd
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1ee

    .line 102
    new-instance v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-direct {v9}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_1dd

    .line 105
    .end local v8    # "i":I
    :cond_1ee
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1ef
    if-ge v8, v5, :cond_217

    .line 106
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 107
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iUnitID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;->iArmyID:I

    invoke-virtual {v9, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    .line 105
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ef

    .line 110
    .end local v8    # "i":I
    :cond_217
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_218
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_25a

    .line 111
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_21f
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_257

    .line 112
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->addArmy(II)V

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_21f

    .line 110
    .end local v9    # "j":I
    :cond_257
    add-int/lit8 v8, v8, 0x1

    goto :goto_218

    .line 118
    .end local v8    # "i":I
    :cond_25a
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 119
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 121
    iget-object v8, v4, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_26e

    .line 122
    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->buildCost(I)V

    .line 123
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "bestUnits":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$BestArmy;>;"
    .end local v4    # "mercenaryArmy":Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;
    .end local v5    # "limit":I
    .end local v6    # "random":I
    .end local v7    # "tempMercenary":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;>;"
    :cond_26e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 128
    .end local v2    # "a":I
    :cond_272
    return-object v0
.end method

.method public static final recruitMercenaries(IILaoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;)Z
    .registers 9
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I
    .param p2, "mercenaryArmy"    # Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;

    .line 132
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v1, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    .line 133
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "nArmyRegiment":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_1b
    if-ge v1, v2, :cond_40

    .line 138
    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iUnitID:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iArmyID:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 141
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_40
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v1, p0, p1, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    .line 143
    .local v1, "nArmyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 145
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v4, p2, Laoc/kingdoms/lukasz/map/MercenariesManager$MercenaryArmy;->iCost:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 147
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 149
    const/4 v2, 0x1

    return v2
.end method
