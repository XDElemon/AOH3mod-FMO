.class public Laoc/kingdoms/lukasz/map/LuckyCivsManager;
.super Ljava/lang/Object;
.source "LuckyCivsManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLuckyCivs()V
    .registers 4

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v0, "possibleCivs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 18
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_23

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_23

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 23
    .end local v1    # "i":I
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->LUCKY_CIVS_LIMIT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->LUCKY_CIVS_LIMIT_PERC_ALL_CIVS:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_44
    if-ltz v1, :cond_63

    .line 24
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 26
    .local v2, "rand":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/LuckyCivsManager;->luckyCiv(I)V

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    .end local v2    # "rand":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 30
    .end local v1    # "i":I
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    return-void
.end method

.method public static luckyCiv(I)V
    .registers 4
    .param p0, "civID"    # I

    .line 34
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    .line 36
    .local v0, "civBonus":Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_MONTHLY_INCOME:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    .line 37
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_PRODUCTION_EFFICIENCY:F

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    .line 39
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_MAX_MANPOWER:I

    int-to-float v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    .line 41
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_REGIMENTS_LIMIT:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    .line 42
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_UNITS_ATTACK:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    .line 44
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->luckyCivs:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_LuckyCivs;->BONUS_EXPIRES:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    .line 46
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    .line 47
    return-void
.end method
