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

.field public currentTarget:Ljava/lang/Object;

.field public defense:F

.field public distanceToTarget:I

.field public ecm:F

.field public fuel:F

.field public fuelConsumption:F

.field public groundAttack:F

.field public hp:F

.field public isAlive:Z

.field public isInFlight:Z

.field public isShotDown:Z

.field public maxFuel:F

.field public maxHp:F

.field public maxPayload:I

.field public radarRange:F

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

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->unitID:J

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit;->applyTypeDefaults()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxFuel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3d

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxFuel:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->fuel:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->fuelConsumption:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

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

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentTarget:Ljava/lang/Object;

    const/4 v0, 0x0

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

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackAir:Z

    return v0
.end method

.method public resetRound()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isShotDown:Z

    return-void
.end method
