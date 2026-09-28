.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;
.super Ljava/lang/Object;
.source "AI_BattleStart.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static battleStarted(III)V
    .registers 6
    .param p0, "battleID"    # I
    .param p1, "provinceID"    # I
    .param p2, "numOfProvincesToMove"    # I

    .line 12
    if-gez p0, :cond_3

    .line 13
    return-void

    .line 17
    :cond_3
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-ltz v0, :cond_4b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-gez v0, :cond_1c

    goto :goto_4b

    .line 21
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "warKey":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 24
    return-void

    .line 27
    :cond_37
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->wasBattleStartRecursively(II)V

    .line 28
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted_SeaProvinces_UpdateWas(I)V

    .line 30
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 32
    invoke-static {v0, p1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmiesRecursively(Ljava/lang/String;III)V

    .line 33
    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted_SeaProvinces(Ljava/lang/String;I)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4c

    .line 36
    .end local v0    # "warKey":Ljava/lang/String;
    goto :goto_50

    .line 18
    :cond_4b
    :goto_4b
    return-void

    .line 34
    :catch_4c
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method public static battleStarted_1(II)V
    .registers 6
    .param p0, "battleID"    # I
    .param p1, "provinceID"    # I

    .line 118
    if-gez p0, :cond_3

    .line 119
    return-void

    .line 123
    :cond_3
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-ltz v0, :cond_5b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-gez v0, :cond_1c

    goto :goto_5b

    .line 127
    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "warKey":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 130
    return-void

    .line 135
    :cond_37
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_38
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 136
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    .line 138
    .local v2, "inProvinceID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-nez v3, :cond_57

    .line 139
    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_57} :catch_5c

    .line 135
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 144
    .end local v0    # "warKey":Ljava/lang/String;
    .end local v1    # "a":I
    .end local v2    # "inProvinceID":I
    :cond_5a
    goto :goto_60

    .line 124
    :cond_5b
    :goto_5b
    return-void

    .line 142
    :catch_5c
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method public static battleStarted_2(II)V
    .registers 8
    .param p0, "battleID"    # I
    .param p1, "provinceID"    # I

    .line 71
    if-gez p0, :cond_3

    .line 72
    return-void

    .line 76
    :cond_3
    :try_start_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-ltz v0, :cond_cd

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-gez v0, :cond_1d

    goto/16 :goto_cd

    .line 80
    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "warKey":Ljava/lang/String;
    if-nez v0, :cond_38

    .line 83
    return-void

    .line 88
    :cond_38
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_39
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 89
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    .line 90
    .local v2, "inProvinceID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 92
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_53
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v3, v5, :cond_7f

    .line 93
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    move v2, v5

    .line 94
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iput-boolean v4, v5, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 88
    .end local v3    # "b":I
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 98
    .end local v1    # "a":I
    .end local v2    # "inProvinceID":I
    :cond_82
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 100
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_8a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_cc

    .line 101
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    .line 103
    .restart local v2    # "inProvinceID":I
    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V

    .line 105
    const/4 v3, 0x0

    .restart local v3    # "b":I
    :goto_a0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_c9

    .line 106
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    move v2, v4

    .line 108
    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c6} :catch_ce

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 100
    .end local v3    # "b":I
    :cond_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 113
    .end local v0    # "warKey":Ljava/lang/String;
    .end local v1    # "a":I
    .end local v2    # "inProvinceID":I
    :cond_cc
    goto :goto_d2

    .line 77
    :cond_cd
    :goto_cd
    return-void

    .line 111
    :catch_ce
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_d2
    return-void
.end method

.method public static battleStarted_SeaProvinces(Ljava/lang/String;I)V
    .registers 7
    .param p0, "warKey"    # Ljava/lang/String;
    .param p1, "provinceID"    # I

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 173
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    .line 175
    .local v1, "inProvinceID":I
    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V

    .line 177
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 178
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    .line 180
    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V

    .line 182
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 183
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    .line 185
    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 177
    .end local v3    # "k":I
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 172
    .end local v2    # "j":I
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "i":I
    .end local v1    # "inProvinceID":I
    :cond_7b
    return-void
.end method

.method public static battleStarted_SeaProvinces_UpdateWas(I)V
    .registers 7
    .param p0, "provinceID"    # I

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 151
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    .line 153
    .local v1, "inProvinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 155
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_82

    .line 156
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    .line 158
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 160
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_44
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_7f

    .line 161
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    .line 163
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 155
    .end local v4    # "k":I
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 150
    .end local v2    # "j":I
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 167
    .end local v0    # "i":I
    .end local v1    # "inProvinceID":I
    :cond_86
    return-void
.end method

.method public static moveArmies(Ljava/lang/String;II)V
    .registers 13
    .param p0, "warKey"    # Ljava/lang/String;
    .param p1, "battleProvinceID"    # I
    .param p2, "inProvinceID"    # I

    .line 195
    :try_start_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    if-nez v0, :cond_118

    .line 196
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    if-ge v0, v1, :cond_118

    .line 199
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_32

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->allowAIMove:Z

    if-nez v1, :cond_32

    .line 200
    goto/16 :goto_114

    .line 203
    :cond_32
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_114

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v1, :cond_114

    .line 204
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 205
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_8e

    .line 206
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_DONT_MOVE_IF_SIEGE_OVER:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_80

    .line 207
    goto/16 :goto_114

    .line 210
    :cond_80
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_DONT_MOVE_IF_SIEGE_IN_PROGRESS:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-le v1, v3, :cond_8e

    .line 211
    goto/16 :goto_114

    .line 215
    :cond_8e
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_DONT_MOVE_IF_MORALE_BELOW:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_a1

    .line 216
    goto :goto_114

    .line 219
    :cond_a1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-wide v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_cf

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getPercOfTotalUnits()F

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_DONT_MOVE_IF_ARMY_UNITS_BELOW_PERC:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_cf

    .line 220
    goto :goto_114

    .line 223
    :cond_cf
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v1, :cond_e8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_DONT_MOVE_IF_ARMY_IS_IN_MOVEMENT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-le v1, v2, :cond_e8

    .line 224
    goto :goto_114

    .line 227
    :cond_e8
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p2

    move v4, p1

    invoke-static {v2, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->countIncoming(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_114

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v8

    if-eqz v8, :cond_114

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->recordIncoming(I)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_114} :catch_119

    .line 198
    :cond_114
    :goto_114
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 234
    .end local v0    # "i":I
    :cond_118
    goto :goto_11d

    .line 232
    :catch_119
    move-exception v0

    .line 233
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 235
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11d
    return-void
.end method

.method public static moveArmiesRecursively(Ljava/lang/String;III)V
    .registers 8
    .param p0, "warKey"    # Ljava/lang/String;
    .param p1, "originProvinceID"    # I
    .param p2, "currentProvinceID"    # I
    .param p3, "depth"    # I

    .line 55
    if-gtz p3, :cond_3

    .line 56
    return-void

    .line 59
    :cond_3
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 60
    .local v0, "currentProvince":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 61
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    .line 62
    .local v2, "neighborID":I
    invoke-static {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmies(Ljava/lang/String;II)V

    .line 63
    add-int/lit8 v3, p3, -0x1

    invoke-static {p0, p1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->moveArmiesRecursively(Ljava/lang/String;III)V

    .line 60
    .end local v2    # "neighborID":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 65
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public static wasBattleStartRecursively(II)V
    .registers 7
    .param p0, "currentProvinceID"    # I
    .param p1, "depth"    # I

    .line 42
    if-gtz p1, :cond_3

    .line 43
    return-void

    .line 46
    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 47
    .local v0, "currentProvince":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 48
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    .line 49
    .local v2, "neighborID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    .line 50
    add-int/lit8 v3, p1, -0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->wasBattleStartRecursively(II)V

    .line 47
    .end local v2    # "neighborID":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 52
    .end local v1    # "i":I
    :cond_21
    return-void
.end method
