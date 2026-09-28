.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;
.super Ljava/lang/Object;
.source "CivilizationGeneralsPool.java"


# instance fields
.field public generateYear:I

.field public lGenerals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyGeneral;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    .line 17
    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateYear:I

    return-void
.end method

.method public static final getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    .registers 11
    .param p0, "iCivID"    # I

    .line 34
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getRandomImage_Just(I)I

    move-result v8

    .line 36
    .local v8, "generalIMG":I
    new-instance v9, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 37
    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_BASE_VALUE:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM:I

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM2:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int v3, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_BASE_VALUE:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM:I

    .line 40
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM2:I

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    .line 41
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v5, v0, v2

    const/4 v7, 0x0

    move-object v0, v9

    move v2, v8

    move v6, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 36
    return-object v9
.end method

.method public static getRandomImage_Just(I)I
    .registers 4
    .param p0, "iCivID"    # I

    .line 110
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .line 68
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateYear:I

    .line 70
    return-void
.end method

.method public final generateGenerals(I)V
    .registers 14
    .param p1, "iCivID"    # I

    .line 20
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getPoolOfGenerals(I)I

    move-result v1

    if-ge v0, v1, :cond_8e

    .line 21
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getRandomImage(I)I

    move-result v1

    .line 23
    .local v1, "generalIMG":I
    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    new-instance v11, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    .line 24
    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_BASE_VALUE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM:I

    .line 26
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM2:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v5, v2, v4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_BASE_VALUE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM:I

    .line 27
    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM2:I

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v6, v2, v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v2, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    .line 28
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int v7, v2, v4

    const/4 v9, 0x0

    move-object v2, v11

    move v4, v1

    move v8, p1

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 23
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .end local v1    # "generalIMG":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 31
    .end local v0    # "i":I
    :cond_8e
    return-void
.end method

.method public getPoolOfGenerals(I)I
    .registers 3
    .param p1, "iCivID"    # I

    .line 64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERALS_DEFAULT_POOL_SIZE:I

    return v0
.end method

.method public getRandomImage(I)I
    .registers 9
    .param p1, "iCivID"    # I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "isUsed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_27

    .line 117
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 120
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "iSize":I
    :goto_2e
    const/4 v4, 0x1

    if-ge v1, v2, :cond_45

    .line 121
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 124
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    :cond_45
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_46
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    if-ge v1, v2, :cond_62

    .line 125
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGeneralNotAssigned(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 129
    .end local v1    # "i":I
    :cond_62
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_63
    :try_start_63
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_c7

    .line 130
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_6c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v2, v5, :cond_c4

    .line 131
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v5, p1, :cond_c1

    .line 132
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v5, :cond_c1

    .line 133
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_c1} :catch_c8

    .line 130
    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 129
    .end local v2    # "j":I
    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 140
    .end local v1    # "i":I
    :cond_c7
    goto :goto_cc

    .line 138
    :catch_c8
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 142
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_cc
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "iSize":I
    :goto_e6
    if-ge v2, v5, :cond_fe

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_fb

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    .line 150
    .end local v2    # "i":I
    .end local v5    # "iSize":I
    :cond_fe
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a5

    .line 151
    const/4 v2, 0x0

    .restart local v2    # "i":I
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5    # "iSize":I
    :goto_119
    if-ge v2, v5, :cond_125

    .line 152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_119

    .line 155
    .end local v2    # "i":I
    .end local v5    # "iSize":I
    :cond_125
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "iSize":I
    :goto_12c
    if-ge v2, v3, :cond_142

    .line 156
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    .line 159
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_142
    const/4 v2, 0x0

    .restart local v2    # "i":I
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "iSize":I
    :goto_157
    if-ge v2, v3, :cond_16f

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_16c

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_16c
    add-int/lit8 v2, v2, 0x1

    goto :goto_157

    .line 165
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_16f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_190

    .line 166
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/GeneralManager;->generalsImagesSize:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    return v2

    .line 169
    :cond_190
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 172
    :cond_1a5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public final recruitGeneralID(IIZ)Z
    .registers 8
    .param p1, "iCivID"    # I
    .param p2, "id"    # I
    .param p3, "assignGeneral"    # Z

    .line 73
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_8c

    .line 74
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    .line 75
    return v1

    .line 78
    :cond_19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitLegacyCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_29

    .line 79
    return v1

    .line 82
    :cond_29
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitGoldCost(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 83
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitLegacyCost(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 85
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    .line 88
    if-eqz p3, :cond_69

    .line 89
    :try_start_56
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral_Assign;->assignGeneral(ILjava/lang/String;Z)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_63} :catch_64

    goto :goto_69

    .line 91
    :catch_64
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 93
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_69
    :goto_69
    nop

    .line 95
    :goto_6a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateGenerals(I)V

    .line 98
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8b

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedGenerals:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedGenerals:I

    .line 100
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rg:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rg:I

    .line 103
    :cond_8b
    return v1

    .line 106
    :cond_8c
    return v1
.end method

.method public final updatePoolOfGenerals(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 46
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 47
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateGenerals(I)V

    .line 48
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateYear:I

    goto :goto_37

    .line 51
    :cond_10
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateYear:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERALS_REGENERATE_YEARS:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    if-gt v0, v1, :cond_28

    .line 52
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateGenerals(I)V

    .line 55
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateYear:I

    goto :goto_37

    .line 57
    :cond_28
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getPoolOfGenerals(I)I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 58
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->generateGenerals(I)V

    .line 61
    :cond_37
    :goto_37
    return-void
.end method
