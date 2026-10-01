.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;
.super Ljava/lang/Object;
.source "PlayerFogOfWar.java"


# static fields
.field public static airDetLastMs:J

.field public static airDetSeen:Ljava/util/HashSet;

.field public static fogFullLastMs:J

.field public static planeFogLastMs:J

.field public static planeFogSeen:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcCosK(I)I
    .registers 8

    int-to-float v1, p0

    const v2, 0x45866000    # 4300.0f

    sub-float v1, v1, v2

    div-float v1, v1, v2

    const v2, 0x3fc90fdb

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1a

    move v1, v2

    :cond_1a
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v3, v1, v2

    if-gez v3, :cond_21

    move v1, v2

    :cond_21
    mul-float v1, v1, v1

    const v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static calcInEllipse(IIII)Z
    .registers 12

    int-to-float v0, p0

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    const v4, 0x447a0000    # 1000.0f

    div-float v3, v3, v4

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    mul-float v0, v0, v3

    add-float v0, v0, v1

    mul-float v2, v2, v2

    cmpl-float v5, v0, v2

    if-lez v5, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static detectEnemyMissions()V
    .registers 16

    const-string v0, "AIRDBG"

    const-string v1, "nDE_ENTER"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetLastMs:J

    sub-long v0, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1b7

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetLastMs:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_1b7

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_1b7

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_1b7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v4, :cond_1b5

    const-string v12, "inDE_A"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v5, :cond_1b5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b5

    const-string v12, "inDE_B"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v5, v1, :cond_1b5

    const-string v12, "inDE_C"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-static {v5, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v6

    const-string v12, "inDE_D"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v6, v7, :cond_6f

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v6, v7, :cond_6f

    goto/16 :goto_1b5

    :cond_6f
    const-string v12, "inDE_E"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-nez v11, :cond_86

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    sput-object v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    :cond_86
    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z

    move-result v5

    if-eqz v5, :cond_96

    goto/16 :goto_1b5

    :cond_96
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->curAirRealX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v13

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->curAirRealY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v14

    if-ltz v13, :cond_1b5

    const-string v12, "inDE_F"

    const/4 v5, 0x1

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v15, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v15, :cond_10f

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b2
    :goto_b2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    if-eqz v12, :cond_b2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v6, v1, :cond_b2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_db

    const/16 v6, 0x960

    goto :goto_ea

    :cond_db
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v6

    if-eqz v6, :cond_e8

    const/16 v6, 0x258

    goto :goto_ea

    :cond_e8
    const/16 v6, 0x12c

    :goto_ea
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_f4

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-lez v0, :cond_f4

    div-int v6, v6, v0

    :cond_f4
    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v7

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    sub-int v3, v14, v3

    invoke-static {v0, v3, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v0

    if-nez v0, :cond_165

    goto :goto_b2

    :cond_10f
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v15, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v15, :cond_1b5

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_11f

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_131
    :goto_131
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v5, :cond_131

    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v0, v1, :cond_131

    iget v0, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    if-eqz v11, :cond_131

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    sub-int v0, v13, v0

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v3

    sub-int v3, v14, v3

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    float-to-int v6, v6

    mul-int v6, v6, v6

    mul-int v0, v0, v0

    mul-int v3, v3, v3

    add-int v0, v0, v3

    if-le v0, v6, :cond_168

    goto :goto_131

    :cond_165
    const-string v12, "radar"

    goto :goto_16a

    :cond_168
    const-string v12, "airport"

    :goto_16a
    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v6, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_180

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dispatchAutoIntercept(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    :cond_180
    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspTried:I

    if-eqz v5, :cond_1b5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nDR_DET civ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " prov="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " type="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "AIRDBG"

    invoke-static {v0, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b5

    :cond_1b5
    :goto_1b5
    goto/16 :goto_2b

    :cond_1b7
    return-void
.end method

.method public static fogFromPlanesNow()V
    .registers 3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_11

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    if-eqz v1, :cond_11

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanes(I)V

    :cond_11
    return-void
.end method

.method public static fogFromPlanesTick()V
    .registers 7

    const-string v0, "AIRDBG"

    const-string v1, "FGR_PLT e"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_28

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_30

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    if-eqz v1, :cond_38

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogLastMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_40

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogLastMs:J

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanes(I)V

    :goto_27
    return-void

    :cond_28
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PT off"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_30
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PT np"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_38
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PT nf"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_40
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PT th"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public static fogFullReevalNow()V
    .registers 7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_1e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_1e

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    if-eqz v1, :cond_1e

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFullLastMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1e

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFullLastMs:J

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFullReeval()V

    :cond_1e
    return-void
.end method

.method public static fogPlaneCross(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 9

    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA0 e"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_65

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v0, :cond_6d

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    if-eqz v2, :cond_75

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v2, :cond_7d

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v3, :cond_85

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    if-eqz v3, :cond_8d

    if-ltz v1, :cond_28

    goto :goto_2d

    :cond_28
    if-eq v1, v0, :cond_2d

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    :cond_2d
    :goto_2d
    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    if-nez v7, :cond_3f

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    :cond_3f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "AIRDBG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FGR_PA f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void

    :cond_65
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA off"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_6d
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA at0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_75
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA civ0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_7d
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA ally0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_85
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA p0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_8d
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PA f0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method

.method private static planeFogClearAt(IIII)I
    .registers 13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v1, :cond_34

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v4, :cond_31

    iget v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, p0

    iget v6, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v6, p1

    invoke-static {v5, v6, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    if-eqz v8, :cond_2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    return v3

    :cond_35
    const/4 v3, 0x0

    return v3
.end method

.method private static planeFogCx(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v3, :cond_31

    if-eq v3, v0, :cond_31

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_31

    iget v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/lit8 v6, v6, 0x64

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v7, :cond_22

    div-int/2addr v6, v7

    goto :goto_25

    :cond_22
    const/16 v7, 0x190

    div-int/2addr v6, v7

    :goto_25
    const/16 v7, 0x64

    if-le v6, v7, :cond_2a

    move v6, v7

    :cond_2a
    sub-int v8, v2, v5

    mul-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x64

    add-int/2addr v8, v5

    return v8

    :cond_31
    return v2

    :cond_32
    const/4 v2, 0x0

    return v2
.end method

.method private static planeFogCy(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_32

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v3, :cond_31

    if-eq v3, v0, :cond_31

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :cond_31

    iget v5, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    mul-int/lit8 v6, v6, 0x64

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v7, :cond_22

    div-int/2addr v6, v7

    goto :goto_25

    :cond_22
    const/16 v7, 0x190

    div-int/2addr v6, v7

    :goto_25
    const/16 v7, 0x64

    if-le v6, v7, :cond_2a

    move v6, v7

    :cond_2a
    sub-int v8, v2, v5

    mul-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x64

    add-int/2addr v8, v5

    return v8

    :cond_31
    return v2

    :cond_32
    const/4 v2, 0x0

    return v2
.end method

.method private static planeFogR(FI)I
    .registers 6

    int-to-float v0, p1

    const v1, 0x45866000    # 4300.0f

    sub-float/2addr v0, v1

    div-float/2addr v0, v1

    const v1, 0x3fc90fdb

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_17

    move v0, v1

    :cond_17
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v2, v0, v1

    if-gez v2, :cond_1e

    move v0, v1

    :cond_1e
    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static planeFogRY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final buildFogOfWar(I)V
    .registers 6
    .param p1, "civID"    # I

    .line 24
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6a

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_16

    .line 26
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 28
    .end local v0    # "i":I
    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 30
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 31
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 34
    .end local v0    # "i":I
    :cond_31
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->buildFogOfWar_CivID(I)V

    .line 36
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->civAllies(I)Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "civAllies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_3d
    if-ltz v2, :cond_52

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    .line 38
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 42
    .end local v2    # "i":I
    :cond_52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_57
    if-ltz v2, :cond_69

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->buildFogOfWar_CivID(I)V

    .line 42
    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 45
    .end local v0    # "civAllies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    :cond_69
    goto :goto_7b

    .line 47
    :cond_6a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6b
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 48
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_7c

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 53
    .end local v0    # "i":I
    :cond_7b
    :goto_7b
    goto :goto_80

    .line 51
    :catch_7c
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_80
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawArmy()V

    .line 56
    return-void
.end method

.method public final buildFogOfWar_CivID(I)V
    .registers 7
    .param p1, "civID"    # I

    .line 59
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_145

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7c

    .line 61
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 64
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_20
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 65
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 69
    .end local v1    # "j":I
    :cond_4c
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_79

    .line 70
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 60
    .end local v1    # "j":I
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 74
    .end local v0    # "i":I
    :cond_7c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_145

    .line 75
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 78
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_95
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_c1

    .line 79
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 83
    .end local v1    # "j":I
    :cond_c1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_114

    .line 84
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_d5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_111

    .line 85
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 83
    .end local v3    # "k":I
    :cond_111
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 90
    .end local v1    # "j":I
    :cond_114
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_115
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_141

    .line 91
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    .line 74
    .end local v1    # "j":I
    :cond_141
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7d

    .line 95
    .end local v0    # "i":I
    :cond_145
    return-void
.end method

.method public final fogFromAirports(I)V
    .registers 16

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_24

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-ne v5, p1, :cond_24

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v7

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v8

    iget v9, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    float-to-int v9, v9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_54

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-gtz v0, :cond_52

    goto :goto_54

    :cond_52
    div-int v9, v9, v0

    :cond_54
    :goto_54
    mul-int v9, v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v10, :cond_24

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_5f
    if-ge v12, v11, :cond_24

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v6, :cond_82

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v13

    sub-int v13, v13, v7

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result p0

    sub-int p0, p0, v8

    mul-int v13, v13, v13

    mul-int p0, p0, p0

    add-int v13, v13, p0

    if-le v13, v9, :cond_7e

    goto :goto_82

    :cond_7e
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    :cond_82
    :goto_82
    add-int/lit8 v12, v12, 0x1

    goto :goto_5f

    :cond_85
    return-void
.end method

.method public final fogFromPlanes(I)V
    .registers 16

    const-string v0, "AIRDBG"

    const-string v1, "FGR_PL0 enter"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_d6

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v1, :cond_de

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v3, :cond_20

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-ne v4, p1, :cond_20

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    const/4 v5, 0x2

    if-eq v4, v5, :cond_42

    const/4 v5, 0x3

    if-eq v4, v5, :cond_42

    goto :goto_20

    :cond_42
    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v5, :cond_20

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v6, :cond_20

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_20

    const/4 v5, 0x4

    if-ge v4, v5, :cond_20

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v6, :cond_e6

    aget-object v7, v6, v4

    if-eqz v7, :cond_20

    iget v10, v7, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->RadarRange:F

    const/4 v5, 0x0

    cmpl-float v4, v10, v5

    if-lez v4, :cond_20

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogCx(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogCy(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v9

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogRY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v4

    invoke-static {v10, v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogR(FI)I

    move-result v10

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogClearAt(IIII)I

    move-result v5

    add-int/2addr v12, v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_7e
    const/4 v11, 0x0

    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    add-int/lit8 v11, v11, 0x1

    :cond_a6
    goto :goto_85

    :cond_a7
    if-lez v11, :cond_af

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromRadar()V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromAirports(I)V

    :cond_af
    const-string v0, "AIRDBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FGR_PL n="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ul="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d5
    return-void

    :cond_d6
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PLx afm0"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_de
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PLx mis"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_e6
    const-string v0, "AIRDBG"

    const-string v1, "FGR_PLx typ"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5
.end method

.method public final fogFromRadar()V
    .registers 17

    const-string v0, "AIRDBG"

    const-string v2, "FGR_RADAR enter"

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_b7

    iget v15, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FGR_RD rps="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AIRDBG"

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b7

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v15, :cond_38

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasLongWaveRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_69

    const/16 v8, 0x960

    goto :goto_78

    :cond_69
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasRadarBuilding(I)Z

    move-result v7

    if-eqz v7, :cond_76

    const/16 v8, 0x258

    goto :goto_78

    :cond_76
    const/16 v8, 0x12c

    :goto_78
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    if-eqz v0, :cond_83

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    if-gtz v0, :cond_81

    goto :goto_83

    :cond_81
    div-int v8, v8, v0

    :cond_83
    :goto_83
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v13

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v7, :cond_38

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_91
    if-ge v10, v9, :cond_38

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v3, :cond_b4

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v11

    sub-int v11, v11, v4

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v12

    sub-int v12, v12, v5

    invoke-static {v11, v12, v8, v13}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v11

    if-nez v11, :cond_ae

    goto :goto_b4

    :cond_ae
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    :cond_b4
    :goto_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_91

    :cond_b7
    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FGR_RD hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final fogFullReeval()V
    .registers 4

    const-string v0, "AIRDBG"

    const-string v1, "FGR_FULL enter"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_23

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromRadar()V

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromAirports(I)V

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanes(I)V

    :cond_23
    return-void
.end method

.method public final fogRefresh()V
    .registers 4

    const-string v0, "AIRDBG"

    const-string v2, "FGR_REFRESH enter"

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_26

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_26

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->initFogOfWar()V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->buildFogOfWar(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromRadar()V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromAirports(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDrawArmy()V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromAirports(I)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanes(I)V

    :cond_26
    return-void
.end method

.method public initFogOfWar()V
    .registers 4

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 16
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public final setFogOfWar(IZ)V
    .registers 8
    .param p1, "provinceID"    # I
    .param p2, "state"    # Z

    .line 236
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eq v0, p2, :cond_5d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :cond_42

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ne v1, p1, :cond_42

    const-string v1, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOG_CHG p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " o="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_42
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V

    .line 239
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    .line 241
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 242
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->redrawnProvinces()V

    .line 245
    :cond_5d
    return-void
.end method

.method public final setFogOfWar_ExtraCheck(IZ)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "isVisible"    # Z

    .line 249
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-nez p2, :cond_17

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveArmy(I)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setFogDrawArmy(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 252
    goto :goto_20

    .line 250
    :catch_1c
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 253
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public final updateFogOfWar(I)V
    .registers 8
    .param p1, "provinceID"    # I

    .line 166
    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_155

    .line 167
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    .line 169
    .local v0, "province":Laoc/kingdoms/lukasz/map/province/Province;
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 170
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 171
    return-void

    .line 174
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 175
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v3, :cond_32

    .line 176
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 177
    return-void

    .line 174
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 181
    .end local v1    # "i":I
    :cond_35
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_36
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_57

    .line 182
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v3, :cond_54

    .line 183
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 184
    return-void

    .line 181
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 188
    .end local v1    # "i":I
    :cond_57
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_58
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_8d

    .line 189
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5f
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_8a

    .line 190
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v4, :cond_87

    .line 191
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 192
    return-void

    .line 189
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 188
    .end local v3    # "j":I
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 197
    .end local v1    # "i":I
    :cond_8d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8e
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_c3

    .line 198
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_95
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_c0

    .line 199
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v4, :cond_bd

    .line 200
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 201
    return-void

    .line 198
    :cond_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 197
    .end local v3    # "j":I
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 207
    .end local v1    # "i":I
    :cond_c3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c4
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_11b

    .line 208
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_cb
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_118

    .line 209
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_da
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v4, v5, :cond_115

    .line 210
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v5, :cond_112

    .line 211
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 212
    return-void

    .line 209
    :cond_112
    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    .line 208
    .end local v4    # "j":I
    :cond_115
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 207
    .end local v3    # "k":I
    :cond_118
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 218
    .end local v1    # "i":I
    :cond_11b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11c
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v1, v3, :cond_151

    .line 219
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_123
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_14e

    .line 220
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v4, :cond_14b

    .line 221
    invoke-virtual {p0, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 222
    return-void

    .line 219
    :cond_14b
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 218
    .end local v3    # "j":I
    :cond_14e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    .line 227
    .end local v1    # "i":I
    :cond_151
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_155} :catch_156

    .line 229
    .end local v0    # "province":Laoc/kingdoms/lukasz/map/province/Province;
    :cond_155
    return-void

    .line 230
    :catch_156
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public final updateFogOfWar_All(I)V
    .registers 6
    .param p1, "provinceID"    # I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "toUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 138
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 139
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 143
    .end local v1    # "i":I
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 144
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_47
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 145
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 146
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 143
    .end local v2    # "j":I
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 151
    .end local v1    # "i":I
    :cond_90
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_91
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_bf

    .line 152
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    .line 153
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 157
    .end local v1    # "i":I
    :cond_bf
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_c5
    if-ltz v1, :cond_d7

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    .line 157
    add-int/lit8 v1, v1, -0x1

    goto :goto_c5

    .line 161
    .end local v1    # "i":I
    :cond_d7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    return-void
.end method

.method public final updateFogOfWar_All_ArmyOneProvinceView(I)V
    .registers 4
    .param p1, "provinceID"    # I

    .line 114
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_4e

    .line 115
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz v0, :cond_19

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->setFogOfWar(IZ)V

    .line 117
    return-void

    .line 120
    :cond_19
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 123
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 126
    .end local v0    # "i":I
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 127
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar(I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 130
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method public final updateFogOfWar_Civ(I)V
    .registers 4
    .param p1, "civID"    # I

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 101
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_42

    .line 105
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v1, p1, :cond_3f

    .line 106
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    .line 104
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 109
    .end local v0    # "i":I
    :cond_42
    return-void
.end method
