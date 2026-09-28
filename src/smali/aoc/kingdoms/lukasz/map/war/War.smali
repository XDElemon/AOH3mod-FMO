.class public Laoc/kingdoms/lukasz/map/war/War;
.super Ljava/lang/Object;
.source "War.java"


# instance fields
.field public conquerVassal:Z

.field public iWarTurnID:I

.field public isCoalition:Z

.field public key:Ljava/lang/String;

.field public lAggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/war/WarCivilization;",
            ">;"
        }
    .end annotation
.end field

.field public lDefenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/war/WarCivilization;",
            ">;"
        }
    .end annotation
.end field

.field public lastFight_TurnID:I

.field public tickingWarScore:F

.field public warScore:F

.field public warScoreFromBattles:F

.field public warScoreFromOccupiedProvinces:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 24
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    .line 25
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    .line 26
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    .line 32
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZ)V
    .registers 9
    .param p1, "nAggressor"    # I
    .param p2, "nDefender"    # I
    .param p3, "tKey"    # Ljava/lang/String;
    .param p4, "conquerVassal"    # Z
    .param p5, "isCoalition"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    .line 20
    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 22
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 24
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    .line 25
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    .line 26
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    .line 32
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    .line 39
    iput-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    .line 40
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    .line 41
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 43
    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 45
    iput-boolean p4, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    .line 46
    iput-boolean p5, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    .line 48
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->addAggressor(I)V

    .line 49
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->addDefender(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public final addAggressor(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 166
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_16

    .line 167
    return-void

    .line 165
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 172
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_2f

    .line 173
    return-void

    .line 171
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 177
    .end local v0    # "i":I
    :cond_32
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/war/WarCivilization;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_60

    .line 181
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    .line 182
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    .line 185
    :cond_60
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addNumOfWars(I)V

    .line 187
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 188
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 189
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation(II)V

    .line 187
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 193
    .end local v0    # "i":I
    :cond_92
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_de

    .line 194
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v0, v1, :cond_de

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v0

    if-nez v0, :cond_de

    .line 195
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_LORD_CALL_TO_WAR:F

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setLibertyDesire_Change(IF)V

    .line 198
    :cond_de
    return-void
.end method

.method public final addCasualties(II)V
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "iCasualties"    # I

    .line 463
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 466
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_27

    .line 467
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v2, p2

    iput v2, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 468
    return-void

    .line 465
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 472
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 473
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_4d

    .line 474
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v2, p2

    iput v2, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    .line 475
    return-void

    .line 472
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 478
    .end local v0    # "i":I
    :cond_50
    return-void
.end method

.method public final addDefender(I)V
    .registers 5
    .param p1, "nCivID"    # I

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 211
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_16

    .line 212
    return-void

    .line 210
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 217
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_2f

    .line 218
    return-void

    .line 216
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 222
    .end local v0    # "i":I
    :cond_32
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/war/WarCivilization;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    .line 225
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_60

    .line 226
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    .line 227
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    .line 230
    :cond_60
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addNumOfWars(I)V

    .line 232
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6a
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 233
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 234
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation(II)V

    .line 232
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 238
    .end local v0    # "i":I
    :cond_92
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_de

    .line 239
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v0, v1, :cond_de

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v0

    if-nez v0, :cond_de

    .line 240
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_LORD_CALL_TO_WAR:F

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setLibertyDesire_Change(IF)V

    .line 243
    :cond_de
    return-void
.end method

.method public final addWarScore(FII)V
    .registers 6
    .param p1, "nWarScore"    # F
    .param p2, "civA"    # I
    .param p3, "civB"    # I

    .line 125
    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 126
    return-void
.end method

.method public final addWarScore_Just(F)V
    .registers 3
    .param p1, "nWarScore"    # F

    .line 129
    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 130
    return-void
.end method

.method public final addWarScore_ValueToAdd(FII)F
    .registers 6
    .param p1, "nWarScore"    # F
    .param p2, "civA"    # I
    .param p3, "civB"    # I

    .line 133
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p3, v0, :cond_31

    :cond_19
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p3, v0, :cond_32

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, v0, :cond_32

    .line 134
    :cond_31
    return p1

    .line 138
    :cond_32
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_SCORE_ALLIES:F

    mul-float v0, v0, p1

    return v0
.end method

.method public final addWarScore_ValueToAdd_Province(FIII)F
    .registers 8
    .param p1, "nWarScore"    # F
    .param p2, "civA"    # I
    .param p3, "civB"    # I
    .param p4, "provinceID"    # I

    .line 143
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p3, v0, :cond_61

    :cond_19
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p3, v0, :cond_31

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p2, v0, :cond_61

    :cond_31
    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v0, v2, :cond_61

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v0, v1, :cond_5a

    goto :goto_61

    .line 148
    :cond_5a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_SCORE_ALLIES:F

    mul-float v0, v0, p1

    return v0

    .line 144
    :cond_61
    :goto_61
    return p1
.end method

.method public final areInThisWar(II)Z
    .registers 5
    .param p1, "iCivA"    # I
    .param p2, "iCivB"    # I

    .line 293
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 294
    return v1

    .line 297
    :cond_e
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 298
    return v1

    .line 301
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final getCasualties_Aggressors()I
    .registers 4

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 496
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v0, v2

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 499
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public final getCasualties_Defenders()I
    .registers 4

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 506
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v0, v2

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 509
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public getWarScore_Side(I)I
    .registers 3
    .param p1, "iCivID"    # I

    .line 483
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 484
    const/4 v0, -0x1

    return v0

    .line 487
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public final isAggressor(I)Z
    .registers 4
    .param p1, "iCivID"    # I

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 274
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_17

    .line 275
    const/4 v1, 0x1

    return v1

    .line 273
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isDefender(I)Z
    .registers 4
    .param p1, "iCivID"    # I

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 284
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_17

    .line 285
    const/4 v1, 0x1

    return v1

    .line 283
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isInThisWar(I)Z
    .registers 3
    .param p1, "iCivA"    # I

    .line 305
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 309
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isWarLeader(I)Z
    .registers 4
    .param p1, "civID"    # I

    .line 515
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v0, p1, :cond_19

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v0, p1, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public final loadSave_AddInWar()V
    .registers 5

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 156
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 160
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 162
    .end local v0    # "i":I
    :cond_56
    return-void
.end method

.method public final peaceTreaty()V
    .registers 8

    .line 315
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v0

    .line 317
    .local v0, "updatePlayer":Z
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 318
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 320
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_59
    if-lez v1, :cond_a6

    .line 321
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 322
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 320
    add-int/lit8 v1, v1, -0x1

    goto :goto_59

    .line 325
    .end local v1    # "i":I
    :cond_a6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_ae
    if-lez v1, :cond_fb

    .line 326
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 327
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    .line 325
    add-int/lit8 v1, v1, -0x1

    goto :goto_ae

    .line 330
    .end local v1    # "i":I
    :cond_fb
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->stopAllBattles_PeaceTreaty(Ljava/lang/String;)V

    .line 334
    :try_start_102
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_10a
    if-ltz v1, :cond_160

    .line 335
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 337
    .local v2, "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_125

    .line 338
    goto :goto_15d

    .line 341
    :cond_125
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_12b
    if-ltz v3, :cond_15d

    .line 342
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    .line 344
    .local v4, "toCivID":I
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_145
    if-ltz v5, :cond_15a

    .line 345
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v6, v4, :cond_157

    .line 346
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    .line 347
    goto :goto_15a

    .line 344
    :cond_157
    add-int/lit8 v5, v5, -0x1

    goto :goto_145

    .line 341
    .end local v4    # "toCivID":I
    .end local v5    # "k":I
    :cond_15a
    :goto_15a
    add-int/lit8 v3, v3, -0x1

    goto :goto_12b

    .line 334
    .end local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v3    # "j":I
    :cond_15d
    :goto_15d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10a

    .line 353
    .end local v1    # "i":I
    :cond_160
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_168
    if-ltz v1, :cond_1be

    .line 354
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 356
    .restart local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_183

    .line 357
    goto :goto_1bb

    .line 360
    :cond_183
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "j":I
    :goto_189
    if-ltz v3, :cond_1bb

    .line 361
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    .line 363
    .restart local v4    # "toCivID":I
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "k":I
    :goto_1a3
    if-ltz v5, :cond_1b8

    .line 364
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v6, v4, :cond_1b5

    .line 365
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_1b4} :catch_1bf

    .line 366
    goto :goto_1b8

    .line 363
    :cond_1b5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a3

    .line 360
    .end local v4    # "toCivID":I
    .end local v5    # "k":I
    :cond_1b8
    :goto_1b8
    add-int/lit8 v3, v3, -0x1

    goto :goto_189

    .line 353
    .end local v2    # "civ":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    .end local v3    # "j":I
    :cond_1bb
    :goto_1bb
    add-int/lit8 v1, v1, -0x1

    goto :goto_168

    .line 373
    .end local v1    # "i":I
    :cond_1be
    goto :goto_1c3

    .line 371
    :catch_1bf
    move-exception v1

    .line 372
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 375
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1c3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1cb
    if-ltz v1, :cond_26e

    .line 376
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1d5
    if-ltz v2, :cond_26a

    .line 378
    :try_start_1d7
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation_Peace(IILjava/lang/String;)V

    .line 380
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->retakeOccupiedProvinces(II)V

    .line 381
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->retakeOccupiedProvinces(II)V

    .line 383
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_240

    .line 384
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    goto :goto_261

    .line 386
    :cond_240
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_261

    .line 387
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V
    :try_end_261
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_261} :catch_262

    .line 391
    :cond_261
    :goto_261
    goto :goto_266

    .line 389
    :catch_262
    move-exception v3

    .line 390
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 376
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_266
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1d5

    .line 375
    .end local v2    # "j":I
    :cond_26a
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1cb

    .line 395
    .end local v1    # "i":I
    :cond_26e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_276
    const-string v2, "update_ReorganizeArmiesAtPeace"

    if-ltz v1, :cond_306

    .line 396
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_2a0

    .line 397
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V

    goto :goto_302

    .line 401
    :cond_2a0
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveAllArmiesToOwnTerritory(I)V

    .line 403
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_302

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-nez v3, :cond_302

    .line 404
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v4, Laoc/kingdoms/lukasz/map/war/War$1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-direct {v4, p0, v2, v5}, Laoc/kingdoms/lukasz/map/war/War$1;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 395
    :cond_302
    :goto_302
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_276

    .line 415
    .end local v1    # "i":I
    :cond_306
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_30e
    if-ltz v1, :cond_39c

    .line 416
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_336

    .line 417
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V

    goto :goto_343

    .line 421
    :cond_336
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveAllArmiesToOwnTerritory(I)V

    .line 424
    :goto_343
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_398

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-nez v3, :cond_398

    .line 425
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v4, Laoc/kingdoms/lukasz/map/war/War$2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-direct {v4, p0, v5, v6}, Laoc/kingdoms/lukasz/map/war/War$2;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 415
    :cond_398
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_30e

    .line 435
    .end local v1    # "i":I
    :cond_39c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 436
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 438
    if-eqz v0, :cond_3b8

    .line 439
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v1, :cond_3b8

    .line 440
    new-instance v1, Laoc/kingdoms/lukasz/map/war/War$3;

    const-string v2, "updateProvinceBorder"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/war/War$3;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 448
    :cond_3b8
    return-void
.end method

.method public final removeAggressor(I)V
    .registers 4
    .param p1, "nCivID"    # I

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 202
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_1b

    .line 203
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    return-void

    .line 201
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public final removeCiv(I)V
    .registers 4
    .param p1, "nCivID"    # I

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 256
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_1b

    .line 257
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    return-void

    .line 255
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 263
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_39

    .line 264
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 265
    return-void

    .line 262
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 268
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method public final removeDefender(I)V
    .registers 4
    .param p1, "nCivID"    # I

    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 247
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_1b

    .line 248
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 249
    return-void

    .line 246
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public final retakeOccupiedProvinces(II)V
    .registers 5
    .param p1, "iCivA"    # I
    .param p2, "iCivB"    # I

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 452
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 453
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-ne v1, p2, :cond_3e

    .line 454
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince_Peace()V

    .line 451
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    .end local v0    # "i":I
    :cond_41
    return-void
.end method

.method public final updateCapitalProvinceID()V
    .registers 4

    .line 522
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_6a

    .line 523
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-gez v1, :cond_30

    .line 524
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    goto :goto_67

    .line 526
    :cond_30
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v1, v2, :cond_67

    .line 527
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_6b

    .line 522
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 532
    .end local v0    # "i":I
    :cond_6a
    goto :goto_6f

    .line 530
    :catch_6b
    move-exception v0

    .line 531
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 535
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6f
    :try_start_6f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_77
    if-ltz v0, :cond_d9

    .line 536
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-gez v1, :cond_9f

    .line 537
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    goto :goto_d6

    .line 539
    :cond_9f
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v1, v2, :cond_d6

    .line 540
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_d6} :catch_da

    .line 535
    :cond_d6
    :goto_d6
    add-int/lit8 v0, v0, -0x1

    goto :goto_77

    .line 545
    .end local v0    # "i":I
    :cond_d9
    goto :goto_de

    .line 543
    :catch_da
    move-exception v0

    .line 544
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 546
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_de
    return-void
.end method

.method public final updateWars_AllProvincesOccupied()V
    .registers 6

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "allOccupied":Z
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    .line 92
    .local v1, "civDef":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 93
    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-nez v4, :cond_27

    .line 94
    const/4 v0, 0x0

    .line 95
    goto :goto_2a

    .line 92
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 99
    .end local v3    # "i":I
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_3f

    .line 100
    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 101
    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 102
    return-void

    .line 105
    :cond_3f
    const/4 v0, 0x1

    .line 106
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    .line 108
    .local v2, "civAgr":Laoc/kingdoms/lukasz/map/civilization/Civilization;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4f
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_68

    .line 109
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-nez v4, :cond_65

    .line 110
    const/4 v0, 0x0

    .line 111
    goto :goto_68

    .line 108
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 115
    .end local v3    # "i":I
    :cond_68
    :goto_68
    if-eqz v0, :cond_7d

    .line 116
    iget v3, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    sub-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 117
    iget v3, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    sub-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 118
    return-void

    .line 120
    :cond_7d
    return-void
.end method

.method public final updateWars_TickingWarScore()V
    .registers 7

    .line 55
    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_EACH_MONTH:F

    mul-float v0, v0, v1

    .line 57
    .local v0, "tTickingWarScore":F
    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2c

    .line 58
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    goto :goto_42

    .line 61
    :cond_2c
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 64
    :goto_42
    cmpl-float v1, v0, v4

    if-lez v1, :cond_5d

    .line 65
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v1, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_75

    .line 66
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_75

    .line 70
    :cond_5d
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v1, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_75

    .line 71
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v0, v1

    .line 75
    :cond_75
    :goto_75
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    add-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 76
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 78
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_95

    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_95

    .line 79
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 80
    iput v4, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    goto :goto_aa

    .line 82
    :cond_95
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_aa

    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_aa

    .line 83
    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    .line 84
    iput v4, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    .line 86
    :cond_aa
    :goto_aa
    return-void
.end method
