.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;
.super Ljava/lang/Object;
.source "AI_Manager.java"


# static fields
.field public static final SCORE_NOT_POSSIBLE:F = -999999.0f

.field public static aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRandomProvince(I)I
    .registers 5
    .param p1, "iCivID"    # I

    .line 494
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    return v0
.end method

.method public final update()V
    .registers 1

    .line 134
    return-void
.end method

.method public final updateAll()V
    .registers 3

    .line 50
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionManager;->updateNoConnections()V

    .line 52
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateMoveArmies()V

    .line 54
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_DisbandArmies;->updateDisbandArmies()V

    .line 56
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateRecruitArmy()V

    .line 57
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateReorganizeArmiesAtPeace()V

    .line 59
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Government/AI_Government;->updateGovernment()V

    .line 61
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateCoresReligion()V

    .line 63
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateBuildInvest()V

    .line 65
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Advisors/AI_ManageAdvisors;->updateAdvisors()V

    .line 66
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->updateRecruitGenerals()V

    .line 68
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Nukes/AI_BuildNukes;->updateBuildNukes()V

    .line 70
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_VassalLiberty;->update()V

    .line 72
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_DeclareWar;->declareWar()V

    .line 73
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;->prepareForWar()V

    .line 75
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Alliances;->update()V

    .line 77
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsDamage;->updateRelations_Damage()V

    .line 78
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_RelationsImprove;->updateRelations_Improve()V

    .line 80
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Legacies/AI_Legacy;->updateCiv_Legacies()V

    .line 81
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Rivals;->updateAI_Rivals()V

    .line 83
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Pacts;->update()V

    .line 85
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Wonders/AI_Wonders;->buildWonders()V

    .line 87
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_Colonization;->updateColonize()V

    .line 88
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_Colonization_NeighCiv;->updateColonize()V

    .line 90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;->updateBudget()V

    .line 92
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Missions;->updateMissions()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_79

    .line 95
    :try_start_4d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->allowAIMove:Z

    if-eqz v0, :cond_73

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-eqz v0, :cond_73

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MOVE_ARMIES_PLAYER:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_73

    .line 96
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveAtWar(I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_73} :catch_74

    .line 100
    :cond_73
    goto :goto_78

    .line 98
    :catch_74
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_75
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_78
    goto :goto_7d

    .line 101
    :catch_79
    move-exception v0

    .line 102
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method

.method public final updateBuildInvest()V
    .registers 3

    .line 137
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUILD_INVEST:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 139
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 140
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 142
    :try_start_19
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_BuildInvest(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 145
    goto :goto_21

    .line 143
    :catch_1d
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 139
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUILD_INVEST:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 149
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 150
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUILD_INVEST:I

    add-int/2addr v0, v1

    .line 153
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 154
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 156
    :try_start_42
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_BuildInvest(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 159
    goto :goto_4a

    .line 157
    :catch_46
    move-exception v1

    .line 158
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 153
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUILD_INVEST:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 162
    :cond_50
    return-void
.end method

.method public final updateCoresReligion()V
    .registers 3

    .line 165
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_CORES_RELIGION:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 167
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 168
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 170
    :try_start_19
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_CoresReligion(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 173
    goto :goto_21

    .line 171
    :catch_1d
    move-exception v1

    .line 172
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 167
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_CORES_RELIGION:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 177
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 178
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_CORES_RELIGION:I

    add-int/2addr v0, v1

    .line 181
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 182
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 184
    :try_start_42
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_CoresReligion(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 187
    goto :goto_4a

    .line 185
    :catch_46
    move-exception v1

    .line 186
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 181
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_CORES_RELIGION:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 190
    :cond_50
    return-void
.end method

.method public final updateMoveArmies()V
    .registers 3

    .line 303
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MOVE_ARMIES:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 305
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 306
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 308
    :try_start_19
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_MoveUnits(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 311
    goto :goto_21

    .line 309
    :catch_1d
    move-exception v1

    .line 310
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 305
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MOVE_ARMIES:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 315
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 316
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MOVE_ARMIES:I

    add-int/2addr v0, v1

    .line 319
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 320
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 322
    :try_start_42
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_MoveUnits(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 325
    goto :goto_4a

    .line 323
    :catch_46
    move-exception v1

    .line 324
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 319
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_MOVE_ARMIES:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 328
    :cond_50
    return-void
.end method

.method public final updateRecruitArmy()V
    .registers 3

    .line 193
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 195
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 196
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 198
    :try_start_19
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitArmy(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 201
    goto :goto_21

    .line 199
    :catch_1d
    move-exception v1

    .line 200
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 195
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 205
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 206
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE:I

    add-int/2addr v0, v1

    .line 209
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 210
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 212
    :try_start_42
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitArmy(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 215
    goto :goto_4a

    .line 213
    :catch_46
    move-exception v1

    .line 214
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 209
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ARMY_AT_PEACE:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 218
    :cond_50
    return-void
.end method

.method public final updateRecruitGenerals()V
    .registers 3

    .line 221
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_GENERALS:I

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 223
    .local v0, "i":I
    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_27

    .line 224
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_21

    .line 226
    :try_start_19
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitGenerals(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 229
    goto :goto_21

    .line 227
    :catch_1d
    move-exception v1

    .line 228
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 223
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_21
    :goto_21
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_GENERALS:I

    add-int/2addr v0, v1

    goto :goto_9

    .line 233
    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    .line 234
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_GENERALS:I

    add-int/2addr v0, v1

    .line 237
    :cond_32
    :goto_32
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 238
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_4a

    .line 240
    :try_start_42
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitGenerals(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 243
    goto :goto_4a

    .line 241
    :catch_46
    move-exception v1

    .line 242
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 237
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_GENERALS:I

    add-int/2addr v0, v1

    goto :goto_32

    .line 246
    :cond_50
    return-void
.end method

.method public final updateReorganizeArmiesAtPeace()V
    .registers 5

    .line 249
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 251
    .local v0, "i":I
    if-ne v0, v1, :cond_25

    .line 252
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    add-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    .line 254
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_25

    .line 255
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    const/4 v2, 0x0

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    .line 259
    :cond_25
    :goto_25
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ge v0, v1, :cond_58

    .line 260
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_3e

    .line 262
    :try_start_35
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_ReorganizeArmiesAtPeace_Regiments(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 265
    :goto_38
    goto :goto_52

    .line 263
    :catch_39
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_38

    .line 269
    :cond_3e
    :try_start_3e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-lez v1, :cond_4d

    .line 270
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_4e

    .line 274
    :cond_4d
    goto :goto_52

    .line 272
    :catch_4e
    move-exception v1

    .line 273
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 259
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_52
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE:I

    add-int/2addr v0, v1

    goto :goto_25

    .line 278
    :cond_58
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_63

    .line 279
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE:I

    add-int/2addr v0, v1

    .line 282
    :cond_63
    :goto_63
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 283
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_7c

    .line 285
    :try_start_73
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_ReorganizeArmiesAtPeace_Regiments(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    .line 288
    :goto_76
    goto :goto_90

    .line 286
    :catch_77
    move-exception v1

    .line 287
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_76

    .line 292
    :cond_7c
    :try_start_7c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-lez v1, :cond_8b

    .line 293
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8b} :catch_8c

    .line 297
    :cond_8b
    goto :goto_90

    .line 295
    :catch_8c
    move-exception v1

    .line 296
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 282
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_90
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_REORGANIZE_ARMIES_AT_PEACE:I

    add-int/2addr v0, v1

    goto :goto_63

    .line 300
    :cond_96
    return-void
.end method

.method public final update_BuildInvest(I)V
    .registers 8
    .param p1, "civID"    # I

    .line 333
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_BUILD_INVEST_IF_GOLD_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f4

    .line 334
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_INVEST_AT_WAR:Z

    if-nez v0, :cond_22

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 335
    return-void

    .line 338
    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 340
    .local v0, "rand":I
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH:Z

    if-eqz v1, :cond_5e

    .line 341
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_PERC:F

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5e

    .line 342
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

    if-lez v2, :cond_59

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    :goto_5a
    add-int/2addr v1, v2

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResearch;->buildResearchBuilding(II)Z

    .line 346
    :cond_5e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;->NORMAL_ID:I

    if-le v1, v2, :cond_141

    .line 347
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->UPGRADE_CAPITAL_BUILDINGS_IF_INCOME_OVER:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_141

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_141

    .line 348
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_80
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->UPGRADE_CAPITAL_BUILDINGS_LIMIT:I

    if-ge v1, v3, :cond_141

    .line 349
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1f6

    .line 373
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v4

    if-ge v3, v4, :cond_13d

    .line 374
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_13d

    .line 375
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 377
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeCapitalCity()Z

    .line 379
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_13d

    .line 362
    :pswitch_ca
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v4

    if-ge v3, v4, :cond_13d

    .line 363
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_13d

    .line 364
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 366
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeMilitaryAcademyForGenerals()Z

    .line 368
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_13d

    .line 351
    :pswitch_104
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v4

    if-ge v3, v4, :cond_13d

    .line 352
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_13d

    .line 353
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 355
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->upgradeMilitaryAcademy()Z

    .line 357
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 348
    :cond_13d
    :goto_13d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_80

    .line 388
    .end local v1    # "a":I
    :cond_141
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_157

    .line 389
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->investInEconomy(IF)V

    .line 392
    :cond_157
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INVEST_IN_ECONOMY:I

    if-ge v0, v1, :cond_173

    .line 393
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->investInEconomy(IF)V

    goto/16 :goto_1f4

    .line 395
    :cond_173
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_TAX_EFFICIENCY:I

    if-ge v0, v1, :cond_18e

    .line 396
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->increaseTaxEfficiency(IF)V

    goto :goto_1f4

    .line 398
    :cond_18e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_MANPOWER:I

    if-ge v0, v1, :cond_1a9

    .line 399
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseManpower;->increaseManpower(IF)V

    goto :goto_1f4

    .line 401
    :cond_1a9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_INCREASE_GROWTH_RATE:I

    if-ge v0, v1, :cond_1c4

    .line 402
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_GrowthRate;->increaseGrowthRate(IF)V

    goto :goto_1f4

    .line 404
    :cond_1c4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_DEVELOP_INFRASTRUCTURE:I

    if-ge v0, v1, :cond_1df

    .line 405
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_DevelopInfrastructure;->developInfrastructure(IF)V

    goto :goto_1f4

    .line 407
    :cond_1df
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_BUILDING:I

    if-ge v0, v1, :cond_1f4

    .line 408
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build(I)V

    .line 411
    .end local v0    # "rand":I
    :cond_1f4
    :goto_1f4
    return-void

    nop

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_104
        :pswitch_ca
    .end packed-switch
.end method

.method public final update_CoresReligion(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 434
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_CORES_RELIGION_IF_GOLD_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_28

    .line 435
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_22

    .line 436
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_ConvertReligion;->convertReligion(I)V

    .line 437
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Cores;->createCore(I)V

    goto :goto_28

    .line 440
    :cond_22
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Cores;->createCore(I)V

    .line 441
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_ConvertReligion;->convertReligion(I)V

    .line 444
    :cond_28
    :goto_28
    return-void
.end method

.method public final update_MoveUnits(I)V
    .registers 3
    .param p1, "civID"    # I

    .line 449
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 450
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveAtWar(I)V

    .line 452
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Nukes/AI_Nuke;->useNukes(I)V

    .line 454
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitArmy(I)V

    .line 455
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->update_RecruitGenerals(I)V

    goto :goto_1c

    .line 458
    :cond_19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtPeace;->moveAtPeace(I)V

    .line 460
    :goto_1c
    return-void
.end method

.method public final update_RecruitArmy(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 416
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_ARMY_IF_GOLD_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1c

    .line 417
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->runCreateNewArmy_Task(I)V

    .line 418
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;->recruitArmy(I)V

    goto :goto_25

    .line 421
    :cond_1c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;->runCreateNewArmy_Expired(I)V

    .line 423
    :goto_25
    return-void
.end method

.method public final update_RecruitGenerals(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 426
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdateAI:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate_AI;->GAME_UPDATE_AI_RECRUIT_GENERALS_IF_GOLD_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    .line 427
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Generals;->recruitGenerals(I)V

    .line 429
    :cond_12
    return-void
.end method

.method public final update_ReorganizeArmiesAtPeace(I)V
    .registers 3
    .param p1, "civID"    # I

    .line 463
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-nez v0, :cond_f

    .line 464
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->reorganizeArmies_AtPeace(I)V

    .line 466
    :cond_f
    return-void
.end method

.method public final update_ReorganizeArmiesAtPeace_Regiments(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 469
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    if-nez v0, :cond_55

    .line 470
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    const/16 v1, 0x9c4

    if-le v0, v1, :cond_22

    .line 471
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    if-nez v0, :cond_55

    .line 472
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->reorganizeArmies_AtPeace(I)V

    goto :goto_55

    .line 475
    :cond_22
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3a

    .line 476
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_55

    .line 477
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->reorganizeArmies_AtPeace(I)V

    goto :goto_55

    .line 480
    :cond_3a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_52

    .line 481
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->reorganizeArmyStep:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_55

    .line 482
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->reorganizeArmies_AtPeace(I)V

    goto :goto_55

    .line 486
    :cond_52
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_ReorganizeArmies;->reorganizeArmies_AtPeace(I)V

    .line 489
    :cond_55
    :goto_55
    return-void
.end method
