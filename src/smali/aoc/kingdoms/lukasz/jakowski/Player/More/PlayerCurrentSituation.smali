.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;
.super Ljava/lang/Object;
.source "PlayerCurrentSituation.java"


# instance fields
.field public allMissionsUnlocked:Z

.field public availableAdvantage:Z

.field public availableCivilizationLegacy:Z

.field public chooseRivals:Z

.field public currentSituationNum:I

.field public differentReligionProvinces:Z

.field public differentReligionProvincesNum:I

.field public highInflation:Z

.field public lackOfGeneral:Z

.field public maxAmountOfGold:Z

.field public militaryAcademyCanBeUpgraded:Z

.field public militaryAcademyForGeneralsCanBeUpgraded:Z

.field public missionCanBeUnlocked:Z

.field public missionCanBeUnlockedNum:I

.field public newLawAvailable:Z

.field public newLawAvailableNum:I

.field public noActiveResearch:Z

.field public noAdvisor:I

.field public nonCoreProvinces:Z

.field public nonCoreProvincesNum:I

.field public playerLegaciesLVL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public promoteAdvisor:I

.field public upgradeCapitalCity:Z

.field public upgradeNuclearReactor:Z

.field public upgradeSupremeCourt:Z

.field public wonderCanBeBuilt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 22
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    .line 23
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    .line 24
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    .line 25
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    .line 26
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    .line 32
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 34
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    .line 35
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    .line 36
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    .line 37
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    .line 38
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    .line 40
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    .line 41
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    .line 43
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    .line 46
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    .line 48
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    .line 50
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    .line 52
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    .line 53
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    return-void
.end method

.method private final updateAvailableCivilizationLegacy(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 252
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget v1, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v0, v1, :cond_45

    .line 255
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_42

    .line 256
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_42

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    .line 258
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_46

    .line 259
    goto :goto_45

    .line 254
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 265
    .end local v0    # "i":I
    :cond_45
    :goto_45
    goto :goto_4a

    .line 263
    :catch_46
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method private final updateLackOfGeneral(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 232
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_56

    .line 235
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 236
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p1, :cond_50

    .line 237
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v2, :cond_50

    .line 238
    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    .line 239
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v3, v2

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_57

    .line 240
    return-void

    .line 235
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 234
    .end local v1    # "j":I
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 247
    .end local v0    # "i":I
    :cond_56
    goto :goto_5b

    .line 245
    :catch_57
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 248
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5b
    return-void
.end method

.method private final updateNoAdvisor(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 177
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    .line 178
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 180
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v0

    .line 182
    .local v0, "maxLevel":I
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 183
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_2a

    .line 186
    :cond_1a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_2a

    .line 187
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 191
    :cond_2a
    :goto_2a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 192
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_4b

    .line 195
    :cond_3b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_4b

    .line 196
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 200
    :cond_4b
    :goto_4b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_5c

    .line 201
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_6c

    .line 204
    :cond_5c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_6c

    .line 205
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 209
    :cond_6c
    :goto_6c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_7d

    .line 210
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_8d

    .line 213
    :cond_7d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_8d

    .line 214
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    .line 218
    :cond_8d
    :goto_8d
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    if-lez v1, :cond_97

    .line 219
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 222
    :cond_97
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    if-lez v1, :cond_a1

    .line 223
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a1} :catch_a2

    .line 227
    .end local v0    # "maxLevel":I
    :cond_a1
    goto :goto_a6

    .line 225
    :catch_a2
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_a6
    return-void
.end method


# virtual methods
.method public final buildPlayerLegaciesLVL()V
    .registers 2

    .line 271
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->buildPlayerLegaciesLVL(I)V

    .line 272
    return-void
.end method

.method public final buildPlayerLegaciesLVL(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 276
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v0, v1, :cond_2e

    .line 279
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 281
    .local v1, "tLevel":I
    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v2, v2

    if-lt v1, v2, :cond_22

    .line 282
    const/4 v1, -0x1

    .line 285
    :cond_22
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2f

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 289
    .end local v0    # "i":I
    .end local v1    # "tLevel":I
    :cond_2e
    goto :goto_33

    .line 287
    :catch_2f
    move-exception v0

    .line 288
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method public final updateChooseRivals(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    .line 169
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    if-ge v0, v1, :cond_1d

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    .line 171
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 173
    :cond_1d
    return-void
.end method

.method public final updateCurrentSituation()V
    .registers 2

    .line 58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation(I)V

    .line 59
    return-void
.end method

.method public final updateCurrentSituation(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 63
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 65
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_1a

    .line 66
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    .line 67
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    goto :goto_1c

    .line 69
    :cond_1a
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    .line 72
    :goto_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v1

    if-lez v1, :cond_32

    .line 73
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    .line 74
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    goto :goto_34

    .line 77
    :cond_32
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    .line 80
    :goto_34
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateLackOfGeneral(I)V

    .line 82
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateAvailableCivilizationLegacy(I)V

    .line 84
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateWonderCanBeBuild(I)V

    .line 86
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMilitaryAcademyCanBeUpgraded(I)V

    .line 88
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMilitaryAcademyForGeneralsCanBeUpgraded(I)V

    .line 90
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNonCoreProvinces(I)V

    .line 92
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateDifferentReligion(I)V

    .line 94
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNoAdvisor(I)V

    .line 96
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNewLaw(I)V

    .line 98
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateChooseRivals(I)V

    .line 100
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_CURRENT_SITUATION_INFO:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    .line 101
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    if-eqz v1, :cond_70

    .line 102
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 105
    :cond_70
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_85

    const/4 v1, 0x1

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    :goto_86
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    .line 107
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    if-eqz v1, :cond_91

    .line 108
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 111
    :cond_91
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    .line 112
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v1

    const v3, 0x3ba3d70a    # 0.005f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_MaxLvl(I)I

    move-result v3

    if-ge v1, v3, :cond_c5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c5

    .line 113
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    .line 114
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 117
    :cond_c5
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    .line 118
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    if-eqz v1, :cond_f2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_MaxLvl(I)I

    move-result v3

    if-ge v1, v3, :cond_f2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f2

    .line 119
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    .line 120
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 123
    :cond_f2
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    .line 124
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_117

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_117

    .line 125
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    .line 126
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 129
    :cond_117
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMissionsCanBeUnlocked(I)V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11a} :catch_11b

    .line 132
    goto :goto_11f

    .line 130
    :catch_11b
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_11f
    return-void
.end method

.method public final updateDifferentReligion(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 361
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    .line 362
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    .line 364
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_60

    .line 365
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-eq v2, v3, :cond_5d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v2, :cond_5d

    .line 366
    iget-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    if-nez v2, :cond_56

    .line 367
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 369
    :cond_56
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    .line 370
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_61

    .line 364
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 375
    .end local v0    # "i":I
    :cond_60
    goto :goto_65

    .line 373
    :catch_61
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 376
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public final updateMilitaryAcademyCanBeUpgraded(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 312
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    .line 314
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 315
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    .line 317
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    .line 322
    :cond_27
    goto :goto_2c

    .line 320
    :catch_28
    move-exception v0

    .line 321
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 323
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateMilitaryAcademyForGeneralsCanBeUpgraded(I)V
    .registers 4
    .param p1, "iCivID"    # I

    .line 327
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    .line 329
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 330
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_27

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    .line 332
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    .line 337
    :cond_27
    goto :goto_2c

    .line 335
    :catch_28
    move-exception v0

    .line 336
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 338
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public final updateMissionsCanBeUnlocked(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 380
    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5e

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CURRENT_SITUATION_MISSION_TREE_EVERY_X_DAYS:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5e

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    .line 382
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    .line 384
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-lez v0, :cond_41

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-ge v0, v2, :cond_34

    .line 386
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission_Civ(II)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 387
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    .line 388
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    .line 385
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 392
    .end local v0    # "i":I
    :cond_34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    if-ne v0, v2, :cond_5e

    .line 393
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    goto :goto_5e

    .line 397
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_42
    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    if-ge v0, v2, :cond_56

    .line 398
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission(II)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 399
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    .line 400
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    .line 397
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 404
    .end local v0    # "i":I
    :cond_56
    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    if-ne v0, v2, :cond_5e

    .line 405
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    .line 410
    :cond_5e
    :goto_5e
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    if-eqz v0, :cond_67

    .line 411
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    .line 415
    :cond_67
    goto :goto_6c

    .line 413
    :catch_68
    move-exception v0

    .line 414
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 416
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6c
    return-void
.end method

.method public final updateNewLaw(I)V
    .registers 7
    .param p1, "iCivID"    # I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    .line 139
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_8a

    .line 142
    sget-object v1, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "j":I
    :goto_17
    if-lez v1, :cond_86

    .line 143
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 144
    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v3, :cond_60

    .line 145
    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v3, v3, v1

    if-ltz v3, :cond_60

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v3, v3, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    if-eq v3, v4, :cond_60

    .line 146
    goto :goto_83

    .line 150
    :cond_60
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_86

    .line 151
    iget-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    if-nez v3, :cond_7b

    .line 152
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v3, v2

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 154
    :cond_7b
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    .line 155
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    add-int/2addr v3, v2

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    .line 156
    goto :goto_86

    .line 142
    :cond_83
    :goto_83
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 141
    .end local v1    # "j":I
    :cond_86
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 164
    .end local v0    # "i":I
    :cond_8a
    return-void
.end method

.method public final updateNonCoreProvinces(I)V
    .registers 5
    .param p1, "iCivID"    # I

    .line 342
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    .line 343
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    .line 345
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_58

    .line 346
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-nez v2, :cond_55

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v2, :cond_55

    .line 347
    iget-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    if-nez v2, :cond_4e

    .line 348
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    .line 350
    :cond_4e
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    .line 351
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_59

    .line 345
    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 356
    .end local v0    # "i":I
    :cond_58
    goto :goto_5d

    .line 354
    :catch_59
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 357
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method public final updateWonderCanBeBuild(I)V
    .registers 6
    .param p1, "iCivID"    # I

    .line 294
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 297
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v1, :cond_6d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v1, :cond_6d

    .line 298
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6d

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    .line 300
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6c} :catch_71

    .line 301
    goto :goto_70

    .line 296
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 307
    .end local v0    # "i":I
    :cond_70
    :goto_70
    goto :goto_75

    .line 305
    :catch_71
    move-exception v0

    .line 306
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 308
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_75
    return-void
.end method
