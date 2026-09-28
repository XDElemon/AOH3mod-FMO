.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_ConvertReligion;
.super Ljava/lang/Object;
.source "AI_ConvertReligion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildProvince_AIConvertScore_Default(II)V
    .registers 6
    .param p0, "civID"    # I
    .param p1, "nProvinceID"    # I

    .line 46
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const v1, -0x368bdc10    # -999999.0f

    if-eqz v0, :cond_12

    .line 47
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    goto :goto_81

    .line 49
    :cond_12
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-ne v0, v2, :cond_34

    .line 50
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 52
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->removeProvince(I)V

    goto :goto_81

    .line 55
    :cond_34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->BUILD_SCORE_MIN:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 57
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_PER_GROWTH_RATE:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 58
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_PER_ECONOMY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 60
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesConvert:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_DISTANCE_FROM_CAPITAL:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    .line 62
    :goto_81
    return-void
.end method

.method public static final convertReligion(I)V
    .registers 5
    .param p0, "civID"    # I

    .line 10
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-lez v0, :cond_e6

    .line 12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    :try_start_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-ge v0, v1, :cond_2d

    .line 13
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_ConvertReligion;->buildProvince_AIConvertScore_Default(II)V

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 16
    .end local v0    # "i":I
    :cond_2d
    :goto_2d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->DEFAULT_CONVERSION_COST:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-lez v0, :cond_e1

    .line 17
    const/4 v0, 0x0

    .line 20
    .local v0, "bestProvinceID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_47
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provincesSize:I

    if-ge v1, v2, :cond_89

    .line 21
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_86

    .line 22
    move v0, v1

    .line 20
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 28
    .end local v1    # "i":I
    :cond_89
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a7

    .line 29
    goto :goto_e1

    .line 32
    :cond_a7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    move-result v1

    if-nez v1, :cond_df

    .line 33
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->provinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->checkProvince(II)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_de} :catch_e2

    .line 34
    return-void

    .line 36
    .end local v0    # "bestProvinceID":I
    :cond_df
    goto/16 :goto_2d

    .line 39
    :cond_e1
    :goto_e1
    goto :goto_e6

    .line 37
    :catch_e2
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_e6
    :goto_e6
    return-void
.end method
