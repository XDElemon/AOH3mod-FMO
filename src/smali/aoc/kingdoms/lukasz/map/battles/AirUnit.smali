.class public Laoc/kingdoms/lukasz/map/battles/AirUnit;
.super Ljava/lang/Object;


# static fields
.field private static uidCounter:J


# instance fields
.field public agility:F

.field public airAttack:F

.field public airportID:I

.field public canAttackAir:Z

.field public canAttackGround:Z

.field public civID:I

.field public combatRadius:F

.field public currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

.field public currentPayload:I

.field public defense:F

.field public distanceToTarget:I


.field public groundAttack:F

.field public hp:F

.field public isAlive:Z

.field public isDrone:Z

.field public isInFlight:Z

.field public isShotDown:Z

.field public maxHp:F

.field public maxPayload:I

.field public modelAid:I

.field public radarDetect:F


.field public roundsInFlight:I

.field public speed:F

.field public stealth:F

.field public type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public typeID:I

.field public unitID:J


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V
    .registers 9
    .param p1, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .param p2, "civID"    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->unitID:J

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit;->applyTypeDefaults()V

    # v53：fuel 也已删（死字段）；默认值初始化改按 maxHp 判空
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3d

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    const v0, 0x44098000    # 550.0f（三代探测范围，v37 兜底）

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarDetect:F

    const/4 v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxPayload:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackAir:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackGround:Z

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isShotDown:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;->IDLE:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentMission:Laoc/kingdoms/lukasz/map/battles/AirUnit$Mission;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isDrone:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->distanceToTarget:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->roundsInFlight:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airportID:I

    return-void
.end method

.method private applyTypeDefaults()V
    .registers 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->applyType(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/high16 v1, 0x40c00000    # 6.0f

    goto :goto_19

    :cond_14
    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_19

    :cond_17
    const/high16 v1, 0x41000000    # 8.0f

    :goto_19
    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    return-void
.end method


# virtual methods
.method public canAttackGround()Z
    .registers 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackGround:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public canIntercept()Z
    .registers 2

    # v37：无人机不参与拦截（isDrone ? false : canAttackAir）
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isDrone:Z

    if-eqz v0, :r6d_ci_false

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackAir:Z

    return v0

    :r6d_ci_false
    const/4 v0, 0x0

    return v0
.end method

.method public resetRound()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isShotDown:Z

    return-void
.end method
