.class public Laoc/kingdoms/lukasz/map/battles/RealTimeSim;
.super Ljava/lang/Object;
.source "RealTimeSim.java"


# static fields
.field public static dbgFrame:I

.field public static dbgTaskProg:I

.field public static dbgTaskState:I

.field private static instance:Laoc/kingdoms/lukasz/map/battles/RealTimeSim;


# instance fields
.field public entities:Ljava/util/List;

.field public events:Ljava/util/List;

.field public lastFrameTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->dbgTaskState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->entities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->events:Ljava/util/List;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->lastFrameTime:J

    return-void
.end method

.method public static getInstance()Laoc/kingdoms/lukasz/map/battles/RealTimeSim;
    .registers 1

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->instance:Laoc/kingdoms/lukasz/map/battles/RealTimeSim;

    if-nez v0, :cond_b

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->instance:Laoc/kingdoms/lukasz/map/battles/RealTimeSim;

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->instance:Laoc/kingdoms/lukasz/map/battles/RealTimeSim;

    return-object v0
.end method


# virtual methods
.method public addSquad(IIIIF)V
    .registers 12
    .param p1, "srcProvinceID"    # I
    .param p2, "dstProvinceID"    # I
    .param p3, "ownerCivID"    # I
    .param p4, "squadSize"    # I
    .param p5, "speed"    # F

    new-instance v0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/battles/RealTimeSim$FlyingEntity;-><init>(IIIIF)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->entities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public consumeEvents()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->events:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public debugDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 2

    return-void
.end method

.method public updateFrame()V
    .registers 8

    const-string v5, "AIRDBG"

    const-string v6, "um_rf"

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->lastFrameTime:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->GAME_SPEED:F

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/AirMission;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->EN_ROUTE:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-eq v3, v4, :cond_35

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v3, v4, :cond_1f

    :cond_35
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->ordinal()I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "um_rt:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dedupAirhqDivision(Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirMission;->moveDivisionAlongFlight()V

    goto :goto_1f
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_5e

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->detectEnemyMissions()V

    :cond_59
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->lastFrameTime:J

    return-void

    :catch_5e
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/RealTimeSim;->lastFrameTime:J

    return-void
.end method
