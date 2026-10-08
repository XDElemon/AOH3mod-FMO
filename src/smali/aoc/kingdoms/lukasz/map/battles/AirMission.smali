.class public Laoc/kingdoms/lukasz/map/battles/AirMission;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;,
        Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;
    }
.end annotation


# instance fields
.field public a1bAuto:Z

.field public a1bBlind:Z

.field public a1bHops:I

.field public a1bTold:Z

.field public airCombatLastMs:J

.field public airDivPrevPrevID:I

.field public airDivPrevProvinceID:I

.field public airDivSegAnimMs:I

.field public airDivSegDurMs:I

.field public airDivisionAtProvinceID:I

.field public airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public airhqKey:Ljava/lang/String;

.field public aliveAircraft:Ljava/util/List;

.field public animElapsedMs:J

.field public animPrevMs:J

.field public animStartMs:J

.field public assignedAircraft:Ljava/util/List;

.field public atkDbgMs:J

.field public attackRoundsExecuted:I

.field public civID:I

.field public deadDbgMs:J

.field public dispHeading:F

.field public dispHeadingMs:J

.field public distanceToTarget:I

.field public enemyAircraftShotDown:I

.field public fPoolHP:F

.field public flightProgress:F

.field public gunAmmo:I

.field public gunFxDbgMs:J

.field public gunLastHours:I

.field public huntDbgMs:J

.field public huntUsed:I

.field public lastDbgFp:F

.field public lastMissileHours:I

.field public adHitAt:I

.field public adHitDmg:F

.field public adFxSrc:I

.field public adFxInit:I

.field public adFlyHours:I

.field public adFxSpd:F

.field public adFxTN:I

.field public adFxTH:I

.field public adFxTX:[F

.field public adFxTY:[F

.field public adFxX:F

.field public adFxY:F

.field public adFxStepMs:J

.field public adStartGh:I

.field public adFxTgtX:F

.field public adFxTgtY:F





.field public lastMissileMs:J

.field public lastPosMs:J

.field public lastTickMs:J

.field public lingerRounds:I

.field public lostAircraft:Ljava/util/List;

.field public maxAttackRounds:I

.field public maxLingerRounds:I

.field public maxPoolHP:F

.field public missilePerPlane:I

.field public missilesLeft:I

.field public missionID:J

.field public msFlyHours:I

.field public msFxDbgMs:J

.field public msFxStepMs:J

.field public msFxInit:I

.field public msFxLastScale:F

.field public msFxSpd:F

.field public msFxTH:I

.field public msFxTN:I

.field public msFxTX:[F

.field public msFxTY:[F

.field public msFxTgtAt:I

.field public msFxVX:F

.field public msFxVY:F

.field public msFxX:F

.field public msFxY:F

.field public roundsInFlight:I

.field public sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

.field public sourceProvinceID:I

.field public state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

.field public strikeKind:I

.field public strikeProgress:F

.field public strikeTargetMissionID:J

.field public targetAirUnitIDs:Ljava/util/List;

.field public targetArmyID:I

.field public targetMissionID:J

.field public targetProvinceID:I

.field public totalDamageDealt:F

.field public type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V
    .registers 6
    .param p1, "type"    # Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    .param p2, "sourceAirport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p3, "civID"    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v0, p2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetArmyID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetAirUnitIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lostAircraft:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    const/16 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->totalDamageDealt:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->enemyAircraftShotDown:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    return-void
.end method

.method private static a1ShootAir(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z
    .registers 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private a1bReHunt()Z
    .registers 12

    const/4 v2, 0x0

    const-string v0, "AIRDBG"

    const-string v5, "nB2 entry"

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_127

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v0, v1, :cond_127

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v3, :cond_127

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_127

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v0

    if-nez v0, :cond_127

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nB2 miss tgt="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bHops:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_60

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v6, :cond_4b

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRetarget(II)I

    move-result v7

    :cond_4b
    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nB2 cap hops=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    :cond_60
    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nB2 gate blind="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fog="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v10, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z

    if-eqz v0, :cond_a1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_a1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bTold:Z

    if-nez v0, :cond_a1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bTold:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_a1

    const-string v1, "\u5728\u6700\u540e\u4e00\u4e2a\u5df2\u77e5\u4f4d\u7f6e\u672a\u627e\u5230\u654c\u4eba"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v0, "AIRDBG"

    const-string v5, "nB2 toast"

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v3, :cond_127

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRetarget(II)I

    move-result v4

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nB2 new="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_127

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v10, 0x0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    if-eqz v9, :cond_dd

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-nez v0, :cond_dd

    const/4 v10, 0x1

    :cond_dd
    iput-boolean v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z

    iget v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bHops:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bHops:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v8

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nB2 relaunch d="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animStartMs:J

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    const/4 v2, 0x1

    :cond_127
    :goto_127
    return v2
.end method

.method private static agilityMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 8

    if-eqz p0, :cond_2c

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v3, 0x0

    const/high16 v0, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_21

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    add-float/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_21
    int-to-float v5, v1

    div-float/2addr v0, v5

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    return v6

    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private airCombatTick()V
    .registers 16

    const-string v0, "nA6c"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Mis(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_194

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_16

    goto :goto_12

    :goto_12
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v0, v1, :cond_194

    :cond_16
    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v13, :cond_194

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->gunLastHours:I

    sub-int v1, v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    if-lt v1, v2, :cond_194

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v5, :cond_44

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_44

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-ne v5, v1, :cond_44

    const/4 v14, 0x1

    :cond_44
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    if-eqz v0, :cond_174

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v3, :cond_174

    const/4 v4, 0x0

    :goto_4f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v0, :cond_9d

    if-eq v0, p0, :cond_9d

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v1, v5, :cond_9d

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v1, v5, :cond_80

    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v1, v5, :cond_80

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_9d

    iget-wide v10, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v1, v10, v6

    if-eqz v1, :cond_7e

    goto :goto_9d

    :cond_7e
    const/4 v12, 0x1

    goto :goto_9d

    :cond_80
    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v5, :cond_9d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9d

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ne v1, v13, :cond_9d

    if-eqz v14, :cond_9b


    :cond_9b
    move-object v2, v0

    goto :goto_a0

    :cond_9d
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_a0
    :goto_a0
    if-eqz v2, :cond_a3

    goto :goto_a8

    :cond_a3
    if-eqz v14, :cond_a8

    const/4 v14, 0x0

    const/4 v4, 0x0

    goto :goto_4f

    :cond_a8
    :goto_a8
    if-eqz v2, :cond_174

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgACg(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    iget-object v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_bb

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iget-wide v8, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_194

    :cond_bb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airCombatLastMs:J

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    mul-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v7

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->gunLastHours:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v4, 0x0

    const/high16 v10, 0x0

    :goto_cf
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v14, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1ShootAir(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z

    move-result v12

    if-eqz v12, :cond_e4

    add-float/2addr v10, v14

    :cond_e4
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_e7
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v10, v0

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v4, 0x0

    const/high16 v11, 0x0

    :goto_ef
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_107

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v14, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1ShootAir(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z

    move-result v12

    if-eqz v12, :cond_104

    add-float/2addr v11, v14

    :cond_104
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_107
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->agilityMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->agilityMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v4

    mul-float/2addr v10, v3

    mul-float/2addr v11, v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v6

    mul-float/2addr v10, v5

    mul-float/2addr v11, v6

    const/high16 v0, 0x0

    cmpl-float v1, v10, v0

    if-lez v1, :cond_194

    move-object v0, p0

    move-object v1, v2

    move-object v3, p0

    invoke-direct {v0, v1, v10}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V

    invoke-direct {v2, v3, v11}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nAC hit my="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ep="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->fPoolHP:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->fPoolHP:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_174
    if-eqz v12, :cond_17e

    const-string v0, "AIRDBG"

    const-string v1, "nAC eskip"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17e
    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nAC noSame my="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    return-void
.end method

.method private allAircraftLost()Z
    .registers 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    .registers 10

    move v4, p2

    const/4 v1, 0x0

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_4e

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    const/high16 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_4e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpl-float v2, v4, v5

    if-gez v2, :cond_20

    move v6, v4

    goto :goto_21

    :cond_20
    move v6, v5

    :goto_21
    sub-float v5, v5, v6

    iput v5, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    sub-float/2addr v4, v6

    const/high16 v2, 0x0

    cmpl-float v2, v5, v2

    if-gtz v2, :cond_4b

    invoke-virtual {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordKill()V

    const-string v2, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nAC kill k="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->enemyAircraftShotDown:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4e
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordDamage(F)V

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    return-void
.end method

.method private static applyArmyDamage(Laoc/kingdoms/lukasz/map/province/Province;IFI)I
    .registers 16

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 p3, 0x0

    if-eqz p0, :cond_167

    const/high16 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_167

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_167

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    if-eqz v3, :cond_163

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nAHs p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " k="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    const-string v6, " civ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " obj="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v6, :cond_4e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_4f

    :cond_4e
    const/4 v6, -0x1

    :goto_4f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " c="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ia="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mv="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " bt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AIRDBG"

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v5, :cond_91

    const-string v6, "airhq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_91

    goto/16 :goto_15a

    :cond_91
    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v6, :cond_ed

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq v4, p1, :cond_15d

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_160

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_a9
    if-ltz v4, :cond_c8

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v6, :cond_c5

    int-to-float v7, v6

    int-to-float v8, v6

    mul-float/2addr v8, p2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v0, v0, 0x1

    :cond_c5
    add-int/lit8 v4, v4, -0x1

    goto :goto_a9

    :cond_c8
    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_d8

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->safeUpd(Ljava/lang/Object;)V

    goto/16 :goto_163

    :cond_d8
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_da
    if-ge v6, v5, :cond_ea

    iget-object v7, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    :cond_ea
    iput v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    goto :goto_163

    :cond_ed
    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq v4, p1, :cond_109

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_109

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    if-lez v5, :cond_109

    int-to-float v6, v5

    int-to-float v7, v5

    mul-float/2addr v7, p2

    sub-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/lit8 v0, v0, 0x1

    :cond_109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nAHd p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " civ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " k="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ia="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AIRDBG"

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_163

    :goto_15a
    add-int/lit8 v11, v11, 0x1

    goto :goto_163

    :cond_15d
    add-int/lit8 v9, v9, 0x1

    goto :goto_163

    :cond_160
    add-int/lit8 v10, v10, 0x1

    goto :goto_163

    :cond_163
    :goto_163
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_13

    :cond_167
    const-string v1, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nAH pct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " civ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " same="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " skA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " skD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static applyPopDamage(Laoc/kingdoms/lukasz/map/province/Province;I)V
    .registers 10

    if-lez p1, :cond_2b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v0

    if-lez v0, :cond_2b

    sub-int v1, v0, p1

    if-gez v1, :cond_d

    const/4 v1, 0x0

    :cond_d
    int-to-float v2, v1

    int-to-float v3, v0

    div-float v2, v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_17
    if-ltz v4, :cond_2b

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v5

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v6

    int-to-float v7, v6

    mul-float v7, v7, v2

    float-to-int v7, v7

    invoke-virtual {p0, v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    :cond_2b
    return-void
.end method

.method private calculateDistance()I
    .registers 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-ltz v0, :cond_50

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-gez v1, :cond_b

    const/16 v0, 0x3c

    return v0

    :cond_b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int v4, v6, v4

    sub-int v5, v7, v5

    int-to-float v4, v4

    int-to-float v5, v5

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float v4, v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    const/high16 v5, 0x40a00000    # 5.0f

    div-float v4, v4, v5

    const/16 v5, 0x5a

    add-float v4, v4, v5

    float-to-int v0, v4

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_4d

    const/16 v1, 0x1c20

    if-le v0, v1, :cond_4f

    const/16 v0, 0x1c20

    goto :goto_4f

    :cond_4d
    const/16 v0, 0x5a

    :cond_4f
    :goto_4f
    return v0

    :cond_50
    const/16 v0, 0x3c

    return v0
.end method

.method public static createAirSuperiority(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 6
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "targetProvinceID"    # I
    .param p2, "divKey"    # Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    if-eqz p2, :cond_d

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_d
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    return-object v0
.end method

.method public static createAttackArmy(Laoc/kingdoms/lukasz/map/battles/Airport;IILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 7
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "targetArmyID"    # I
    .param p2, "targetProvinceID"    # I
    .param p3, "divKey"    # Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    if-eqz p3, :cond_d

    iput-object p3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_d
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetArmyID:I

    iput p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/16 v1, 0x10

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nGA init ar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AIRDBG"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static createIntercept(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/util/List;Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 9
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "enemyAirUnits"    # Ljava/util/List;
    .param p2, "divKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/battles/Airport;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit;",
            ">;Ljava/lang/String;)",
            "Laoc/kingdoms/lukasz/map/battles/AirMission;"
        }
    .end annotation

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    if-eqz p2, :cond_d

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetAirUnitIDs:Ljava/util/List;

    iget-wide v4, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->unitID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static createPatrol(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "targetProvinceID"    # I
    .param p2, "divKey"    # Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    if-eqz p2, :cond_4e

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v3, :cond_1f

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_33

    :cond_1f
    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_33

    :cond_25
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_33

    :cond_2b
    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_33

    :cond_31
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :goto_33
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->divLimit(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_59

    :goto_42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_59

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_42

    :cond_4e
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_59
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    return-object v0
.end method

.method public static createStrategicBombing(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 8
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "targetProvinceID"    # I
    .param p2, "divKey"    # Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    if-eqz p2, :cond_d

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_d
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz p2, :cond_23

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_25

    :cond_20
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :goto_25

    :cond_23
    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :goto_25
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_35

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    :cond_35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->escortLimit(Ljava/util/List;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_54
    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "esc:sz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dispatchSweep(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    return-object v0
.end method

.method public static createSweep(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 10
    .param p0, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "targetProvinceID"    # I
    .param p2, "divKey"    # Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;-><init>(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/Airport;I)V

    if-eqz p2, :cond_d

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :cond_d
    iput p1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_26

    goto :goto_39

    :cond_26
    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2f

    goto :goto_39

    :cond_2f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_39
    :goto_39
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_48

    goto :goto_5b

    :cond_48
    if-eqz v2, :cond_5b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_51

    goto :goto_5b

    :cond_51
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_5b
    :goto_5b
    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static dbgACg(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 10

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    return-void

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nACG t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " my="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " civ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mcv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "AIRDBG"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dbgArg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    const/4 v4, 0x3

    if-ne v0, v1, :cond_d

    const/4 v4, 0x1

    goto :goto_13

    :cond_d
    add-int/lit8 v5, v3, 0x40

    if-ge v2, v5, :cond_12

    goto :goto_13

    :cond_12
    const/4 v4, 0x2

    :goto_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nARG id="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " st="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " at="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " tgt="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " rn="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " d="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " m="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, " civ="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "AIRDBG"

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dbgAtk(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-eq v0, v1, :cond_67

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->atkDbgMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gez v6, :cond_12

    goto :goto_67

    :cond_12
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->atkDbgMs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nATK id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tgt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " civ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "AIRDBG"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method

.method public static dbgDead(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 10

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v0, v1, :cond_82

    :cond_e
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_19

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_19

    goto :goto_82

    :cond_19
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->deadDbgMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gez v6, :cond_25

    goto :goto_82

    :cond_25
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->deadDbgMs:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nDEAD id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " civ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "AIRDBG"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method

.method private dbgEl(J)V
    .registers 8

    const-wide/32 v0, 0x186a0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    const-string v0, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nEL el="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method private dbgFp(F)V
    .registers 10

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastDbgFp:F

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_46

    const-string v3, "AIRDBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nFP jump last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " cur="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " sp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v6, :cond_31

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    goto :goto_32

    :cond_31
    const/4 v6, -0x1

    :goto_32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " el="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastDbgFp:F

    return-void
.end method

.method public static dbgKo(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    return-void

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nKO id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " civ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "AIRDBG"

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dbgMv0()V
    .registers 9

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_mv0:st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ":rnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":dst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":pr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":pp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":segA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":segD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":hq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v2, :cond_70

    const/4 v2, 0x1

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dbgMvsw()V
    .registers 9

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_mvsw:to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":pr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ":st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dbgPos(I)V
    .registers 6

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastPosMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_91

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastPosMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nPOS id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":pv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":pp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":tgt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":cx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":fp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":an="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":du="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    return-void
.end method

.method private dbgUpd()V
    .registers 6

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nTRK2 upd:at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":tgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":an="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":du="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 8

    if-eqz p0, :cond_2b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v3, 0x0

    const/high16 v0, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_21

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    add-float/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_21
    int-to-float v5, v1

    div-float/2addr v0, v5

    const/high16 v5, 0x42200000    # 40.0f

    add-float/2addr v5, v0

    const/high16 v6, 0x42200000    # 40.0f

    div-float v6, v6, v5

    return v6

    :cond_2b
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static divLimit(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v2, :cond_2d

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v3, :cond_2d

    const/16 v4, 0xa

    if-gt v3, v4, :cond_2d

    move v0, v3

    :cond_2d
    return v0
.end method

.method private emitStrikeReport(Laoc/kingdoms/lukasz/map/province/Province;I)V
    .registers 16

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v9, :cond_90

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    const/4 v5, 0x0

    if-ne v9, v10, :cond_d

    const/4 v5, 0x1

    goto :goto_14

    :cond_d
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-eq v9, v11, :cond_14

    return-void

    :cond_14
    :goto_14
    new-instance v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    const/4 v11, 0x0

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v10, :cond_21

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    :cond_21
    const/4 v12, 0x0

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lostAircraft:Ljava/util/List;

    if-eqz v10, :cond_2a

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    :cond_2a
    const/4 v6, 0x0

    invoke-direct {v7, v9, v11, v12, v6}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    new-instance v8, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, p2, v11}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/battles/BattleReport;-><init>(Ljava/lang/String;IFZZILaoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v9, :cond_90

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addBattleReport(Laoc/kingdoms/lukasz/map/battles/BattleReport;)V

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v9, :cond_56

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->addNuke(I)V

    :cond_56
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v9, :cond_72

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u8f70\u70b8\u6210\u529f\uff1a\u76ee\u6807\u7701\u4eba\u53e3\u635f\u5931 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v9, :cond_72

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    :cond_72
    const-string v9, "AIRDBG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rep:prov="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":kill="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return-void
.end method

.method private static escortLimit(Ljava/util/List;)V
    .registers 5

    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x5

    if-le v0, v1, :cond_14

    sub-int v1, v0, v1

    :goto_c
    if-lez v1, :cond_14

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    return-void
.end method

.method private executeAttack()V
    .registers 10

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->allAircraftLost()Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgAtk(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    if-lt v0, v1, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nGA dry r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "AIRDBG"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :cond_134

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v6, v7, :cond_6e

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bAuto:Z

    if-eqz v6, :cond_6e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    if-eqz v6, :cond_6e

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v6

    if-nez v6, :cond_6e

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nB2c nofire tgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_134

    :cond_6e
    const/4 v4, 0x0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_77
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackGround()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->unitMul(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F

    move-result v5

    const/high16 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_a1

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->groundAttack:F

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    if-lez v2, :cond_a1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    :cond_a1
    goto :goto_77

    :cond_a2
    const/high16 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_134

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_12b

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v3, v2, :cond_e2

    const v1, 0x3dcccccd    # 0.1f

    mul-float v5, v4, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    const v1, 0x447a0000    # 1000.0f

    mul-float v5, v4, v1

    float-to-int v5, v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyPopDamage(Laoc/kingdoms/lukasz/map/province/Province;I)V

    invoke-direct {p0, v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->emitStrikeReport(Laoc/kingdoms/lukasz/map/province/Province;I)V

    const v1, 0x3a83126f    # 0.001f

    mul-float v5, v4, v1

    const v1, 0x3e19999a    # 0.15f

    cmpl-float v2, v5, v1

    if-lez v2, :cond_da

    move v5, v1

    :cond_da
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetArmyID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v0, v1, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyArmyDamage(Laoc/kingdoms/lukasz/map/province/Province;IFI)I

    goto :goto_12b

    :cond_e2
    const v1, 0x3ca3d70a    # 0.02f

    mul-float v5, v4, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    const v1, 0x42c80000    # 100.0f

    mul-float v5, v4, v1

    float-to-int v5, v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyPopDamage(Laoc/kingdoms/lukasz/map/province/Province;I)V

    invoke-direct {p0, v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->emitStrikeReport(Laoc/kingdoms/lukasz/map/province/Province;I)V

    const v5, 0x3eb33333    # 0.35f

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetArmyID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v0, v1, v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyArmyDamage(Laoc/kingdoms/lukasz/map/province/Province;IFI)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nGA fire r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AIRDBG"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12b
    :goto_12b
    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recordDamage(F)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    :cond_134
    :goto_134
    return-void
.end method

.method private getAirDistPix()I
    .registers 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-ltz v0, :cond_3a

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-gez v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int v4, v6, v4

    sub-int v5, v7, v5

    int-to-float v4, v4

    int-to-float v5, v5

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float v4, v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    float-to-int v0, v4

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private getAirDivKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLeadSpeedInt()I
    .registers 5

    const/16 v0, 0x320

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v1, :cond_1c

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    float-to-int v2, v2

    if-lez v2, :cond_35

    move v0, v2

    goto :goto_35

    :cond_1c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v1, :cond_35

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    float-to-int v2, v2

    if-lez v2, :cond_35

    move v0, v2

    :cond_35
    :goto_35
    const-string v1, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nSpd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSpeedScaleBase()I
    .registers 6

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDistPix()I

    move-result v0

    if-lez v0, :cond_38

    move v4, v0

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x258

    if-ge v0, v1, :cond_f

    const/16 v0, 0x258

    :cond_f
    const/16 v1, 0xbb8

    if-le v0, v1, :cond_15

    const/16 v0, 0xbb8

    :cond_15
    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x5

    div-int/2addr v0, v1

    const-string v1, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nDsb2:p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_38
    const/16 v0, 0x320

    return v0
.end method

.method private huntCombatHalf()F
    .registers 8

    const/high16 v4, 0x0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_1e

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_1e

    move v4, v5

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    const v0, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    return v4
.end method

.method private huntHpOk()Z
    .registers 8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_2b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2b

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_26

    iget v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_26

    const v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpl-float v6, v5, v4

    if-gez v6, :cond_29

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    const/4 v6, 0x1

    return v6

    :cond_2b
    const/4 v6, 0x0

    return v6
.end method

.method private huntNTLog(I)I
    .registers 8

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntDbgMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    const/4 v4, 0x0

    return v4

    :cond_d
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntDbgMs:J

    const-string v0, "AIRDBG"

    if-nez p1, :cond_1c

    const-string v1, "nHT dry"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_1c
    const-string v1, "nHT none"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method private static huntOkLog(J)I
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nHT ok k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private huntPick()Laoc/kingdoms/lukasz/map/battles/AirMission;
    .registers 16

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v4, :cond_6a

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_6a

    iget-object v2, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :cond_6a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6a

    const/4 v8, 0x0

    const/high16 v7, 0x0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_69

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v3, :cond_66

    if-eq v3, p0, :cond_66

    iget v9, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v9, v10, :cond_66

    invoke-static {v10, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9

    if-eqz v9, :cond_66

    iget-object v9, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v9, v10, :cond_66

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v9, v10, :cond_66

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v9, v10, :cond_66

    iget v11, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v11, :cond_66

    iget-object v9, v3, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v9, :cond_66

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_66

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntVisOk(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v9

    if-eqz v9, :cond_66

    invoke-static {v4, v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntCombatHalf()F

    move-result v10

    cmpl-float v12, v9, v10

    if-gtz v12, :cond_66

    if-eqz v8, :cond_64

    cmpl-float v12, v9, v7

    if-gez v12, :cond_66

    :cond_64
    move-object v8, v3

    move v7, v9

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_69
    return-object v8

    :cond_6a
    const/4 v8, 0x0

    return-object v8
.end method

.method private huntRadarMaxI()I
    .registers 8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_20

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1f

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v3, :cond_1c

    iget v5, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    float-to-int v5, v5

    if-le v5, v4, :cond_1c

    move v4, v5

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    return v4

    :cond_20
    const/4 v4, 0x0

    return v4
.end method

.method private huntVisOk(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 16

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v0, :cond_46

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_46

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v2, :cond_46

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntRadarMaxI()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-lez v4, :cond_46

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v6

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcCosK(I)I

    move-result v8

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-static {v4, v9}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I

    move-result v4

    invoke-static {v5, v7, v4, v8}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z

    move-result v5

    return v5

    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method private static missileCountForGen(I)I
    .registers 2

    const/4 v0, 0x2

    if-le p0, v0, :cond_a

    const/4 v0, 0x4

    if-le p0, v0, :cond_8

    const/4 v0, 0x4

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static missileHopsForGen(I)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private static missileIsNeighbor(II)Z
    .registers 9

    if-ltz p0, :cond_4a

    if-ltz p1, :cond_4a

    if-eq p0, p1, :cond_48

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v6, :cond_1e

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ne v4, p1, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v3

    sub-int v2, v2, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v5

    sub-int v4, v4, v5

    mul-int v2, v2, v2

    mul-int v4, v4, v4

    add-int v2, v2, v4

    const/4 v3, 0x3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileRangeForGen(I)I

    move-result v3

    mul-int v3, v3, v3

    if-le v2, v3, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v0, 0x1

    return v0

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    return v0
.end method

.method private static missileRangeForGen(I)I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method private missileTick()V
    .registers 15

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d6

    # r6d255: in-flight mode -- target-lost cleanup + dual-mode fallback.
    # Damage is now resolved on CONTACT (ProvinceDrawArmy.msFxStep -> msFxContact).
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v3
    if-eqz v3, :msl_lost
    iget-object v4, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v4, :msl_lost
    const/4 v1, 0x0
    const/4 v5, 0x0
    :msl_loop
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v6
    if-ge v5, v6, :msl_found
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v6, :msl_next
    iget-wide v7, v6, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J
    iget-wide v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J
    cmp-long v11, v7, v9
    if-nez v11, :msl_next
    move-object v1, v6
    goto :msl_found
    :msl_next
    add-int/lit8 v5, v5, 0x1
    goto :msl_loop
    :msl_found
    if-eqz v1, :msl_lost
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v3, :msl_lost
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v4
    if-lez v4, :msl_lost
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    mul-int/lit8 v0, v0, 0x18
    add-int/2addr v0, v2
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I
    if-gtz v3, :msl_f1
    const/4 v3, 0x2
    :msl_f1
    add-int/2addr v2, v3
    add-int/lit8 v3, v2, 0xc
    if-ge v0, v3, :msl_f2
    return-void
    :msl_f2
    add-int/lit8 v3, v2, 0x30
    if-ge v0, v3, :msl_fb
    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxStepMs:J
    const-wide/16 v8, 0x0
    cmp-long v10, v6, v8
    if-lez v10, :msl_fb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    sub-long v4, v4, v6
    const-wide/16 v6, 0x2710
    cmp-long v8, v4, v6
    if-gez v8, :msl_fb
    return-void
    :msl_fb
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v3, :msl_clean
    const/4 v4, 0x0
    const/high16 v5, 0x0
    :msl_sum
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v12
    if-ge v4, v12, :msl_sum2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v13
    check-cast v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F
    add-float/2addr v5, v13
    add-int/lit8 v4, v4, 0x1
    goto :msl_sum
    :msl_sum2
    const/high16 v8, 0x0
    cmpl-float v9, v5, v8
    if-lez v9, :msl_clean
    const/high16 v8, 0x40000000
    mul-float/2addr v5, v8
    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    move-result v8
    mul-float/2addr v5, v8
    invoke-direct {p0, v1, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "nMS fb t="
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v9, " h="
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    goto :msl_clean
    :msl_lost
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "nMS lost t="
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v9, " h="
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :msl_clean
    const/4 v0, 0x0
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J
    const/4 v0, 0x2
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I
    return-void

    :cond_d6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_2c5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_e6

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v0, v1, :cond_2c5

    :cond_e6
    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v13, :cond_2c5

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    if-gtz v0, :cond_156

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_156

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v3, :cond_2c5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c5

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileCountForGen(I)I

    move-result v6

    mul-int v7, v6, v4

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    iput v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nMS init p="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " n="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " g="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " hpt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " t="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_156
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-gtz v0, :cond_18e

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c5

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const-string v3, "AIRDBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nMS dry t="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18e
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    if-lez v1, :cond_19e

    sub-int v1, v0, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2c5

    :cond_19e
    const/4 v9, 0x0

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v8, :cond_1b7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b7

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-ne v8, v1, :cond_1b7

    const/4 v9, 0x1

    :cond_1b7
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v3

    if-eqz v3, :cond_2c5

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v3, :cond_2c5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1c3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_209

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v0, :cond_206

    if-eq v0, p0, :cond_206

    iget v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    if-eq v7, v8, :cond_206

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v7, v8, :cond_1e3

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v7, v8, :cond_206

    :cond_1e3
    iget v6, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v6, :cond_206

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v7, :cond_206

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_206

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileIsNeighbor(II)Z

    move-result v7

    if-eqz v7, :cond_206

    if-eqz v9, :cond_204

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v7, v8, :cond_204

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v7, v8, :cond_204

    goto :goto_206

    :cond_204
    move-object v1, v0

    goto :goto_209

    :cond_206
    :goto_206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c3

    :cond_209
    :goto_209
    if-eqz v1, :cond_20c

    goto :goto_211

    :cond_20c
    if-eqz v9, :cond_211

    const/4 v9, 0x0

    const/4 v4, 0x0

    goto :goto_1c3

    :cond_211
    :goto_211
    if-eqz v1, :cond_2c5

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c5

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-ge v5, v4, :cond_220

    move v4, v5

    :cond_220
    sub-int v5, v5, v4

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    mul-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v7

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileHours:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J

    const/4 v6, 0x1

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    iget-wide v6, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J

    const/4 v6, 0x0

    iput v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nMS fire t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ammo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " tgt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " d="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v8, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince_Simpler(II)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v8, 0x5

    const/4 v10, 0x3

    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileRangeForGen(I)I

    move-result v10

    if-gtz v10, :cond_28e

    const/16 v10, 0x64

    :cond_28e
    div-int v9, v9, v10

    add-int/lit8 v9, v9, 0x2

    const/16 v10, 0x8

    if-le v9, v10, :cond_297

    move v9, v10

    :cond_297
    add-int v11, v9, v9

    iput v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFlyHours:I

    const-string v10, " ft="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v12, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTgtAt:I

    const/4 v12, 0x0

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTN:I

    const/16 v12, 0xf

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxTH:I

    const-string v8, " r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileRangeForGen(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c5
    return-void
.end method

.method public static msFxContact(Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 13

    # r6d255: A2A contact resolution (pure pursuit + contact damage).
    # Called from ProvinceDrawArmy.msFxStep when the missile reaches the target.
    if-eqz p0, :done

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :cleanup
    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v0, :cleanup
    const/4 v1, 0x0
    const/4 v2, 0x0
    :loop
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v3
    if-ge v1, v3, :found
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v4, :next
    iget-wide v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J
    iget-wide v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J
    cmp-long v10, v6, v8
    if-nez v10, :next
    move-object v2, v4
    goto :found
    :next
    add-int/lit8 v1, v1, 0x1
    goto :loop
    :found
    if-eqz v2, :cleanup
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v4, :cleanup
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v3
    if-lez v3, :cleanup
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v4, :cleanup
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v3
    if-lez v3, :cleanup
    const/4 v1, 0x0
    const/high16 v5, 0x0
    :sum
    invoke-interface {v4}, Ljava/util/List;->size()I
    move-result v3
    if-ge v1, v3, :sum_end
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v10
    check-cast v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;
    iget v11, v10, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F
    add-float/2addr v5, v11
    add-int/lit8 v1, v1, 0x1
    goto :sum
    :sum_end
    const/high16 v3, 0x0
    cmpl-float v6, v5, v3
    if-lez v6, :cleanup
    const/high16 v3, 0x40000000
    mul-float/2addr v5, v3
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->defenseMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    move-result v3
    mul-float/2addr v5, v3
    invoke-direct {p0, v2, v5}, Laoc/kingdoms/lukasz/map/battles/AirMission;->applyAirDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    new-instance v10, Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    const-string v11, "nMS hit t="
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v11, " h="
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    invoke-static {v10}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V
    :cleanup
    const/4 v1, 0x0
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeProgress:F
    const-wide/16 v6, 0x0
    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeTargetMissionID:J
    const/4 v1, 0x2
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->msFxInit:I
    :done
    return-void
.end method

.method private pickupAirDivision()V
    .registers 6

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->pu0(Ljava/lang/String;I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-ltz v2, :cond_2e

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2e

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_2e
    return-void
.end method

.method public static pl0(Ljava/lang/String;II)V
    .registers 6
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "at"    # I
    .param p2, "to"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pl0 k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private placeAirDivision(I)V
    .registers 6

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {v2, v1, p1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->pl0(Ljava/lang/String;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v0, :cond_39

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-lez v2, :cond_20

    if-eq v2, p1, :cond_20

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    :cond_20
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_33

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    move-result-object v3

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_39
    return-void
.end method

.method public static pu0(Ljava/lang/String;I)V
    .registers 6
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "at"    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pu0 k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private returnAirDivisionHome()V
    .registers 12

    const-string v0, "AIRDBG"

    const-string v1, "nRHE m=2"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRH at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_2e

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_2f

    :cond_2e
    const/4 v2, -0x1

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v0, :cond_8b

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_57

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_59

    :cond_57
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_59
    if-ne v1, v2, :cond_63

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->rhPr(ILjava/lang/Object;I)V

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    goto :goto_8b

    :cond_63
    if-lez v1, :cond_72

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_72

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    :cond_72
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_79

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_7b

    :cond_79
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_7b
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_88

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->rhPr(ILjava/lang/Object;I)V

    :cond_88
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    :cond_8b
    :goto_8b
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIRDBG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nRHk k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_14e

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v1, :cond_ae

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_b0

    :cond_ae
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_b0
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;

    if-eqz v2, :cond_fd

    const-string v5, "AIRDBG"

    const-string v6, "nRH2"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_fd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/Province;

    if-eqz v5, :cond_fa

    const/4 v6, 0x0

    :goto_d1
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    if-ge v6, v8, :cond_fa

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    if-eqz v7, :cond_f7

    iget-object v8, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v8, :cond_f7

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f7

    if-eq v5, v10, :cond_f0

    if-nez v9, :cond_ec

    move-object v9, v7

    :cond_ec
    :goto_ec
    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_d1

    :cond_f0
    if-eqz v4, :cond_f3

    goto :goto_ec

    :cond_f3
    const/4 v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    :cond_f7
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    :cond_fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_c2

    :cond_fd
    const-string v5, "AIRDBG"

    const-string v6, "nRH3"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_107

    goto :goto_124

    :cond_107
    const-string v5, "AIRDBG"

    const-string v6, "nRHa"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v7, :cond_113

    goto :goto_114

    :cond_113
    move-object v7, v9

    :goto_114
    if-eqz v7, :cond_124

    if-eqz v10, :cond_124

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v8, :cond_124

    iput-object v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :cond_124
    :goto_124
    const-string v5, "AIRDBG"

    const-string v6, "nRHm"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nRHx hp="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_13e

    const/4 v7, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v7, 0x0

    :goto_13f
    const-string v8, " any="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    return-void
.end method

.method private returnToBase()V
    .registers 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;->IDLE:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxPayload:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    goto :goto_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4b

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileCountForGen(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilePerPlane:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->strikeKind:I

    :cond_4b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/Airport;->updateDeployedCount()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->recalcPool()V

    return-void
.end method

.method public static rhPr(ILjava/lang/Object;I)V
    .registers 8
    .param p0, "prov"    # I
    .param p1, "div"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rhAdd f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":mv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "AIRDBG"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static safeEscapeMenu()Z
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_b

    return v1

    :cond_9
    const/4 v1, 0x0

    return v1

    :catch_b
    const/4 v1, 0x0

    return v1
.end method

.method private setupReturnLeg()V
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_19

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_15

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    goto :goto_19

    :cond_15
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    :cond_19
    :goto_19
    return-void
.end method

.method private shouldReturn()Z
    .registers 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_2f

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->AIR_SUPERIORITY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-eq v0, v1, :cond_2f

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackGround()Z

    move-result v3

    if-eqz v3, :cond_28

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    if-lez v4, :cond_28

    const/4 v0, 0x0

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2b
    :goto_2b
    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    return v0

    :cond_2f
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I

    if-lt v0, v1, :cond_37

    const/4 v0, 0x1

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I

    if-lt v0, v1, :cond_42

    if-lez v1, :cond_42

    goto :goto_56

    :cond_42
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_56

    const/4 v0, 0x0

    return v0

    :cond_56
    :goto_56
    const/4 v0, 0x1

    return v0
.end method

.method public static stealthMul(Laoc/kingdoms/lukasz/map/battles/AirMission;)F
    .registers 8

    if-eqz p0, :cond_30

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    const/4 v3, 0x0

    const/high16 v0, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_21

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->stealth:F

    add-float/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_21
    int-to-float v5, v1

    div-float/2addr v0, v5

    const v5, 0x3f666666    # 0.9f

    cmpl-float v6, v0, v5

    if-lez v6, :cond_2b

    move v0, v5

    :cond_2b
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v5, v0

    return v5

    :cond_30
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private throttlePass()Z
    .registers 9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v0, :cond_1f

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    sub-long v4, v0, v2

    long-to-int v5, v4

    if-gez v5, :cond_17

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    const/4 v0, 0x1

    return v0

    :cond_17
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-lt v5, v6, :cond_21

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    :cond_1f
    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private trackTarget()V
    .registers 16

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_87

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_87

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->PLANNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_87

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_87

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_87

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_87

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v10

    if-eqz v10, :cond_87

    iget-object v4, v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v4, :cond_87

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v14, :cond_2f

    iget-wide v6, v14, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_44

    goto :goto_2f

    :cond_44
    const/4 v0, 0x1

    iget v9, v14, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v9, :cond_88

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    iget v9, v14, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-eq v9, v8, :cond_87

    iget v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v8

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    const-string v0, "AIRDBG"

    const-string v1, "nTRK upd"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgUpd()V

    goto :goto_87

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    const-string v0, "AIRDBG"

    const-string v1, "nTRK out"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    goto :goto_87

    :cond_77
    if-nez v0, :cond_87

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    const-string v0, "AIRDBG"

    const-string v1, "nTRK lost"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    :cond_87
    :goto_87
    return-void

    :cond_88
    const-string v0, "AIRDBG"

    const-string v1, "nTRK gone"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->forceReturn()V

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    goto :goto_87
.end method

.method private tryHunt()Z
    .registers 16

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne v0, v1, :cond_6e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v0, v1, :cond_6e

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntUsed:I

    if-nez v0, :cond_6e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_6e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6e

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missilesLeft:I

    if-lez v0, :cond_62

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntHpOk()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntPick()Laoc/kingdoms/lukasz/map/battles/AirMission;

    move-result-object v0

    if-eqz v0, :cond_68

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animStartMs:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    const/4 v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntUsed:I

    iget-wide v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntOkLog(J)I

    move-result v1

    const/4 v4, 0x1

    return v4

    :cond_62
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntNTLog(I)I

    const/4 v4, 0x0

    return v4

    :cond_68
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->huntNTLog(I)I

    const/4 v4, 0x0

    return v4

    :cond_6e
    const/4 v4, 0x0

    return v4
.end method

.method private static unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method private static unitMul(Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne p0, v1, :cond_12

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-ne p1, v1, :cond_1d

    const v0, 0x3e800000    # 0.25f

    goto :goto_1d

    :cond_12
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ATTACK_ARMY:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    if-ne p0, v1, :cond_1d

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-ne p1, v1, :cond_1d

    const v0, 0x3e4ccccd    # 0.2f

    :cond_1d
    :goto_1d
    return v0
.end method

.method private updateAnimClock()V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_16

    const-wide/32 v6, 0x2710

    cmp-long v8, v4, v6

    if-gtz v8, :cond_16

    goto :goto_18

    :cond_16
    const-wide/16 v4, 0x10

    :goto_18
    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v2, :cond_34

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v2, :cond_34

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v3, :cond_2c

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirMission;->safeEscapeMenu()Z

    move-result v3

    if-nez v3, :cond_34

    :cond_2c
    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    invoke-direct {p0, v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgEl(J)V

    :cond_34
    return-void
.end method


# virtual methods
.method public forceReturn()V
    .registers 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_a3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_a3

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v0, v1, :cond_a3

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->setupReturnLeg()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    goto :goto_4b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v0, :cond_25

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-nez v0, :cond_27

    :cond_25
    const/16 v0, 0x12c

    :cond_27
    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getSpeedScaleBase()I

    move-result v4

    mul-int/2addr v0, v4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getLeadSpeedInt()I

    move-result v4

    div-int/2addr v0, v4

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    mul-int v1, v1, v0

    const/16 v2, 0x3e8

    div-int v1, v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgEl(J)V

    goto :goto_4f

    :goto_4b
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    :goto_4f
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fr_set:el="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fr_enter:fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v2

    const-string v3, " st="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AIRDBG"

    const-string v1, "forceReturn:ok"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return-void
.end method

.method public moveDivisionAlongFlight()V
    .registers 16

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgMv0()V

    iget-object v14, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v14, :cond_237

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v1, v2, :cond_16

    rsub-int v0, v0, 0x64

    :cond_16
    iget v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    add-int/lit8 v12, v12, 0x10

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v5, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    sub-int v6, v4, v2

    mul-int v6, v6, v0

    div-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v2

    sub-int v7, v5, v3

    mul-int v7, v7, v0

    div-int/lit8 v7, v7, 0x64

    add-int/2addr v7, v3

    int-to-float v6, v6

    div-float v6, v6, v1

    int-to-float v7, v7

    div-float v7, v7, v1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v10

    int-to-float v10, v10

    sub-float v6, v6, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float v7, v7, v10

    float-to-int v6, v6

    float-to-int v7, v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v8

    invoke-direct {p0, v8}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgPos(I)V

    if-ltz v8, :cond_237

    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-eq v8, v9, :cond_237

    const-string v1, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nRT seg new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " at="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " p1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " p2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " st="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " fp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v11

    const/4 v10, 0x3

    if-eq v11, v10, :cond_e2

    iget v10, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-eq v8, v10, :cond_237

    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    if-eq v8, v13, :cond_237

    :cond_e2
    iget v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    if-gtz v12, :cond_ea

    const/16 v12, 0x3e8

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    :cond_ea
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->mvSeg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    iget v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v12, :cond_131

    if-lt v11, v12, :cond_237

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v12, v11, :cond_fd

    iget v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-eq v8, v11, :cond_237

    :cond_fd
    if-lez v9, :cond_100

    goto :goto_106

    :cond_100
    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-lez v9, :cond_131

    if-eq v8, v9, :cond_131

    :goto_106
    const-string v10, "AIRDBG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ub:mvs0:new="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":src="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :cond_131

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getAirDivKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    :cond_131
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    if-eqz v10, :cond_1ef

    invoke-virtual {v10, v14}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    const-string v10, "AIRDBG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "um_mvp:at="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v12

    const-string v13, " st="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " fp="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iput v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevPrevID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogFromPlanesTick()V

    if-lez v9, :cond_17e

    iput v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    goto :goto_182

    :cond_17e
    iget v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v13, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    :goto_182
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgMvsw()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->fogPlaneCross(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    const/4 v12, 0x0

    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    if-lez v9, :cond_18e

    goto :goto_190

    :cond_18e
    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    :goto_190
    if-ltz v9, :cond_1ed

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v7

    invoke-static {v8, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v10

    invoke-static {v8, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v11

    sub-int v12, v10, v6

    if-ltz v12, :cond_1ad

    goto :goto_1ae

    :cond_1ad
    neg-int v12, v12

    :goto_1ae
    sub-int v13, v11, v7

    if-ltz v13, :cond_1b3

    goto :goto_1b4

    :cond_1b3
    neg-int v13, v13

    :goto_1b4
    add-int v12, v12, v13

    sub-int v6, v4, v2

    if-ltz v6, :cond_1bb

    goto :goto_1bc

    :cond_1bb
    neg-int v6, v6

    :goto_1bc
    sub-int v7, v5, v3

    if-ltz v7, :cond_1c1

    goto :goto_1c2

    :cond_1c1
    neg-int v7, v7

    :goto_1c2
    add-int v13, v6, v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v14, :cond_1cc

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-nez v14, :cond_1ce

    :cond_1cc
    const/16 v14, 0x12c

    :cond_1ce
    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v11, v10, :cond_1d7

    const/16 v11, 0x1c

    goto :goto_1d9

    :cond_1d7
    const/16 v11, 0x28

    :goto_1d9
    mul-int v14, v14, v11

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getSpeedScaleBase()I

    move-result v4

    mul-int/2addr v14, v4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getLeadSpeedInt()I

    move-result v4

    div-int/2addr v14, v4

    if-lez v13, :cond_1ec

    mul-int v12, v12, v14

    div-int v12, v12, v13

    goto :goto_1ed

    :cond_1ec
    move v12, v14

    :cond_1ed
    :goto_1ed
    iput v12, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    :cond_1ef
    const-string v14, "AIRDBG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "um_mv2:pct="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":prov="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "AIRDBG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "um_seg:prev="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":at="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":mh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_237
    return-void
.end method

.method public recalcPool()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v4, :cond_a

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    add-float v1, v1, v5

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz v4, :cond_25

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    add-float v2, v2, v5

    goto :goto_25

    :cond_38
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxPoolHP:F

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->fPoolHP:F

    return-void
.end method

.method public recordDamage(F)V
    .registers 3
    .param p1, "damage"    # F

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->totalDamageDealt:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->totalDamageDealt:F

    return-void
.end method

.method public recordKill()V
    .registers 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->enemyAircraftShotDown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->enemyAircraftShotDown:I

    return-void
.end method

.method public recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    .registers 4
    .param p1, "unit"    # Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lostAircraft:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/Airport;->removeAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgKo(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    return-void
.end method

.method public tickInvars()Z
    .registers 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v0, :cond_17

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_17

    :cond_11
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-eqz v2, :cond_17

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-nez v0, :cond_33

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_33

    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ivLog(I)V

    const/4 v0, 0x1

    return v0

    :cond_33
    :goto_33
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v3, :cond_5b

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v4, :cond_5b

    iget v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    if-ltz v6, :cond_5b

    if-eq v6, v5, :cond_5b

    if-ne v5, v3, :cond_5b

    invoke-direct {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirMission;->placeAirDivision(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const/4 v0, 0x2

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ivLog(I)V

    const/4 v0, 0x1

    return v0

    :cond_5b
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7c

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v4, :cond_7c

    iget v5, v4, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ne v6, v5, :cond_7c

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnToBase()V

    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->ivLog(I)V

    :cond_7c
    const/4 v0, 0x0

    return v0
.end method

.method private patrolEngage()V
    .registers 13
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->PATROL:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    if-ne v0, v1, :pe_ret
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;
    if-eqz v0, :pe_ret
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-eqz v0, :pe_ret
    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    if-eqz v2, :pe_ret
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;
    if-eqz v2, :pe_ret
    invoke-interface {v2}, Ljava/util/List;->size()I
    move-result v3
    const/4 v4, 0x0
:pe_loop
    if-ge v4, v3, :pe_ret
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    if-eqz v5, :pe_next
    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;
    if-eqz v5, :pe_next
    iget v10, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I
    if-eq v10, v9, :pe_next
    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z
    move-result v8
    if-eqz v8, :pe_next
    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z
    move-result v8
    if-eqz v8, :pe_next
    iget-wide v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J
    move v8, v9
    invoke-static/range {v6 .. v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z
    move-result v8
    if-nez v8, :pe_next
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->INTERCEPT:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;
    iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J
    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I
    iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I
    return-void
:pe_next
    add-int/lit8 v4, v4, 0x1
    goto :pe_loop
:pe_ret
    return-void
.end method

.method public update()V
    .registers 9

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->rtPb(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->tickInvars()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "AIRDBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "um_enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgDead(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->updateAnimClock()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v0, :cond_3e

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_3d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3e

    :cond_3d
    return-void

    :cond_3e
    :goto_3e
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    long-to-int v0, v0

    const/16 v1, 0x64

    mul-int v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v1, :cond_4d

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->playSpeedTIME:I

    if-nez v1, :cond_4f

    :cond_4d
    const/16 v1, 0x12c

    :cond_4f
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getSpeedScaleBase()I

    move-result v4

    mul-int/2addr v1, v4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getLeadSpeedInt()I

    move-result v4

    div-int/2addr v1, v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v2, v3, :cond_6c

    const/16 v2, 0x1c

    mul-int v1, v1, v2

    div-int v0, v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_6b

    const/16 v0, 0x64

    :cond_6b
    goto :goto_78

    :cond_6c
    const/16 v2, 0x28

    mul-int v1, v1, v2

    div-int v0, v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_78

    const/16 v0, 0x64

    :cond_78
    :goto_78
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgFp(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->moveDivisionAlongFlight()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    if-eqz v0, :cond_8f

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->throttlePass()Z

    move-result v1

    if-eqz v1, :cond_a1

    :cond_8f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->patrolEngage()V
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->trackTarget()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->airCombatTick()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->missileTick()V

    packed-switch v0, :pswitch_data_2ee

    :cond_a1
    return-void

    :pswitch_a2
    const-string v6, "AIRDBG"

    const-string v7, "um_p0"

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b2

    return-void

    :cond_b2
    const-string v6, "AIRDBG"

    const-string v7, "um_p0go"

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    const/4 v2, 0x1

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;->GROUND_ATTACK:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    goto :goto_c3

    :cond_d7
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->pickupAirDivision()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animStartMs:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v6

    const-string v7, "AIRDBG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "um_p0end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_109
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_r1:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    if-ge v0, v1, :cond_13b

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->allAircraftLost()Z

    move-result v0

    if-eqz v0, :cond_13a

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    :cond_13a
    return-void

    :cond_13b
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->allAircraftLost()Z

    move-result v0

    if-eqz v0, :cond_149

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    return-void

    :cond_149
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v1, :cond_177

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-eq v2, v1, :cond_177

    if-lez v2, :cond_177

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    if-eqz v5, :cond_177

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    if-lez v3, :cond_177

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    add-int/lit8 v4, v4, 0x40

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->getLeadSpeedInt()I

    move-result v6

    const/16 v7, 0x320

    if-ge v6, v7, :cond_174

    if-lez v6, :cond_174

    const/16 v7, 0xc8

    if-ge v6, v7, :cond_170

    move v6, v7

    :cond_170
    const/16 v7, 0x320

    mul-int/2addr v4, v7

    div-int/2addr v4, v6

    :cond_174
    if-ge v3, v4, :cond_177

    return-void

    :cond_177
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgArg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->placeAirDivision(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EXECUTING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "um_sw:st=2:fp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":rnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1a9
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_p2:l="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->executeAttack()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bReHunt()Z

    move-result v0

    if-eqz v0, :cond_1cb

    return-void

    :cond_1cb
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lingerRounds:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d9

    :cond_1d9
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->shouldReturn()Z

    move-result v0

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_sr:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_286

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nRT sw at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_234

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    goto :goto_235

    :cond_234
    const/4 v2, -0x1

    :goto_235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegDurMs:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivSegAnimMs:I

    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "um_sw:st=3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animStartMs:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animPrevMs:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastTickMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v0, :cond_286

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-ltz v1, :cond_282

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->calculateDistance()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    goto :goto_286

    :cond_282
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    :cond_286
    :goto_286
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->allAircraftLost()Z

    move-result v0

    if-eqz v0, :cond_293

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    :cond_293
    return-void

    :pswitch_294
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    const-string v6, "AIRDBG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "um_p3:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->tryHunt()Z

    move-result v0

    if-eqz v0, :cond_2b9

    return-void

    :cond_2b9
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->roundsInFlight:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->distanceToTarget:I

    if-ge v0, v1, :cond_2cd

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->allAircraftLost()Z

    move-result v0

    if-eqz v0, :cond_2cc

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ABORTED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    :cond_2cc
    return-void

    :cond_2cd
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2e0

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->animElapsedMs:J

    const-wide/32 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_2e0

    return-void

    :cond_2e0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->dbgArg(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->COMPLETED:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnAirDivisionHome()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->returnToBase()V

    return-void

    :pswitch_data_2ee
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_109
        :pswitch_1a9
        :pswitch_294
    .end packed-switch
.end method
