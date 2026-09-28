.class public Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;
.super Ljava/lang/Object;
.source "RevolutionManager.java"


# instance fields
.field public armyPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyPosition;",
            ">;"
        }
    .end annotation
.end field

.field public iArmyPositionSize:I

.field public occupiedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addArmyPosition(ILjava/lang/String;)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 819
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_26

    .line 820
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_23

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 821
    return-void

    .line 819
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 825
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 829
    goto :goto_3d

    .line 827
    :catch_39
    move-exception v0

    .line 828
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 830
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method

.method public addCiv(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 13
    .param p1, "toAdd"    # Ljava/lang/String;
    .param p3, "fromCivID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 546
    .local p2, "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    .line 548
    const/4 v1, -0x1

    .line 550
    .local v1, "civID":I
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_1b
    if-lez v2, :cond_30

    .line 551
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 552
    move v1, v2

    .line 553
    goto :goto_30

    .line 550
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 557
    .end local v2    # "j":I
    :cond_30
    :goto_30
    if-lez v1, :cond_254

    .line 558
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "j":I
    :goto_37
    if-ltz v2, :cond_14b

    .line 559
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 560
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 561
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 562
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 563
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 565
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    .line 567
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    .line 570
    :try_start_b5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "a":I
    :goto_c8
    if-ltz v4, :cond_142

    .line 571
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v5, :cond_13f

    .line 572
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    .line 573
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    .line 575
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_13f} :catch_143

    .line 570
    :cond_13f
    add-int/lit8 v4, v4, -0x1

    goto :goto_c8

    .line 580
    .end local v4    # "a":I
    :cond_142
    goto :goto_147

    .line 578
    :catch_143
    move-exception v4

    .line 579
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 558
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_147
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_37

    .line 583
    .end local v2    # "j":I
    :cond_14b
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    .line 585
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 586
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 587
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 588
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 590
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 591
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 592
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-wide v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-wide v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 594
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    if-lez v6, :cond_1aa

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    goto :goto_1ab

    :cond_1aa
    const/4 v6, 0x0

    :goto_1ab
    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 595
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    if-lez v6, :cond_1d2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    goto :goto_1d3

    :cond_1d2
    const/4 v6, 0x0

    :goto_1d3
    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 596
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 598
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1e8
    sget v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v2, v4, :cond_200

    .line 599
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-eqz v4, :cond_1fd

    .line 600
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    .line 598
    :cond_1fd
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e8

    .line 604
    .end local v2    # "t":I
    :cond_200
    invoke-static {p3, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addTruce(II)V

    .line 606
    invoke-virtual {p0, p3, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->sentNotification(II)V

    .line 608
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyRegimentSize()I

    move-result v0

    if-gtz v0, :cond_22c

    .line 609
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy(I)V

    .line 610
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_MAX_ADVANTAGE_POINTS:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    .line 613
    :cond_22c
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvinceBorder()V

    .line 615
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeAllRebelsArmiesMovingToCiv(I)V

    .line 617
    new-instance v0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOAD_RULER"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 624
    return v3

    .line 627
    :cond_254
    return v0
.end method

.method public addOccupiedProvince(I)V
    .registers 5
    .param p1, "provinceID"    # I

    .line 720
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 721
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v1, v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v1, p1, :cond_17

    .line 722
    return-void

    .line 720
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 726
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public clearData()V
    .registers 2

    .line 31
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    .line 36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->clearData()V

    .line 37
    return-void
.end method

.method public final declareIndependence()V
    .registers 19

    .line 255
    move-object/from16 v1, p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_INDEPENDENCE_STEPS:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_c

    .line 256
    return-void

    .line 259
    :cond_c
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_14
    const/4 v3, 0x0

    if-ltz v0, :cond_5a

    .line 260
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-lez v4, :cond_40

    goto :goto_51

    .line 265
    :cond_40
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    goto :goto_57

    .line 261
    :cond_51
    :goto_51
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    nop

    .line 259
    :goto_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 269
    .end local v0    # "i":I
    :cond_5a
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v4, v0

    .local v4, "i":I
    :goto_62
    if-ltz v4, :cond_8bc

    .line 270
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v5, v5, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v0, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_AFTER_X_DAYS:I

    if-le v0, v5, :cond_8b6

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v0, v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    if-nez v0, :cond_8b6

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "cleanOccupiedProvinces":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v5, "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v6, v6, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    .line 276
    .local v6, "provID":I
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v7, v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iput-boolean v2, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    .line 278
    if-nez v0, :cond_c1

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v8, v8, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DISBAND_REBELS_ARMIES_AFTER_X_DAYS:I

    if-le v7, v8, :cond_bf

    goto :goto_c1

    :cond_bf
    const/4 v7, 0x0

    goto :goto_c2

    :cond_c1
    :goto_c1
    const/4 v7, 0x1

    :goto_c2
    move v0, v7

    .line 280
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v7, v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    .line 282
    .local v7, "fromCivID":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v8, v4, -0x1

    move/from16 v17, v8

    move v8, v0

    move/from16 v0, v17

    .local v0, "j":I
    .local v8, "cleanOccupiedProvinces":Z
    :goto_e3
    if-ltz v0, :cond_154

    .line 285
    if-eq v4, v0, :cond_151

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ne v9, v10, :cond_151

    .line 286
    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v10, v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_MIN_OCCUPIED_DAYS:I

    if-lt v9, v10, :cond_151

    .line 287
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iput-boolean v2, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    .line 290
    if-nez v8, :cond_14f

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v10, v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DISBAND_REBELS_ARMIES_AFTER_X_DAYS:I

    if-le v9, v10, :cond_14d

    goto :goto_14f

    :cond_14d
    const/4 v9, 0x0

    goto :goto_150

    :cond_14f
    :goto_14f
    const/4 v9, 0x1

    :goto_150
    move v8, v9

    .line 284
    :cond_151
    add-int/lit8 v0, v0, -0x1

    goto :goto_e3

    .line 296
    .end local v0    # "j":I
    :cond_154
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    if-ltz v0, :cond_197

    .line 297
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "j":I
    :goto_163
    if-ltz v0, :cond_197

    .line 298
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v9

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v10

    if-eq v9, v10, :cond_194

    .line 299
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iput-boolean v3, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    .line 300
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    :cond_194
    add-int/lit8 v0, v0, -0x1

    goto :goto_163

    .line 306
    .end local v0    # "j":I
    :cond_197
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "j":I
    :goto_19c
    if-ltz v0, :cond_293

    .line 307
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_19f
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_28f

    .line 308
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28b

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v10, :cond_28b

    .line 309
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ne v10, v7, :cond_28b

    .line 310
    const/4 v10, 0x1

    .line 312
    .local v10, "canBeAdded":Z
    const/4 v11, 0x0

    .local v11, "z":I
    :goto_207
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v11, v12, :cond_270

    .line 313
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    if-ne v12, v7, :cond_26d

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26d

    .line 314
    const/4 v10, 0x0

    .line 315
    goto :goto_270

    .line 312
    :cond_26d
    add-int/lit8 v11, v11, 0x1

    goto :goto_207

    .line 319
    .end local v11    # "z":I
    :cond_270
    :goto_270
    if-eqz v10, :cond_28b

    .line 320
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v10    # "canBeAdded":Z
    :cond_28b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_19f

    .line 306
    .end local v9    # "k":I
    :cond_28f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_19c

    .line 328
    .end local v0    # "j":I
    :cond_293
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "j":I
    :goto_298
    if-lez v0, :cond_30a

    .line 329
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-lez v9, :cond_307

    .line 330
    const/4 v9, 0x1

    .line 332
    .local v9, "removeProvince":Z
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2b0
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v11

    if-ge v10, v11, :cond_302

    .line 333
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_300

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-nez v11, :cond_2fd

    goto :goto_300

    .line 332
    :cond_2fd
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b0

    .line 334
    :cond_300
    :goto_300
    const/4 v9, 0x0

    .line 335
    nop

    .line 339
    .end local v10    # "k":I
    :cond_302
    if-eqz v9, :cond_307

    .line 340
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 328
    .end local v9    # "removeProvince":Z
    :cond_307
    add-int/lit8 v0, v0, -0x1

    goto :goto_298

    .line 345
    .end local v0    # "j":I
    :cond_30a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 348
    .local v9, "possibleCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "j":I
    :goto_315
    if-ltz v0, :cond_395

    .line 349
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_318
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v10, v11, :cond_392

    .line 350
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v11

    if-lez v11, :cond_38f

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-gtz v11, :cond_38f

    .line 351
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38f

    .line 352
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_38f
    add-int/lit8 v10, v10, 0x1

    goto :goto_318

    .line 348
    .end local v10    # "k":I
    :cond_392
    add-int/lit8 v0, v0, -0x1

    goto :goto_315

    .line 358
    .end local v0    # "j":I
    :cond_395
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x0

    if-lez v0, :cond_5b3

    .line 359
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 361
    .local v11, "civID":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v12, v0

    .local v12, "j":I
    :goto_3b6
    if-ltz v12, :cond_4b2

    .line 362
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 363
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 364
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 365
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 366
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 368
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    .line 371
    :try_start_41a
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "a":I
    :goto_42d
    if-ltz v0, :cond_4a9

    .line 372
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v13, :cond_4a6

    .line 373
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    .line 374
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v13, v14}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    .line 376
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_4a4
    .catch Ljava/lang/Exception; {:try_start_41a .. :try_end_4a4} :catch_4aa

    .line 377
    add-int/lit8 v0, v0, -0x1

    .line 371
    :cond_4a6
    add-int/lit8 v0, v0, -0x1

    goto :goto_42d

    .line 382
    .end local v0    # "a":I
    :cond_4a9
    goto :goto_4ae

    .line 380
    :catch_4aa
    move-exception v0

    .line 381
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 361
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4ae
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_3b6

    .line 385
    .end local v12    # "j":I
    :cond_4b2
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_4de

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne v0, v11, :cond_4de

    .line 386
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    goto :goto_4e5

    .line 389
    :cond_4de
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    .line 392
    :goto_4e5
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 394
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    .line 395
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    .line 396
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    .line 397
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    .line 399
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    .line 400
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    .line 403
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v12, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v14, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    .line 404
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    if-lez v12, :cond_544

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_545

    :cond_544
    const/4 v12, 0x0

    :goto_545
    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 405
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    if-lez v12, :cond_56c

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    goto :goto_56d

    :cond_56c
    const/4 v12, 0x0

    :goto_56d
    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 406
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 408
    const/4 v0, 0x0

    .local v0, "t":I
    :goto_582
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v2, :cond_59a

    .line 409
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_597

    .line 410
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    .line 408
    :cond_597
    add-int/lit8 v0, v0, 0x1

    goto :goto_582

    .line 414
    .end local v0    # "t":I
    :cond_59a
    invoke-static {v7, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addTruce(II)V

    .line 416
    invoke-virtual {v1, v7, v11}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->sentNotification(II)V

    .line 418
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeAllRebelsArmiesMovingToCiv(I)V

    .line 420
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvinceBorder()V

    .line 422
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 423
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 424
    return-void

    .line 427
    .end local v11    # "civID":I
    :cond_5b3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 429
    .local v11, "civTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "j":I
    :goto_5be
    if-ltz v0, :cond_5ee

    .line 430
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSuggestedCivs(I)Ljava/util/List;

    move-result-object v12

    .line 432
    .local v12, "tTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    .local v13, "k":I
    :goto_5d3
    if-ltz v13, :cond_5eb

    .line 433
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5e8

    .line 434
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_5e8
    add-int/lit8 v13, v13, -0x1

    goto :goto_5d3

    .line 429
    .end local v12    # "tTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "k":I
    :cond_5eb
    add-int/lit8 v0, v0, -0x1

    goto :goto_5be

    .line 439
    .end local v0    # "j":I
    :cond_5ee
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "j":I
    :goto_5f3
    if-ltz v0, :cond_618

    .line 440
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_5f6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v13

    if-ge v12, v13, :cond_615

    .line 441
    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_612

    .line 442
    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 443
    goto :goto_615

    .line 440
    :cond_612
    add-int/lit8 v12, v12, 0x1

    goto :goto_5f6

    .line 439
    .end local v12    # "k":I
    :cond_615
    :goto_615
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f3

    .line 448
    .end local v0    # "j":I
    :cond_618
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63b

    .line 449
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, "toAdd":Ljava/lang/String;
    invoke-virtual {v1, v0, v5, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addCiv(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v12

    if-eqz v12, :cond_63b

    .line 452
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 453
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 454
    return-void

    .line 458
    .end local v0    # "toAdd":Ljava/lang/String;
    :cond_63b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_ENABLE_DIFFERENT_GOVERNMENT:Z

    if-eqz v0, :cond_7b8

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "differentGovernment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_647
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v13

    if-ge v12, v13, :cond_69d

    .line 462
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v13, :cond_69a

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    if-nez v13, :cond_69a

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->CITY_STATE:Z

    if-nez v13, :cond_69a

    .line 463
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    if-ltz v13, :cond_689

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v13

    if-eqz v13, :cond_69a

    .line 464
    :cond_689
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v13

    if-eq v13, v12, :cond_69a

    .line 465
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_69a
    add-int/lit8 v12, v12, 0x1

    goto :goto_647

    .line 471
    .end local v12    # "j":I
    :cond_69d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6de

    .line 472
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_6a4
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v13

    if-ge v12, v13, :cond_6de

    .line 473
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v13, :cond_6db

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    if-nez v13, :cond_6db

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-boolean v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->CITY_STATE:Z

    if-nez v13, :cond_6db

    .line 474
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v13

    if-eq v13, v12, :cond_6db

    .line 475
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_6db
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a4

    .line 481
    .end local v12    # "j":I
    :cond_6de
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7b8

    .line 482
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    .line 484
    .local v12, "tag":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v2

    .local v13, "g":I
    :goto_6ef
    const-string v14, "_"

    const-string v15, ""

    if-ltz v13, :cond_763

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_739

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_739
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "tTag":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_742
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v10

    if-ge v3, v10, :cond_75d

    .line 488
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75a

    .line 489
    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 490
    goto :goto_75d

    .line 487
    :cond_75a
    add-int/lit8 v3, v3, 0x1

    goto :goto_742

    .line 484
    .end local v2    # "tTag":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_75d
    :goto_75d
    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_6ef

    .line 495
    .end local v13    # "g":I
    :cond_763
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b8

    .line 496
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 498
    .local v2, "govID":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v10, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7a3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v13, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_7a3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .end local v12    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {v1, v3, v5, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addCiv(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v10

    if-eqz v10, :cond_7b8

    .line 501
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 502
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 503
    return-void

    .line 509
    .end local v0    # "differentGovernment":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "govID":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_7b8
    if-eqz v8, :cond_8b0

    .line 511
    :try_start_7ba
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    .local v2, "j":I
    :goto_7c1
    if-ltz v2, :cond_89e

    .line 512
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 513
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0
    :try_end_7e3
    .catch Ljava/lang/Exception; {:try_start_7ba .. :try_end_7e3} :catch_8a0

    const/4 v10, 0x0

    :try_start_7e4
    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 514
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    .line 516
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V
    :try_end_805
    .catch Ljava/lang/Exception; {:try_start_7e4 .. :try_end_805} :catch_89c

    .line 519
    :try_start_805
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    .local v0, "a":I
    :goto_819
    if-ltz v0, :cond_893

    .line 520
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v12, :cond_890

    .line 521
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    .line 522
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    .line 524
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_890
    .catch Ljava/lang/Exception; {:try_start_805 .. :try_end_890} :catch_894

    .line 519
    :cond_890
    add-int/lit8 v0, v0, -0x1

    goto :goto_819

    .line 529
    .end local v0    # "a":I
    :cond_893
    goto :goto_898

    .line 527
    :catch_894
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_895
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_898
    .catch Ljava/lang/Exception; {:try_start_895 .. :try_end_898} :catch_89c

    .line 511
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_898
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_7c1

    .line 531
    .end local v2    # "j":I
    :catch_89c
    move-exception v0

    goto :goto_8a2

    .line 511
    .restart local v2    # "j":I
    :cond_89e
    const/4 v10, 0x0

    .line 533
    .end local v2    # "j":I
    goto :goto_8a2

    .line 531
    :catch_8a0
    move-exception v0

    const/4 v10, 0x0

    .line 535
    :goto_8a2
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v0

    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_8b2

    .line 509
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :cond_8b0
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 538
    :goto_8b2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_8b7

    .line 270
    .end local v5    # "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "provID":I
    .end local v7    # "fromCivID":I
    .end local v8    # "cleanOccupiedProvinces":Z
    .end local v9    # "possibleCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "civTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8b6
    const/4 v10, 0x0

    .line 269
    :goto_8b7
    add-int/lit8 v4, v4, -0x1

    const/4 v3, 0x0

    goto/16 :goto_62

    .line 542
    .end local v4    # "i":I
    :cond_8bc
    return-void
.end method

.method public final declareIndependence_TurnsLeft(I)I
    .registers 7
    .param p1, "provinceID"    # I

    .line 244
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_30

    .line 245
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v2, v2, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v2, p1, :cond_2d

    .line 246
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_AFTER_X_DAYS:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 244
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 250
    .end local v0    # "i":I
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public decreaseRevolutionaryRisk(II)Z
    .registers 7
    .param p1, "civID"    # I
    .param p2, "provinceID"    # I

    .line 783
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    .line 784
    return v1

    .line 787
    :cond_c
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1a

    .line 788
    return v1

    .line 791
    :cond_1a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_29

    .line 792
    return v1

    .line 795
    :cond_29
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_38

    .line 796
    return v1

    .line 799
    :cond_38
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    .line 801
    .local v0, "possibleToDecrease":F
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 802
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 805
    cmpl-float v1, v0, v2

    if-lez v1, :cond_90

    .line 806
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 808
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 809
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 812
    :cond_90
    const/4 v1, 0x1

    return v1
.end method

.method public getDecreaseRevolutionaryRisk_CostGold(I)F
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 775
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getDecreaseRevolutionaryRisk_CostLegacy(I)F
    .registers 4
    .param p1, "nProvinceID"    # I

    .line 779
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getRevolutionaryProvinces(I)Ljava/util/List;
    .registers 6
    .param p1, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 744
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_34

    .line 745
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 749
    .end local v1    # "i":I
    :cond_37
    return-object v0
.end method

.method public getRevolutionaryProvinces_Sorted(I)Ljava/util/List;
    .registers 8
    .param p1, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->getRevolutionaryProvinces(I)Ljava/util/List;

    move-result-object v0

    .line 754
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    .line 757
    const/4 v2, 0x0

    .line 759
    .local v2, "bestID":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_16
    if-lez v3, :cond_44

    .line 760
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_41

    .line 761
    move v2, v3

    .line 759
    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 765
    .end local v3    # "i":I
    :cond_44
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 767
    .end local v2    # "bestID":I
    goto :goto_9

    .line 769
    :cond_51
    return-object v1
.end method

.method public final moveArmies()V
    .registers 12

    .line 644
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_ARMIES_STEPS:I

    rem-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_2ac

    .line 645
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_21

    goto/16 :goto_2a5

    .line 649
    :cond_21
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    .line 651
    .local v1, "armyID":I
    if-ltz v1, :cond_296

    .line 652
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    if-ge v2, v3, :cond_6c

    .line 653
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    .line 654
    goto/16 :goto_2a5

    .line 657
    :cond_6c
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MAX_MORALE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a5

    .line 658
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MAX_MORALE:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MORALE_RECOVERY:F

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale_Regiments(FF)V

    .line 661
    :cond_a5
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_2a5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_d3

    goto/16 :goto_2a5

    .line 664
    :cond_d3
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_104

    .line 665
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    goto/16 :goto_2a5

    .line 667
    :cond_104
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v2

    if-ltz v2, :cond_2a5

    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v2, "possibleToMove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_11e
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_201

    .line 671
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_1fd

    .line 672
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-eq v4, v5, :cond_1fd

    .line 673
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_1fd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11e

    .line 678
    .end local v3    # "r":I
    :cond_201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_295

    .line 679
    const/4 v3, 0x0

    .line 680
    .local v3, "bestID":I
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v4

    .line 683
    .local v4, "bestDistance":F
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_226
    if-lez v5, :cond_26d

    .line 684
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v6

    .line 686
    .local v6, "tDistance":F
    cmpg-float v7, v6, v4

    if-gez v7, :cond_26a

    .line 687
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->isArmyAlreadyMoving(II)Z

    move-result v7

    if-eqz v7, :cond_264

    .line 688
    const/high16 v7, 0x41200000    # 10.0f

    mul-float v6, v6, v7

    .line 691
    :cond_264
    cmpg-float v7, v6, v4

    if-gez v7, :cond_26a

    .line 692
    move v4, v6

    .line 693
    move v3, v5

    .line 683
    :cond_26a
    add-int/lit8 v5, v5, -0x1

    goto :goto_226

    .line 698
    .end local v5    # "j":I
    .end local v6    # "tDistance":F
    :cond_26d
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->newMove(IILjava/lang/String;IZ)Z

    .line 700
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 702
    .end local v2    # "possibleToMove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "bestID":I
    .end local v4    # "bestDistance":F
    :cond_295
    goto :goto_2a5

    .line 705
    :cond_296
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 706
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    .line 708
    add-int/lit8 v0, v0, -0x1

    .line 644
    .end local v1    # "armyID":I
    :cond_2a5
    :goto_2a5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_ARMIES_STEPS:I
    :try_end_2a9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a9} :catch_2ad

    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 714
    .end local v0    # "i":I
    :cond_2ac
    goto :goto_2b1

    .line 712
    :catch_2ad
    move-exception v0

    .line 713
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 715
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b1
    return-void
.end method

.method public final removeArmyPosition(ILjava/lang/String;)V
    .registers 5
    .param p1, "nProvinceID"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_32

    .line 835
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_2f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 836
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 837
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_33

    .line 838
    return-void

    .line 834
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 843
    .end local v0    # "i":I
    :cond_32
    goto :goto_37

    .line 841
    :catch_33
    move-exception v0

    .line 842
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 844
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.method public removeOccupiedProvince(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 730
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 731
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v1, v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v1, p1, :cond_1c

    .line 732
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 733
    return-void

    .line 730
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 736
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public sentNotification(II)V
    .registers 6
    .param p1, "fromCivID"    # I
    .param p2, "civID"    # I

    .line 631
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_29

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    if-ge p2, v0, :cond_29

    .line 632
    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 633
    sput p2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 635
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Liberation"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoUnrest:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 638
    :cond_29
    return-void
.end method

.method public spawnRevolution(III)V
    .registers 23
    .param p1, "civID"    # I
    .param p2, "provinceID"    # I
    .param p3, "limitOfProvinces"    # I

    .line 95
    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    const-string v2, ": "

    const-string v3, "Revolt"

    :try_start_a
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    if-ltz v0, :cond_93

    .line 96
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    .line 98
    .local v0, "regionID":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 99
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v5

    if-eq v10, v5, :cond_90

    .line 100
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v6

    .line 101
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECREASE_UNREST_IN_PROVINCES_BY_AFTER_REVOLT:F

    .line 102
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v9

    invoke-virtual {v9, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v9

    invoke-static {v10, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float v8, v8, v12

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    .line 100
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_90} :catch_94

    .line 98
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 109
    .end local v0    # "regionID":I
    .end local v4    # "i":I
    :cond_93
    goto :goto_98

    .line 107
    :catch_94
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_95
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "spawnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v4, 0x1

    if-le v11, v4, :cond_172

    .line 116
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_a8
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_ef

    .line 117
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v5, v1, :cond_ec

    .line 118
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_ec

    .line 119
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v11, :cond_ec

    .line 122
    goto :goto_ef

    .line 116
    :cond_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_a8

    .line 128
    .end local v4    # "i":I
    :cond_ef
    :goto_ef
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v11, :cond_172

    .line 129
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_f6
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_172

    .line 130
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_101
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_168

    .line 131
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v6, v1, :cond_165

    .line 132
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_165

    .line 133
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v11, :cond_165

    .line 136
    goto :goto_168

    .line 130
    :cond_165
    add-int/lit8 v5, v5, 0x1

    goto :goto_101

    .line 143
    .end local v5    # "j":I
    :cond_168
    :goto_168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v11, :cond_16f

    .line 144
    goto :goto_172

    .line 129
    :cond_16f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f6

    .line 150
    .end local v4    # "i":I
    :cond_172
    :goto_172
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_177} :catch_3ea

    .local v5, "iSize":I
    :goto_177
    if-ge v4, v5, :cond_1cd

    .line 151
    :try_start_179
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    neg-int v7, v1

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    .line 152
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_195} :catch_1c8

    move-object/from16 v9, p0

    :try_start_197
    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    .line 153
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UNREST_AFTER_REVOLUTION_IN_PROVINCE:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_177

    .line 236
    .end local v0    # "spawnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :catch_1c8
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_3eb

    .line 150
    .restart local v0    # "spawnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "i":I
    .restart local v5    # "iSize":I
    :cond_1cd
    move-object/from16 v9, p0

    .line 156
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_REGIMENTS_MIN:I

    int-to-float v4, v4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_PERC_OF_REGIMENTS_LIMIT:F

    mul-float v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 159
    .local v4, "regimentsToSpawn":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "iSize":I
    :goto_1eb
    if-ge v5, v6, :cond_335

    .line 160
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "rebelsRegiments":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_MAX_REGIMENTS_IN_PROVINCE:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-direct {v8, v1, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    .line 163
    .local v8, "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v13, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    add-int/2addr v12, v13

    iput v12, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 165
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsFirstLine()Ljava/util/List;

    move-result-object v12

    .line 166
    .local v12, "firstLine":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsFlank()Ljava/util/List;

    move-result-object v13

    .line 167
    .local v13, "flank":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsSupport()Ljava/util/List;

    move-result-object v14

    .line 169
    .local v14, "secondLine":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_232

    iget v15, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v15, :cond_232

    .line 170
    iget v15, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    move/from16 v16, v6

    .end local v6    # "iSize":I
    .local v16, "iSize":I
    iget v6, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v15, v6

    iput v15, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    goto :goto_234

    .line 169
    .end local v16    # "iSize":I
    .restart local v6    # "iSize":I
    :cond_232
    move/from16 v16, v6

    .line 172
    .end local v6    # "iSize":I
    .restart local v16    # "iSize":I
    :goto_234
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_245

    iget v6, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v6, :cond_245

    .line 173
    iget v6, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v15, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v6, v15

    iput v6, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 176
    :cond_245
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_254

    .line 177
    new-instance v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    const/4 v15, 0x0

    invoke-direct {v6, v15, v15}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_254
    const/4 v6, 0x0

    .line 182
    .local v6, "randID":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_256
    move/from16 v17, v6

    .end local v6    # "randID":I
    .local v17, "randID":I
    iget v6, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-ge v15, v6, :cond_28d

    .line 183
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 184
    .end local v17    # "randID":I
    .restart local v6    # "randID":I
    new-instance v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v6

    .end local v6    # "randID":I
    .local v18, "randID":I
    move-object/from16 v6, v17

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v9, v10, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v6, v18

    goto :goto_256

    .line 187
    .end local v15    # "j":I
    .end local v18    # "randID":I
    .restart local v17    # "randID":I
    :cond_28d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2c6

    .line 188
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_294
    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-ge v6, v9, :cond_2c3

    .line 189
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 190
    .end local v17    # "randID":I
    .local v9, "randID":I
    new-instance v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v15, v15, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v9

    .end local v9    # "randID":I
    .restart local v18    # "randID":I
    move-object/from16 v9, v17

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v10, v15, v9}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v18

    goto :goto_294

    .end local v18    # "randID":I
    .restart local v17    # "randID":I
    :cond_2c3
    move/from16 v6, v17

    goto :goto_2c8

    .line 187
    .end local v6    # "j":I
    :cond_2c6
    move/from16 v6, v17

    .line 194
    .end local v17    # "randID":I
    .local v6, "randID":I
    :goto_2c8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2ff

    .line 195
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2cf
    iget v10, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-ge v9, v10, :cond_2ff

    .line 196
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    move v6, v10

    .line 197
    new-instance v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v15, v15, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v6

    .end local v6    # "randID":I
    .restart local v18    # "randID":I
    move-object/from16 v6, v17

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v10, v15, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v18

    goto :goto_2cf

    .line 201
    .end local v9    # "j":I
    .end local v18    # "randID":I
    .restart local v6    # "randID":I
    :cond_2ff
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v4, v9

    .line 203
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    new-instance v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    neg-int v15, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move/from16 v18, v6

    .end local v6    # "randID":I
    .restart local v18    # "randID":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v10, v15, v6, v7}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    .line 205
    if-gez v4, :cond_32b

    .line 206
    move v10, v4

    goto :goto_338

    .line 159
    .end local v7    # "rebelsRegiments":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyRegiment;>;"
    .end local v8    # "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v12    # "firstLine":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    .end local v13    # "flank":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    .end local v14    # "secondLine":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;>;"
    .end local v18    # "randID":I
    :cond_32b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v6, v16

    goto/16 :goto_1eb

    .end local v16    # "iSize":I
    .local v6, "iSize":I
    :cond_335
    move/from16 v16, v6

    .end local v6    # "iSize":I
    .restart local v16    # "iSize":I
    move v10, v4

    .line 210
    .end local v4    # "regimentsToSpawn":I
    .end local v5    # "i":I
    .end local v16    # "iSize":I
    .local v10, "regimentsToSpawn":I
    :goto_338
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "iSize":I
    :goto_33d
    if-ge v4, v5, :cond_353

    .line 211
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_33d

    .line 214
    .end local v4    # "i":I
    .end local v5    # "iSize":I
    :cond_353
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v4, :cond_3e9

    .line 215
    neg-int v4, v1

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 216
    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 218
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infoUnrest:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 221
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v5, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$1;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "SiegeLost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v18, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v12, v5

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$1;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 228
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v13, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REVOLT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v2, v13

    move-object/from16 v3, p0

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_3e9
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_3e9} :catch_3ea

    .line 238
    .end local v0    # "spawnProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "regimentsToSpawn":I
    :cond_3e9
    goto :goto_3ee

    .line 236
    :catch_3ea
    move-exception v0

    .line 237
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3eb
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 239
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3ee
    return-void
.end method

.method public spawnRevolution(ILjava/util/List;)V
    .registers 6
    .param p1, "civID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "provinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_PROVINCES_PERC:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->spawnRevolution(III)V

    .line 90
    return-void
.end method

.method public final startRevolution()V
    .registers 6

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "possibleProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UPRISING_STEPS:I

    rem-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 67
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_70

    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 71
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->START_UPRISING_MIN_UNREST:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_64

    .line 72
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_64

    .line 73
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 78
    .end local v2    # "j":I
    :cond_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    .line 79
    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->spawnRevolution(ILjava/util/List;)V

    .line 66
    :cond_70
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UPRISING_STEPS:I

    add-int/2addr v1, v2

    goto :goto_c

    .line 84
    .end local v1    # "i":I
    :cond_76
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    const/4 v0, 0x0

    .line 86
    return-void
.end method

.method public final update()V
    .registers 2

    .line 43
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->declareIndependence()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 46
    goto :goto_8

    .line 44
    :catch_4
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->moveArmies()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 52
    goto :goto_10

    .line 50
    :catch_c
    move-exception v0

    .line 51
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->startRevolution()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 58
    goto :goto_18

    .line 56
    :catch_14
    move-exception v0

    .line 57
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_18
    return-void
.end method

.method public updateArmyPosition(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nProvinceID"    # I

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_23

    .line 849
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 850
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iput p2, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    .line 851
    return-void

    .line 848
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p2, p1}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    .line 859
    goto :goto_3a

    .line 857
    :catch_36
    move-exception v0

    .line 858
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 860
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method
