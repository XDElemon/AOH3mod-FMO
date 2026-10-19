# 由 tools/gen_air_model_stats.py 生成，禁止手改
# 数值真源：data/aircraft_models.json → tools/gen_aircraft_models.py 定曲线
# 51 机型，下标 = modelAid（与 AirModelTables.INFO 同序）
.class public Laoc/kingdoms/lukasz/map/battles/AirModelStats;
.super Ljava/lang/Object;
.source "AirModelStats.java"

# static fields

.field public static AIRATTACK:[F

.field public static DEFENSE:[F

.field public static RADARRANGE:[F

.field public static SPEED:[F

.field public static MISSILESPEED:[F

.field public static MISSILERANGE:[I

.field public static MISSILECOUNT:[I

.field public static MISSILEHOPS:[I

.field public static GUN:[Z

# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x33

    new-array v0, v1, [F

    fill-array-data v0, :d_AIRATTACK

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->AIRATTACK:[F

    const/16 v1, 0x33

    new-array v0, v1, [F

    fill-array-data v0, :d_DEFENSE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->DEFENSE:[F

    const/16 v1, 0x33

    new-array v0, v1, [F

    fill-array-data v0, :d_RADARRANGE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->RADARRANGE:[F

    const/16 v1, 0x33

    new-array v0, v1, [F

    fill-array-data v0, :d_SPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->SPEED:[F

    const/16 v1, 0x33

    new-array v0, v1, [F

    fill-array-data v0, :d_MISSILESPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILESPEED:[F

    const/16 v1, 0x33

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILERANGE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILERANGE:[I

    const/16 v1, 0x33

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILECOUNT

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILECOUNT:[I

    const/16 v1, 0x33

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILEHOPS

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILEHOPS:[I

    const/16 v1, 0x33

    new-array v0, v1, [Z

    fill-array-data v0, :d_GUN

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->GUN:[Z

    return-void

    :d_AIRATTACK
    .array-data 4
        0x41c80000
        0x43160000
        0x44fa0000
        0x41c80000
        0x43160000
        0x43bb8000
        0x44fa0000
        0x41c00000
        0x430e0000
        0x43b20000
        0x44ed8000
        0x41c80000
        0x43160000
        0x43bb8000
        0x44fa0000
        0x41c80000
        0x43bb8000
        0x44fa0000
        0x41c80000
        0x43bb8000
        0x44fa0000
        0x41c00000
        0x430e0000
        0x43b20000
        0x44ed8000
        0x41c80000
        0x44fa0000
        0x41c80000
        0x43160000
        0x44fa0000
        0x41c80000
        0x43bb8000
        0x41c00000
        0x430e0000
        0x43b20000
        0x44ed8000
        0x41c80000
        0x43bb8000
        0x44fa0000
        0x41c80000
        0x43160000
        0x44fa0000
        0x41c80000
        0x43160000
        0x43bb8000
        0x44fa0000
        0x41c00000
        0x430e0000
        0x43b20000
        0x41c80000
        0x43160000
    .end array-data

    :d_DEFENSE
    .array-data 4
        0x41700000
        0x42480000
        0x443b8000
        0x41700000
        0x42480000
        0x43960000
        0x443b8000
        0x41840000
        0x425c0000
        0x43a50000
        0x444e4000
        0x41b40000
        0x42960000
        0x43e10000
        0x448ca000
        0x41700000
        0x43960000
        0x443b8000
        0x41700000
        0x43960000
        0x443b8000
        0x41840000
        0x425c0000
        0x43a50000
        0x444e4000
        0x41b40000
        0x448ca000
        0x41700000
        0x42480000
        0x443b8000
        0x41700000
        0x43960000
        0x41840000
        0x425c0000
        0x43a50000
        0x444e4000
        0x41b40000
        0x43e10000
        0x448ca000
        0x41700000
        0x42480000
        0x443b8000
        0x41700000
        0x42480000
        0x43960000
        0x443b8000
        0x41840000
        0x425c0000
        0x43a50000
        0x41b40000
        0x42960000
    .end array-data

    :d_RADARRANGE
    .array-data 4
        0x43fa0000
        0x44228000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x446d8000
        0x43fa0000
        0x44228000
        0x446d8000
        0x43fa0000
        0x44480000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44228000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x446d8000
        0x43fa0000
        0x44228000
        0x44480000
        0x43fa0000
        0x44228000
    .end array-data

    :d_SPEED
    .array-data 4
        0x44480000
        0x44834000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44c1c000
        0x44480000
        0x44834000
        0x44c1c000
        0x44480000
        0x44a28000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44834000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44c1c000
        0x44480000
        0x44834000
        0x44a28000
        0x44480000
        0x44834000
    .end array-data

    :d_MISSILESPEED
    .array-data 4
        0x43960000
        0x43b40000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43fa0000
        0x43960000
        0x43d70000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43fa0000
        0x43960000
        0x43b40000
        0x43d70000
        0x43960000
        0x43b40000
    .end array-data

    :d_MISSILERANGE
    .array-data 4
        0x64
        0x82
        0xbe
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0xa0
        0xbe
        0x64
        0xa0
        0xbe
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0xbe
        0x64
        0x82
        0xbe
        0x64
        0xa0
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0xa0
        0xbe
        0x64
        0x82
        0xbe
        0x64
        0x82
        0xa0
        0xbe
        0x64
        0x82
        0xa0
        0x64
        0x82
    .end array-data

    :d_MISSILECOUNT
    .array-data 4
        0x2
        0x2
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x2
        0x2
        0x4
        0x2
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
        0x4
        0x4
        0x2
        0x2
        0x4
        0x2
        0x2
    .end array-data

    :d_MISSILEHOPS
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x1
        0x1
        0x2
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :d_GUN
    .array-data 1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
    .end array-data
.end method

# 按 modelAid 覆盖连续属性；aid<0 或越界则不动（保留类型默认值）
.method public static applyModel(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    .registers 6
    .param p0, "unit"    # Laoc/kingdoms/lukasz/map/battles/AirUnit;

    if-eqz p0, :am_done

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I

    if-ltz v0, :am_done

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->AIRATTACK:[F

    array-length v2, v1

    if-ge v0, v2, :am_done

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->DEFENSE:[F

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->defense:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->RADARRANGE:[F

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarRange:F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->SPEED:[F

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    # 只在 hp 已超过新上限时才拉满；读档时 hp 来自存档，不会被动
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float v3, v3, v5

    if-lez v3, :am_done

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    :am_done
    return-void
.end method

