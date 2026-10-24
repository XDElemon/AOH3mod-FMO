.class public Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;
.super Ljava/lang/Object;


# instance fields
.field public Agility:F

.field public AirAttack:F

# v70/v71：七项能力开关（AircraftTypes.json 每行一份；未知键会让整表加载失败，字段必须先有）
.field public CanAAGun:Z

.field public CanAGGun:Z

.field public CanAAMissile:Z

.field public CanAGMissile:Z

.field public CanALBM:Z

.field public CanALBMNuke:Z

.field public CanTacticalNuke:Z

.field public CanAttackAir:Z

.field public CanAttackGround:Z

.field public CombatRadius:F

.field public ConstructionTime:I

.field public CostGold:I

.field public Defense:F



.field public GroundAttack:F

# v37：无人机标记（AircraftTypes.json 的 IsDrone；Gdx Json 未知键会整表废掉，字段必须先有）
.field public IsDrone:Z

.field public ID:I


.field public MaxPayload:I

.field public Group:I

.field public ModelAid:I

.field public TypeId:I

.field public Name:Ljava/lang/String;

.field public RadarDetect:F


.field public RequiredTechID:I

.field public Speed:F

.field public Stealth:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
