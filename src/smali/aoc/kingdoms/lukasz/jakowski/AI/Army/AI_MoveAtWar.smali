.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;
.super Ljava/lang/Object;
.source "AI_MoveAtWar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;
    }
.end annotation


# static fields
.field public static armies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesInMove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesLowMoraleManpower:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesSiege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesToMerge:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static enemyArmies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;",
            ">;"
        }
    .end annotation
.end field

.field private static incomingMap:Ljava/util/HashMap;

.field private static incomingTurn:I

.field public static possibleProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static possibleProvincesDefend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static warScore:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlliedProvincesFromWars(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 15
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v0, v1, :cond_1cf

    .line 537
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    .line 539
    .local v1, "war":Laoc/kingdoms/lukasz/map/war/War;
    if-nez v1, :cond_1b

    .line 540
    goto/16 :goto_1cb

    .line 543
    :cond_1b
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isWarLeader(I)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_WAR_LEADER:F

    goto :goto_2a

    :cond_26
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_NOT_WAR_LEADER:F

    .line 545
    .local v2, "warLeaderScore":F
    :goto_2a
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_35

    :cond_33
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    .line 546
    .local v3, "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :goto_35
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    goto :goto_40

    :cond_3e
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    .line 548
    .local v4, "warSides2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :goto_40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    .line 549
    .local v6, "side":Laoc/kingdoms/lukasz/map/war/WarCivilization;
    iget v7, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p1, v7, :cond_109

    .line 552
    const/4 v7, 0x0

    .local v7, "b":I
    iget v8, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "bSize":I
    :goto_61
    if-ge v7, v8, :cond_b3

    .line 553
    iget v9, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 554
    .local v9, "occupiedProvinceID":I
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v10

    .line 557
    .local v10, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v11

    if-gez v11, :cond_93

    .line 558
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_REBELS:F

    iput v12, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_b0

    .line 561
    :cond_93
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v11

    invoke-static {p1, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v11

    if-eqz v11, :cond_b0

    .line 562
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_ENEMY_CIV:F

    iput v12, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 552
    .end local v9    # "occupiedProvinceID":I
    .end local v10    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_b0
    :goto_b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 567
    .end local v7    # "b":I
    .end local v8    # "bSize":I
    :cond_b3
    const/4 v7, 0x0

    .restart local v7    # "b":I
    iget v8, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .restart local v8    # "bSize":I
    :goto_c0
    if-ge v7, v8, :cond_109

    .line 568
    iget v9, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 570
    .local v9, "underSiegeProvinceID":I
    const/4 v10, 0x0

    .local v10, "c":I
    :goto_d5
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v11

    if-ge v10, v11, :cond_106

    .line 571
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v11

    if-eqz v11, :cond_103

    .line 572
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_UNDER_SIEGE:F

    iput v12, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 574
    goto :goto_106

    .line 570
    :cond_103
    add-int/lit8 v10, v10, 0x1

    goto :goto_d5

    .line 567
    .end local v9    # "underSiegeProvinceID":I
    .end local v10    # "c":I
    :cond_106
    :goto_106
    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    .line 579
    .end local v6    # "side":Laoc/kingdoms/lukasz/map/war/WarCivilization;
    .end local v7    # "b":I
    .end local v8    # "bSize":I
    :cond_109
    goto/16 :goto_44

    .line 582
    :cond_10b
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .local v6, "warSideCivID":I
    :goto_115
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v5, v7, :cond_175

    .line 583
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    .line 585
    .local v7, "provinceID":I
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v8

    if-eqz v8, :cond_163

    .line 586
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v8

    if-eqz v8, :cond_14f

    .line 587
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED_UNDER_SIEGE:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_172

    .line 591
    :cond_14f
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 594
    goto :goto_172

    .line 597
    :cond_163
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iput v2, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 582
    .end local v7    # "provinceID":I
    :goto_172
    add-int/lit8 v5, v5, 0x1

    goto :goto_115

    .line 602
    .end local v5    # "j":I
    .end local v6    # "warSideCivID":I
    :cond_175
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "a":I
    :goto_17b
    if-lez v5, :cond_1cb

    .line 603
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .line 605
    .restart local v6    # "warSideCivID":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_186
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-ge v7, v8, :cond_1c8

    .line 606
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v8

    if-nez v8, :cond_1c5

    .line 607
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ENEMY_ALLIES_PROVINCES:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 605
    :cond_1c5
    add-int/lit8 v7, v7, 0x1

    goto :goto_186

    .line 602
    .end local v6    # "warSideCivID":I
    .end local v7    # "j":I
    :cond_1c8
    add-int/lit8 v5, v5, -0x1

    goto :goto_17b

    .line 536
    .end local v1    # "war":Laoc/kingdoms/lukasz/map/war/War;
    .end local v2    # "warLeaderScore":F
    .end local v3    # "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    .end local v4    # "warSides2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    .end local v5    # "a":I
    :cond_1cb
    :goto_1cb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 613
    .end local v0    # "i":I
    :cond_1cf
    return-void
.end method

.method public static addAlliedProvincesFromWars_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 13
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    .line 616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v0, v1, :cond_f5

    .line 617
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    .line 619
    .local v1, "war":Laoc/kingdoms/lukasz/map/war/War;
    if-nez v1, :cond_1b

    .line 620
    goto/16 :goto_f1

    .line 623
    :cond_1b
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_26

    :cond_24
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    .line 625
    .local v2, "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :goto_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    .line 626
    .local v4, "side":Laoc/kingdoms/lukasz/map/war/WarCivilization;
    iget v5, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p1, v5, :cond_ef

    .line 628
    const/4 v5, 0x0

    .local v5, "b":I
    iget v6, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "bSize":I
    :goto_47
    if-ge v5, v6, :cond_99

    .line 629
    iget v7, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 630
    .local v7, "occupiedProvinceID":I
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v8

    .line 632
    .local v8, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v9

    if-gez v9, :cond_79

    .line 633
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_REBELS:F

    iput v10, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_96

    .line 636
    :cond_79
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v9

    invoke-static {p1, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 637
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_ENEMY_CIV:F

    iput v10, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 628
    .end local v7    # "occupiedProvinceID":I
    .end local v8    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_96
    :goto_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 642
    .end local v5    # "b":I
    .end local v6    # "bSize":I
    :cond_99
    const/4 v5, 0x0

    .restart local v5    # "b":I
    iget v6, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "bSize":I
    :goto_a6
    if-ge v5, v6, :cond_ef

    .line 643
    iget v7, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 645
    .local v7, "underSiegeProvinceID":I
    const/4 v8, 0x0

    .local v8, "c":I
    :goto_bb
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v9

    if-ge v8, v9, :cond_ec

    .line 646
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9

    if-eqz v9, :cond_e9

    .line 647
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_ENEMY_ARMY_IN_PROVINCE:F

    iput v10, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 649
    goto :goto_ec

    .line 645
    :cond_e9
    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    .line 642
    .end local v7    # "underSiegeProvinceID":I
    .end local v8    # "c":I
    :cond_ec
    :goto_ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 654
    .end local v4    # "side":Laoc/kingdoms/lukasz/map/war/WarCivilization;
    .end local v5    # "b":I
    .end local v6    # "bSize":I
    :cond_ef
    goto/16 :goto_2a

    .line 616
    .end local v1    # "war":Laoc/kingdoms/lukasz/map/war/War;
    .end local v2    # "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :cond_f1
    :goto_f1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 656
    .end local v0    # "i":I
    :cond_f5
    return-void
.end method

.method public static addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .registers 6
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_a5

    .line 497
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 499
    .local v1, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 500
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v2

    if-gez v2, :cond_37

    .line 504
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_REBELS:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_a1

    .line 507
    :cond_37
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_ENEMY_CIV:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_a1

    .line 510
    :cond_3e
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 511
    const/4 v2, 0x0

    .line 513
    .local v2, "byRebels":Z
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_4e
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_71

    .line 514
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v4, :cond_6e

    .line 515
    const/4 v2, 0x1

    .line 516
    goto :goto_71

    .line 513
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 520
    .end local v3    # "a":I
    :cond_71
    :goto_71
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    if-eqz v2, :cond_87

    .line 523
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_REBELS:F

    iput v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_8d

    .line 525
    :cond_87
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_ENEMY_CIV:F

    iput v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 527
    .end local v2    # "byRebels":Z
    :goto_8d
    goto :goto_a1

    .line 529
    :cond_8e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_DEFAULT:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 496
    .end local v1    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 533
    .end local v0    # "i":I
    :cond_a5
    return-void
.end method

.method public static buildEnemyArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 16
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "addedCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_6
    :try_start_6
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v1, v2, :cond_10f

    .line 391
    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    .line 393
    .local v2, "war":Laoc/kingdoms/lukasz/map/war/War;
    if-eqz v2, :cond_10b

    .line 394
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_29

    :cond_27
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    .line 395
    .local v3, "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :goto_29
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    goto :goto_34

    :cond_32
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    .line 397
    .local v4, "warSides2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    :goto_34
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v7, v7, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    goto :goto_52

    :goto_52
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10b

    .line 399
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    const/4 v6, 0x0

    .local v6, "j":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    .local v5, "warSideCivID":I
    :goto_7c
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v6, v7, :cond_10b

    .line 403
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    .line 405
    .local v7, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    if-lez v8, :cond_107

    .line 406
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_99
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v9

    if-ge v8, v9, :cond_107

    .line 407
    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v9, :cond_104

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq p1, v9, :cond_104

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9

    if-eqz v9, :cond_104

    .line 408
    const/4 v9, 0x1

    .line 409
    .local v9, "addArmy":Z
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "z":I
    :goto_c4
    if-ltz v10, :cond_ee

    .line 410
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v12

    if-ne v11, v12, :cond_eb

    .line 411
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v12, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v12, v13

    iput v12, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    .line 412
    const/4 v9, 0x0

    .line 413
    goto :goto_ee

    .line 409
    :cond_eb
    add-int/lit8 v10, v10, -0x1

    goto :goto_c4

    .line 416
    .end local v10    # "z":I
    :cond_ee
    :goto_ee
    if-eqz v9, :cond_104

    .line 417
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v12

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-direct {v11, v12, v13}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_104} :catch_110

    .line 406
    .end local v9    # "addArmy":Z
    :cond_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 402
    .end local v7    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v8    # "k":I
    :cond_107
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7c

    .line 390
    .end local v2    # "war":Laoc/kingdoms/lukasz/map/war/War;
    .end local v3    # "warSides":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    .end local v4    # "warSides2":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/war/WarCivilization;>;"
    .end local v5    # "warSideCivID":I
    .end local v6    # "j":I
    :cond_10b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 429
    .end local v1    # "a":I
    :cond_10f
    goto :goto_114

    .line 427
    :catch_110
    move-exception v1

    .line 428
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 431
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a6

    .line 432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11f
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1a6

    .line 433
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 435
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-lez v3, :cond_1a2

    .line 436
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_134
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_1a2

    .line 437
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_19f

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq p1, v4, :cond_19f

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 438
    const/4 v4, 0x1

    .line 439
    .local v4, "addArmy":Z
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "z":I
    :goto_15f
    if-ltz v5, :cond_189

    .line 440
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    if-ne v6, v7, :cond_186

    .line 441
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    .line 442
    const/4 v4, 0x0

    .line 443
    goto :goto_189

    .line 439
    :cond_186
    add-int/lit8 v5, v5, -0x1

    goto :goto_15f

    .line 446
    .end local v5    # "z":I
    :cond_189
    :goto_189
    if-eqz v4, :cond_19f

    .line 447
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v4    # "addArmy":Z
    :cond_19f
    add-int/lit8 v3, v3, 0x1

    goto :goto_134

    .line 432
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "j":I
    :cond_1a2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11f

    .line 466
    .end local v1    # "i":I
    :cond_1a6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    return-void
.end method

.method public static buildMaxSendMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;)Ljava/util/HashMap;
    .registers 8
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_39

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_39

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isFrontlineProvince(II)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v5, :cond_36

    sub-int v5, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_39
    return-object v0
.end method

.method private static buildNeedMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;II)Ljava/util/HashMap;
    .registers 16
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "provinceCount"    # I
    .param p2, "civID"    # I

    move-object v8, p0

    move p0, p1

    move p1, p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p0, :cond_33

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isFrontlineProvince(II)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_30

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    add-int/2addr v10, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_33
    iget-object v1, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v2, :cond_65

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isFrontlineProvince(II)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    if-eqz v5, :cond_62

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    add-int/2addr v10, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_65
    move v11, v10

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildMaxSendMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v11, v3

    goto :goto_74

    :cond_86
    const/4 v12, 0x0

    if-lez v9, :cond_8f

    div-int v12, v11, v9

    const/4 v1, 0x1

    if-ge v12, v1, :cond_8f

    const/4 v12, 0x1

    :cond_8f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_93
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result p1

    if-ge p1, v12, :cond_bc

    sub-int v4, v12, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    goto :goto_93

    :cond_bd
    return-object v0
.end method

.method public static calculateProvinceScores(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .registers 11
    .param p0, "attackerCiv"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_4c

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4c

    const/4 v6, 0x0

    :goto_29
    if-ge v6, v5, :cond_51

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v8

    const/4 v9, 0x0

    :goto_3e
    if-ge v9, v8, :cond_49

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    if-eq v3, v1, :cond_4c

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4c
    iget v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_6

    :cond_51
    const/4 v3, 0x0

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_6

    :cond_55
    return-void
.end method

.method private static collectIdleArmies(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/util/HashMap;I)Ljava/util/ArrayList;
    .registers 15
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "maxSendMap"    # Ljava/util/HashMap;
    .param p2, "civID"    # I

    move-object v8, p0

    move-object v9, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_6b

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_33

    const/4 v7, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_37
    if-ge v7, v6, :cond_68

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_68

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    if-eqz v11, :cond_68

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    if-eqz v11, :cond_68

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isArmyIdle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_6b
    return-object v0
.end method

.method public static countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I
    .registers 3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->syncIncomingTurn()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->incomingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static determinePossibleProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 2
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    .line 484
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    .line 486
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addAlliedProvincesFromWars(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->calculateProvinceScores(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    .line 487
    return-void
.end method

.method public static determinePossibleProvinces_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 2
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    .line 490
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    .line 492
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addAlliedProvincesFromWars_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->calculateProvinceScores(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    .line 493
    return-void
.end method

.method private static distributeAttacks(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .registers 14
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I

    move-object v8, p0

    move v9, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_31

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v9, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isFrontlineProvince(II)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isArmyIdle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_31
    return-void
.end method

.method public static fillFrontlineGaps(I)V
    .registers 16
    .param p0, "civID"    # I

    if-ltz p0, :cond_fe

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :cond_fe

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_fe

    invoke-static {v0, v1, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildNeedMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;II)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_fe

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fe

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildMaxSendMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v3, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->collectIdleArmies(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/util/HashMap;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_fe

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_fe

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v1, :cond_62

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_5f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_5f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_62
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_fe

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6d
    if-ge v9, v8, :cond_fe

    add-int/lit8 v7, v9, 0x1

    if-ge v7, v8, :cond_fe

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_fe

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_fc

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_fc

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    if-eqz v7, :cond_fc

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    invoke-static {v0, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v14

    add-int v7, v7, v14

    const/4 v14, 0x2

    if-ge v7, v14, :cond_fc

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v7

    if-eqz v7, :cond_be

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v7

    if-nez v7, :cond_f1

    :cond_be
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    move v1, v12

    move-object v14, v4

    move-object v12, v5

    move v2, v10

    move-object v3, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v7

    move-object v4, v14

    move-object v5, v12

    if-eqz v7, :cond_f5

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v11, :cond_fc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_f1
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    :cond_f5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_fc
    :goto_fc
    goto/16 :goto_6d

    :cond_fe
    return-void
.end method

.method private static isArmyIdle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z
    .registers 2
    .param p0, "army"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz p0, :cond_10

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrontlineProvince(II)Z
    .registers 9
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I

    if-ltz p1, :cond_47

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_47

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    if-lez v1, :cond_47

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    if-eqz v4, :cond_47

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_47

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_42

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_30

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    goto :goto_3a

    :cond_30
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    if-eqz v6, :cond_42

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    :goto_3a
    if-ltz v3, :cond_42

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-nez v3, :cond_45

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_45
    const/4 v3, 0x1

    return v3

    :cond_47
    const/4 v3, 0x0

    return v3
.end method

.method public static isProvinceOvercrowded(I)Z
    .registers 4
    .param p0, "provinceID"    # I

    const/4 v0, 0x3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v2, v0, :cond_f

    const/4 v1, 0x0

    return v1

    :cond_f
    const/4 v1, 0x1

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public static linearAdvance(I)V
    .registers 16
    .param p0, "civID"    # I

    if-ltz p0, :cond_e7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :cond_e7

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-lez v7, :cond_e7

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v7, :cond_e7

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    if-ltz v1, :cond_e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e3

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_e3

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    if-eqz v9, :cond_e3

    iget-boolean v8, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v8, :cond_e3

    iget-boolean v8, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v8, :cond_e3

    iget-boolean v8, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v8, :cond_e3

    iget v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    if-lez v5, :cond_e3

    iget-object v2, v4, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    if-eqz v2, :cond_e3

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->isFrontlineProvince(II)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v10, 0x0

    :goto_54
    if-ge v10, v5, :cond_b8

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    if-eqz v8, :cond_b5

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    goto :goto_7d

    :cond_79
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    :goto_7d
    if-ne v4, p0, :cond_91

    if-gez v11, :cond_b5

    invoke-virtual {v8, p0}, Laoc/kingdoms/lukasz/map/province/Province;->haveArmy(I)Z

    move-result v4

    if-nez v4, :cond_b5

    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v4

    const/16 v8, 0x2

    if-ge v4, v8, :cond_b5

    move v11, v14

    goto :goto_b5

    :cond_91
    if-ltz v4, :cond_b5

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    invoke-static {v0, v14}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-gez v8, :cond_b5

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    const/16 v8, 0x64

    if-ge v4, v8, :cond_b5

    if-gez v9, :cond_b1

    move v9, v14

    move v12, v4

    goto :goto_b5

    :cond_b1
    if-ge v4, v12, :cond_b5

    move v9, v14

    move v12, v4

    :cond_b5
    :goto_b5
    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    :cond_b8
    if-ltz v9, :cond_ce

    move v2, v9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v8

    if-eqz v8, :cond_e3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    :cond_ce
    if-ltz v11, :cond_e3

    move v2, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v8

    if-eqz v8, :cond_e3

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    :goto_e3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    :cond_e7
    return-void
.end method

.method public static mergeArmy(IILjava/lang/String;)V
    .registers 11
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 958
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v0, p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->isArmyMerging_Just(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 959
    return-void

    .line 962
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 963
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p0, :cond_51

    .line 964
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 965
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v1, "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;

    .line 971
    return-void

    .line 962
    .end local v1    # "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 976
    .end local v0    # "i":I
    :cond_54
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_106

    :cond_61
    const/4 v0, -0x1

    .line 977
    .local v0, "bestID":I
    const v1, 0x497423f0    # 999999.0f

    .line 980
    .local v1, "bestDistance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v2, v3, :cond_ab

    .line 981
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    if-eq v3, p1, :cond_a8

    .line 982
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    .line 984
    .local v3, "tDistance":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_a8

    .line 985
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    .line 987
    .local v4, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-eqz v4, :cond_a8

    iget-boolean v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v5, :cond_a8

    .line 988
    move v0, v2

    .line 989
    move v1, v3

    .line 980
    .end local v3    # "tDistance":F
    .end local v4    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 995
    .end local v2    # "i":I
    :cond_ab
    if-ltz v0, :cond_ee

    .line 996
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 997
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    .line 998
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_101

    .line 1002
    :cond_ee
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_101} :catch_102

    .line 1006
    .end local v0    # "bestID":I
    .end local v1    # "bestDistance":F
    :cond_101
    :goto_101
    goto :goto_106

    .line 1004
    :catch_102
    move-exception v0

    .line 1005
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1007
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_106
    :goto_106
    return-void
.end method

.method public static mergeArmy_InProvince(IILjava/lang/String;)V
    .registers 7
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I
    .param p2, "armyKey"    # Ljava/lang/String;

    .line 1015
    const/4 v0, -0x1

    .line 1018
    .local v0, "largestArmyID":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 1019
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p0, :cond_43

    .line 1020
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1021
    if-gez v0, :cond_2c

    .line 1022
    move v0, v1

    goto :goto_43

    .line 1024
    :cond_2c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-le v2, v3, :cond_43

    .line 1025
    move v0, v1

    .line 1018
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1032
    .end local v1    # "i":I
    :cond_46
    if-ltz v0, :cond_64

    .line 1033
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v1, "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_65

    .line 1042
    .end local v0    # "largestArmyID":I
    .end local v1    # "toMerge":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    goto :goto_69

    .line 1040
    :catch_65
    move-exception v0

    .line 1041
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1043
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public static moveArmiesLowMoraleManpower(I)V
    .registers 12
    .param p0, "civID"    # I

    .line 893
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1dd

    .line 894
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    goto :goto_2f

    :cond_2b
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    :goto_2f
    const/16 v2, 0x64

    if-eq v1, p0, :cond_110

    .line 895
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 897
    .local v1, "rand":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_DO_NOTHING:I

    if-ge v1, v2, :cond_41

    goto/16 :goto_10e

    .line 900
    :cond_41
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CLOSEST_PROVINCE:I

    if-ge v1, v2, :cond_af

    .line 901
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    .line 902
    .local v2, "bestProvinceID":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    .line 905
    .local v3, "bestDistance":F
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_5e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_8f

    .line 906
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v5

    .line 908
    .local v5, "tDistance":F
    cmpg-float v6, v5, v3

    if-gez v6, :cond_8c

    .line 909
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    move v2, v6

    .line 910
    move v3, v5

    .line 905
    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 914
    .end local v4    # "a":I
    .end local v5    # "tDistance":F
    :cond_8f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v2

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 915
    nop

    .end local v2    # "bestProvinceID":I
    .end local v3    # "bestDistance":F
    goto :goto_10e

    .line 916
    :cond_af
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CAPITAL:I

    if-ge v1, v2, :cond_db

    .line 917
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto :goto_10e

    .line 920
    :cond_db
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 922
    .end local v1    # "rand":I
    :goto_10e
    goto/16 :goto_1d9

    .line 924
    :cond_110
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 926
    .restart local v1    # "rand":I
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_NEIGHBORING_PROVINCE:I

    if-ge v1, v2, :cond_1ae

    .line 927
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 928
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v3, "possibleToMove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_130
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_173

    .line 931
    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-eqz v6, :cond_151

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    goto :goto_155

    :cond_151
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    :goto_155
    if-ne v5, p0, :cond_170

    .line 932
    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, p0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v5

    if-nez v5, :cond_170

    .line 933
    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_170
    add-int/lit8 v4, v4, 0x1

    goto :goto_130

    .line 938
    .end local v4    # "a":I
    :cond_173
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1aa

    .line 939
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    .line 942
    :cond_1aa
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 943
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v3    # "possibleToMove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1d9

    .line 944
    :cond_1ae
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_CAPITAL:I

    if-ge v1, v2, :cond_1d9

    .line 945
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d9} :catch_1de

    .line 893
    .end local v1    # "rand":I
    :cond_1d9
    :goto_1d9
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 951
    .end local v0    # "i":I
    :cond_1dd
    goto :goto_1e2

    .line 949
    :catch_1de
    move-exception v0

    .line 950
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 952
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1e2
    return-void
.end method

.method public static moveArmiesToProvinces(I)V
    .registers 14
    .param p0, "civID"    # I

    .line 670
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 671
    .local v1, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(I)I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(II)I

    move-result v2

    .line 673
    .local v2, "toProvinceID":I
    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    if-ne v5, p0, :cond_43

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v5, p0, :cond_43

    goto :goto_6

    .line 674
    :cond_43
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 675
    goto :goto_6

    .line 678
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 679
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    .line 680
    goto :goto_6

    .line 683
    :cond_59
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    .line 684
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_SCORE:F

    mul-float v4, v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto/16 :goto_20b

    .line 687
    :cond_8c
    new-instance v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v3, p0, v4, v2}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;-><init>(III)V

    .line 689
    .local v3, "moveUnitsAI":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;
    iget v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->iRouteSize:I

    if-lez v4, :cond_191

    .line 690
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v4, "accessCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9d
    iget v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->iRouteSize:I

    if-ge v5, v6, :cond_dd

    .line 693
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->lRoute:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_da

    .line 694
    iget-object v6, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->lRoute:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_da
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 698
    .end local v5    # "i":I
    :cond_dd
    const/4 v5, 0x0

    .line 700
    .local v5, "isPlayerInList":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_e4
    if-ltz v6, :cond_13a

    .line 701
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_134

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p0, :cond_134

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-nez v7, :cond_134

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v7

    if-eqz v7, :cond_11f

    goto :goto_134

    .line 704
    :cond_11f
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v7, v8, :cond_137

    .line 705
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 706
    const/4 v5, 0x1

    goto :goto_137

    .line 702
    :cond_134
    :goto_134
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 700
    :cond_137
    :goto_137
    add-int/lit8 v6, v6, -0x1

    goto :goto_e4

    .line 710
    .end local v6    # "i":I
    :cond_13a
    if-eqz v5, :cond_160

    .line 711
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDemandMilitaryAccess;

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v8, v9

    invoke-direct {v7, p0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDemandMilitaryAccess;-><init>(II)V

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    .line 712
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v7, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DEMAND_MILITARY_ACCESS_COST:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER:F

    mul-float v8, v8, v9

    sub-float/2addr v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 715
    :cond_160
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .restart local v6    # "i":I
    :goto_166
    if-ltz v6, :cond_18e

    .line 716
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addMilitaryAccess(II)Z

    move-result v7

    if-eqz v7, :cond_18b

    .line 717
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DEMAND_MILITARY_ACCESS_COST:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER:F

    mul-float v9, v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 715
    :cond_18b
    add-int/lit8 v6, v6, -0x1

    goto :goto_166

    .line 721
    .end local v6    # "i":I
    :cond_18e
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 724
    .end local v4    # "accessCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "isPlayerInList":Z
    :cond_191
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v4, v5, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->addProvince(II)V

    .line 726
    const/4 v4, 0x1

    .line 728
    .local v4, "defend":Z
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_CANT_REACH_RANDOM_PROVINCES_LIMIT:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "a":I
    :goto_1ad
    if-ltz v5, :cond_206

    .line 729
    iget v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince_Random(I)I

    move-result v6

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(II)I

    move-result v2

    .line 731
    iget v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    if-ne v6, v2, :cond_1c1

    .line 732
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 733
    goto :goto_203

    .line 736
    :cond_1c1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v6, v7, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 737
    goto :goto_203

    .line 740
    :cond_1d0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-static {v7, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_203

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v2

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v6

    if-eqz v6, :cond_203

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    .line 741
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_SCORE:F

    mul-float v7, v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 742
    const/4 v4, 0x0

    .line 743
    goto :goto_206

    .line 728
    :cond_203
    :goto_203
    add-int/lit8 v5, v5, -0x1

    goto :goto_1ad

    .line 747
    .end local v5    # "a":I
    :cond_206
    :goto_206
    if-eqz v4, :cond_20b

    .line 748
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    .line 751
    .end local v1    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .end local v2    # "toProvinceID":I
    .end local v3    # "moveUnitsAI":Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;
    .end local v4    # "defend":Z
    :cond_20b
    :goto_20b
    goto/16 :goto_6

    .line 752
    :cond_20d
    return-void
.end method

.method public static moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .registers 9
    .param p0, "civID"    # I
    .param p1, "army"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 755
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_NO_CONNECTIONS_DEFEND_CHANCE:I

    if-ge v0, v1, :cond_46

    .line 756
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince_Defend(I)I

    move-result v0

    .line 758
    .local v0, "toProvinceID":I
    iget v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    if-ne v1, v0, :cond_23

    .line 759
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    .line 762
    :cond_23
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 763
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_DEFEND_SCORE:F

    mul-float v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    .line 766
    .end local v0    # "toProvinceID":I
    :cond_46
    return-void
.end method

.method public static moveAtWar(I)V
    .registers 5
    .param p0, "civID"    # I

    .line 53
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    const/high16 v0, 0x447a0000    # 1000.0f

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    .line 66
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 68
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-le v1, v2, :cond_44

    .line 69
    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    .line 70
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Generals;->recruitGenerals(I)V

    .line 71
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->processArmyPositions(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    goto :goto_47

    .line 74
    :cond_44
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->processArmyPositions_Just(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    .line 77
    :goto_47
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->percentageOfCivProvincesThatAreOccupied(Laoc/kingdoms/lukasz/map/civilization/Civilization;)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_IF_PERC_OF_PROVINCES_THAT_ARE_OCCUPIED:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_54

    const/4 v3, 0x1

    :cond_54
    move v1, v3

    .line 78
    .local v1, "buildEnemyArmy":Z
    invoke-static {v0, p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->updateMinWarscore(Laoc/kingdoms/lukasz/map/civilization/Civilization;IZ)Z

    move-result v2

    move v1, v2

    .line 81
    goto/16 :goto_5c

    .line 82
    :goto_5c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    .line 83
    :cond_74
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildEnemyArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    .line 85
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    .line 86
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies(I)V

    .line 91
    :cond_82
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->fillFrontlineGaps(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->linearAdvance(I)V

    .line 93
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 94
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesLowMoraleManpower(I)V

    .line 97
    :cond_93
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 98
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarPlayDefensiveUntilTurnID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-le v2, v3, :cond_b2

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->determinePossibleProvinces_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces(I)V

    goto :goto_d2

    .line 106
    :cond_b2
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-static {v0, v2, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildNeedMap(Laoc/kingdoms/lukasz/map/civilization/Civilization;II)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_c3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c3

    goto :goto_d8

    :cond_c3
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->determinePossibleProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces(I)V

    :cond_d1
    goto :goto_d8

    .line 115
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v1    # "buildEnemyArmy":Z
    :cond_d2
    :goto_d2
    const/4 v2, 0x0
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d3} :catch_d4

    goto :goto_d8

    .line 113
    :catch_d4
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d8
    return-void
.end method

.method public static moveToEnemyArmies(I)V
    .registers 15
    .param p0, "civID"    # I

    .line 121
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_SortEnemyArmies(I)V

    .line 123
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_GetOwnArmies()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "civArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_105

    .line 129
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_MoveDistance(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "civArmiesDistance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v3, "moveArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    const/4 v4, 0x0

    .line 134
    .local v4, "moveArmies_Army":I
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_f9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_101

    .line 135
    const/4 v5, 0x0

    .line 137
    .local v5, "bestID":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "a":I
    :goto_38
    if-lez v6, :cond_56

    .line 138
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_53

    .line 139
    move v5, v6

    .line 137
    :cond_53
    add-int/lit8 v6, v6, -0x1

    goto :goto_38

    .line 143
    .end local v6    # "a":I
    :cond_56
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v4, v6

    .line 147
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    if-le v4, v6, :cond_b8

    .line 155
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_7b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b4

    .line 156
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v9, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v11, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v7

    const/4 v5, 0x2

    if-ge v7, v5, :cond_b1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    .line 155
    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 159
    .end local v6    # "a":I
    :cond_b4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 160
    goto :goto_101

    .line 163
    :cond_b8
    :goto_b8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 168
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_bf
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f8

    .line 169
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v9, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v10, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v11, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v7

    const/4 v5, 0x2

    if-ge v7, v5, :cond_f5

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V

    .line 168
    :cond_f5
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    .end local v6    # "a":I
    :cond_f8
    goto :goto_101

    .line 175
    .end local v5    # "bestID":I
    :cond_f9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b8

    :cond_ff
    goto/16 :goto_24

    .line 126
    .end local v3    # "moveArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    .end local v4    # "moveArmies_Army":I
    :cond_101
    :goto_101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 177
    .end local v1    # "i":I
    .end local v2    # "civArmiesDistance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_105
    return-void
.end method

.method public static moveToEnemyArmies_GetOwnArmies()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "civArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_29

    .line 206
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v3, :cond_26

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v3, :cond_26

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v3, :cond_26

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 209
    .end local v1    # "i":I
    :cond_29
    return-object v0
.end method

.method public static moveToEnemyArmies_MoveDistance(ILjava/util/List;)Ljava/util/List;
    .registers 6
    .param p0, "provinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 180
    .local p1, "civArmies":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/map/army/ArmyDivision;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_a
    if-ge v1, v2, :cond_22

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 186
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_22
    return-object v0
.end method

.method public static moveToEnemyArmies_SortEnemyArmies(I)V
    .registers 5
    .param p0, "civID"    # I

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 191
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->distance:F

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 194
    .end local v0    # "i":I
    :cond_2d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    return-void
.end method

.method public static percentageOfCivProvincesThatAreOccupied(Laoc/kingdoms/lukasz/map/civilization/Civilization;)F
    .registers 5
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "out":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 376
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 378
    .local v2, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 379
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    .line 375
    .end local v2    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    .end local v1    # "i":I
    :cond_1c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method public static processArmyPositions(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .registers 8
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_ed

    .line 252
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    .line 254
    .local v1, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-nez v1, :cond_19

    .line 255
    goto/16 :goto_e9

    .line 258
    :cond_19
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_1f

    .line 259
    goto/16 :goto_e9

    .line 262
    :cond_1f
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    .line 263
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->isProvinceUnderSiege(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 264
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    goto/16 :goto_e9

    .line 268
    :cond_3b
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    .line 270
    goto/16 :goto_e9

    .line 273
    :cond_46
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW:I

    if-ge v2, v4, :cond_67

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v4, :cond_67

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isRecruitArmyInProgress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 274
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    goto/16 :goto_e9

    .line 278
    :cond_67
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v2, :cond_d4

    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v2, :cond_70

    goto :goto_d4

    .line 288
    :cond_70
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v2, :cond_e9

    .line 289
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 290
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 293
    :cond_80
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_90

    .line 294
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 296
    :cond_90
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER:I

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_c0

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v2, v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c0

    .line 297
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 299
    :cond_c0
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW:I

    if-ge v2, v3, :cond_ce

    .line 300
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 303
    :cond_ce
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 279
    :cond_d4
    :goto_d4
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_dd

    .line 280
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_dd
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 284
    iput-boolean v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    .line 285
    iput-boolean v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    .line 251
    .end local v1    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_e9
    :goto_e9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 308
    .end local v0    # "i":I
    :cond_ed
    return-void
.end method

.method public static processArmyPositions_Just(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .registers 8
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_f2

    .line 313
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    .line 315
    .local v1, "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    if-nez v1, :cond_19

    .line 316
    goto/16 :goto_ee

    .line 319
    :cond_19
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_1f

    .line 320
    goto/16 :goto_ee

    .line 323
    :cond_1f
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 324
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->isProvinceUnderSiege(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 325
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    goto/16 :goto_ee

    .line 329
    :cond_3a
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    .line 331
    goto/16 :goto_ee

    .line 334
    :cond_46
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW:I

    if-ge v2, v3, :cond_67

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v2, v3, :cond_67

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isRecruitArmyInProgress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 335
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    goto/16 :goto_ee

    .line 339
    :cond_67
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v2, :cond_e5

    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v2, :cond_71

    goto/16 :goto_e5

    .line 346
    :cond_71
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v2, :cond_ee

    .line 347
    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 348
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->isArmyMerging(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ee

    .line 349
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 353
    :cond_91
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a1

    .line 354
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 356
    :cond_a1
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER:I

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_d1

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v2, v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d1

    .line 357
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 359
    :cond_d1
    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW:I

    if-ge v2, v3, :cond_df

    .line 360
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 363
    :cond_df
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    .line 340
    :cond_e5
    :goto_e5
    iget-boolean v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_ee

    .line 341
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v1    # "armyDivision":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_ee
    :goto_ee
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 368
    .end local v0    # "i":I
    :cond_f2
    return-void
.end method

.method public static recordIncoming(I)V
    .registers 4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->syncIncomingTurn()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->incomingMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static selectBestProvince(I)I
    .registers 9
    .param p0, "fromProvinceID"    # I

    .line 823
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_46

    .line 824
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 823
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 826
    .end local v0    # "i":I
    :cond_46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const v1, -0x368bdc10    # -999999.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 828
    goto :goto_94

    .line 829
    const/4 v0, 0x0

    .line 831
    .local v0, "bestID":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_59
    if-lez v1, :cond_87

    .line 832
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_84

    .line 833
    move v0, v1

    .line 831
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    .line 837
    .end local v1    # "i":I
    :cond_87
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 840
    .end local v0    # "bestID":I
    :goto_94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v0, "bestToChooseFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "b":I
    const/16 v3, 0x50

    .local v3, "bLimit":I
    :goto_9c
    if-ge v2, v3, :cond_10c

    .line 843
    const/4 v4, 0x0

    .line 845
    .local v4, "bestID":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_a7
    if-lez v5, :cond_d5

    .line 846
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d2

    .line 847
    move v4, v5

    .line 845
    :cond_d2
    add-int/lit8 v5, v5, -0x1

    goto :goto_a7

    .line 851
    .end local v5    # "i":I
    :cond_d5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_ec

    .line 852
    goto :goto_10c

    .line 855
    :cond_ec
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iput v1, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 842
    .end local v4    # "bestID":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 860
    .end local v2    # "b":I
    .end local v3    # "bLimit":I
    :cond_10c
    :goto_10c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 861
    return p0

    .line 864
    :cond_113
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static selectBestProvince(II)I
    .registers 20
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I

    .line 769
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 770
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    .line 772
    .local v1, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v2

    if-gtz v2, :cond_b8

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v17, v1

    goto/16 :goto_ba

    .line 776
    :cond_1c
    const/4 v2, 0x0

    .line 777
    .local v2, "scoreProvinceID":I
    move/from16 v3, p1

    .line 778
    .local v3, "bestProvinceID":I
    const/4 v4, 0x0

    .line 780
    .local v4, "bestScore":I
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    .line 781
    .local v5, "isOccupied":Z
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    .line 783
    .local v6, "currentCivID":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_29
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v8

    if-ge v7, v8, :cond_b2

    .line 784
    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    .line 785
    .local v8, "neighborID":I
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    .line 786
    .local v9, "neighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v10

    .line 788
    .local v10, "neighProvinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    if-eqz v5, :cond_47

    .line 789
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v13

    if-ne v13, v6, :cond_45

    const/4 v13, 0x1

    goto :goto_5a

    :cond_45
    const/4 v13, 0x0

    goto :goto_5a

    .line 790
    :cond_47
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v13

    if-nez v13, :cond_59

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v13

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v14

    if-ne v13, v14, :cond_59

    const/4 v13, 0x1

    goto :goto_5a

    :cond_59
    const/4 v13, 0x0

    :goto_5a
    nop

    .line 792
    .local v13, "isValidNeighbor":Z
    if-eqz v13, :cond_aa

    .line 793
    add-int/lit8 v2, v2, 0x1

    .line 794
    const/4 v14, 0x0

    .line 796
    .local v14, "nScore":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_61
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v11

    if-ge v15, v11, :cond_a2

    .line 797
    invoke-virtual {v9, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    .line 798
    .local v11, "neighOfNeighID":I
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v16

    .line 799
    .local v16, "neighOfNeighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    if-eqz v5, :cond_81

    .line 800
    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v12

    move-object/from16 v17, v1

    if-ne v12, v6, :cond_7f

    const/4 v1, 0x1

    goto :goto_98

    :cond_7f
    const/4 v1, 0x0

    goto :goto_98

    .line 801
    :cond_81
    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_95

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    move-object/from16 v17, v1

    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .local v17, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne v12, v1, :cond_97

    const/4 v1, 0x1

    goto :goto_98

    .end local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_95
    move-object/from16 v17, v1

    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_97
    const/4 v1, 0x0

    :goto_98
    nop

    .line 803
    .local v1, "isValidNeighOfNeigh":Z
    if-eqz v1, :cond_9d

    .line 804
    add-int/lit8 v14, v14, 0x1

    .line 796
    .end local v1    # "isValidNeighOfNeigh":Z
    .end local v11    # "neighOfNeighID":I
    .end local v16    # "neighOfNeighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_9d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v17

    goto :goto_61

    .end local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .local v1, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_a2
    move-object/from16 v17, v1

    .line 808
    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .end local v15    # "j":I
    .restart local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    if-le v14, v4, :cond_ac

    .line 809
    move v1, v14

    .line 810
    .end local v4    # "bestScore":I
    .local v1, "bestScore":I
    move v3, v8

    move v4, v1

    goto :goto_ac

    .line 792
    .end local v14    # "nScore":I
    .end local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .local v1, "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v4    # "bestScore":I
    :cond_aa
    move-object/from16 v17, v1

    .line 783
    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .end local v8    # "neighborID":I
    .end local v9    # "neighProvince":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v10    # "neighProvinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .end local v13    # "isValidNeighbor":Z
    .restart local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_ac
    :goto_ac
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v17

    goto/16 :goto_29

    .end local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_b2
    move-object/from16 v17, v1

    .line 815
    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .end local v7    # "i":I
    .restart local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    if-lt v2, v4, :cond_b7

    .line 816
    return p1

    .line 819
    :cond_b7
    return v3

    .line 772
    .end local v2    # "scoreProvinceID":I
    .end local v3    # "bestProvinceID":I
    .end local v4    # "bestScore":I
    .end local v5    # "isOccupied":Z
    .end local v6    # "currentCivID":I
    .end local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :cond_b8
    move-object/from16 v17, v1

    .line 773
    .end local v1    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .restart local v17    # "provinceData":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    :goto_ba
    return p1
.end method

.method public static selectBestProvince_Defend(I)I
    .registers 6
    .param p0, "fromProvinceID"    # I

    .line 872
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 873
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    .line 874
    .local v1, "province":Laoc/kingdoms/lukasz/map/province/Province;
    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 872
    .end local v1    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 876
    .end local v0    # "i":I
    :cond_3a
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const v1, -0x368bdc10    # -999999.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "bestID":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4c
    if-lez v1, :cond_7a

    .line 881
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_77

    .line 882
    move v0, v1

    .line 880
    :cond_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .line 886
    .end local v1    # "i":I
    :cond_7a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static selectBestProvince_Random(I)I
    .registers 4
    .param p0, "fromProvinceID"    # I

    .line 868
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z
    .registers 4
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "armyDivision"    # Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    .line 472
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_16

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW:I

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static syncIncomingTurn()V
    .registers 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->incomingTurn:I

    if-eq v0, v1, :cond_f

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->incomingTurn:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->incomingMap:Ljava/util/HashMap;

    :cond_f
    return-void
.end method

.method public static updateMinWarscore(Laoc/kingdoms/lukasz/map/civilization/Civilization;IZ)Z
    .registers 8
    .param p0, "civ"    # Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .param p1, "civID"    # I
    .param p2, "buildEnemyArmy"    # Z

    .line 224
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v0, v1, :cond_7f

    .line 225
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    .line 226
    .local v1, "war":Laoc/kingdoms/lukasz/map/war/War;
    if-eqz v1, :cond_7c

    .line 227
    sget v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    iget v3, v1, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->getWarScore_Side(I)I

    move-result v4

    mul-int v3, v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    .line 229
    if-nez p2, :cond_7c

    .line 230
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    .line 231
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    if-le v2, v3, :cond_7c

    .line 232
    const/4 p2, 0x1

    goto :goto_7c

    .line 236
    :cond_59
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_80

    if-le v2, v3, :cond_7c

    .line 237
    const/4 p2, 0x1

    .line 224
    .end local v1    # "war":Laoc/kingdoms/lukasz/map/war/War;
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "a":I
    :cond_7f
    goto :goto_84

    .line 243
    :catch_80
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_84
    return p2
.end method
