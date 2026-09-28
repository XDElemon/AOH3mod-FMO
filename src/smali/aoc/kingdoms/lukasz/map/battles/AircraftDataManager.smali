.class public Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$ConfigAircraftData;,
        Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;
    }
.end annotation


# static fields
.field private static loaded:Z

.field public static types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyType(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    .registers 5
    .param p0, "unit"    # Laoc/kingdoms/lukasz/map/battles/AirUnit;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-nez v0, :cond_2f

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

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    return-void

    :cond_2f
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_86

    aget-object v0, v0, v1

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->ID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->typeID:I

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CanAttackAir:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackAir:Z

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CanAttackGround:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->canAttackGround:Z

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->AirAttack:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->GroundAttack:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->groundAttack:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Defense:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Agility:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->agility:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Speed:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Stealth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->stealth:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Ecm:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->ecm:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->MaxFuel:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxFuel:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->fuel:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->FuelConsumption:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->fuelConsumption:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CombatRadius:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->combatRadius:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->RadarRange:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->MaxPayload:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxPayload:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->currentPayload:I

    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->Defense:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    :cond_86
    return-void
.end method

.method public static load()V
    .registers 9

    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->loaded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v0, "game/AirUnit/AircraftTypes.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v4, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$ConfigAircraftData;

    const-string v0, "AircraftTypes"

    const-class v5, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    invoke-virtual {v3, v4, v0, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v4, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$ConfigAircraftData;

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$ConfigAircraftData;

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$ConfigAircraftData;->AircraftTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    const/4 v7, 0x0

    :goto_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_41

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_30
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_42

    :cond_41
    goto :goto_46

    :catch_42
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_46
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->loaded:Z

    return-void
.end method
