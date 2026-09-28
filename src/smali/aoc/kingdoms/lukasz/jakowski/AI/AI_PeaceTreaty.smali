.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;
.super Ljava/lang/Object;
.source "AI_PeaceTreaty.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProvinceScore(III)V
    .registers 12
    .param p0, "civID"    # I
    .param p1, "provinceID"    # I
    .param p2, "lostID"    # I

    .line 204
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 206
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "neighboringPerc":I
    const/4 v2, 0x0

    .line 211
    .local v2, "neighboringPerc_Total":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_78

    .line 212
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_75

    .line 213
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-eq v4, p0, :cond_44

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v4, v6, :cond_45

    .line 214
    :cond_44
    add-float/2addr v2, v5

    .line 217
    :cond_45
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-ne v4, p2, :cond_5c

    .line 218
    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_LOSER_SCORE:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 221
    :cond_5c
    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    if-ne v4, p0, :cond_75

    .line 222
    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 211
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 228
    .end local v3    # "i":I
    :cond_78
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_8c

    .line 229
    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC:F

    int-to-float v7, v1

    div-float/2addr v7, v2

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 232
    :cond_8c
    iget-boolean v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v4, :cond_d3

    .line 233
    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 235
    const/4 v4, 0x0

    .line 237
    .local v4, "extraSeaPoints":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9d
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_c6

    .line 238
    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v7

    if-gez v7, :cond_c3

    .line 239
    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-eq v7, v8, :cond_c3

    .line 240
    const/4 v4, 0x1

    .line 241
    goto :goto_c6

    .line 237
    :cond_c3
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    .line 246
    .end local v6    # "i":I
    :cond_c6
    :goto_c6
    if-eqz v4, :cond_d3

    .line 247
    iget v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA_BEGIN:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 251
    .end local v4    # "extraSeaPoints":Z
    :cond_d3
    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_DISTANCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    invoke-static {v7, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v6, v6, v3

    float-to-int v3, v6

    add-int/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    .line 252
    return-void
.end method

.method public static buildProvinceScore_Player(Ljava/util/List;II)I
    .registers 11
    .param p1, "civID"    # I
    .param p2, "provinceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 255
    .local p0, "aiPeaceCivID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, "out":I
    const/4 v1, 0x0

    .line 258
    .local v1, "neighboringPerc":I
    const/4 v2, 0x0

    .line 260
    .local v2, "neighboringPerc_Total":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_7b

    .line 261
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_78

    .line 262
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_5a

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v4, v6, :cond_5b

    .line 263
    :cond_5a
    add-float/2addr v2, v5

    .line 266
    :cond_5b
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_78

    .line 267
    int-to-float v4, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_SCORE:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 268
    add-int/lit8 v1, v1, 0x1

    .line 260
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 273
    .end local v3    # "i":I
    :cond_7b
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_8b

    .line 274
    int-to-float v4, v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_WINNER_PERC:F

    int-to-float v7, v1

    div-float/2addr v7, v2

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 277
    :cond_8b
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v4, :cond_9a

    .line 278
    int-to-float v4, v0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_NEIGHBORING_SEA:F

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 281
    :cond_9a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_PROVINCE_DISTANCE:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v6

    invoke-static {v6, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v4, v4, v3

    float-to-int v3, v4

    add-int/2addr v0, v3

    .line 283
    return v0
.end method

.method public static peaceTreaty(Ljava/lang/String;II)V
    .registers 21
    .param p0, "warKey"    # Ljava/lang/String;
    .param p1, "civID"    # I
    .param p2, "lostID"    # I

    .line 20
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v0, :cond_d

    .line 21
    return-void

    .line 24
    :cond_d
    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Laoc/kingdoms/lukasz/map/PeaceTreaty;-><init>(ILjava/lang/String;Z)V

    move-object v5, v0

    .line 26
    .local v5, "peaceTreaty":Laoc/kingdoms/lukasz/map/PeaceTreaty;
    const/4 v6, 0x0

    .line 27
    .local v6, "conquerVassal":Z
    const/4 v7, 0x0

    .line 30
    .local v7, "isCoalition":Z
    :try_start_16
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    .line 32
    .local v0, "war":Laoc/kingdoms/lukasz/map/war/War;
    iget-boolean v8, v0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    move v6, v8

    .line 33
    iget-boolean v8, v0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_25

    move v7, v8

    .line 36
    .end local v0    # "war":Laoc/kingdoms/lukasz/map/war/War;
    goto :goto_29

    .line 34
    :catch_25
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 39
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_29
    :try_start_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 41
    .local v8, "provinceToTake":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    move-object v9, v0

    .line 42
    .local v9, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    move-object v10, v0

    .line 44
    .local v10, "civLost":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v11

    if-ge v0, v11, :cond_55

    .line 45
    invoke-virtual {v10, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v10, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v11

    invoke-static {v2, v11, v3}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->buildProvinceScore(III)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 50
    .end local v0    # "i":I
    :cond_55
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE2:I

    add-int/2addr v11, v12

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v12

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER_CHANCE:I

    if-ge v0, v11, :cond_8f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v11

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER:[I

    goto :goto_9b

    :cond_8f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v11

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_PEACE_ORDER2:[I

    .line 52
    .local v0, "order":[I
    :goto_9b
    const/4 v11, 0x1

    if-eqz v7, :cond_a4

    .line 53
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_COALITION:[I

    move-object v0, v12

    goto :goto_dd

    .line 56
    :cond_a4
    if-eqz v6, :cond_ac

    .line 57
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_ANNEX_VASSAL_PEACE_ORDER:[I

    move-object v0, v12

    goto :goto_dd

    .line 60
    :cond_ac
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v12, :cond_dc

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_VASSALIZE_PLAYER:Z

    if-eqz v12, :cond_dc

    .line 61
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-boolean v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->wasVassalized:Z

    if-nez v12, :cond_dc

    .line 63
    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v12

    if-eq v12, v2, :cond_dc

    .line 64
    iget v12, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_dc

    .line 65
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iput-boolean v11, v12, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->wasVassalized:Z

    .line 67
    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_DEMAND_VASSALIZE_PLAYER_PEACE_ORDER:[I

    move-object v0, v12

    goto :goto_dd

    .line 73
    :cond_dc
    move-object v12, v0

    .end local v0    # "order":[I
    .local v12, "order":[I
    :goto_dd
    const/4 v0, 0x0

    move v13, v0

    .local v13, "a":I
    :goto_df
    array-length v0, v12

    if-ge v13, v0, :cond_2e6

    .line 74
    aget v0, v12, v13

    packed-switch v0, :pswitch_data_308

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 185
    :pswitch_ea
    iput-boolean v11, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 179
    :pswitch_ef
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v14

    cmpl-float v0, v0, v14

    if-ltz v0, :cond_ff

    .line 180
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate()V

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 179
    :cond_ff
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 172
    :pswitch_102
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v14

    cmpl-float v0, v0, v14

    if-ltz v0, :cond_112

    .line 173
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations()V

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 172
    :cond_112
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 164
    :pswitch_115
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getCivsPossibleToLiberate(I)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "liberateCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_11a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_130

    .line 167
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v5, v3, v15}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandLiberateCiv(II)V

    .line 166
    add-int/lit8 v14, v14, 0x1

    goto :goto_11a

    .line 169
    .end local v14    # "i":I
    :cond_130
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 155
    .end local v0    # "liberateCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_134
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MAX:I

    if-ge v0, v14, :cond_144

    .line 156
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    move-result v14

    if-nez v14, :cond_141

    .line 157
    goto :goto_144

    .line 155
    :cond_141
    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    .line 161
    .end local v0    # "i":I
    :cond_144
    :goto_144
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 147
    :pswitch_147
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v14

    if-eq v0, v14, :cond_164

    .line 148
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v14

    cmpl-float v0, v0, v14

    if-ltz v0, :cond_161

    .line 149
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange()V

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 148
    :cond_161
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 147
    :cond_164
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 139
    :pswitch_167
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v14

    if-eq v0, v14, :cond_184

    .line 140
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v14

    cmpl-float v0, v0, v14

    if-ltz v0, :cond_181

    .line 141
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion()V

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 140
    :cond_181
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 139
    :cond_184
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 108
    :pswitch_187
    iget-object v0, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_18b} :catch_2e8

    if-lez v0, :cond_238

    .line 110
    :try_start_18d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "possibleVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_193
    iget-object v15, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v14, v15, :cond_1af

    .line 113
    iget-object v15, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v15, v15, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v14, v14, 0x1

    goto :goto_193

    .line 116
    .end local v14    # "i":I
    :cond_1af
    :goto_1af
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_22d

    .line 117
    const/4 v14, 0x0

    .line 118
    .local v14, "bestID":I
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v15

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v15, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v4

    .line 120
    .local v4, "bestDistance":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v11

    .local v15, "i":I
    :goto_1d5
    if-lez v15, :cond_218

    .line 121
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v11

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v11, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    cmpl-float v1, v4, v1

    if-lez v1, :cond_212

    .line 122
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v11

    invoke-static {v1, v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    .line 123
    .end local v4    # "bestDistance":F
    .local v1, "bestDistance":F
    move v4, v15

    move v14, v4

    move v4, v1

    .line 120
    .end local v1    # "bestDistance":F
    .restart local v4    # "bestDistance":F
    :cond_212
    add-int/lit8 v15, v15, -0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    goto :goto_1d5

    .line 127
    .end local v15    # "i":I
    :cond_218
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandSubjectTransfer(I)V

    .line 128
    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    const/4 v4, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    .end local v4    # "bestDistance":F
    .end local v14    # "bestID":I
    goto :goto_1af

    .line 131
    :cond_22d
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_230} :catch_231

    .end local v0    # "possibleVassals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_235

    .line 132
    :catch_231
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_232
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_235
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 108
    :cond_238
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 102
    :pswitch_23b
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_24b

    .line 103
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization()V

    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 102
    :cond_24b
    const/4 v4, 0x1

    goto/16 :goto_2de

    .line 76
    :goto_24e
    :pswitch_24e
    iget v0, v5, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2dd

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2dd

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "bestID":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_262
    if-ltz v1, :cond_28a

    .line 80
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    if-ge v11, v14, :cond_287

    .line 81
    move v0, v1

    .line 79
    :cond_287
    add-int/lit8 v1, v1, -0x1

    goto :goto_262

    .line 85
    .end local v1    # "i":I
    :cond_28a
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvince(I)Z

    move-result v1

    if-eqz v1, :cond_2de

    .line 86
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    .line 88
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2ab
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v11

    if-ge v1, v11, :cond_2d7

    .line 89
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v11

    invoke-static {v2, v11, v3}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->buildProvinceScore(III)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ab

    .line 92
    .end local v1    # "j":I
    :cond_2d7
    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_2da} :catch_2e8

    .line 97
    nop

    .end local v0    # "bestID":I
    goto/16 :goto_24e

    .line 76
    :cond_2dd
    const/4 v4, 0x1

    .line 73
    :cond_2de
    :goto_2de
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_df

    .line 191
    .end local v13    # "a":I
    :cond_2e6
    nop

    .line 194
    .end local v8    # "provinceToTake":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v10    # "civLost":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v12    # "order":[I
    goto :goto_2ec

    .line 192
    :catch_2e8
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2ec
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->enforceDemands(Z)Z

    .line 198
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v0, :cond_307

    .line 199
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruce;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v4, v8

    invoke-direct {v1, v2, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageTruce;-><init>(IILaoc/kingdoms/lukasz/map/PeaceTreaty;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    .line 201
    :cond_307
    return-void

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_24e
        :pswitch_23b
        :pswitch_187
        :pswitch_167
        :pswitch_147
        :pswitch_133
        :pswitch_115
        :pswitch_102
        :pswitch_ef
        :pswitch_ea
    .end packed-switch
.end method
