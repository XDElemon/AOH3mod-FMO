.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;
.super Ljava/lang/Object;
.source "AI_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildProvincesRecruitArmyScore(I)V
    .registers 7
    .param p0, "civID"    # I

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 423
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    .line 425
    .local v1, "provinceID":I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    .line 426
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_GROWTH_RATE:F

    mul-float v3, v3, v4

    .line 427
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_ECONOMY:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    .line 428
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_PROVINCE_INCOME:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    .line 429
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyRegimentSize_InProvince()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_SCORE_PER_REGIMENT:I

    mul-int v4, v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 430
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->SCORE_REORGANIZE_ARMY_DISTANCE:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    .end local v0    # "i":I
    .end local v1    # "provinceID":I
    :cond_64
    return-void
.end method

.method public static getArmyToRecruit(ILaoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)Ljava/util/List;
    .registers 11
    .param p0, "civID"    # I
    .param p1, "armyComposition"    # Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "newArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "tempArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 249
    .local v2, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v3, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_94

    .line 250
    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-le v3, v5, :cond_76

    .line 251
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-ge v3, v6, :cond_3c

    .line 252
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v8, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 255
    .end local v3    # "i":I
    :cond_3c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3d
    iget v6, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-ge v3, v6, :cond_57

    .line 256
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 259
    .end local v3    # "i":I
    :cond_57
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_58
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-ge v3, v6, :cond_72

    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-lez v6, :cond_6f

    .line 261
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 264
    .end local v3    # "i":I
    :cond_72
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_94

    .line 267
    :cond_76
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    iget v8, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_94
    :goto_94
    iget v3, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v3, :cond_118

    .line 273
    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-le v3, v5, :cond_fa

    .line 274
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9d
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-ge v3, v6, :cond_c0

    .line 275
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v8, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 278
    .end local v3    # "i":I
    :cond_c0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c1
    iget v6, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-ge v3, v6, :cond_db

    .line 279
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 282
    .end local v3    # "i":I
    :cond_db
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_dc
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-ge v3, v6, :cond_f6

    .line 283
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-lez v6, :cond_f3

    .line 284
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 287
    .end local v3    # "i":I
    :cond_f6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_118

    .line 290
    :cond_fa
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    iget v8, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_118
    :goto_118
    iget v3, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v3, :cond_19c

    .line 296
    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-le v3, v5, :cond_17e

    .line 297
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_121
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-ge v3, v6, :cond_144

    .line 298
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v8, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    .line 301
    .end local v3    # "i":I
    :cond_144
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_145
    iget v6, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-ge v3, v6, :cond_15f

    .line 302
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr v7, v5

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_145

    .line 305
    .end local v3    # "i":I
    :cond_15f
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_160
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-ge v3, v6, :cond_17a

    .line 306
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-lez v6, :cond_177

    .line 307
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_177
    add-int/lit8 v3, v3, 0x1

    goto :goto_160

    .line 310
    .end local v3    # "i":I
    :cond_17a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_19c

    .line 313
    :cond_17e
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    iget v8, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_19c
    :goto_19c
    iget v3, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v3, :cond_220

    .line 319
    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-le v3, v5, :cond_202

    .line 320
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1a5
    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-ge v3, v6, :cond_1c8

    .line 321
    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v7, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v8, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v8, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a5

    .line 324
    .end local v3    # "i":I
    :cond_1c8
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1c9
    iget v4, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-ge v3, v4, :cond_1e3

    .line 325
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    add-int/2addr v6, v5

    iput v6, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c9

    .line 328
    .end local v3    # "i":I
    :cond_1e3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1e4
    iget v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-ge v3, v4, :cond_1fe

    .line 329
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;->n:I

    if-lez v4, :cond_1fb

    .line 330
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1fb
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e4

    .line 333
    .end local v3    # "i":I
    :cond_1fe
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_220

    .line 336
    :cond_202
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    iget v6, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    invoke-direct {v3, v5, v4, v6}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;-><init>(III)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_220
    :goto_220
    return-object v0
.end method

.method public static final recruitArmy(I)V
    .registers 10
    .param p0, "civID"    # I

    .line 23
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    .line 25
    .local v0, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget-wide v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_14b

    .line 26
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v1, v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->regimentsLimit_UseMax_Perc:F

    mul-float v1, v1, v2

    .line 29
    .local v1, "limitOfRegiments":F
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 30
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_REGIMENTS_LIMIT_AT_WAR:F

    mul-float v1, v1, v2

    goto :goto_49

    .line 32
    :cond_35
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 33
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_REGIMENTS_LIMIT_PREPARING_FOR_WAR:F

    mul-float v1, v1, v2

    .line 36
    :cond_49
    :goto_49
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v2

    if-eqz v2, :cond_56

    const v2, 0x40a00000    # 5.0f

    mul-float v1, v1, v2

    :cond_56
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_14b

    .line 37
    nop

    .line 39
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result v2

    iget v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v2, v3

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->createNewArmy_RegimentsLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 41
    .local v2, "numOfRegiments":I
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_146

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-nez v3, :cond_146

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_146

    .line 42
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v3

    if-nez v3, :cond_9f

    .line 43
    return-void

    .line 46
    :cond_9f
    iget-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_146

    .line 47
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MaintenanceCost:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_UNIT_MAINTENANCE_COST_MODIFIER:F

    mul-float v3, v3, v4

    .line 48
    .local v3, "unitMaintenance":F
    iget v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 50
    .local v4, "inRecruitmentMaintenance":F
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v6

    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(IF)F

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_BALANCE_LEFT_RESEARCH_COST_MODIFIER:F

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    .line 52
    .local v5, "balanceResearch":F
    int-to-float v6, v2

    mul-float v6, v6, v3

    sub-float v6, v5, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_BALANCE_LEFT:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_116

    .line 53
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_BALANCE_LEFT:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_109

    .line 54
    return-void

    .line 57
    :cond_109
    int-to-float v6, v2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_BALANCE_LEFT:F

    sub-float v7, v5, v7

    div-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v2, v6

    .line 60
    :cond_116
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-nez v1, :cond_146

    iget v6, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->MILITARY_SPENDINGS_PERC_OF_MAX_INCOME:F

    mul-float v6, v6, v7

    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget v8, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/2addr v8, v2

    int-to-float v8, v8

    mul-float v8, v8, v3

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_146

    .line 61
    int-to-float v6, v2

    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->MILITARY_SPENDINGS_PERC_OF_MAX_INCOME:F

    mul-float v7, v7, v8

    iget v8, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    sub-float/2addr v7, v8

    sub-float/2addr v7, v4

    div-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v2, v6

    .line 66
    .end local v3    # "unitMaintenance":F
    .end local v4    # "inRecruitmentMaintenance":F
    .end local v5    # "balanceResearch":F
    :cond_146
    if-lez v2, :cond_14b

    .line 67
    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->recruitArmy_ExistingArmy(II)V

    .line 72
    .end local v1    # "limitOfRegiments":F
    .end local v2    # "numOfRegiments":I
    :cond_14b
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v1

    if-eqz v1, :cond_172

    iget-wide v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_MERCENARIES_IF_MANPOWER_BELOW_MODIFIER:F

    mul-float v3, v3, v4

    float-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_172

    .line 73
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitMercenaries;->recruitMercenaries(I)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_172} :catch_173

    .line 77
    .end local v0    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    :cond_172
    goto :goto_177

    .line 75
    :catch_173
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_177
    return-void
.end method

.method public static recruitArmy_ExistingArmy(II)V
    .registers 21
    .param p0, "civID"    # I
    .param p1, "numOfRegiments"    # I

    .line 96
    move/from16 v0, p0

    if-gtz p1, :cond_5

    .line 97
    return-void

    .line 100
    :cond_5
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 102
    .local v1, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-lez v2, :cond_312

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "possibleRecruit":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v3, v4, :cond_50

    .line 106
    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    .line 108
    .local v4, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v5, v0, :cond_4d

    .line 109
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_26
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v6

    if-ge v5, v6, :cond_4d

    .line 110
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    .line 112
    .local v6, "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    iget v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v7, v0, :cond_4a

    .line 113
    iget-boolean v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v7, :cond_4a

    iget-boolean v7, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_4a

    .line 114
    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v8

    iget v9, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-direct {v7, v8, v5, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;-><init>(III)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v6    # "army":Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 105
    .end local v4    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    .end local v5    # "j":I
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 123
    .end local v3    # "i":I
    :cond_50
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    .line 125
    .local v3, "battleWidth":I
    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_First:F

    mul-float v4, v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 126
    .local v4, "armyFirst":I
    mul-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Second:F

    mul-float v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 127
    .local v6, "armySecond":I
    mul-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Third:F

    mul-float v7, v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    .line 128
    .local v7, "armyThird":I
    mul-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Fourth:F

    mul-float v8, v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    move/from16 v8, p1

    .line 130
    .end local p1    # "numOfRegiments":I
    .local v5, "armyFourth":I
    .local v8, "numOfRegiments":I
    :goto_90
    if-lez v8, :cond_30a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_30a

    .line 131
    const/4 v9, 0x0

    .line 132
    .local v9, "bestID":I
    const/4 v10, 0x0

    .line 134
    .local v10, "bestNumOfUnitsToRecruit":I
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    rem-int/lit8 v11, v11, 0x4

    const/4 v12, 0x0

    packed-switch v11, :pswitch_data_31a

    .line 148
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v11, v5, v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_12c

    .line 144
    :pswitch_c9
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v11, v7, v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 145
    goto :goto_12c

    .line 140
    :pswitch_ea
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v11, v6, v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 141
    goto :goto_12c

    .line 136
    :pswitch_10b
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v11, v4, v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 137
    nop

    .line 153
    :goto_12c
    const/4 v11, 0x1

    .local v11, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "iSize":I
    :goto_131
    if-ge v11, v13, :cond_1dd

    .line 154
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    rem-int/lit8 v14, v14, 0x4

    packed-switch v14, :pswitch_data_324

    .line 168
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v14, v5, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .local v14, "tNumOfUnitsToRecruit":I
    goto :goto_1c4

    .line 164
    .end local v14    # "tNumOfUnitsToRecruit":I
    :pswitch_161
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v14, v7, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 165
    .restart local v14    # "tNumOfUnitsToRecruit":I
    goto :goto_1c4

    .line 160
    .end local v14    # "tNumOfUnitsToRecruit":I
    :pswitch_182
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v14, v6, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 161
    .restart local v14    # "tNumOfUnitsToRecruit":I
    goto :goto_1c4

    .line 156
    .end local v14    # "tNumOfUnitsToRecruit":I
    :pswitch_1a3
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int v14, v4, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 157
    .restart local v14    # "tNumOfUnitsToRecruit":I
    nop

    .line 173
    :goto_1c4
    if-lez v14, :cond_1d8

    .line 174
    if-gt v14, v10, :cond_1d6

    if-ne v14, v10, :cond_1d8

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v12, 0x64

    invoke-virtual {v15, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    const/16 v15, 0x32

    if-ge v12, v15, :cond_1d8

    .line 175
    :cond_1d6
    move v10, v14

    .line 176
    move v9, v11

    .line 153
    :cond_1d8
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_131

    .line 183
    .end local v11    # "i":I
    .end local v13    # "iSize":I
    .end local v14    # "tNumOfUnitsToRecruit":I
    :cond_1dd
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 185
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v11, v0, :cond_2fd

    .line 186
    nop

    .line 187
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRecruitArmyInProgress(Ljava/lang/String;)I

    move-result v11

    sub-int v11, v10, v11

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    .line 188
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->getCreateNewArmy_RegimentsInQueue(Ljava/lang/String;)I

    move-result v12

    sub-int v10, v11, v12

    .line 196
    if-lez v10, :cond_2f8

    .line 197
    new-instance v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v12, v10

    invoke-direct {v11, v0, v12}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    .line 201
    .local v11, "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyComposition()Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    move-result-object v12

    .line 203
    .local v12, "currentArmy":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    iget v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v14, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    .line 204
    iget v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v15, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    .line 205
    iget v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v15, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    .line 206
    iget v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v15, v12, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    .line 208
    const/4 v12, 0x0

    .line 215
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->updateNumOfRegiments()V

    .line 218
    iget v13, v11, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    sub-int/2addr v8, v13

    .line 220
    invoke-static {v0, v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->getArmyToRecruit(ILaoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)Ljava/util/List;

    move-result-object v13

    .line 222
    .local v13, "newArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;

    iget v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    .line 224
    .local v14, "sKey":Ljava/lang/String;
    iget-object v15, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v15, v15, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    move/from16 v16, v3

    .end local v3    # "battleWidth":I
    .local v16, "battleWidth":I
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    move/from16 v18, v4

    .end local v4    # "armyFirst":I
    .local v18, "armyFirst":I
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_EXPIRES_DAYS:I

    add-int v4, v17, v4

    invoke-direct {v3, v14, v13, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->runCreateNewArmy_Task(II)Z

    goto :goto_301

    .line 196
    .end local v11    # "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v12    # "currentArmy":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v13    # "newArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    .end local v14    # "sKey":Ljava/lang/String;
    .end local v16    # "battleWidth":I
    .end local v18    # "armyFirst":I
    .restart local v3    # "battleWidth":I
    .restart local v4    # "armyFirst":I
    :cond_2f8
    move/from16 v16, v3

    move/from16 v18, v4

    .end local v3    # "battleWidth":I
    .end local v4    # "armyFirst":I
    .restart local v16    # "battleWidth":I
    .restart local v18    # "armyFirst":I
    goto :goto_301

    .line 185
    .end local v16    # "battleWidth":I
    .end local v18    # "armyFirst":I
    .restart local v3    # "battleWidth":I
    .restart local v4    # "armyFirst":I
    :cond_2fd
    move/from16 v16, v3

    move/from16 v18, v4

    .line 229
    .end local v3    # "battleWidth":I
    .end local v4    # "armyFirst":I
    .restart local v16    # "battleWidth":I
    .restart local v18    # "armyFirst":I
    :goto_301
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    .end local v9    # "bestID":I
    .end local v10    # "bestNumOfUnitsToRecruit":I
    move/from16 v3, v16

    move/from16 v4, v18

    goto/16 :goto_90

    .line 130
    .end local v16    # "battleWidth":I
    .end local v18    # "armyFirst":I
    .restart local v3    # "battleWidth":I
    .restart local v4    # "armyFirst":I
    :cond_30a
    move/from16 v16, v3

    move/from16 v18, v4

    .line 232
    .end local v3    # "battleWidth":I
    .end local v4    # "armyFirst":I
    .restart local v16    # "battleWidth":I
    .restart local v18    # "armyFirst":I
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_314

    .line 102
    .end local v2    # "possibleRecruit":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;>;"
    .end local v5    # "armyFourth":I
    .end local v6    # "armySecond":I
    .end local v7    # "armyThird":I
    .end local v8    # "numOfRegiments":I
    .end local v16    # "battleWidth":I
    .end local v18    # "armyFirst":I
    .restart local p1    # "numOfRegiments":I
    :cond_312
    move/from16 v8, p1

    .line 235
    .end local p1    # "numOfRegiments":I
    .restart local v8    # "numOfRegiments":I
    :goto_314
    if-lez v8, :cond_319

    .line 236
    invoke-static {v0, v8}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->recruitArmy_New(II)V

    .line 238
    :cond_319
    return-void

    :pswitch_data_31a
    .packed-switch 0x0
        :pswitch_10b
        :pswitch_ea
        :pswitch_c9
    .end packed-switch

    :pswitch_data_324
    .packed-switch 0x0
        :pswitch_1a3
        :pswitch_182
        :pswitch_161
    .end packed-switch
.end method

.method private static final recruitArmy_New(II)V
    .registers 3
    .param p0, "civID"    # I
    .param p1, "numOfRegiments"    # I

    .line 346
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->buildProvincesRecruitArmyScore(I)V

    .line 348
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->recruitArmy_New_In(III)V

    .line 349
    return-void
.end method

.method private static final recruitArmy_New_In(III)V
    .registers 12
    .param p0, "civID"    # I
    .param p1, "numOfRegiments"    # I
    .param p2, "limit"    # I

    .line 352
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_NUM_OF_REGIMENTS:I

    if-ge p1, v0, :cond_7

    .line 353
    return-void

    .line 359
    :cond_7
    :try_start_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    .line 361
    .local v0, "iProvinceID":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_11
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 362
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    if-le v2, v3, :cond_56

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v2

    if-gtz v2, :cond_56

    .line 363
    :cond_4d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    move v0, v2

    .line 361
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 367
    .end local v1    # "i":I
    :cond_59
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-lez v1, :cond_6e

    .line 368
    return-void

    .line 371
    :cond_6e
    const/4 v1, 0x0

    .line 372
    .local v1, "toRecruit":I
    rem-int/lit8 v2, v0, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_146

    .line 386
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    goto :goto_c0

    .line 382
    :pswitch_7b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Third:F

    mul-float v2, v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 383
    goto :goto_d2

    .line 378
    :pswitch_92
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Second:F

    mul-float v2, v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 379
    goto :goto_d2

    .line 374
    :pswitch_a9
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_First:F

    mul-float v2, v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 375
    goto :goto_d2

    .line 386
    :goto_c0
    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Fourth:F

    mul-float v2, v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 391
    :goto_d2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 393
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    invoke-direct {v2, p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    .line 394
    .local v2, "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->getArmyToRecruit(ILaoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;)Ljava/util/List;

    move-result-object v3

    .line 396
    .local v3, "newArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numOfRegiments:I

    sub-int/2addr p1, v4

    .line 398
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "sKey":Ljava/lang/String;
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_EXPIRES_DAYS:I

    add-int/2addr v7, v8

    invoke-direct {v6, v4, v3, v7}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy_Task;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->cNA:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, p0, v6}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->runCreateNewArmy_Task(II)Z

    .line 405
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    div-int/lit8 v6, v6, 0x4

    iput v6, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    .line 407
    const/16 v5, 0x95

    if-le p2, v5, :cond_135

    .line 408
    return-void

    .line 411
    :cond_135
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->RECRUIT_ARMY_MIN_NUM_OF_REGIMENTS:I

    if-lt p1, v5, :cond_140

    .line 412
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->recruitArmy_New_In(III)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_140} :catch_141

    .line 416
    .end local v0    # "iProvinceID":I
    .end local v1    # "toRecruit":I
    .end local v2    # "armyComposition":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;
    .end local v3    # "newArmy":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_CreateNewArmy;>;"
    .end local v4    # "sKey":Ljava/lang/String;
    :cond_140
    goto :goto_145

    .line 414
    :catch_141
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 417
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_145
    return-void

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_92
        :pswitch_7b
    .end packed-switch
.end method
