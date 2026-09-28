.class public Laoc/kingdoms/lukasz/map/battles/Airport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/battles/Airport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# instance fields
.field public aircraft:Ljava/util/Map;

.field public aircraftDeployed:I

.field public autoStrikeOff:Z

.field public buildQueue:Ljava/util/List;

.field public buildTurnsRemaining:I

.field public buildTurnsTotal:I

.field public buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

.field public civID:I

.field public level:I

.field public maxCapacity:I

.field public mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

.field public prefPayload:I

.field public provinceID:I

.field public radarRange:F

.field public totalAircraft:I

.field public totalLost:I


# direct methods
.method public constructor <init>(III)V
    .registers 11
    .param p1, "provinceID"    # I
    .param p2, "civID"    # I
    .param p3, "level"    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    const/4 v0, 0x1

    if-ge p3, v0, :cond_b

    move p3, v0

    :cond_b
    const/4 v0, 0x5

    if-le p3, v0, :cond_f

    move p3, v0

    :cond_f
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->level:I

    mul-int/lit8 v0, p3, 0x14

    add-int/lit16 v0, v0, 0xc8

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->radarRange:F

    mul-int/lit8 v0, p3, 0x14

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_3a

    aget-object v3, v0, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsTotal:I

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalLost:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    return-void
.end method

.method public static getBuildTime(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I
    .registers 5
    .param p0, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-nez v0, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_14

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->ConstructionTime:I

    return v0

    :cond_14
    const/4 v0, 0x3

    return v0
.end method

.method public static p1bChargeForBuild(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    .registers 6

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v0

    if-lez v0, :cond_13

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    if-eqz v1, :cond_13

    int-to-float v0, v0

    neg-float v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    :cond_13
    return-void
.end method

.method public static p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I
    .registers 5

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_12

    aget-object v0, v0, v1

    if-eqz v0, :cond_12

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CostGold:I

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public static p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .registers 10

    const/4 v0, 0x4

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    if-eqz v2, :cond_34

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/4 v1, 0x0

    :goto_20
    array-length v3, v0

    if-ge v1, v3, :cond_34

    aget-object v3, v0, v1

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    if-lez v4, :cond_31

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_31

    return-object v3

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_34
    const/4 v3, 0x0

    return-object v3
.end method

.method public static p1bStat(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V
    .registers 8

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :cond_9d

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    float-to-int v1, v1

    const-string v2, "G"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    const-string v2, "B"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v2, "Q"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    const-string v2, "T"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I

    const-string v2, "C"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->level:I

    const-string v2, "L"

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v3, "M"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-string v3, "A"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    const-string v3, "CB"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    const-string v3, "CA"

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_9d
    return-void
.end method

.method private startNextBuild()V
    .registers 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    return-void

    :cond_f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Airport;->getBuildTime(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsTotal:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    return-void
.end method


# virtual methods
.method public cancelBuild()Z
    .registers 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsTotal:I

    :cond_1f
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
            ")",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isAlive:Z

    if-eqz v4, :cond_25

    iget-boolean v4, v3, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-nez v4, :cond_25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_28
    return-object v0
.end method

.method public removeAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit;)Z
    .registers 5
    .param p1, "unit"    # Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalLost:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalLost:I

    const/4 v1, 0x1

    return v1

    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public startBuild(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z
    .registers 6
    .param p1, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I

    if-lt v0, v1, :cond_20

    const/4 v0, 0x0

    return v0

    :cond_20
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bChargeForBuild(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sbOK(II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-nez v0, :cond_32

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/Airport;->startNextBuild()V

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public updateBuild()V
    .registers 5

    const-string v0, "nA3b"

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    if-lez v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirUnit;-><init>(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;I)V

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airportID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_38

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_3b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAirDivisionAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_49

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ub:syncfail"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    const/4 v2, 0x0

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsTotal:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/Airport;->startNextBuild()V

    return-void
.end method

.method public updateDeployedCount()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isInFlight:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    goto :goto_1d

    :cond_34
    return-void
.end method
