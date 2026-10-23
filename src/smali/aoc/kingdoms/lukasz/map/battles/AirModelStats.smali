# 由 tools/gen_air_model_stats.py 生成，禁止手改
# 数值真源：data/aircraft_models.json → tools/gen_aircraft_models.py 定曲线
# 51 机型，下标 = modelAid（与 AirModelTables.INFO 同序）
.class public Laoc/kingdoms/lukasz/map/battles/AirModelStats;
.super Ljava/lang/Object;
.source "AirModelStats.java"

# static fields

.field public static AIRATTACK:[F

.field public static DEFENSE:[F

.field public static SPEED:[F

.field public static MISSILESPEED:[F

.field public static RADARDETECT:[F

.field public static MISSILERANGE:[I

.field public static MISSILECOUNT:[I

.field public static MISSILERADARRANGE:[I

.field public static COST:[I

.field public static TIME:[I

.field public static GUN:[Z

.field public static DRONE:[Z

.field public static MS_SPD:F

# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    new-array v0, v1, [F

    fill-array-data v0, :d_AIRATTACK

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->AIRATTACK:[F

    const/16 v1, 0x40

    new-array v0, v1, [F

    fill-array-data v0, :d_DEFENSE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->DEFENSE:[F

    const/16 v1, 0x40

    new-array v0, v1, [F

    fill-array-data v0, :d_SPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->SPEED:[F

    const/16 v1, 0x40

    new-array v0, v1, [F

    fill-array-data v0, :d_MISSILESPEED

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILESPEED:[F

    const/16 v1, 0x40

    new-array v0, v1, [F

    fill-array-data v0, :d_RADARDETECT

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->RADARDETECT:[F

    const/16 v1, 0x40

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILERANGE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILERANGE:[I

    const/16 v1, 0x40

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILECOUNT

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILECOUNT:[I

    const/16 v1, 0x40

    new-array v0, v1, [I

    fill-array-data v0, :d_MISSILERADARRANGE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILERADARRANGE:[I

    const/16 v1, 0x40

    new-array v0, v1, [I

    fill-array-data v0, :d_COST

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->COST:[I

    const/16 v1, 0x40

    new-array v0, v1, [I

    fill-array-data v0, :d_TIME

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->TIME:[I

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_GUN

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->GUN:[Z

    const/16 v1, 0x40

    new-array v0, v1, [Z

    fill-array-data v0, :d_DRONE

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->DRONE:[Z

    return-void

    :d_AIRATTACK
    .array-data 4
        0x41e00000
        0x41e00000
        0x41d80000
        0x41e00000
        0x41c80000
        0x41c80000
        0x41c00000
        0x41c80000
        0x41c80000
        0x41c80000
        0x41c00000
        0x41c80000
        0x41c80000
        0x41c80000
        0x41c00000
        0x41c80000
        0x43160000
        0x43160000
        0x43160000
        0x43160000
        0x43160000
        0x43160000
        0x430e0000
        0x43160000
        0x43160000
        0x43160000
        0x430e0000
        0x43160000
        0x43160000
        0x43160000
        0x430e0000
        0x43160000
        0x43d20000
        0x43d20000
        0x43c78000
        0x43d20000
        0x43bb8000
        0x43bb8000
        0x43b20000
        0x43bb8000
        0x43bb8000
        0x43bb8000
        0x43b20000
        0x43bb8000
        0x43bb8000
        0x43bb8000
        0x43b20000
        0x43bb8000
        0x450c0000
        0x450c0000
        0x45050000
        0x450c0000
        0x44fa0000
        0x44fa0000
        0x44ed8000
        0x44fa0000
        0x44fa0000
        0x44fa0000
        0x44ed8000
        0x44fa0000
        0x44fa0000
        0x44fa0000
        0x44ed8000
        0x44fa0000
    .end array-data

    :d_DEFENSE
    .array-data 4
        0x41866666
        0x41866666
        0x41940000
        0x41c9999a
        0x41700000
        0x41700000
        0x41840000
        0x41b40000
        0x41700000
        0x41700000
        0x41840000
        0x41b40000
        0x41700000
        0x41700000
        0x41840000
        0x41b40000
        0x42600000
        0x42600000
        0x42766666
        0x42a80000
        0x42480000
        0x42480000
        0x425c0000
        0x42960000
        0x42480000
        0x42480000
        0x425c0000
        0x42960000
        0x42480000
        0x42480000
        0x425c0000
        0x42960000
        0x43a80000
        0x43a80000
        0x43b8cccd
        0x43fc0000
        0x43960000
        0x43960000
        0x43a50000
        0x43e10000
        0x43960000
        0x43960000
        0x43a50000
        0x43e10000
        0x43960000
        0x43960000
        0x43a50000
        0x43e10000
        0x44520000
        0x44520000
        0x44670000
        0x449d8000
        0x443b8000
        0x443b8000
        0x444e4000
        0x448ca000
        0x443b8000
        0x443b8000
        0x444e4000
        0x448ca000
        0x443b8000
        0x443b8000
        0x444e4000
        0x448ca000
    .end array-data

    :d_SPEED
    .array-data 4
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44480000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44834000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
        0x44c1c000
    .end array-data

    :d_MISSILESPEED
    .array-data 4
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42880000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42a80000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42cc0000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
        0x42f80000
    .end array-data

    :d_RADARDETECT
    .array-data 4
        0x441d8000
        0x441d8000
        0x441d8000
        0x441d8000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44098000
        0x44820000
        0x44820000
        0x44820000
        0x44820000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44610000
        0x44ba4000
        0x44ba4000
        0x44ba4000
        0x44ba4000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x44a28000
        0x45016000
        0x45016000
        0x45016000
        0x45016000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
        0x44e10000
    .end array-data

    :d_MISSILERANGE
    .array-data 4
        0x73
        0x73
        0x73
        0x73
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x96
        0x96
        0x96
        0x96
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0x82
        0xb9
        0xb9
        0xb9
        0xb9
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xdc
        0xdc
        0xdc
        0xdc
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
        0xbe
    .end array-data

    :d_MISSILECOUNT
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :d_MISSILERADARRANGE
    .array-data 4
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x37
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x46
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
        0x55
    .end array-data

    :d_COST
    .array-data 4
        0xb4
        0xb4
        0xb4
        0xb4
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0xc8
        0x17a
        0x17a
        0x17a
        0x17a
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x32a
        0x32a
        0x32a
        0x32a
        0x384
        0x384
        0x21c
        0x21c
        0x384
        0x384
        0x384
        0x384
        0x384
        0x384
        0x21c
        0x384
        0x654
        0x654
        0x654
        0x654
        0x708
        0x708
        0x708
        0x708
        0x708
        0x708
        0x438
        0x708
        0x708
        0x708
        0x708
        0x708
    .end array-data

    :d_TIME
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0x7
        0x7
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0x7
        0x8
        0xb
        0xb
        0xb
        0xb
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xb
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data

    :d_GUN
    .array-data 1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :d_DRONE
    .array-data 1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

# 按 modelAid 覆盖连续属性；aid<0 或越界则不动（保留类型默认值）
.method public static applyModel(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    .registers 7
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

    # v53：radarRange 已并入 radarDetect（RADARRANGE 表整体删除）

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->SPEED:[F

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->speed:F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->RADARDETECT:[F

    aget v3, v1, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->radarDetect:F

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->DRONE:[Z

    aget-boolean v3, v1, v0

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->isDrone:Z

    # 只在 hp 已超过新上限时才拉满；读档时 hp 来自存档，不会被动
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    cmpg-float v3, v3, v5

    if-lez v3, :am_done

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    :am_done
    return-void
.end method

# 按 modelAid 取导弹速度；aid<0/越界 → 67.5（原 TECH-HOOK 常量）
.method public static missileSpeed(I)F
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_default

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILESPEED:[F

    array-length v1, v0

    if-ge p0, v1, :g_default

    aget v0, v0, p0

    return v0

    :g_default
    const v0, 0x42870000

    return v0
.end method

# 按 modelAid 取导弹雷达圈（世界像素）；越界 → 0（退化为必须飞到目标点）
.method public static missileRadarRange(I)F
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_default

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILERADARRANGE:[I

    array-length v1, v0

    if-ge p0, v1, :g_default

    aget v0, v0, p0

    int-to-float v0, v0

    return v0

    :g_default
    const/4 v0, 0x0

    return v0
.end method

# 按 modelAid 取「是否有机炮」；越界 → true（未定型机保持原行为）
.method public static hasGun(I)Z
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_true

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->GUN:[Z

    array-length v1, v0

    if-ge p0, v1, :g_true

    aget-boolean v0, v0, p0

    return v0

    :g_true
    const/4 v0, 0x1

    return v0
.end method

# 按 modelAid 取导弹射程；越界 → 100（与原先按代硬编码值一致，保证未定型机不变）
.method public static missileRangeOf(I)I
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_default

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILERANGE:[I

    array-length v1, v0

    if-ge p0, v1, :g_default

    aget v0, v0, p0

    return v0

    :g_default
    const/16 v0, 0x64

    return v0
.end method

# 按 modelAid 取每机携带导弹数；越界 → 2（与原先按代硬编码值一致，保证未定型机不变）
.method public static missileCountOf(I)I
    .registers 3
    .param p0, "aid"    # I

    if-ltz p0, :g_default

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->MISSILECOUNT:[I

    array-length v1, v0

    if-ge p0, v1, :g_default

    aget v0, v0, p0

    return v0

    :g_default
    const/16 v0, 0x2

    return v0
.end method

